TriggerEvent("gum_menu:getData",function(call)
    MenuData = call
end)
local gum
TriggerEvent("getApi",function(gumApi)
    gum = gumApi
end)

local buttons_prompt = GetRandomIntInRange(0, 0xffffff)
local active = false
local pet_list = {}
local steam = "steam:"
local charid = 0
local callrange = 0
local levelpet = 0
local petid = 0
local check_time = 0
local statenow = 1
local skill1 = 0
local skill2 = 0
local skill3 = 0
local skill4 = 0
local skill5 = 0
local skill6 = 0
local skill7 = 0
local skill8 = 0
local skill9 = 0
local skill10 = 0
local skill11 = 0
local skill12 = 0
local stats_show = false
local pethunger = 0
local petthirst = 0
local pethealth = 0
local split_exp = 0
local hunting_list = {}
local inhand = false
local antispam = false
local behavior = false
local givepetid = 0
local can_open = false
local peds = 0
local inPetList = false
local yrange = 0
local job = nil
local supporter = 0
local canEnter = false
local npcsDogs = {}
local npcsManPets = {}
local filteredDogs = {}
local entityEnumerator = {
    __gc = function(enum)
      if enum.destructor and enum.handle then
        enum.destructor(enum.handle)
      end
      enum.destructor = nil
      enum.handle = nil
end}

local function EnumerateEntities(initFunc, moveFunc, disposeFunc)
    return coroutine.wrap(function()
      local iter, id = initFunc()
      if not id or id == 0 then
        disposeFunc(iter)
        return
      end
      
      local enum = {handle = iter, destructor = disposeFunc}
      setmetatable(enum, entityEnumerator)
      
      local next = true
      repeat
        coroutine.yield(id)
        next, id = moveFunc(iter)
      until not next
      
      enum.destructor, enum.handle = nil, nil
      disposeFunc(iter)
    end)
end
  
function EnumerateObjects()
    return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
end
  
function EnumeratePeds()
    return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end
  
function EnumerateVehicles()
    return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end

function GetPlayers()
	local players = {}
	for i = 0, 256 do
		if NetworkIsPlayerActive(i) then
			table.insert(players, i)
		end
	end
	return players
end

function createPrompt(text, key, promptHash)
	buttonPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
	PromptSetControlAction(buttonPrompt, key)
	PromptSetText(buttonPrompt, CreateVarString(10, 'LITERAL_STRING', text))
	PromptSetEnabled(buttonPrompt, true)
	PromptSetVisible(buttonPrompt, true)
	PromptSetGroup(buttonPrompt, promptHash)
	PromptRegisterEnd(buttonPrompt)
end
RegisterNUICallback('close', function(data,cb)
    SendNUIMessage({type="store",open=false})
    SetNuiFocus(false, false)
    EndCam()
    inPetList = false
end)

RegisterNUICallback('switch', function(data,cb)
    SpawnStorePet(store, data.model, tonumber(data.skin))
end)
RegisterNetEvent("gum_pets:checkjob")
AddEventHandler("gum_pets:checkjob", function(info)
    job = info
end) 
RegisterNUICallback('makeSkill', function(data,cb)
    if pet_model ~= nil then
        for k,v in pairs(Config.Pets_Store) do
            if v.Model == data.model then
                for k2,v2 in pairs(v) do
                    if string.match(k2, "Command") then
                        if data.skill == v2[3] then
                            if inhand == true then
                                if Config.Gum_Notify_Old then
                                    exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[33], Config.FirstName, Config.SecondName, 3000)
                                end
                                if Config.Gum_Notify_NUI then
                                    exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[33], Config.Image, 3000)
                                end
                                return false
                            end
                            if antispam == false then
                                antispam = true
                                if k2 == "Command_1" then
                                    TriggerServerEvent("gum_pets:make_eat", "hunger", v2[3])
                                elseif k2 == "Command_2" then
                                    if IsEntityInWater(pet_model) then
                                        TriggerEvent("gum_pets:make_eat", v2[3], 0,50,0, "inwater")
                                    else
                                        TriggerServerEvent("gum_pets:make_eat", "thirst", v2[3])
                                    end
                                else
                                    local number = string.match(k2,"%d+")
                                    MakeSkill("skill", v2[3], "skill"..number, data.text)
                                end
                            else
                                if Config.Gum_Notify_Old then
                                    exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[39], Config.FirstName, Config.SecondName, 3000)
                                end
                                if Config.Gum_Notify_NUI then
                                    exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[39], Config.Image, 3000)
                                end
                            end
                        end
                    end
                end
            end
        end
    else
        if Config.Gum_Notify_Old then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[67], Config.FirstName, Config.SecondName, 3000)
        end
        if Config.Gum_Notify_NUI then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[67], Config.Image, 3000)
        end
    end
end)
RegisterNUICallback('renamePet', function(data,cb)
    SendNUIMessage({type="store",open=false})
    SetNuiFocus(false, false)
    EndCam()
    inPetList = false
    TriggerEvent("guminputs:getInput", ""..Config.Language[40].."", ""..Config.Language[72].."", function(cb)
        local input = cb
        if input ~= "close" then
            for k,v in pairs(pet_list) do
                if tonumber(v.id) == tonumber(data.id) then
                    local old_table = json.decode(v.pets_info)
                    old_table.name = input
                    v.pets_info = json.encode(old_table)
                    TriggerServerEvent("gum_pets:rename_pet", data.id, v.pets_info)
                end
            end
        end
    end)
end)
RegisterNUICallback('transferPet', function(data,cb)
    SendNUIMessage({type="store",open=false})
    SetNuiFocus(false, false)
    EndCam()
    inPetList = false
    TriggerEvent("guminputs:getInput", ""..Config.Language[40].."", ""..Config.Language[71].."", function(cb)
        local input = tonumber(cb)
        if input == nil then
            input = 0
        end
        if input ~= "close" then
            if input > 0 then
                TriggerServerEvent("gum_pets:change_owner", tonumber(input), tonumber(data.id))
            end
        end
    end)
end)
RegisterNUICallback('deletePet', function(data,cb)
    SendNUIMessage({type="store",open=false})
    SetNuiFocus(false, false)
    EndCam()
    inPetList = false
    TriggerEvent("guminputs:getAnswer", Config.Language[46]..data.id, ""..Config.Language[68].."", ""..Config.Language[69].."", function(cb)
        if cb == true then
            TriggerServerEvent("gum_pets:delete_pet", tonumber(data.id))
        end
    end)
end)

RegisterNUICallback('buyMoney', function(data,cb)
    TriggerEvent("guminputs:getAnswer", Config.Language[550]..data.price, ""..Config.Language[68].."", ""..Config.Language[69].."", function(cb)
        local input = cb
        if input == true then
            for k,v in pairs(Config.Pets_Store) do
                if v.Model == data.model then
                    local petsskillsnum = k
                    local skill1tobuy,skill2tobuy,skill3tobuy,skill4tobuy,skill5tobuy,skill6tobuy,skill7tobuy,skill8tobuy,skill9tobuy,skill10tobuy,skill11tobuy,skill12tobuy = 0,0,0,0,0,0,0,0,0,0,0,0
                    TriggerEvent("guminputs:getInput", ""..Config.Language[40].."", ""..Config.Language[54].."", function(cb)
                        local type_name = tostring(cb)
                        if type_name ~= 'close' and type_name ~= nil then
                            for a,b in pairs(Config.Pets_Store) do
                                if a == petsskillsnum then
                                    for k2,v2 in pairs(b) do
                                    if string.match(k2, "Command") then
                                            local number = string.match(k2,"%d+")
                                            if tonumber(number) == 1 then       skill1tobuy = v2[4]
                                            elseif tonumber(number) == 2 then   skill2tobuy = v2[4]
                                            elseif tonumber(number) == 3 then   skill3tobuy = v2[4]
                                            elseif tonumber(number) == 4 then   skill4tobuy = v2[4]
                                            elseif tonumber(number) == 5 then   skill5tobuy = v2[4]
                                            elseif tonumber(number) == 6 then   skill6tobuy = v2[4]
                                            elseif tonumber(number) == 7 then   skill7tobuy = v2[4]
                                            elseif tonumber(number) == 8 then   skill8tobuy = v2[4]
                                            elseif tonumber(number) == 9 then   skill9tobuy = v2[4]
                                            elseif tonumber(number) == 10 then  skill10tobuy = v2[4]
                                            elseif tonumber(number) == 11 then  skill11tobuy = v2[4]
                                            elseif tonumber(number) == 12 then  skill12tobuy = v2[4]
                                            end
                                        end
                                    end
                                end
                            end
                            local pets_info = {name=type_name, model=v.Model, mname=v.Name,styl=tonumber(data.skin), exp=0, age=0.5, health=100, hunger=100, thirst=100, skill1=skill1tobuy, skill2=skill2tobuy, skill3=skill3tobuy, skill4=skill4tobuy, skill5=skill5tobuy, skill6=skill6tobuy, skill7=skill7tobuy, skill8=skill8tobuy, skill9=skill9tobuy, skill10=skill10tobuy, skill11=skill11tobuy, skill12=skill12tobuy}
                            TriggerServerEvent("gum_pets:buy_animal", v.Dolar, v.Gold, 0, pets_info)
                        end
                    end)
                end
            end
        end
    end)
end)
RegisterNUICallback('selectPet', function(data,cb)
    if pet_model == nil then--
        TriggerEvent("guminputs:getAnswer", Config.Language[66]..data.name, ""..Config.Language[68].."", ""..Config.Language[69].."", function(cb)
            local input = cb
            if input == true then
                TriggerServerEvent("gum_pets:select_pets", tonumber(data.id))
            end
        end)
    else
        if Config.Gum_Notify_Old then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[31], Config.FirstName, Config.SecondName, 3000)
        end
        if Config.Gum_Notify_NUI then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[31], Config.Image, 3000)
        end
    end
end)

RegisterNUICallback('callPet', function(data,cb)
    CallPets()
end)
RegisterNUICallback('range', function(data,cb)
    if data.id == "range" then
        callrange = tonumber(data.value)
        Citizen.InvokeNative(0xD6401A1B2F63BED6, PlayerPedId(), 869278708, 1971704925)
        if 0 == callrange then
            MakeAnims("Call5m")
        elseif 1 == callrange then
            MakeAnims("Call10m")
        elseif 2 == callrange then
            MakeAnims("Call15m")
        elseif 3 == callrange then
            MakeAnims("Call20m")
        end
    else
        Citizen.InvokeNative(0xD6401A1B2F63BED6, PlayerPedId(), 869278708, 1971704925)
        yrange = tonumber(data.value)
        if 0 == callrange then
            MakeAnims("Call5m")
        elseif 1 == callrange then
            MakeAnims("Call10m")
        elseif 2 == callrange then
            MakeAnims("Call15m")
        elseif 3 == callrange then
            MakeAnims("Call20m")
        end
    end
end)

RegisterNUICallback('buyGold', function(data,cb)
    TriggerEvent("guminputs:getAnswer", Config.Language[551]..data.price, ""..Config.Language[68].."", ""..Config.Language[69].."", function(cb)
        local input = cb
        if input == true then
            for k,v in pairs(Config.Pets_Store) do
                if v.Model == data.model then
                    local petsskillsnum = k
                    local skill1tobuy,skill2tobuy,skill3tobuy,skill4tobuy,skill5tobuy,skill6tobuy,skill7tobuy,skill8tobuy,skill9tobuy,skill10tobuy,skill11tobuy,skill12tobuy = 0,0,0,0,0,0,0,0,0,0,0,0
                    TriggerEvent("guminputs:getInput", ""..Config.Language[40].."", ""..Config.Language[54].."", function(cb)
                        local type_name = tostring(cb)
                        if type_name ~= 'close' and type_name ~= nil then
                            for a,b in pairs(Config.Pets_Store) do
                                if a == petsskillsnum then
                                    for k2,v2 in pairs(b) do
                                       if string.match(k2, "Command") then
                                            local number = string.match(k2,"%d+")
                                            if tonumber(number) == 1 then       skill1tobuy = v2[4]
                                            elseif tonumber(number) == 2 then   skill2tobuy = v2[4]
                                            elseif tonumber(number) == 3 then   skill3tobuy = v2[4]
                                            elseif tonumber(number) == 4 then   skill4tobuy = v2[4]
                                            elseif tonumber(number) == 5 then   skill5tobuy = v2[4]
                                            elseif tonumber(number) == 6 then   skill6tobuy = v2[4]
                                            elseif tonumber(number) == 7 then   skill7tobuy = v2[4]
                                            elseif tonumber(number) == 8 then   skill8tobuy = v2[4]
                                            elseif tonumber(number) == 9 then   skill9tobuy = v2[4]
                                            elseif tonumber(number) == 10 then  skill10tobuy = v2[4]
                                            elseif tonumber(number) == 11 then  skill11tobuy = v2[4]
                                            elseif tonumber(number) == 12 then  skill12tobuy = v2[4]
                                            end
                                        end
                                    end
                                end
                            end
                            local pets_info = {name=type_name, model=v.Model, mname=v.Name,styl=tonumber(data.skin), exp=0, age=0.5, health=100, hunger=100, thirst=100, skill1=skill1tobuy, skill2=skill2tobuy, skill3=skill3tobuy, skill4=skill4tobuy, skill5=skill5tobuy, skill6=skill6tobuy, skill7=skill7tobuy, skill8=skill8tobuy, skill9=skill9tobuy, skill10=skill10tobuy, skill11=skill11tobuy, skill12=skill12tobuy}
                            TriggerServerEvent("gum_pets:buy_animal", v.Dolar, v.Gold, 1, pets_info)
                        end
                    end)
                end
            end
        end
    end)
end)

