local VorpCore = {}

if Config["VORP"] then


    TriggerEvent("getCore",function(core)
        VorpCore = core
    end)
    VORP = exports.vorp_core:vorpAPI()
    VorpInv = exports.vorp_inventory:vorp_inventoryApi()
end

if Config["RedEM"] then
    data = {}
    TriggerEvent("redemrp_inventory:getData",function(call)
        data = call
    end)
end

function round(number, decimal)
	local multiplier = 10 ^ ( decimal or 0)
	if number == nil then return 25.0000 end
	return math.floor(number * multiplier + 0.5) / multiplier
end

---------------------
--
--REGISTER USABLES--   
--
---------------------


if Config["VORP"] then

    print("^4[fred_metabolism]^0 ^2Framework: VORP Core^0")

    Citizen.CreateThread(function()    
        for i = 1, #Config.ItemsToUse do
            
            local index = i

            VorpInv.RegisterUsableItem(Config.ItemsToUse[i]["Name"], function(data)


                TriggerClientEvent("fred_meta:useItem", data.source, index)
                VorpInv.subItem(data.source, Config.ItemsToUse[index]["Name"], 1)
				local message = Config["MSG"] .. Config.ItemsToUse[index]["DisplayName"]
                TriggerClientEvent("vorp:TipRight", data.source, message, 5000)
            end)
        end
    end)
end

if Config["RedEM"] then

    print("^4[fred_metabolism]^0 ^2Framework: RedEM:RP^0")

    for i = 1, #Config.ItemsToUse do
        
        local index = i
    
        RegisterServerEvent("RegisterUsableItem:"..Config.ItemsToUse[i]["Name"])
        AddEventHandler("RegisterUsableItem:"..Config.ItemsToUse[i]["Name"], function(source)
            local _source = source
            local ItemData = data.getItem(_source, Config.ItemsToUse[i]["Name"])
            TriggerClientEvent("fred_meta:useItem", _source, index)
            ItemData.RemoveItem(1)
            TriggerEvent('redemrp_notification:start',  _source, Config["MSG"]..Config.ItemsToUse[index]["DisplayName"], 5, "success")
        end)
        print("^4[fred_metabolism]^0 ^2Item: "..Config.ItemsToUse[index]["Name"].." registered.^0")
    end
end

if Config["VORP"] then
	-- APPLIES CHANGES TO DB
    RegisterServerEvent("fred_meta:setChanges")
    AddEventHandler("fred_meta:setChanges", function(abodytype, awaist)
        local User = VorpCore.getUser(source)
        local _source = source
        local Character = User.getUsedCharacter
        local u_identifier = Character.identifier
        local u_charid = Character.charIdentifier
        local BodyType = abodytype
        local Waist = awaist

        exports.ghmattimysql:execute('SELECT skinPlayer FROM characters WHERE identifier=@identifier AND charidentifier = @charidentifier', {['identifier'] = u_identifier, ['charidentifier'] = u_charid}, function(result)

            if result[1] ~= nil then 
                for i = 1, #result do
                local skinPlayer 	= json.decode(result[i].skinPlayer)
                skinPlayer.BodyType = abodytype
                skinPlayer.Waist 	= awaist
                skinPlayer 			= json.encode(skinPlayer)


                local Parameters = { ['identifier'] = u_identifier, ['charidentifier'] = u_charid , ['skinPlayer'] = skinPlayer}

                exports.ghmattimysql:execute("UPDATE characters SET skinPlayer=@skinPlayer WHERE identifier=@identifier AND charidentifier = @charidentifier", Parameters)
                end    
            end
        end)
    end)

    -- APPLIES CHANGES TO DB.
    RegisterServerEvent("fred_meta:setStatus")
    AddEventHandler("fred_meta:setStatus", function(hunger, thirst, metabolism)
        local User = VorpCore.getUser(source)
        local _source = source
        local Character = User.getUsedCharacter
        local u_identifier = Character.identifier
        local u_charid = Character.charIdentifier
        local Hunger = hunger
        local Thirst = thirst
        local Metabolism = metabolism

        exports.ghmattimysql:execute('SELECT meta FROM characters WHERE identifier=@identifier AND charidentifier = @charidentifier', {['identifier'] = u_identifier, ['charidentifier'] = u_charid}, function(result)

            if result[1] ~= nil then 
                for i = 1, #result do
                local meta 		= json.decode(result[i].meta)			
                meta.Hunger 	= round(hunger, 4)
                meta.Thirst		= round(thirst, 4)
                meta.Metabolism = metabolism
                meta 			= json.encode(meta)

                local Parameters = { ['identifier'] = u_identifier, ['charidentifier'] = u_charid , ['meta'] = meta}

                exports.ghmattimysql:execute("UPDATE characters SET meta=@meta WHERE identifier=@identifier AND charidentifier = @charidentifier", Parameters)
                end 
            end
        end)
    end)

    -- Checks player status.
    RegisterServerEvent("fred_meta:checkStatus")
    AddEventHandler("fred_meta:checkStatus", function()
        local _source = source
        local User = VorpCore.getUser(_source) 
        local Character = VorpCore.getUser(_source).getUsedCharacter
        local identifier= Character.identifier
        local charidentifier= Character.charIdentifier
        exports.ghmattimysql:execute('SELECT meta FROM characters WHERE identifier=@identifier AND charidentifier = @charidentifier', {['identifier'] = identifier, ['charidentifier'] = charidentifier}, function(result)
            if result[1] ~= nil then 
                for i = 1, #result do
                    local meta = json.decode(result[i].meta)

                    hunger = meta.Hunger
                    thirst = meta.Thirst
                    metabolism = meta.Metabolism
                    TriggerClientEvent("fred_meta:applyChanges", _source, hunger, thirst, metabolism)
                end
            end
        end)
    end)
	
	RegisterNetEvent("fred:playerSpawnEvent")
	AddEventHandler("fred:playerSpawnEvent", function(playerId)
        local User 		 	 = VorpCore.getUser(playerId) 
        local Character  	 = VorpCore.getUser(playerId).getUsedCharacter
        local identifier   	 = Character.identifier
        local charidentifier = Character.charIdentifier
		
        exports.ghmattimysql:execute('SELECT meta FROM characters WHERE identifier = @identifier AND charidentifier = @charidentifier', {['identifier'] = identifier, ['charidentifier'] = charidentifier}, function(result)
            if result[1] ~= nil then 
                for i = 1, #result do
                    local meta = json.decode(result[i].meta)

                    hunger = meta.Hunger
                    thirst = meta.Thirst
                    metabolism = meta.Metabolism
					
					local Parameters = { ['identifier'] = identifier, ['charidentifier'] = charidentifier , ['meta'] = json.encode(meta)}
					exports.ghmattimysql:execute("UPDATE characters SET meta = @meta WHERE identifier = @identifier AND charidentifier = @charidentifier", Parameters)
					
					print("[META] Loaded user " .. identifier .. " (" .. playerId .. ") [H: ~" .. round(hunger, 2) .. " | T: ~" .. round(thirst, 2) .. "]")
                    TriggerClientEvent("fred_meta:applyChanges", playerId, hunger, thirst, metabolism)
					TriggerClientEvent("fred:setMetaLoaded", playerId)
                end
            end
        end)
	end)