if Config.useNPC then
    Citizen.CreateThread(function()
        filteredDogs = {}
        for a,b in pairs(Config.Pets_Store) do
            if string.match(b.Model, "dog") or string.match(b.Model, "Dog") then
                table.insert(filteredDogs, b.Model)
            end
        end
        while true do
            local coords = GetEntityCoords(PlayerPedId())
            if Config.useTimeLogic then
                for k,v in pairs(Config.StableNPC) do
                    if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, v.coords[1], v.coords[2], v.coords[3], false) < 20.0  then
                        if GetClockHours() >= v.timeStart and GetClockHours() < v.timeEnd then
                            canEnter = true
                            createNpc(k, v.npc, v.coords[1], v.coords[2], v.coords[3], v.coords[4])
                        else
                            canEnter = false
                            despawnNpc(k) 
                        end
                    else
                         despawnNpc(k) 
                    end
                end
            else
                for k,v in pairs(Config.StableNPC) do
                    if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, v.coords[1], v.coords[2], v.coords[3], false) < 20.0  then
                        createNpc(k, v.npc, v.coords[1], v.coords[2], v.coords[3], v.coords[4])
                    else
                        despawnNpc(k) 
                    end
                end
            end
            Citizen.Wait(2000)
        end
    end)
end


function createNpc(count, model, x,y,z,h)
    if npcsManPets[count] == nil then
        Citizen.CreateThread(function()
            npcsManPets[count] = false
            local npcSpawn = model
            while not HasModelLoaded(GetHashKey(npcSpawn)) do
                Wait(0)
                ModelRequest( GetHashKey(npcSpawn) )
            end
            local npcSpawnCode = CreatePed(GetHashKey(npcSpawn), x, y, z, h, false, false, 0, 0)

            while not DoesEntityExist(npcSpawnCode) do
                Wait(0)
            end
            Citizen.InvokeNative(0x283978A15512B2FE, npcSpawnCode, true)
            SetPedAsGroupMember(npcSpawnCode, GetPedGroupIndex(PlayerPedId()))
            SetBlockingOfNonTemporaryEvents(npcSpawnCode,true)
            FreezeEntityPosition(npcSpawnCode, true)
            SetEntityInvincible(npcSpawnCode, true)
            TaskStandStill(npcSpawnCode, -1)
            SetEntityAsMissionEntity(npcSpawnCode, true, true)
            SetModelAsNoLongerNeeded(GetHashKey(npcSpawnCode))
            ClearPedEnvDirt(npcSpawnCode)
            ClearPedDamageDecalByZone(npcSpawnCode ,10 ,"ALL")
            ClearPedBloodDamage(npcSpawnCode)
            npcsManPets[count] = npcSpawnCode
        end)
    end
    Citizen.Wait(1000)
    if Config.enableInteractWithNpc then
        if npcsDogs[count] == nil then
            local randomDogAnim = math.random(1, #filteredDogs)
            for a,b in pairs(filteredDogs) do
                if a == randomDogAnim then
                    Citizen.CreateThread(function()
                        npcsDogs[count] = false
                        local npcSpawn = b
                        while not HasModelLoaded(GetHashKey(npcSpawn)) do
                            Wait(0)
                            ModelRequest( GetHashKey(npcSpawn) )
                        end
            			local entityWorld = GetOffsetFromEntityInWorldCoords(npcsManPets[count], 0.0, 1.3, -1.0)
                        local npcSpawnCode = CreatePed(GetHashKey(npcSpawn), entityWorld.x, entityWorld.y, entityWorld.z, h-90.0, false, false, 0, 0)
                        while not DoesEntityExist(npcSpawnCode) do
                            Wait(0)
                        end
                        Citizen.InvokeNative(0x283978A15512B2FE, npcSpawnCode, true)
                        SetPedAsGroupMember(npcSpawnCode, GetPedGroupIndex(PlayerPedId()))
                        SetBlockingOfNonTemporaryEvents(npcSpawnCode,true)
                        FreezeEntityPosition(npcSpawnCode, true)
                        SetEntityInvincible(npcSpawnCode, true)
                        TaskStandStill(npcSpawnCode, -1)
                        ClearPedEnvDirt(npcSpawnCode)
                        ClearPedDamageDecalByZone(npcSpawnCode ,10 ,"ALL")
                        ClearPedBloodDamage(npcSpawnCode)
                        npcsDogs[count] = npcSpawnCode

                        SetEntityCollision(npcSpawnCode, false, false)
                    end)
                end
            end
        end
    end
end
function despawnNpc(count) 
    if npcsManPets[count] ~= nil then
        DeleteObj(npcsManPets[count])
        npcsManPets[count] = nil
    end
    if npcsDogs[count] ~= nil then
        DeleteObj(npcsDogs[count])
        npcsDogs[count] = nil
    end
end


RegisterNetEvent("vorp:SelectedCharacter")
AddEventHandler("vorp:SelectedCharacter", function(charid)
    Citizen.CreateThread(function()
        Citizen.Wait(2000)
        TriggerServerEvent("gum_pets:check_pets")
        for k,v in pairs(Config.Shops) do
            shop_blip = N_0x554d9d53f696d002(1664425300, v['Shop_Coords'].x, v['Shop_Coords'].y, v['Shop_Coords'].z)
            SetBlipSprite(shop_blip, -1646261997, 1)
            SetBlipScale(shop_blip, 0.5)
            Citizen.InvokeNative(0x9CB1A1623062F402, shop_blip, "Animal shelter")
        end
        Button_Prompt()
        while true do
            local optimize = 500
            if inPetList then
                optimize = 5
                DisableControlAction(0, 0xD0842EDF, true)
                DisableControlAction(0, 0xFD0F0C2C, true)
                DisableControlAction(0, 0xF78D7337, true)
                DisableControlAction(0, 0xCC1075A7, true)
                DisableControlAction(0, 0xB2F377E8, true)
                DisableControlAction(0, 0xADEAF48C, true)
                DisableControlAction(0, 0x07CE1E61, true)
                DisableControlAction(0, 0x60C81CDE, true)
                DisableControlAction(0, 0xA987235F, true)
                DisableControlAction(0, 0xD6C4ECDC, true)
                DisableControlAction(0, 0xA1EB1353, true)
                DisableControlAction(0, 0xD2047988, true)
                DisableControlAction(0, 0xE4130778, true)
                DisableControlAction(0, 0xF84FA74F, true)
                DisableControlAction(0, 0xF8982F00, true)
                DisableControlAction(0, 0x6328239B, true)
                DisableControlAction(0, 0x53296B75, true)
                Citizen.InvokeNative(0xFF287323B0E2C69A, PlayerPedId())

            end
            if pet_model ~= nil then
                NetworkRequestControlOfEntity(pet_model)
            end
            for k,v in pairs(Config.Shops) do
                local coords = GetEntityCoords(PlayerPedId())
                if not Config.enableInteractWithNpc then
                    if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, v['Shop_Coords'].x, v['Shop_Coords'].y, v['Shop_Coords'].z, false) < 1.5 and inPetList == false then
                        optimize = 5
                        PromptSetActiveGroupThisFrame(buttons_prompt, CreateVarString(10, 'LITERAL_STRING', Config.Language[1]))
                        if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, 0x27D1C284) then
                            if Config.useTimeLogic then
                                if canEnter then
                                    local newStore = {}
                                    for f,g in pairs(Config.Pets_Store) do
                                        local empty = false
                                        for h,j in pairs(g.JobStore) do
                                            if (job == j or j == "unemployed") and g.supporter == nil then
                                                table.insert(newStore, g)
                                            end
                                        end
                                        if g.supporter ~= nil and g.supporter == supporter then
                                            table.insert(newStore, g)
                                        end
                                    end
                                    SetNuiFocus(true, true)
                                    SendNUIMessage({type="store",petData=newStore, open=true, gold=Config.GoldRol, language=Config.Language})
                                    store = k
                                    Open_Pets(k)
                                else
                                    if Config.Gum_Notify_Old then
                                        exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[80], Config.FirstName, Config.SecondName, 3000)
                                    end
                                    if Config.Gum_Notify_NUI then
                                        exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[80], Config.Image, 3000)
                                    end
                                end
                            else
                                local newStore = {}
                                for f,g in pairs(Config.Pets_Store) do
                                    local empty = false
                                    for h,j in pairs(g.JobStore) do
                                        if (job == j or j == "unemployed") and g.supporter == nil then
                                            table.insert(newStore, g)
                                        end
                                    end
                                    if g.supporter ~= nil and g.supporter == supporter then
                                        table.insert(newStore, g)
                                    end
                                end
                                SetNuiFocus(true, true)
                                SendNUIMessage({type="store",petData=newStore, open=true, gold=Config.GoldRol, language=Config.Language})
                                store = k
                                Open_Pets(k)
                            end
                        end
                    end
                else
                    local coords, entity = gum.getTarget()
                    local entityCoords = GetEntityCoords(entity)
                    if (entity ~= PlayerPedId()) and npcsManPets[k] == entity and gum.playerNearCoords(entityCoords.x, entityCoords.y, entityCoords.z, 2.0) and inPetList == false then
                        optimize = 5
                        PromptSetActiveGroupThisFrame(buttons_prompt, CreateVarString(10, 'LITERAL_STRING', Config.Language[1]))
                        if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, 0x27D1C284) then
                            if Config.useTimeLogic then
                                if canEnter then
                                    local newStore = {}
                                    for f,g in pairs(Config.Pets_Store) do
                                        local empty = false
                                        for h,j in pairs(g.JobStore) do
                                            if (job == j or j == "unemployed") and g.supporter == nil then
                                                table.insert(newStore, g)
                                            end
                                        end
                                        if g.supporter ~= nil and g.supporter == supporter then
                                            table.insert(newStore, g)
                                        end
                                    end
                                    SetNuiFocus(true, true)
                                    SendNUIMessage({type="store",petData=newStore, open=true, gold=Config.GoldRol, language=Config.Language})
                                    store = k
                                    Open_Pets(k)
                                else
                                    if Config.Gum_Notify_Old then
                                        exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[80], Config.FirstName, Config.SecondName, 3000)
                                    end
                                    if Config.Gum_Notify_NUI then
                                        exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[80], Config.Image, 3000)
                                    end
                                end
                            else
                                local newStore = {}
                                for f,g in pairs(Config.Pets_Store) do
                                    local empty = false
                                    for h,j in pairs(g.JobStore) do
                                        if (job == j or j == "unemployed") and g.supporter == nil then
                                            table.insert(newStore, g)
                                        end
                                    end
                                    if g.supporter ~= nil and g.supporter == supporter then
                                        table.insert(newStore, g)
                                    end
                                end
                                SetNuiFocus(true, true)
                                SendNUIMessage({type="store",petData=newStore, open=true, gold=Config.GoldRol, language=Config.Language})
                                store = k
                                Open_Pets(k)
                            end
                        end
                    end
                end
            end
            if stats_show == true then
                if pet_model ~= nil then                  
                    optimize = 5
                    if peds ~= 0 then
                        local isTargetting, targetEntity = GetPlayerTargetEntity(PlayerId())
                        if peds[targetEntity] then
                            if GetEntityHealth(targetEntity) ~= 0 then
                                local canThis = false
                                for k,v in pairs(Config.Pets_Store) do
                                    if GetHashKey(v.Model) == GetEntityModel(pet_model) then
                                        if v.CanAttackOnPed == true then
                                            canThis = true
                                        end
                                    end
                                end
                                local promptGroup = PromptGetGroupIdForTargetEntity(targetEntity)
                                if canThis then
                                    dog_prompt3 = Uiprompt:new(`INPUT_CONTEXT_X`, ""..Config.Language[73].."", promptGroup)
                                    if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, `INPUT_CONTEXT_X`) then
                                        if GetEntityType(targetEntity) == 1 and not Citizen.InvokeNative(0x772A1969F649E902, GetEntityModel(targetEntity)) then
                                            SetPedRelationshipGroupHash(targetentity,AddRelationshipGroup("attackedPeds"))
                                            SetRelationshipBetweenGroups(5, GetPedRelationshipGroupHash(pet_model), GetPedRelationshipGroupHash(targetentity))
                                            TaskCombatPed(pet_model, targetEntity, 0, 16)
                                            SetPedCombatMovement(pet_model, 3)
                                        end
                                    end
                                end
                            end
                        end
                    end
                    local isTargetting, targetEntity = GetPlayerTargetEntity(PlayerId())
                    if targetEntity == pet_model then
                        DisableControlAction(0, 0x31219490, true)
                        
                        if dog_prompt1 then dog_prompt1:delete() end
                        if dog_prompt2 then dog_prompt2:delete() end
                        if dog_prompt4 then dog_prompt4:delete() end
                        if dog_prompt3 then dog_prompt3:delete() end

                        local promptGroup = PromptGetGroupIdForTargetEntity(targetEntity)
                        local coords = GetEntityCoords(PlayerPedId())
                        local coordsPed = GetEntityCoords(pet_model)
                        if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, coordsPed.x, coordsPed.y, coordsPed.z, false) > 2.0 then
                            local canThis = false
                            for k,v in pairs(Config.Pets_Store) do
                                if GetHashKey(v.Model) == GetEntityModel(targetEntity) then
                                    if v.CanCallToMe == true then
                                        canThis = true
                                    end
                                end
                            end
                            if canThis then
                                dog_prompt1 = Uiprompt:new(`INPUT_CONTEXT_X`, ""..Config.Language[64].."", promptGroup)
                                if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, `INPUT_CONTEXT_X`) then
                                    if inhand ~= true then
                                        if antispam == false then
                                            antispam = true
                                            TaskGoToEntity(pet_model, PlayerPedId(), -1, 2.4, 1.0, 0, 0)
                                            Citizen.Wait(5000)
                                            antispam = false
                                            if 0 == callrange then
                                                MakeAnims("Call5m")
                                            elseif 1 == callrange then
                                                MakeAnims("Call10m")
                                            elseif 2 == callrange then
                                                MakeAnims("Call15m")
                                            elseif 3 == callrange then
                                                MakeAnims("Call20m")
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        local canThis = false
                        for k,v in pairs(Config.Pets_Store) do
                            if GetHashKey(v.Model) == GetEntityModel(targetEntity) then
                                if v.CanSearchAnimals == true then
                                    canThis = true
                                end
                            end
                        end
                        if canThis then
                            dog_prompt2 = Uiprompt:new(`INPUT_CONTEXT_B`, ""..Config.Language[65].."", promptGroup)
                            if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, `INPUT_CONTEXT_B`) then
                                if inhand ~= true then
                                    SearchAnimal()
                                end
                            end
                        end
                        local canThis = false
                        for k,v in pairs(Config.Pets_Store) do
                            if GetHashKey(v.Model) == GetEntityModel(targetEntity) then
                                if v.CanHuntSmallAnimal == true then
                                    canThis = true
                                end
                            end
                        end
                        if canThis then
                            dog_prompt4 = Uiprompt:new(`INPUT_PROMPT_PAGE_NEXT`, ""..Config.Language[74].."", promptGroup)
                            if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, `INPUT_PROMPT_PAGE_NEXT`) then
                                if inhand ~= true then
                                    TakeToMeAnimal()
                                end
                            end
                        end
                    end
                    if pethealth == GetEntityHealth(pet_model) then
                        if DoesEntityExist(pet_model) and pethealth ~= nil then
                            pethealth = GetEntityHealth(pet_model)
                            SendNUIMessage({show=true, health=pethealth, thirst=petthirst, hunger=pethunger })
                        end
                    else
                        if DoesEntityExist(pet_model) and pethealth ~= nil then
                            pethealth = GetEntityHealth(pet_model)
                            EditMeta("health")
                            SendNUIMessage({show=true, health=pethealth, thirst=petthirst, hunger=pethunger })
                        end
                        Citizen.Wait(1000)
                        TriggerServerEvent("gum_pets:save_status", pet_list)
                    end
                end
            else
                SendNUIMessage({show=false, health=pethealth, thirst=petthirst, hunger=pethunger })
            end
            if in_pet_list == true and givepetid ~= 0 then
                optimize = 5
                if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, 0x27D1C284) then
                    in_pet_list = false
                    MenuData.CloseAll()
                    TriggerEvent("guminputs:getInput", Config.Language[43], Config.Language[44], function(cb)
                        local id = tonumber(cb)
                        if id ~= nil then
                            if id ~= 'close' and id >= 0 then
                                can_open = true
                                TriggerServerEvent("gum_pets:change_owner", id, givepetid)
                            else
                                if Config.Gum_Notify_Old then
                                    exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[45], Config.FirstName, Config.SecondName, 3000)
                                end
                                if Config.Gum_Notify_NUI then
                                    exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[45], Config.Image, 3000)
                                end
                            end
                        end
                    end)
                end
                if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, 0x3F4DC0EF) then
                    in_pet_list = false
                    MenuData.CloseAll()
                    TriggerEvent("guminputs:getAnswer", Config.Language[46], ""..Config.Language[68].."", ""..Config.Language[69].."", function(cb)
                        local input = cb
                        if input == true then
                            can_open = true
                            TriggerServerEvent("gum_pets:delete_pet", givepetid)
                            return true
                        else
                            return false
                        end
                    end)
                end
            end
            Citizen.Wait(optimize)
        end
    end)
end)

AddEventHandler('onResourceStop', function(resourceName)
	if (GetCurrentResourceName() == resourceName) then
        for k,v in pairs(npcsManPets) do
            DeleteObj(v)
        end
        for k,v in pairs(npcsDogs) do
            DeleteObj(v)
        end
	end
end)


Citizen.CreateThread(function()
    while true do
        peds = {}
        if pet_model ~= nil then
            for pedEntity in EnumeratePeds() do
                Citizen.InvokeNative(0x5DA12E025D47D4E5, pedEntity, 3, 9)
                local pCd = GetEntityCoords(PlayerPedId())
                local cdProp = GetEntityCoords(pedEntity)
                local itsPlayer = false
                if GetDistanceBetweenCoords(pCd.x, pCd.y, pCd.z, cdProp.x, cdProp.y, cdProp.z, false) < 10.0 then
                    Citizen.InvokeNative(0x772A1969F649E902, pedEntity)
                    local isTargetting, targetEntity = GetPlayerTargetEntity(PlayerId())
                    for a,b in pairs(GetPlayers()) do
                        if pedEntity == GetPlayerPed(b) then
                            itsPlayer = true
                        end
                    end
                    if pedEntity ~= PlayerPedId() and pedEntity ~= pet_model and not itsPlayer then
                        peds[pedEntity] = true
                    end
                end
            end
        end
        Citizen.Wait(500)
    end
end)

function Behavior()
    Citizen.InvokeNative(0xAEB97D84CDF3C00B, pet_model, false)
    Citizen.InvokeNative(0x013A7BA5015C1372, pet_model, true)
    TaskAnimalUnalerted(pet_model, -1, false, 0, 0)
    
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), 143493179)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), -2040077242)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), 1222652248)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), 1077299173)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), -887307738)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), -1998572072)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), -661858713)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), 1232372459)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), -1836932466)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), 1878159675)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), 1078461828)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), -1535431934)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), 1862763509)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), -1663301869)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), -1448293989)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), -1201903818)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), -886193798)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), -1996978098)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), 555364152)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), -2020052692)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), 707888648)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), 378397108)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), -350651841)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), -1538724068)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), 1030835986)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), -1919885972)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), -1976316465)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), 841021282)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), 889541022)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), -1329647920)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), -319516747)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), -767591988)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), -989642646)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), 1986610512)
    SetRelationshipBetweenGroups(1, GetPedRelationshipGroupHash(pet_model), -1683752762)
end

Citizen.CreateThread(function()
    while true do
        if pet_model ~= nil then
            local random1 = math.random(1,4)
            local random2 = math.random(4,8)
            local random3 = math.random(8,15)
            local random4 = math.random(16,20)--GetMount(PlayerPedId())
            if GetMount(PlayerPedId()) ~= nil or GetMount(PlayerPedId()) ~= false then
                if IsPedWalking(GetMount(PlayerPedId())) then
                    if inhand == false then
                        AddExp(Config.ExpSystem.Walking)
                    end
                    EditMeta("hunger", random2*0.05)
                    EditMeta("thirst", random2*0.05)
                elseif IsPedRunning(GetMount(PlayerPedId())) then
                    if inhand == false then
                        AddExp(Config.ExpSystem.Running)
                    end
                    EditMeta("hunger", random3*0.05)
                    EditMeta("thirst", random3*0.05)
                elseif IsPedSprinting(GetMount(PlayerPedId())) then
                    if inhand == false then
                        AddExp(Config.ExpSystem.Sprinting)
                    end
                    EditMeta("hunger", random4*0.05)
                    EditMeta("thirst", random4*0.05)
                else
                    EditMeta("hunger", random1*0.05)
                    EditMeta("thirst", random1*0.05)
                end
            else
                if IsPedWalking(PlayerPedId()) then
                    if inhand == false then
                        AddExp(Config.ExpSystem.Walking)
                    end
                    EditMeta("hunger", random2*0.05)
                    EditMeta("thirst", random2*0.05)
                elseif IsPedRunning(PlayerPedId()) then
                    if inhand == false then
                        AddExp(Config.ExpSystem.Running)
                    end
                    EditMeta("hunger", random3*0.05)
                    EditMeta("thirst", random3*0.05)
                elseif IsPedSprinting(PlayerPedId()) then
                    if inhand == false then
                        AddExp(Config.ExpSystem.Sprinting)
                    end
                    EditMeta("hunger", random4*0.05)
                    EditMeta("thirst", random4*0.05)
                else
                    EditMeta("hunger", random1*0.05)
                    EditMeta("thirst", random1*0.05)
                end
            end
            if pethunger <= 0.5 or petthirst <= 0.5 then
                EditMeta("health_drain", 1)
            end
        end
        Citizen.Wait(10000)
    end
end)

function EditMeta(type, much)
    if type == "hunger" then
        for k,v in pairs(pet_list) do
            if v.selected == 1 then
                local old_table = json.decode(v.pets_info)
                if old_table.hunger-much <= 0 then
                    old_table.hunger = 0.0
                    pethunger = 0.0
                else
                    old_table.hunger = old_table.hunger-much
                    pethunger = old_table.hunger-much
                end
                v.pets_info = json.encode(old_table)
            end
        end
    elseif type == "thirst" then
        for k,v in pairs(pet_list) do
            if v.selected == 1 then
                local old_table = json.decode(v.pets_info)
                if old_table.thirst-much <= 0 then
                    old_table.thirst = 0.0
                    petthirst = 0.0
                else
                    old_table.thirst = old_table.thirst-much
                    petthirst = old_table.thirst-much
                end
                v.pets_info = json.encode(old_table)
            end
        end
    elseif type == "health" then
        for k,v in pairs(pet_list) do
            if v.selected == 1 then
                local old_table = json.decode(v.pets_info)
                old_table.health = pethealth
                v.pets_info = json.encode(old_table)
            end
        end
    elseif type == "health_up" then
        for k,v in pairs(pet_list) do
            if v.selected == 1 then
                local old_table = json.decode(v.pets_info)
                old_table.health = old_table.health+much
                if old_table.health >= 100 then
                    SetEntityHealth(pet_model, 100)
                    old_table.health = 100
                else
                    SetEntityHealth(pet_model, old_table.health)
                end
                v.pets_info = json.encode(old_table)
            end
        end
    elseif type == "health_drain" then
        for k,v in pairs(pet_list) do
            if v.selected == 1 then
                local old_table = json.decode(v.pets_info)
                if pethealth-much <= 0 then
                    old_table.health = 0
                    pethealth = 0
                    SetEntityHealth(pet_model,tonumber(pethealth))
                else
                    old_table.health = pethealth-much
                    pethealth = pethealth-much
                    SetEntityHealth(pet_model,tonumber(pethealth)-tonumber(much))
                end
                v.pets_info = json.encode(old_table)
            end
        end
    end
end

Citizen.CreateThread(function()
    while true do
        if pet_model ~= nil then
            if split_exp ~= 0 and Config.ExpLevels[#Config.ExpLevels] >= petexp then
                TriggerServerEvent("gum_pets:save_exp", pet_list)
                if Config.Gum_Notify_Old then
                    exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[2]..""..split_exp.."", Config.FirstName, Config.SecondName, 3000)
                end
                if Config.Gum_Notify_NUI then
                    exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[2]..""..split_exp.."", Config.Image, 3000)
                end
                split_exp = 0
            end
            Citizen.Wait(2000)
            local count_dead = 0
            for k,v in pairs(pet_list) do
                if json.decode(v.pets_info).age == "Old" then
                    count_dead = k
                end
            end
            if count_dead ~= 0 then
                local calc_dead = math.random(1, count_dead)
                for k,v in pairs(pet_list) do
                    if json.decode(v.pets_info).age == "Old" then
                        if k == calc_dead then
                            local dead = math.random(1,100)
                            if dead <= 10 then
                                v.is_dead = 1
                                TriggerServerEvent("gum_pets:set_dead", v.id)
                            end
                        end
                    end
                end
            end
        end
        Citizen.Wait(5*60000)
    end
end)

RegisterNetEvent('gum_pets:pet_list')
AddEventHandler('gum_pets:pet_list', function(petslist, steam_char, char_id, state, u_job, u_supporter)
    charid = char_id
    steamchar = steam_char
    pet_list = petslist
    can_open = false
    hand = false
    shoulder = false
    if u_supporter ~= nil then
        supporter = u_supporter
    end
    if u_job ~= nil then
        job = u_job
    end
    if state == true then
        local newTable = {}
        local levelpet = 0
        local shoulder = false
        local hand = false
        for a,b in pairs(pet_list) do
            if b.selected == 1 then
                levelpet = MakeLevel(json.decode(b.pets_info).exp)
            end
        end
        for a,b in pairs(pet_list) do
            local skill1 = json.decode(b.pets_info).skill1
            local skill2 = json.decode(b.pets_info).skill2
            local skill3 = json.decode(b.pets_info).skill3
            local skill4 = json.decode(b.pets_info).skill4
            local skill5 = json.decode(b.pets_info).skill5
            local skill6 = json.decode(b.pets_info).skill6
            local skill7 = json.decode(b.pets_info).skill7
            local skill8 = json.decode(b.pets_info).skill8
            local skill9 = json.decode(b.pets_info).skill9
            local skill10 = json.decode(b.pets_info).skill10
            local skill11 = json.decode(b.pets_info).skill11
            local skill12 = json.decode(b.pets_info).skill12
            local skills = {}
            for k,v in pairs(Config.Pets_Store) do
                if v.Model == json.decode(b.pets_info).model then
                    if b.selected == 1 then
                        hand = v.ToHand
                        shoulder = v.OnShoulder
                        for k2,v2 in pairs(v) do
                            if string.match(k2, "Command") then
                                if levelpet >= v2[1] then
                                    local number = string.match(k2,"%d+")
                                    if tonumber(number) == 1 then
                                        table.insert(skills, {name=v2[2], skill=v2[3], rank=SkillToText(skill1)})
                                    elseif tonumber(number) == 2 then
                                        table.insert(skills, {name=v2[2], skill=v2[3], rank=SkillToText(skill2)})
                                    elseif tonumber(number) == 3 then
                                        table.insert(skills, {name=v2[2], skill=v2[3], rank=SkillToText(skill3)})
                                    elseif tonumber(number) == 4 then
                                        table.insert(skills, {name=v2[2], skill=v2[3], rank=SkillToText(skill4)})
                                    elseif tonumber(number) == 5 then
                                        table.insert(skills, {name=v2[2], skill=v2[3], rank=SkillToText(skill5)})
                                    elseif tonumber(number) == 6 then
                                        table.insert(skills, {name=v2[2], skill=v2[3], rank=SkillToText(skill6)})
                                    elseif tonumber(number) == 7 then
                                        table.insert(skills, {name=v2[2], skill=v2[3], rank=SkillToText(skill7)})
                                    elseif tonumber(number) == 8 then
                                        table.insert(skills, {name=v2[2], skill=v2[3], rank=SkillToText(skill8)})
                                    elseif tonumber(number) == 9 then
                                        table.insert(skills, {name=v2[2], skill=v2[3], rank=SkillToText(skill9)})
                                    elseif tonumber(number) == 10 then
                                        table.insert(skills, {name=v2[2], skill=v2[3], rank=SkillToText(skill10)})
                                    elseif tonumber(number) == 11 then
                                        table.insert(skills, {name=v2[2], skill=v2[3], rank=SkillToText(skill11)})
                                    elseif tonumber(number) == 12 then
                                        table.insert(skills, {name=v2[2], skill=v2[3], rank=SkillToText(skill12)})
                                    end
                                end
                            end
                        end
                    end
                end
            end
            Citizen.Wait(0)
            table.insert(newTable, {skills=skills, id=b.id,selected=b.selected,age=json.decode(b.pets_info).age,health=json.decode(b.pets_info).health,thirst=json.decode(b.pets_info).thirst,hunger=json.decode(b.pets_info).hunger,name=json.decode(b.pets_info).name,styl=json.decode(b.pets_info).styl,exp=json.decode(b.pets_info).exp,model=json.decode(b.pets_info).model,mname=json.decode(b.pets_info).mname})
        end
        SetNuiFocus(true,true)
        SetNuiFocusKeepInput(true)
        inPetList = true
        SendNUIMessage({type="petManage",myPetData=newTable, open=true,callrange=callrange,yrange=yrange/2,shoulder=shoulder,hand=hand, language=Config.Language, supp=supporter, supLevel=supLevel})
    end
end)