end

if Config["RedEM"] then

    -- APPLIES CHANGES TO DB.
    RegisterServerEvent("fred_meta:setStatus")
    AddEventHandler("fred_meta:setStatus", function(hunger, thirst, metabolism)
        local _source = source
        local Hunger = hunger
        local Thirst = thirst
        local Metabolism = metabolism

        TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
            local identifier = user.getIdentifier()
            local characterid = user.getSessionVar("charid")

            MySQL.Async.fetchAll('SELECT meta FROM characters WHERE identifier=@identifier AND characterid = @characterid', {['identifier'] = identifier, ['characterid'] = characterid}, function(result)

                if result[1] ~= nil then 
                    for i = 1, #result do
                    local meta = json.decode(result[i].meta)
                    meta.Hunger = hunger
                    meta.Thirst = thirst
                    meta.Metabolism = metabolism
                    meta = json.encode(meta)

                    local Parameters = { ['identifier'] = identifier, ['characterid'] = characterid , ['meta'] = meta}
                    MySQL.Async.execute("UPDATE characters SET meta=@meta WHERE identifier=@identifier AND characterid = @characterid", Parameters)
                    --exports.ghmattimysql:execute("UPDATE characters SET meta=@meta WHERE identifier=@identifier AND characterid = @characterid", Parameters)
                    end
                end
            end)
        end)
    end)

    -- When player is loaded, checks status from DB.
    AddEventHandler("redemrp:playerLoaded", function(source, user)
        local _source = source 
        local identifier = user.getIdentifier()
        local characterid = user.getSessionVar("charid")
       
        MySQL.Async.fetchAll('SELECT meta FROM characters WHERE identifier=@identifier AND characterid = @characterid', {['identifier'] = identifier, ['characterid'] = characterid}, function(result)
        --exports.ghmattimysql:execute('SELECT meta FROM characters WHERE identifier=@identifier AND characterid = @characterid', {['identifier'] = identifier, ['characterid'] = characterid}, function(result)

            if result[1] ~= nil then 
                for i = 1, #result do
                    local meta = json.decode(result[i].meta)

                    hunger = meta.Hunger
                    thirst = meta.Thirst
                    metabolism = meta.Metabolism
                    TriggerClientEvent("fred_meta:PlayerLoaded", _source)
                    TriggerClientEvent("fred_meta:applyChanges", _source,  hunger, thirst, metabolism)
                end
            end
        end)
    end)
end