RegisterNetEvent('gum_pets:heal_pet')
AddEventHandler('gum_pets:heal_pet', function(hunger, thirst, health, item)
    if pet_model == nil then
        TriggerServerEvent("gum_pets:give_back_item", item)
        if Config.Gum_Notify_Old then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[3], Config.FirstName, Config.SecondName, 3000)
        end
        if Config.Gum_Notify_NUI then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[3], Config.Image, 3000)
        end
        return false
    end
    if pet_model ~= nil then
        local coords = GetEntityCoords(PlayerPedId())
        local coords2 = GetEntityCoords(pet_model)
        if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, coords2, coords2, coords2, false) < 2.0 then
            if GetEntityHealth(pet_model) == 0.0 then
                ReviveInjuredPed(pet_model)
                EditMeta("health_up", health)
                EditMeta("thirst", thirst)
                EditMeta("hunger", hunger)
            else
                EditMeta("health_up", health)
                EditMeta("thirst", thirst)
                EditMeta("hunger", hunger)
            end
        else
            TriggerServerEvent("gum_pets:give_back_item", item)
            if Config.Gum_Notify_Old then
                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[4], Config.FirstName, Config.SecondName, 3000)
            end
            if Config.Gum_Notify_NUI then
                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[4], Config.Image, 3000)
            end
            return false
        end
    end
end)

RegisterCommand(''..Config.Language[29]..'', function()
    inPetList = true
    SetNuiFocus(true,true)
    SetNuiFocusKeepInput(true)
    local newTable = {}
    local levelpet = 0
    local shoulder = false
    local hand = false
    for a,b in pairs(pet_list) do
        if b.selected == 1 then
            levelpet = MakeLevel(json.decode(b.pets_info).exp)
        end
    end
    for a,b in pairs(pet_list) do
        local skill1 = json.decode(b.pets_info).skill1
        local skill2 = json.decode(b.pets_info).skill2
        local skill3 = json.decode(b.pets_info).skill3
        local skill4 = json.decode(b.pets_info).skill4
        local skill5 = json.decode(b.pets_info).skill5
        local skill6 = json.decode(b.pets_info).skill6
        local skill7 = json.decode(b.pets_info).skill7
        local skill8 = json.decode(b.pets_info).skill8
        local skill9 = json.decode(b.pets_info).skill9
        local skill10 = json.decode(b.pets_info).skill10
        local skill11 = json.decode(b.pets_info).skill11
        local skill12 = json.decode(b.pets_info).skill12
        local skills = {}
        for k,v in pairs(Config.Pets_Store) do
            if v.Model == json.decode(b.pets_info).model then
                if b.selected == 1 then
                    hand = v.ToHand
                    shoulder = v.OnShoulder
                    for k2,v2 in pairs(v) do
                        if string.match(k2, "Command") then
                            if levelpet >= v2[1] then
                                local number = string.match(k2,"%d+")
                                if tonumber(number) == 1 then
                                    table.insert(skills, {name=v2[2], skill=v2[3], rank=SkillToText(skill1)})
                                elseif tonumber(number) == 2 then
                                    table.insert(skills, {name=v2[2], skill=v2[3], rank=SkillToText(skill2)})
                                elseif tonumber(number) == 3 then
                                    table.insert(skills, {name=v2[2], skill=v2[3], rank=SkillToText(skill3)})
                                elseif tonumber(number) == 4 then
                                    table.insert(skills, {name=v2[2], skill=v2[3], rank=SkillToText(skill4)})
                                elseif tonumber(number) == 5 then
                                    table.insert(skills, {name=v2[2], skill=v2[3], rank=SkillToText(skill5)})
                                elseif tonumber(number) == 6 then
                                    table.insert(skills, {name=v2[2], skill=v2[3], rank=SkillToText(skill6)})
                                elseif tonumber(number) == 7 then
                                    table.insert(skills, {name=v2[2], skill=v2[3], rank=SkillToText(skill7)})
                                elseif tonumber(number) == 8 then
                                    table.insert(skills, {name=v2[2], skill=v2[3], rank=SkillToText(skill8)})
                                elseif tonumber(number) == 9 then
                                    table.insert(skills, {name=v2[2], skill=v2[3], rank=SkillToText(skill9)})
                                elseif tonumber(number) == 10 then
                                    table.insert(skills, {name=v2[2], skill=v2[3], rank=SkillToText(skill10)})
                                elseif tonumber(number) == 11 then
                                    table.insert(skills, {name=v2[2], skill=v2[3], rank=SkillToText(skill11)})
                                elseif tonumber(number) == 12 then
                                    table.insert(skills, {name=v2[2], skill=v2[3], rank=SkillToText(skill12)})
                                end
                            end
                        end
                    end
                end
            end
        end
        Citizen.Wait(0)
        table.insert(newTable, {skills=skills, id=b.id,selected=b.selected,age=json.decode(b.pets_info).age,health=json.decode(b.pets_info).health,thirst=json.decode(b.pets_info).thirst,hunger=json.decode(b.pets_info).hunger,name=json.decode(b.pets_info).name,styl=json.decode(b.pets_info).styl,exp=json.decode(b.pets_info).exp,model=json.decode(b.pets_info).model,mname=json.decode(b.pets_info).mname})
    end
    SendNUIMessage({type="petManage",myPetData=newTable, open=true,callrange=callrange,yrange=yrange/2,shoulder=shoulder,hand=hand, language=Config.Language})
end)

RegisterNUICallback('takeToHand', function(data,cb)
    TakeHand()
end)

RegisterNUICallback('takeOnShoulder', function(data,cb)
    TakeOnShoulder()
end)

function TakeHand()
    if not inhand then
        inhand = true
        if GetEntityHealth(pet_model) ~= 0.0 then
            TaskGoToEntity(pet_model, PlayerPedId(), -1, 3.0, 1.0, 0, 0)
            Citizen.Wait(1500)
        end
        PlayAnim("mech_pickup@fish_large@red_snapper@putdown","putdown")
        Citizen.Wait(1000)
        AttachEntityToEntity(pet_model, PlayerPedId(), GetEntityBoneIndexByName(PlayerPedId(), "SH_BodyStrap_00_Alt1"), 00.33, -0.32, 0.26,  0, 0, 0, false, false, true, false, 0, true, false, false)
        PlayerPlayAnim("mech_loco_m@generic@carry@moonshine@crouch@idle", "idle")
        DogPlayAnim("amb_creature_mammal@world_dog_sitting@base", "base")
    else
        inhand = false
        PlayAnim("mech_pickup@fish_large@red_snapper@putdown","putdown")
        Citizen.Wait(1000)
        DetachEntity(pet_model, 1, 1)
        ClearPedTasks(PlayerPedId())
        ClearPedTasks(pet_model)
    end
end

function TakeOnShoulder()--
    if not inhand then
        inhand = true
        if Citizen.InvokeNative(0xC346A546612C49A9, pet_model) then
            local notOnShoulder = false
            while notOnShoulder == false do
                if pet_model == nil then
                    inhand = false
                    break
                end
                local coords = GetEntityCoords(PlayerPedId())
                local petCoords = GetEntityCoords(pet_model)
                TaskFlyToCoord(pet_model, 1.0, coords.x, coords.y, coords.z, 1, 1) 
                if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, petCoords.x, petCoords.y, petCoords.z, true) < 1.2 then
                    notOnShoulder = true
                end
                Citizen.Wait(500)
            end
            AttachEntityToEntity(pet_model, PlayerPedId(), GetEntityBoneIndexByName(PlayerPedId(), "CP_L_Shoulder"), 0.0, 0.0, 0.05,  0.0, 0.0, 160.0, false, false, false, false, 0, true, false, false)
            ClearPedTasks(pet_model)
            DogPlayAnim("amb_creatures_bird@world_parrot_on_ground@base", "base")
            Citizen.Wait(1000)
            AttachEntityToEntity(pet_model, PlayerPedId(), GetEntityBoneIndexByName(PlayerPedId(), "CP_L_Shoulder"), 0.0, 0.0, 0.05,  0.0, 0.0, 160.0, false, false, false, false, 0, true, false, false)
        else
            if GetEntityHealth(pet_model) ~= 0.0 then
                TaskGoToEntity(pet_model, PlayerPedId(), -1, 3.0, 1.0, 0, 0)
                Citizen.Wait(1500)
            end
            PlayAnim("mech_skin@parrot@pickup_fallback","fallback")
            Citizen.Wait(1000)
            AttachEntityToEntity(pet_model, PlayerPedId(), GetEntityBoneIndexByName(PlayerPedId(), "CP_L_Shoulder"), 0.0, 0.0, 0.05,  0.0, 0.0, 160.0, false, false, true, false, 0, true, false, false)
            if not Citizen.InvokeNative(0xC346A546612C49A9, pet_model) then
                DogPlayAnim("amb_creature_mammal@world_squirrel_on_log", "idle_a")
            end
        end
    else
        inhand = false
        if Citizen.InvokeNative(0xC346A546612C49A9, pet_model) then
            DetachEntity(pet_model, 1, 1)
            local coords = GetEntityCoords(PlayerPedId())
            Citizen.InvokeNative(0x72997893BFB8ECCC, pet_model, 1.0, coords.x+5.0, coords.y+5.0, coords.z, 1.0, 1.0)
            Citizen.Wait(50)
            ClearPedTasks(PlayerPedId())
            ClearPedTasks(pet_model)
        else
            PlayAnim("amb_camp@world_camp_jack_es@bucket_pickup@empty@male_a@base","base")
            Citizen.Wait(1000)
            DetachEntity(pet_model, 1, 1)
            ClearPedTasks(PlayerPedId())
            ClearPedTasks(pet_model)
        end
    end
end

function CallPets()
    if pet_model ~= nil then
        SendNUIMessage({type="callPet",called=false})
        stats_show = false
        DeleteObj(pet_model, true)
        pet_model = nil
        inhand = false
        if Config.Gum_Notify_Old then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[5], Config.FirstName, Config.SecondName, 3000)
        end
        if Config.Gum_Notify_NUI then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[5], Config.Image, 3000)
        end
        return false
    end
    for k,v in pairs(pet_list) do
        if v.selected == 1 then
            SendNUIMessage({type="callPet",called=true})
            call_pet = true
            if v.is_dead == 1 then
                if Config.Gum_Notify_Old then
                    exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[6], Config.FirstName, Config.SecondName, 3000)
                end
                if Config.Gum_Notify_NUI then
                    exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[6], Config.Image, 3000)
                end
                return false
            else
                MakePets(json.decode(v.pets_info).model, json.decode(v.pets_info).name, json.decode(v.pets_info).age, json.decode(v.pets_info).styl, json.decode(v.pets_info).exp, v.id, json.decode(v.pets_info).health, json.decode(v.pets_info).hunger, json.decode(v.pets_info).thirst)
            end
            if Config.Gum_Notify_Old then
                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[7], Config.FirstName, Config.SecondName, 3000)
            end
            if Config.Gum_Notify_NUI then
                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[7], Config.Image, 3000)
            end
        end
    end
    if call_pet == false then
        if Config.Gum_Notify_Old then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[8], Config.FirstName, Config.SecondName, 3000)
        end
        if Config.Gum_Notify_NUI then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[8], Config.Image, 3000)
        end
        return false
    end
end

function MakeSkill(type, anim, val2, text)
    if type == "hunger" then
        if Citizen.InvokeNative(0xC346A546612C49A9, pet_model) then
            PlayAnim("mech_pickup@fish_large@red_snapper@putdown","putdown")
            local notEatOrDrink = false
            local coords = GetEntityCoords(PlayerPedId())
            while notEatOrDrink == false do
                if pet_model == nil then
                    break
                end
                local petCoords = GetEntityCoords(pet_model)
                TaskFlyToCoord(pet_model, 1.0, coords.x+0.2, coords.y+0.2, coords.z-1.0, 1, 1) 
                if GetDistanceBetweenCoords(coords.x+0.2, coords.y+0.2, coords.z, petCoords.x, petCoords.y, petCoords.z, true) < 1.2 then
                    notEatOrDrink = true
                end
                Citizen.Wait(500)
            end
            AddExp(Config.ExpSystem.Eat)
            if Config.Gum_Notify_Old then
                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[9], Config.FirstName, Config.SecondName, 3000)
            end
            if Config.Gum_Notify_NUI then
                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[9], Config.Image, 3000)
            end
            Citizen.InvokeNative(0x72997893BFB8ECCC, pet_model, 1.0, coords.x+5.0, coords.y+5.0, coords.z, 1.0, 1.0)
        else
            PlayAnim("mech_pickup@fish_large@red_snapper@putdown","putdown")
            Citizen.Wait(3000)
            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
            AddExp(Config.ExpSystem.Eat)
            if Config.Gum_Notify_Old then
                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[9], Config.FirstName, Config.SecondName, 3000)
            end
            if Config.Gum_Notify_NUI then
                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[9], Config.Image, 3000)
            end
            Citizen.Wait(5000)
            if callrange == 0 then
                statenow = 1
                MakeAnims("Call5m")
            elseif callrange == 1 then
                statenow = 1
                MakeAnims("Call10m")
            elseif callrange == 2 then
                statenow = 1
                MakeAnims("Call15m")
            elseif callrange == 3 then
                statenow = 1
                MakeAnims("Call20m")
            end
        end
    elseif type == "thirst" then
        PlayAnim("mech_pickup@fish_large@red_snapper@putdown","putdown")
        Citizen.Wait(3000)
        AddExp(Config.ExpSystem.Drink)
        TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
        if Config.Gum_Notify_Old then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[10], Config.FirstName, Config.SecondName, 3000)
        end
        if Config.Gum_Notify_NUI then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[10], Config.Image, 3000)
        end
        Citizen.Wait(5000)
        if callrange == 0 then
            statenow = 1
            MakeAnims("Call5m")
        elseif callrange == 1 then
            statenow = 1
            MakeAnims("Call10m")
        elseif callrange == 2 then
            statenow = 1
            MakeAnims("Call15m")
        elseif callrange == 3 then
            statenow = 1
            MakeAnims("Call20m")
        end
    elseif type == "inwater" then
        TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
        AddExp(Config.ExpSystem.Drink)
        Citizen.Wait(5000)
        if callrange == 0 then
            statenow = 1
            MakeAnims("Call5m")
        elseif callrange == 1 then
            statenow = 1
            MakeAnims("Call10m")
        elseif callrange == 2 then
            statenow = 1
            MakeAnims("Call15m")
        elseif callrange == 3 then
            statenow = 1
            MakeAnims("Call20m")
        end
    else
        CalculationSkill(type, anim, val2, text)
    end
    antispam = false
end

function CalculationSkill(type, anim, val2, text)
    for k,v in pairs(pet_list) do
        if v.selected == 1 then
            local number = string.match(val2, "%d+")
            if tonumber(number) == 1 then
                if json.decode(v.pets_info).skill1 == 0 then
                    local random = math.random(1,100)
                    if random <= Config.ChanceForLearn_1[1] then
                        local random2 = math.random(1,100)
                        if random2 <= Config.ChanceForLearn_1[2] then
                            local old_table = json.decode(v.pets_info)
                            old_table.skill1 = 1
                            skill1 = 1
                            v.pets_info = json.encode(old_table)
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            TriggerServerEvent("gum_pets:save_status", pet_list, true)
                            AddExp(Config.ExpSystem.Success1lv)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill1)..""..Config.Language[12]..""..text, Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill1)..""..Config.Language[12]..""..text, Config.Image, 3000)
                            end
                        else
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.FailSkill)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.Image, 3000)
                            end
                        end
                    else
                        TaskStartScenarioInPlace(pet_model, GetHashKey('WORLD_ANIMAL_DOG_ROLL_GROUND'), 10000, true, false, false, false)
                        AddExp(Config.ExpSystem.FailSkill)
                        if Config.Gum_Notify_Old then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.FirstName, Config.SecondName, 3000)
                        end
                        if Config.Gum_Notify_NUI then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.Image, 3000)
                        end
                    end
                elseif json.decode(v.pets_info).skill1 == 1 then
                    local random = math.random(1,100)
                    if random <= Config.ChanceForLearn_2[1] then
                        local random2 = math.random(1,100)
                        if random2 <= Config.ChanceForLearn_2[2] then
                            local old_table = json.decode(v.pets_info)
                            old_table.skill1 = 2
                            skill1 = 2
                            v.pets_info = json.encode(old_table)
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            TriggerServerEvent("gum_pets:save_status", pet_list, true)
                            AddExp(Config.ExpSystem.Success2lv)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill1)..""..Config.Language[12]..""..text, Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill1)..""..Config.Language[12]..""..text, Config.Image, 3000)
                            end
                        else
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.FailSkill)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.Image, 3000)
                            end
                        end
                    else
                        TaskStartScenarioInPlace(pet_model, GetHashKey('WORLD_ANIMAL_DOG_ROLL_GROUND'), 10000, true, false, false, false)
                        AddExp(Config.ExpSystem.FailSkill)
                        if Config.Gum_Notify_Old then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.FirstName, Config.SecondName, 3000)
                        end
                        if Config.Gum_Notify_NUI then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.Image, 3000)
                        end
                    end
                else
                    AddExp(Config.ExpSystem.SuccessMax)
                    TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                end
            elseif tonumber(number) == 2 then
                if json.decode(v.pets_info).skill2 == 0 then
                    local random = math.random(1,100)
                    if random <= Config.ChanceForLearn_1[1] then
                        local random2 = math.random(1,100)
                        if random2 <= Config.ChanceForLearn_1[2] then
                            local old_table = json.decode(v.pets_info)
                            old_table.skill2 = 1
                            skill2 = 1
                            v.pets_info = json.encode(old_table)
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            TriggerServerEvent("gum_pets:save_status", pet_list, true)
                            AddExp(Config.ExpSystem.Success1lv)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill2)..""..Config.Language[12]..""..text, Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill2)..""..Config.Language[12]..""..text, Config.Image, 3000)
                            end
                        else
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.FailSkill)
			                if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.Image, 3000)
                            end
                        end
                    else
                        TaskStartScenarioInPlace(pet_model, GetHashKey('WORLD_ANIMAL_DOG_ROLL_GROUND'), 10000, true, false, false, false)
                        AddExp(Config.ExpSystem.FailSkill)
                        if Config.Gum_Notify_Old then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.FirstName, Config.SecondName, 3000)
                        end
                        if Config.Gum_Notify_NUI then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.Image, 3000)
                        end
                    end
                elseif json.decode(v.pets_info).skill2 == 1 then
                    local random = math.random(1,100)
                    if random <= Config.ChanceForLearn_2[1] then
                        local random2 = math.random(1,100)
                        if random2 <= Config.ChanceForLearn_2[2] then
                            local old_table = json.decode(v.pets_info)
                            old_table.skill2 = 2
                            skill2 = 2
                            v.pets_info = json.encode(old_table)
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            TriggerServerEvent("gum_pets:save_status", pet_list, true)
                            AddExp(Config.ExpSystem.Success2lv)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill1)..""..Config.Language[12]..""..text, Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill1)..""..Config.Language[12]..""..text, Config.Image, 3000)
                            end
                        else
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.FailSkill)
                                                        if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.Image, 3000)
                            end
                        end
                    else
                        TaskStartScenarioInPlace(pet_model, GetHashKey('WORLD_ANIMAL_DOG_ROLL_GROUND'), 10000, true, false, false, false)
                        AddExp(Config.ExpSystem.FailSkill)
                        if Config.Gum_Notify_Old then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.FirstName, Config.SecondName, 3000)
                        end
                        if Config.Gum_Notify_NUI then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.Image, 3000)
                        end
                    end
                else
                    AddExp(Config.ExpSystem.SuccessMax)
                    TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                end
            elseif tonumber(number) == 3 then
                if json.decode(v.pets_info).skill3 == 0 then
                    local random = math.random(1,100)
                    if random <= Config.ChanceForLearn_1[1] then
                        local random2 = math.random(1,100)
                        if random2 <= Config.ChanceForLearn_1[2] then
                            local old_table = json.decode(v.pets_info)
                            old_table.skill3 = 1
                            skill3 = 1
                            v.pets_info = json.encode(old_table)
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.Success1lv)
                            TriggerServerEvent("gum_pets:save_status", pet_list, true)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill3)..""..Config.Language[12]..""..text, Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill3)..""..Config.Language[12]..""..text, Config.Image, 3000)
                            end
                        else
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.FailSkill)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.Image, 3000)
                            end
                        end
                    else
                        TaskStartScenarioInPlace(pet_model, GetHashKey('WORLD_ANIMAL_DOG_ROLL_GROUND'), 10000, true, false, false, false)
                        AddExp(Config.ExpSystem.FailSkill)
                        if Config.Gum_Notify_Old then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.FirstName, Config.SecondName, 3000)
                        end
                        if Config.Gum_Notify_NUI then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.Image, 3000)
                        end
                    end
                elseif json.decode(v.pets_info).skill3 == 1 then
                    local random = math.random(1,100)
                    if random <= Config.ChanceForLearn_2[1] then
                        local random2 = math.random(1,100)
                        if random2 <= Config.ChanceForLearn_2[2] then
                            local old_table = json.decode(v.pets_info)
                            old_table.skill3 = 2
                            skill3 = 2
                            v.pets_info = json.encode(old_table)
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            TriggerServerEvent("gum_pets:save_status", pet_list, true)
                            AddExp(Config.ExpSystem.Success2lv)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill3)..""..Config.Language[12]..""..text, Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill3)..""..Config.Language[12]..""..text, Config.Image, 3000)
                            end
                        else
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.FailSkill)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.Image, 3000)
                            end
                        end
                    else
                        TaskStartScenarioInPlace(pet_model, GetHashKey('WORLD_ANIMAL_DOG_ROLL_GROUND'), 10000, true, false, false, false)
                        AddExp(Config.ExpSystem.FailSkill)
                        if Config.Gum_Notify_Old then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.FirstName, Config.SecondName, 3000)
                        end
                        if Config.Gum_Notify_NUI then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.Image, 3000)
                        end
                    end
                else
                    AddExp(Config.ExpSystem.SuccessMax)
                    TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                end
            elseif tonumber(number) == 4 then
                if json.decode(v.pets_info).skill4 == 0 then
                    local random = math.random(1,100)
                    if random <= Config.ChanceForLearn_1[1] then
                        local random2 = math.random(1,100)
                        if random2 <= Config.ChanceForLearn_1[2] then
                            local old_table = json.decode(v.pets_info)
                            old_table.skill4 = 1
                            skill4 = 1
                            v.pets_info = json.encode(old_table)
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.Success1lv)
                            TriggerServerEvent("gum_pets:save_status", pet_list, true)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill4)..""..Config.Language[12]..""..text, Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill4)..""..Config.Language[12]..""..text, Config.Image, 3000)
                            end
                        else
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.FailSkill)
                                                        if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.Image, 3000)
                            end
                        end
                    else
                        TaskStartScenarioInPlace(pet_model, GetHashKey('WORLD_ANIMAL_DOG_ROLL_GROUND'), 10000, true, false, false, false)
                        AddExp(Config.ExpSystem.FailSkill)
                        if Config.Gum_Notify_Old then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.FirstName, Config.SecondName, 3000)
                        end
                        if Config.Gum_Notify_NUI then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.Image, 3000)
                        end
                    end
                elseif json.decode(v.pets_info).skill4 == 1 then
                    local random = math.random(1,100)
                    if random <= Config.ChanceForLearn_2[1] then
                        local random2 = math.random(1,100)
                        if random2 <= Config.ChanceForLearn_2[2] then
                            local old_table = json.decode(v.pets_info)
                            old_table.skill4 = 2
                            skill4 = 2
                            v.pets_info = json.encode(old_table)
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.Success2lv)
                            TriggerServerEvent("gum_pets:save_status", pet_list, true)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill4)..""..Config.Language[12]..""..text, Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill4)..""..Config.Language[12]..""..text, Config.Image, 3000)
                            end
                        else
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.FailSkill)
                                                        if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.Image, 3000)
                            end
                        end
                    else
                        TaskStartScenarioInPlace(pet_model, GetHashKey('WORLD_ANIMAL_DOG_ROLL_GROUND'), 10000, true, false, false, false)
                        AddExp(Config.ExpSystem.FailSkill)
                        if Config.Gum_Notify_Old then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.FirstName, Config.SecondName, 3000)
                        end
                        if Config.Gum_Notify_NUI then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.Image, 3000)
                        end
                    end
                else
                    AddExp(Config.ExpSystem.SuccessMax)
                    TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                end
            elseif tonumber(number) == 5 then
                if json.decode(v.pets_info).skill5 == 0 then
                    local random = math.random(1,100)
                    if random <= Config.ChanceForLearn_1[1] then
                        local random2 = math.random(1,100)
                        if random2 <= Config.ChanceForLearn_1[2] then
                            local old_table = json.decode(v.pets_info)
                            old_table.skill5 = 1
                            skill5 = 1
                            v.pets_info = json.encode(old_table)
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.Success1lv)
                            TriggerServerEvent("gum_pets:save_status", pet_list, true)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill5)..""..Config.Language[12]..""..text, Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill5)..""..Config.Language[12]..""..text, Config.Image, 3000)
                            end
                        else
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.FailSkill)
                                                        if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.Image, 3000)
                            end
                        end
                    else
                        TaskStartScenarioInPlace(pet_model, GetHashKey('WORLD_ANIMAL_DOG_ROLL_GROUND'), 10000, true, false, false, false)
                        AddExp(Config.ExpSystem.FailSkill)
                        if Config.Gum_Notify_Old then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.FirstName, Config.SecondName, 3000)
                        end
                        if Config.Gum_Notify_NUI then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.Image, 3000)
                        end
                    end
                elseif json.decode(v.pets_info).skill5 == 1 then
                    local random = math.random(1,100)
                    if random <= Config.ChanceForLearn_2[1] then
                        local random2 = math.random(1,100)
                        if random2 <= Config.ChanceForLearn_2[2] then
                            local old_table = json.decode(v.pets_info)
                            old_table.skill5 = 2
                            skill5 = 2
                            v.pets_info = json.encode(old_table)
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.Success2lv)
                            TriggerServerEvent("gum_pets:save_status", pet_list, true)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill5)..""..Config.Language[12]..""..text, Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill5)..""..Config.Language[12]..""..text, Config.Image, 3000)
                            end
                        else
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.FailSkill)
                                                        if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.Image, 3000)
                            end
                        end
                    else
                        TaskStartScenarioInPlace(pet_model, GetHashKey('WORLD_ANIMAL_DOG_ROLL_GROUND'), 10000, true, false, false, false)
                        AddExp(Config.ExpSystem.FailSkill)
                        if Config.Gum_Notify_Old then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.FirstName, Config.SecondName, 3000)
                        end
                        if Config.Gum_Notify_NUI then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.Image, 3000)
                        end
                    end
                else
                    AddExp(Config.ExpSystem.SuccessMax)
                    TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                end
            elseif tonumber(number) == 6 then
                if json.decode(v.pets_info).skill6 == 0 then
                    local random = math.random(1,100)
                    if random <= Config.ChanceForLearn_1[1] then
                        local random2 = math.random(1,100)
                        if random2 <= Config.ChanceForLearn_1[2] then
                            local old_table = json.decode(v.pets_info)
                            old_table.skill6 = 1
                            skill6 = 1
                            v.pets_info = json.encode(old_table)
                            AddExp(Config.ExpSystem.Success1lv)
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            TriggerServerEvent("gum_pets:save_status", pet_list, true)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill6)..""..Config.Language[12]..""..text, Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill6)..""..Config.Language[12]..""..text, Config.Image, 3000)
                            end
                        else
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.FailSkill)
                                                        if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.Image, 3000)
                            end
                        end
                    else
                        TaskStartScenarioInPlace(pet_model, GetHashKey('WORLD_ANIMAL_DOG_ROLL_GROUND'), 10000, true, false, false, false)
                        AddExp(Config.ExpSystem.FailSkill)
                        if Config.Gum_Notify_Old then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.FirstName, Config.SecondName, 3000)
                        end
                        if Config.Gum_Notify_NUI then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.Image, 3000)
                        end
                    end
                elseif json.decode(v.pets_info).skill6 == 1 then
                    local random = math.random(1,100)
                    if random <= Config.ChanceForLearn_2[1] then
                        local random2 = math.random(1,100)
                        if random2 <= Config.ChanceForLearn_2[2] then
                            local old_table = json.decode(v.pets_info)
                            old_table.skill6 = 2
                            skill6 = 2
                            v.pets_info = json.encode(old_table)
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.Success2lv)
                            TriggerServerEvent("gum_pets:save_status", pet_list, true)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill6)..""..Config.Language[12]..""..text, Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill6)..""..Config.Language[12]..""..text, Config.Image, 3000)
                            end
                        else
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.FailSkill)
                                                        if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.Image, 3000)
                            end
                        end
                    else
                        TaskStartScenarioInPlace(pet_model, GetHashKey('WORLD_ANIMAL_DOG_ROLL_GROUND'), 10000, true, false, false, false)
                        AddExp(Config.ExpSystem.FailSkill)
                        if Config.Gum_Notify_Old then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.FirstName, Config.SecondName, 3000)
                        end
                        if Config.Gum_Notify_NUI then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.Image, 3000)
                        end
                    end
                else
                    AddExp(Config.ExpSystem.SuccessMax)
                    TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                end
            elseif tonumber(number) == 7 then
                if json.decode(v.pets_info).skill7 == 0 then
                    local random = math.random(1,100)
                    if random <= Config.ChanceForLearn_1[1] then
                        local random2 = math.random(1,100)
                        if random2 <= Config.ChanceForLearn_1[2] then
                            local old_table = json.decode(v.pets_info)
                            old_table.skill7 = 1
                            skill7 = 1
                            v.pets_info = json.encode(old_table)
                            AddExp(Config.ExpSystem.Success1lv)
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            TriggerServerEvent("gum_pets:save_status", pet_list, true)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill7)..""..Config.Language[12]..""..text, Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill7)..""..Config.Language[12]..""..text, Config.Image, 3000)
                            end
                        else
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.FailSkill)
                                                        if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.Image, 3000)
                            end
                        end
                    else
                        TaskStartScenarioInPlace(pet_model, GetHashKey('WORLD_ANIMAL_DOG_ROLL_GROUND'), 10000, true, false, false, false)
                        AddExp(Config.ExpSystem.FailSkill)
                        if Config.Gum_Notify_Old then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.FirstName, Config.SecondName, 3000)
                        end
                        if Config.Gum_Notify_NUI then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.Image, 3000)
                        end
                    end
                elseif json.decode(v.pets_info).skill7 == 1 then
                    local random = math.random(1,100)
                    if random <= Config.ChanceForLearn_2[1] then
                        local random2 = math.random(1,100)
                        if random2 <= Config.ChanceForLearn_2[2] then
                            local old_table = json.decode(v.pets_info)
                            old_table.skill7 = 2
                            skill7 = 2
                            v.pets_info = json.encode(old_table)
                            AddExp(Config.ExpSystem.Success2lv)
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            TriggerServerEvent("gum_pets:save_status", pet_list, true)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill7)..""..Config.Language[12]..""..text, Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill7)..""..Config.Language[12]..""..text, Config.Image, 3000)
                            end
                        else
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.FailSkill)
			    if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.Image, 3000)
                            end
                        end
                    else
                        TaskStartScenarioInPlace(pet_model, GetHashKey('WORLD_ANIMAL_DOG_ROLL_GROUND'), 10000, true, false, false, false)
                        AddExp(Config.ExpSystem.FailSkill)
                        if Config.Gum_Notify_Old then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.FirstName, Config.SecondName, 3000)
                        end
                        if Config.Gum_Notify_NUI then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.Image, 3000)
                        end
                    end
                else
                    AddExp(Config.ExpSystem.SuccessMax)
                    TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                end
            elseif tonumber(number) == 8 then
                if json.decode(v.pets_info).skill8 == 0 then
                    local random = math.random(1,100)
                    if random <= Config.ChanceForLearn_1[1] then
                        local random2 = math.random(1,100)
                        if random2 <= Config.ChanceForLearn_1[2] then
                            local old_table = json.decode(v.pets_info)
                            old_table.skill8 = 1
                            skill8 = 1
                            v.pets_info = json.encode(old_table)
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.Success1lv)
                            TriggerServerEvent("gum_pets:save_status", pet_list, true)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill8)..""..Config.Language[12]..""..text, Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill8)..""..Config.Language[12]..""..text, Config.Image, 3000)
                            end
                        else
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.FailSkill)
                                                        if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.Image, 3000)
                            end
                        end
                    else
                        TaskStartScenarioInPlace(pet_model, GetHashKey('WORLD_ANIMAL_DOG_ROLL_GROUND'), 10000, true, false, false, false)
                        AddExp(Config.ExpSystem.FailSkill)
                        if Config.Gum_Notify_Old then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.FirstName, Config.SecondName, 3000)
                        end
                        if Config.Gum_Notify_NUI then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.Image, 3000)
                        end
                    end
                elseif json.decode(v.pets_info).skill8 == 1 then
                    local random = math.random(1,100)
                    if random <= Config.ChanceForLearn_2[1] then
                        local random2 = math.random(1,100)
                        if random2 <= Config.ChanceForLearn_2[2] then
                            local old_table = json.decode(v.pets_info)
                            old_table.skill8 = 2
                            skill8 = 2
                            v.pets_info = json.encode(old_table)
                            AddExp(Config.ExpSystem.Success2lv)
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            TriggerServerEvent("gum_pets:save_status", pet_list, true)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill8)..""..Config.Language[12]..""..text, Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill8)..""..Config.Language[12]..""..text, Config.Image, 3000)
                            end
                        else
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.FailSkill)
			    if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.Image, 3000)
                            end
                        end
                    else
                        TaskStartScenarioInPlace(pet_model, GetHashKey('WORLD_ANIMAL_DOG_ROLL_GROUND'), 10000, true, false, false, false)
                        AddExp(Config.ExpSystem.FailSkill)
                        if Config.Gum_Notify_Old then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.FirstName, Config.SecondName, 3000)
                        end
                        if Config.Gum_Notify_NUI then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.Image, 3000)
                        end
                    end
                else
                    AddExp(Config.ExpSystem.SuccessMax)
                    TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                end
            elseif tonumber(number) == 9 then
                if json.decode(v.pets_info).skill9 == 0 then
                    local random = math.random(1,100)
                    if random <= Config.ChanceForLearn_1[1] then
                        local random2 = math.random(1,100)
                        if random2 <= Config.ChanceForLearn_1[2] then
                            local old_table = json.decode(v.pets_info)
                            old_table.skill9 = 1
                            skill9 = 1
                            v.pets_info = json.encode(old_table)
                            AddExp(Config.ExpSystem.Success1lv)
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            TriggerServerEvent("gum_pets:save_status", pet_list, true)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill9)..""..Config.Language[12]..""..text, Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill9)..""..Config.Language[12]..""..text, Config.Image, 3000)
                            end
                        else
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.FailSkill)
			    if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.Image, 3000)
                            end
                        end
                    else
                        TaskStartScenarioInPlace(pet_model, GetHashKey('WORLD_ANIMAL_DOG_ROLL_GROUND'), 10000, true, false, false, false)
                        AddExp(Config.ExpSystem.FailSkill)
                        if Config.Gum_Notify_Old then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.FirstName, Config.SecondName, 3000)
                        end
                        if Config.Gum_Notify_NUI then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.Image, 3000)
                        end
                    end
                elseif json.decode(v.pets_info).skill9 == 1 then
                    local random = math.random(1,100)
                    if random <= Config.ChanceForLearn_2[1] then
                        local random2 = math.random(1,100)
                        if random2 <= Config.ChanceForLearn_2[2] then
                            local old_table = json.decode(v.pets_info)
                            old_table.skill9 = 2
                            skill9 = 2
                            v.pets_info = json.encode(old_table)
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.Success2lv)
                            TriggerServerEvent("gum_pets:save_status", pet_list, true)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill9)..""..Config.Language[12]..""..text, Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill9)..""..Config.Language[12]..""..text, Config.Image, 3000)
                            end
                        else
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.FailSkill)
			    if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.Image, 3000)
                            end
                        end
                    else
                        TaskStartScenarioInPlace(pet_model, GetHashKey('WORLD_ANIMAL_DOG_ROLL_GROUND'), 10000, true, false, false, false)
                        AddExp(Config.ExpSystem.FailSkill)
                        if Config.Gum_Notify_Old then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.FirstName, Config.SecondName, 3000)
                        end
                        if Config.Gum_Notify_NUI then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.Image, 3000)
                        end
                    end
                else
                    AddExp(Config.ExpSystem.SuccessMax)
                    TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                end
            elseif tonumber(number) == 10 then
                if json.decode(v.pets_info).skill10 == 0 then
                    local random = math.random(1,100)
                    if random <= Config.ChanceForLearn_1[1] then
                        local random2 = math.random(1,100)
                        if random2 <= Config.ChanceForLearn_1[2] then
                            local old_table = json.decode(v.pets_info)
                            old_table.skill10 = 1
                            skill10 = 1
                            v.pets_info = json.encode(old_table)
                            AddExp(Config.ExpSystem.Success1lv)
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            TriggerServerEvent("gum_pets:save_status", pet_list, true)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill10)..""..Config.Language[12]..""..text, Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill10)..""..Config.Language[12]..""..text, Config.Image, 3000)
                            end
                        else
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.FailSkill)
			                if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.Image, 3000)
                            end
                        end
                    else
                        TaskStartScenarioInPlace(pet_model, GetHashKey('WORLD_ANIMAL_DOG_ROLL_GROUND'), 10000, true, false, false, false)
                        AddExp(Config.ExpSystem.FailSkill)
                        if Config.Gum_Notify_Old then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.FirstName, Config.SecondName, 3000)
                        end
                        if Config.Gum_Notify_NUI then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.Image, 3000)
                        end
                    end
                elseif json.decode(v.pets_info).skill10 == 1 then
                    local random = math.random(1,100)
                    if random <= Config.ChanceForLearn_2[1] then
                        local random2 = math.random(1,100)
                        if random2 <= Config.ChanceForLearn_2[2] then
                            local old_table = json.decode(v.pets_info)
                            old_table.skill10 = 2
                            skill10 = 2
                            v.pets_info = json.encode(old_table)
                            AddExp(Config.ExpSystem.Success2lv)
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            TriggerServerEvent("gum_pets:save_status", pet_list, true)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill10)..""..Config.Language[12]..""..text, Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill10)..""..Config.Language[12]..""..text, Config.Image, 3000)
                            end
                        else
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.FailSkill)
                                                        if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.Image, 3000)
                            end
                        end
                    else
                        TaskStartScenarioInPlace(pet_model, GetHashKey('WORLD_ANIMAL_DOG_ROLL_GROUND'), 10000, true, false, false, false)
                        AddExp(Config.ExpSystem.FailSkill)
                        if Config.Gum_Notify_Old then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.FirstName, Config.SecondName, 3000)
                        end
                        if Config.Gum_Notify_NUI then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.Image, 3000)
                        end
                    end
                else
                    AddExp(Config.ExpSystem.SuccessMax)
                    TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                end
            elseif tonumber(number) == 11 then
                if json.decode(v.pets_info).skill11 == 0 then
                    local random = math.random(1,100)
                    if random <= Config.ChanceForLearn_1[1] then
                        local random2 = math.random(1,100)
                        if random2 <= Config.ChanceForLearn_1[2] then
                            local old_table = json.decode(v.pets_info)
                            old_table.skill11 = 1
                            skill11 = 1
                            v.pets_info = json.encode(old_table)
                            AddExp(Config.ExpSystem.Success1lv)
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            TriggerServerEvent("gum_pets:save_status", pet_list, true)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill11)..""..Config.Language[12]..""..text, Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill11)..""..Config.Language[12]..""..text, Config.Image, 3000)
                            end
                        else
                            AddExp(Config.ExpSystem.FailSkill)
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
			                if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.Image, 3000)
                            end
                        end
                    else
                        AddExp(Config.ExpSystem.FailSkill)
                        TaskStartScenarioInPlace(pet_model, GetHashKey('WORLD_ANIMAL_DOG_ROLL_GROUND'), 10000, true, false, false, false)
                        if Config.Gum_Notify_Old then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.FirstName, Config.SecondName, 3000)
                        end
                        if Config.Gum_Notify_NUI then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.Image, 3000)
                        end
                    end
                elseif json.decode(v.pets_info).skill11 == 1 then
                    local random = math.random(1,100)
                    if random <= Config.ChanceForLearn_2[1] then
                        local random2 = math.random(1,100)
                        if random2 <= Config.ChanceForLearn_2[2] then
                            local old_table = json.decode(v.pets_info)
                            old_table.skill11 = 2
                            skill11 = 2
                            v.pets_info = json.encode(old_table)
                            AddExp(Config.ExpSystem.Success2lv)
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            TriggerServerEvent("gum_pets:save_status", pet_list, true)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill11)..""..Config.Language[12]..""..text, Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill11)..""..Config.Language[12]..""..text, Config.Image, 3000)
                            end
                        else
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.FailSkill)
			                if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.Image, 3000)
                            end
                        end
                    else
                        TaskStartScenarioInPlace(pet_model, GetHashKey('WORLD_ANIMAL_DOG_ROLL_GROUND'), 10000, true, false, false, false)
                        AddExp(Config.ExpSystem.FailSkill)
                        if Config.Gum_Notify_Old then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.FirstName, Config.SecondName, 3000)
                        end
                        if Config.Gum_Notify_NUI then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.Image, 3000)
                        end
                    end
                else
                    AddExp(Config.ExpSystem.SuccessMax)
                    TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                end
            elseif tonumber(number) == 12 then
                if json.decode(v.pets_info).skill12 == 0 then
                    local random = math.random(1,100)
                    if random <= Config.ChanceForLearn_1[1] then
                        local random2 = math.random(1,100)
                        if random2 <= Config.ChanceForLearn_1[2] then
                            local old_table = json.decode(v.pets_info)
                            old_table.skill12 = 1
                            skill12 = 1
                            v.pets_info = json.encode(old_table)
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.Success1lv)
                            TriggerServerEvent("gum_pets:save_status", pet_list, true)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill12)..""..Config.Language[12]..""..text, Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill12)..""..Config.Language[12]..""..text, Config.Image, 3000)
                            end
                        else
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.FailSkill)
                                                        if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.Image, 3000)
                            end
                        end
                    else
                        TaskStartScenarioInPlace(pet_model, GetHashKey('WORLD_ANIMAL_DOG_ROLL_GROUND'), 10000, true, false, false, false)
                        AddExp(Config.ExpSystem.FailSkill)
                        if Config.Gum_Notify_Old then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.FirstName, Config.SecondName, 3000)
                        end
                        if Config.Gum_Notify_NUI then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.Image, 3000)
                        end
                    end
                elseif json.decode(v.pets_info).skill12 == 1 then
                    local random = math.random(1,100)
                    if random <= Config.ChanceForLearn_2[1] then
                        local random2 = math.random(1,100)
                        if random2 <= Config.ChanceForLearn_2[2] then
                            local old_table = json.decode(v.pets_info)
                            old_table.skill12 = 2
                            skill12 = 2
                            v.pets_info = json.encode(old_table)
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.Success2lv)
                            TriggerServerEvent("gum_pets:save_status", pet_list, true)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill12)..""..Config.Language[12]..""..text, Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], ""..Config.Language[11].." "..SkillToText(skill12)..""..Config.Language[12]..""..text, Config.Image, 3000)
                            end
                        else
                            TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                            AddExp(Config.ExpSystem.FailSkill)
                                                        if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.FirstName, Config.SecondName, 3000)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[13], Config.Image, 3000)
                            end
                        end
                    else
                        TaskStartScenarioInPlace(pet_model, GetHashKey('WORLD_ANIMAL_DOG_ROLL_GROUND'), 10000, true, false, false, false)
                        AddExp(Config.ExpSystem.FailSkill)
                        if Config.Gum_Notify_Old then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.FirstName, Config.SecondName, 3000)
                        end
                        if Config.Gum_Notify_NUI then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[14], Config.Image, 3000)
                        end
                    end
                else
                    AddExp(Config.ExpSystem.SuccessMax)
                    TaskStartScenarioInPlace(pet_model, GetHashKey(anim), 10000, true, false, false, false)
                end
            end
        end
    end
    Citizen.Wait(5000)
    antispam = false
end
local searchedPed = {}
local takedPed = {}

function SearchAnimal()
    local searched = false
    local ped = 0
    for entity in EnumeratePeds() do
        local entityHealth = GetEntityHealth(entity)
        if entityHealth == 0 and peds ~= PlayerPedId() and not searchedPed[entity] and Citizen.InvokeNative(0x9A100F1CF4546629, entity) then
            ped = entity
            TaskGoToEntity(pet_model, ped, -1, 2.4, 2.0, 0, 0)
        end
    end
    while not searched do
        Wait(10)
        local cCoords = GetEntityCoords(ped)
        local dCoords = GetEntityCoords(pet_model)
        local dDist = Vdist(cCoords.x,cCoords.y,cCoords.z,dCoords.x,dCoords.y,dCoords.z)
        if dDist < 3 then
            searchedPed[ped] = true
            searched = true
            TaskStartScenarioInPlace(pet_model, GetHashKey('WORLD_ANIMAL_DOG_BARKING_UP'),7000, true, false, false, false)
            Citizen.Wait(7000)
            break
        end
    end
end

function TakeToMeAnimal()
    local searched = false
    local ped = 0
    for entityPeds in EnumeratePeds() do
        local canContinue = false
        local entityHealth = GetEntityHealth(entityPeds)
        if entityHealth == 0 and entityPeds ~= PlayerPedId() and not takedPed[entityPeds] then
            for a,b in pairs(Config.Animals) do
                if GetEntityModel(entityPeds) == b then
                    canContinue = true
                end
            end
            if canContinue == true then
                while not searched do
                    TaskGoToEntity(pet_model, entityPeds, -1, 2.4, 2.0, 0, 0)
                    Wait(3000)
                    local cCoords = GetEntityCoords(entityPeds)
                    local dCoords = GetEntityCoords(pet_model)
                    local dDist = Vdist(cCoords.x,cCoords.y,cCoords.z,dCoords.x,dCoords.y,dCoords.z)
                    if dDist < 2.5 then
                        takedPed[entityPeds] = true
                        searched = true
                        AttachEntityToEntity(entityPeds, pet_model, GetEntityBoneIndexByName(pet_model, "SKEL_NECK2"), 00.01, 0.09, 0.15,  0, 0, 0, false, false, true, false, 0, true, false, false)
                        Citizen.Wait(500)
                        TaskGoToEntity(pet_model, PlayerPedId(), -1, 2.4, 1.5, 0, 0)           
                        break
                    end
                end
                return false
            end
        end
    end

end

function DogPlayAnim(dict,name)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(20)
    end
    TaskPlayAnim(pet_model, dict, name, 1.0, 1.0, -1, 2, 0, true, 0, false, 0, false)  
end

function StorePlayAnim(ped, dict,name)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(20)
    end
    TaskPlayAnim(ped, dict, name, 1.0, 1.0, -1, 2, 0, true, 0, false, 0, false)  
end

function PlayerPlayAnim(dict,name)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(20)
    end
    TaskPlayAnim(PlayerPedId(), dict, name, 1.0, 1.0, -1, 25, 0, true, 0, false, 0, false)  
end
function PlayAnim(dict,name)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(20)
    end
    TaskPlayAnim(PlayerPedId(), dict, name, 1.0, 1.0, 2000, 0, 0, true, 0, false, 0, false)  
end

function AgeCalculation(age_num)
    if tonumber(age_num) >= 0.500 and tonumber(age_num) <= 0.550 then
        return 0.5
    elseif tonumber(age_num) >= 0.550 and tonumber(age_num) <= 0.600 then
        return 0.55
    elseif tonumber(age_num) >= 0.600 and tonumber(age_num) <= 0.650 then
        return 0.60
    elseif tonumber(age_num) >= 0.650 and tonumber(age_num) <= 0.700 then
        return 0.63
    elseif tonumber(age_num) >= 0.700 and tonumber(age_num) <= 0.800 then
        return 0.66
    elseif tonumber(age_num) >= 0.800 and tonumber(age_num) <= 0.820 then
        return 0.69
    elseif tonumber(age_num) >= 0.820 and tonumber(age_num) <= 0.860 then
        return 0.72
    elseif tonumber(age_num) >= 0.860 and tonumber(age_num) <= 0.900 then
        return 0.75
    elseif tonumber(age_num) >= 0.900 and tonumber(age_num) <= 0.940 then
        return 0.78
    elseif tonumber(age_num) >= 0.940 and tonumber(age_num) <= 0.980 then
        return 0.82
    elseif tonumber(age_num) >= 0.980 and tonumber(age_num) <= 1.001 then
        return 0.85
    elseif tonumber(age_num) >= 1.000 and tonumber(age_num) <= 1.999 then
        return 0.83
    elseif tonumber(age_num) >= 2.000 and tonumber(age_num) <= 2.999 then
        return 0.86
    elseif tonumber(age_num) >= 3.000 and tonumber(age_num) <= 3.499 then
        return 0.92
    elseif tonumber(age_num) >= 3.500 and tonumber(age_num) <= 3.999 then
        return 0.97
    elseif tonumber(age_num) >= 4.000 then
        return 1.0
    end
end


function MakePets(model, name, age, styl, exp, id, health, hunger, thirst)
    pethunger = string.format("%.2f", hunger)
    petthirst = string.format("%.2f", thirst)
    pethealth = string.format("%.2f", health)
    local PedModel = GetHashKey(model)
    while not HasModelLoaded(PedModel) do
        ModelRequest(PedModel)
        Wait(50)
    end
    local player = PlayerPedId()
    local offset = GetOffsetFromEntityInWorldCoords(player,0.0,5.0,0.0)
    local a, groundZ = GetGroundZAndNormalFor_3dCoord( offset.x, offset.y, offset.z + 10 )
    while not groundZ do
        Wait(10)
    end
    pet_model = CreatePed(PedModel,offset.x,offset.y,groundZ,180.0,true,false)
    while not DoesEntityExist(pet_model) do
        Wait(5)
    end
    Citizen.InvokeNative(0x6BCF5F3D8FFE988D, pet_model, true)
    SetPedAsGroupMember(pet_model, GetPedGroupIndex(PlayerPedId()))
    if Config.ExpLevels[#Config.ExpLevels] <= exp then
        if age == "Old" then
            SetPedPromptName(pet_model, name.." || "..Config.Language[15].." ")
        else
            SetPedPromptName(pet_model, name.." || "..string.format("%.2f", age).." "..Config.Language[16].."")
        end
    else
        if age == "Old" then
            SetPedPromptName(pet_model, name.." || "..Config.Language[15].." || "..string.format("%.2f", exp).." "..Config.Language[17].."")
        else
            SetPedPromptName(pet_model, name.." || "..string.format("%.2f", age).." "..Config.Language[16].." || "..string.format("%.2f", exp).." "..Config.Language[17].."")
        end
    end
    if Citizen.InvokeNative(0xC346A546612C49A9, pet_model) then
        SetEntityInvincible(pet_model, true)
        SetBlockingOfNonTemporaryEvents(pet_model,true)
        SetEntityCollision(pet_model, false, false)
    end
    Citizen.InvokeNative(0x23f74c2fda6e7c61, -1749618580, pet_model)
    SetPedOutfitPreset(pet_model, tonumber(styl))
    levelpet = MakeLevel(exp)
    petmodel = model
    petid = id
    split_exp = 0
    petexp = exp
    stats_show = true
    SetEntityHealth(pet_model, health)
    if age ~= "Old" then
        SetPedScale(pet_model, AgeCalculation(age))
    end
    behavior = false--
    for k,v in pairs(Config.Pets_Store) do
        if v.Model == model then
            if v.Behavior == true then
                behavior = true
                Behavior()
            end
        end
    end
    Citizen.Wait(1000)
    if Citizen.InvokeNative(0xC346A546612C49A9, pet_model) then
        local coords = GetEntityCoords(PlayerPedId())
        Citizen.InvokeNative(0x72997893BFB8ECCC, pet_model, 1.0, coords.x+5.0, coords.y+5.0, coords.z, 1.0, 1.0)
    else
        TaskGoToEntity(pet_model, PlayerPedId(), -1, 2.4, 2.0, 0, 0)
    end
end

function MakeLevel(exp)
    local level = 0
    for k,v in pairs(Config.ExpLevels) do
        if v <= exp then
            level = k
        end
    end
    return level
end

function AddExp(addexp)
    local multiplier = 1
    for a,b in pairs(Config.TrainerMultiplier) do
        for c,d in pairs(b) do
            if d == job then
                multiplier = a
            end
        end
    end
    for k,v in pairs(pet_list) do
        if v.selected == 1 then
            local old_table = json.decode(v.pets_info)
            if Config.ExpLevels[#Config.ExpLevels] >= old_table.exp+(addexp*multiplier) then
                old_table.exp = old_table.exp+(addexp*multiplier)
                v.pets_info = json.encode(old_table)
                if old_table.age == "Old" then
                    SetPedPromptName(pet_model, old_table.name.." || "..Config.Language[15].." || "..string.format("%.2f", old_table.exp).." "..Config.Language[17].."")
                else
                    SetPedPromptName(pet_model, old_table.name.." || "..string.format("%.2f", old_table.age).." "..Config.Language[16].." || "..string.format("%.2f", old_table.exp).." "..Config.Language[17].."")
                end
                split_exp = (addexp*multiplier)+split_exp
                petexp = (addexp*multiplier)+split_exp
            else
                old_table.exp = Config.ExpLevels[#Config.ExpLevels]
                v.pets_info = json.encode(old_table)
                if old_table.age == "Old" then
                    SetPedPromptName(pet_model, old_table.name.." || "..Config.Language[15].."")
                else
                    SetPedPromptName(pet_model, old_table.name.." || "..string.format("%.2f", old_table.age).." "..Config.Language[16].."")
                end
                split_exp = (addexp*multiplier)+split_exp
                petexp = (addexp*multiplier)+split_exp
            end
        end
    end
end
RegisterNetEvent('gum_pets:reset')
AddEventHandler('gum_pets:reset', function()
    antispam = false
end)
RegisterNetEvent('gum_pets:make_eat')
AddEventHandler('gum_pets:make_eat', function(anim, hunger,thirst,health, type, item)
    if GetEntityHealth(pet_model) == 0.0 then
        TriggerServerEvent("gum_pets:give_back_item", item)
        if Config.Gum_Notify_Old then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[18], Config.FirstName, Config.SecondName, 3000)
        end
        if Config.Gum_Notify_NUI then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[29], Config.Language[18], Config.Image, 3000)
        end
        return false
    end
    for k,v in pairs(pet_list) do
        if v.selected == 1 then
            local old_table = json.decode(v.pets_info)
            if tonumber(old_table.hunger+hunger) <= 100 then
                old_table.hunger = old_table.hunger+hunger
                pethunger = string.format("%.2f", old_table.hunger+hunger)
            else
                old_table.hunger = 100
                pethunger = 100
            end
            if tonumber(old_table.thirst+thirst) <= 100 then
                old_table.thirst = old_table.thirst+thirst
                petthirst = string.format("%.2f", old_table.thirst+thirst)
            else
                old_table.thirst = 100
                petthirst = 100
            end
            if tonumber(old_table.health+health) <= 100 then
                old_table.health = old_table.health+health
                pethealth = string.format("%.2f", old_table.health+health)
                SetEntityHealth(pet_model, old_table.health+health)
            else
                old_table.health = 100
                pethealth = 100
                pethealth = string.format("%.2f", pethealth)
                SetEntityHealth(pet_model, pethealth)
            end
            v.pets_info = json.encode(old_table)
        end
    end
    TriggerServerEvent("gum_pets:save_status", pet_list)
    TaskGoToEntity(pet_model, PlayerPedId(), -1, 2.4, 1.0, 0, 0)
    antispam = false
    MakeSkill(type, anim)
end)

function DeadToText(num)
    local state = ""
    if tonumber(num) == 0 then
        state = ""..Config.Language[60]..""
     elseif tonumber(num) == 1 then
        state = ""..Config.Language[61]..""
     end
      return state
 end

function SkillToText(value)
    if 0 == tonumber(value) then
        return ""..Config.Language[49]..""
    elseif 1 == tonumber(value) then
        return ""..Config.Language[50]..""
    elseif 2 == tonumber(value) then
        return ""..Config.Language[51]..""
    end
end

Citizen.CreateThread(function()
    while true do
        local loopTimer = 30000
        if pet_model ~= nil and pet_model ~= 0 and inhand == false then
            if Citizen.InvokeNative(0xC346A546612C49A9, pet_model) then
                loopTimer = 5000
                local coords = GetEntityCoords(PlayerPedId())
                Citizen.InvokeNative(0x72997893BFB8ECCC, pet_model, 1.0, coords, 1.0, 1.0)
            else
                loopTimer = 30000
                if not IsPedWalking(PlayerPedId()) and not IsPedRunning(PlayerPedId()) and not IsPedSprinting(PlayerPedId()) and (GetMount(PlayerPedId()) == nil or GetMount(PlayerPedId()) == false) then
                    check_time = check_time+1
                    if check_time >= 6 then
                        statenow = 3
                        MakeAnims("Sleeping")
                    elseif check_time == 4 then
                        statenow = 2
                        MakeAnims("Waiting")
                    end
                else
                    if callrange == 0 then
                        statenow = 1
                        MakeAnims("Call5m")
                    elseif callrange == 1 then
                        statenow = 1
                        MakeAnims("Call10m")
                    elseif callrange == 2 then
                        statenow = 1
                        MakeAnims("Call15m")
                    elseif callrange == 3 then
                        statenow = 1
                        MakeAnims("Call20m")
                    end
                end
            end
        end
        Citizen.Wait(loopTimer)
    end
end)

function MakeAnims(state)
    local player = PlayerPedId()
    local coords = GetEntityCoords(PlayerPedId())
    if Citizen.InvokeNative(0xC346A546612C49A9, pet_model) then
        Citizen.InvokeNative(0x72997893BFB8ECCC, pet_model, 1.0, coords, 1.0, 1.0)
    else
        if state == "Waiting" then
            Citizen.InvokeNative(0xE054346CA3A0F315, pet_model, coords.x, coords.y, coords.z, 5.0, tonumber(1077936128), tonumber(1086324736), 1)
        elseif state == "Sleeping" then
            if not Citizen.InvokeNative(0x34D6AC1157C8226C, pet_model, GetHashKey('WORLD_ANIMAL_DOG_SLEEPING')) then
                TaskStartScenarioInPlace(pet_model, GetHashKey('WORLD_ANIMAL_DOG_SLEEPING'), -1, true, false, false, false)
            end
        elseif state == "Call5m" then
            callrange = 0
            Citizen.InvokeNative(0x304AE42E357B8C7E, pet_model, player, tonumber((yrange*2)..".0"), 5.0,0.0, -1,-1, 5.0, true,true,false,true,true)
        elseif state == "Call10m" then
            callrange = 1
            Citizen.InvokeNative(0x304AE42E357B8C7E, pet_model, player, tonumber((yrange*2)..".0"), 10.0,0.0, -1,-1, 5.0, true,true,false,true,true)
        elseif state == "Call15m" then
            callrange = 2
            Citizen.InvokeNative(0x304AE42E357B8C7E, pet_model, player, tonumber((yrange*2)..".0"), 15.0,0.0, -1,-1, 5.0, true,true,false,true,true)
        elseif state == "Call20m" then
            callrange = 3
            Citizen.InvokeNative(0x304AE42E357B8C7E, pet_model, player, tonumber((yrange*2)..".0"), 20.0,0.0, -1,-1, 5.0, true,true,false,true,true)
        end
    end
end

function Open_Pets(store_id)
    StartCam(store_id)
end

function SpawnStorePet(store, pet, outfit)
    if shops_npc_1 ~= nil then
        DeleteObj(shops_npc_1)
    end
    if shops_npc_2 ~= nil then
        DeleteObj(shops_npc_2)
    end
    local npc_spawn_id = pet
    while not HasModelLoaded(GetHashKey(npc_spawn_id)) do
        ModelRequest( GetHashKey(npc_spawn_id) )
        Wait(5)
    end
    shops_npc_1 = CreatePed(GetHashKey(npc_spawn_id), Config.Shops[store]["Shop_Dog_1"].x, Config.Shops[store]["Shop_Dog_1"].y, Config.Shops[store]["Shop_Dog_1"].z, Config.Shops[store]["Shop_Dog_1"].h, false, false, 0, 0)
    while not DoesEntityExist(shops_npc_1) do
        Wait(5)
    end
    Citizen.InvokeNative(0x283978A15512B2FE, shops_npc_1, true)
    SetPedAsGroupMember(shops_npc_1, GetPedGroupIndex(PlayerPedId()))
    SetBlockingOfNonTemporaryEvents(shops_npc_1,true)
    SetOutfitPreset(shops_npc_1, outfit)
    FreezeEntityPosition(shops_npc_1, true)
    SetEntityInvincible(shops_npc_1, true)
    TaskStandStill(shops_npc_1, -1)
    SetEntityAsMissionEntity(shops_npc_1, true, true)
    SetModelAsNoLongerNeeded(GetHashKey(npc_spawn_id))
    if Citizen.InvokeNative(0xC346A546612C49A9, shops_npc_1) then
        StorePlayAnim(shops_npc_1, "amb_creatures_bird@world_parrot_on_ground@base", "base")
    else
        TaskStartScenarioInPlace(shops_npc_1, GetHashKey('WORLD_ANIMAL_DOG_BEGGING'), -1, true, false, false, false)
    end

    local npc_spawn_id2 = pet
    while not HasModelLoaded(GetHashKey(npc_spawn_id2)) do
        Wait(5)
        ModelRequest(GetHashKey(npc_spawn_id2))
    end
    shops_npc_2 = CreatePed(GetHashKey(npc_spawn_id2), Config.Shops[store]["Shop_Dog_2"].x, Config.Shops[store]["Shop_Dog_2"].y, Config.Shops[store]["Shop_Dog_2"].z, Config.Shops[store]["Shop_Dog_2"].h, false, false, 0, 0)
    while not DoesEntityExist(shops_npc_2) do
        Wait(5)
    end
    Citizen.InvokeNative(0x283978A15512B2FE, shops_npc_2, true)
    SetOutfitPreset(shops_npc_2, outfit)
    SetPedAsGroupMember(shops_npc_2, GetPedGroupIndex(PlayerPedId()))
    SetBlockingOfNonTemporaryEvents(shops_npc_2,true)
    SetPedScale(shops_npc_2,0.500)
    FreezeEntityPosition(shops_npc_2, true)
    SetEntityInvincible(shops_npc_2, true)
    TaskStandStill(shops_npc_2, -1)
    SetEntityAsMissionEntity(shops_npc_2, true, true)
    SetModelAsNoLongerNeeded(GetHashKey(npc_spawn_id2))
    if Citizen.InvokeNative(0xC346A546612C49A9, shops_npc_1) then
        StorePlayAnim(shops_npc_2, "amb_creatures_bird@world_parrot_on_ground@base", "base")
    else
        TaskStartScenarioInPlace(shops_npc_2, GetHashKey('WORLD_ANIMAL_DOG_BEGGING'), -1, true, false, false, false)
    end
end

function Button_Prompt()
	Citizen.CreateThread(function()
        local str = "Open store"
        OpenStore = Citizen.InvokeNative(0x04F97DE45A519419)
        PromptSetControlAction(OpenStore, 0x27D1C284)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(OpenStore, str)
        PromptSetEnabled(OpenStore, true)
        PromptSetVisible(OpenStore, true)
        PromptSetHoldMode(OpenStore, true)
        PromptSetGroup(OpenStore, buttons_prompt)
        PromptRegisterEnd(OpenStore)
	end)
end


function DeleteObj(obj, called)
    if obj ~= nil then
        SetEntityAsMissionEntity(obj, false, true)
        NetworkRequestControlOfEntity(obj)
        local timeout = 0
        while not NetworkHasControlOfEntity(obj) and timeout < 5000 do
            timeout = timeout+100
            if timeout == 5000 then
            end
            Wait(100)
        end
        if NetworkHasControlOfEntity(obj) then
        end
        FreezeEntityPosition(obj , false)
        DeletePed(obj)
        if called == true then
            pet_model = nil
        end
    end
end

function ModelRequest(model)
    Citizen.CreateThread(function()
        RequestModel(model)
    end)
end

function SetOutfitPreset(dog, preset)
	return Citizen.InvokeNative(0x77FF8D35EEC6BBC4, dog, preset, 0)
end

function StartCam(k)
    Citizen.InvokeNative(0x17E0198B3882C2CB, PlayerPedId())
    DestroyAllCams(true)
    local camera_pos = GetObjectOffsetFromCoords(Config.Shops[k]["Shop_Cam"].x, Config.Shops[k]["Shop_Cam"].y, Config.Shops[k]["Shop_Cam"].z ,0.0 ,1.0, 1.0, 1.0)
    camera = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", Config.Shops[k]["Shop_Cam"].x, Config.Shops[k]["Shop_Cam"].y, Config.Shops[k]["Shop_Cam"].z, -10.00, 00.00, Config.Shops[k]["Shop_Cam"].h, 30.00, true, 0)
    SetCamActive(camera,true)
    RenderScriptCams(true, true, 1000, true, true)
    DisplayHud(false)
    DisplayRadar(false)
end

function EndCam()
    if shops_npc_1 ~= nil then
        DeleteObj(shops_npc_1)
        shops_npc_1 = nil
    end
    if shops_npc_2 ~= nil then
        DeleteObj(shops_npc_2)
        shops_npc_2 = nil
    end
    RenderScriptCams(false, true, 1000, true, false)
    DestroyCam(camera, false)
    camera = nil
    DisplayHud(true)
    DisplayRadar(true)
    DestroyAllCams(true)
    Citizen.InvokeNative(0xD0AFAFF5A51D72F7, PlayerPedId())
end
function tablelength(t)
    local count = 0
    for _ in pairs(t) do count = count + 1 end
    return count
end

