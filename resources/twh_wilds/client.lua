
local horses ={}
local rareHorses ={}
local spawntimerRare = Config.spawntimerRare * 6000
local spawntimer = Config.spawntimer * 6000
local triggeractive =false



function Listentrys(table)
    local keys = 0
    for k,v in pairs(table) do
       keys = keys + 1
    end
    return keys
end


local totalkeysRare = Listentrys(Config.rareLocations)
local totalkeys = Listentrys(Config.Locations)


Citizen.CreateThread(function()
    Citizen.Wait(5000)
    TriggerServerEvent("twh_wilds:setHost")
end)

RegisterNetEvent("twh_wilds:fetch")
AddEventHandler("twh_wilds:fetch", function()
    TriggerServerEvent("twh_wilds:host",GetPlayers())
    
end)

local host
RegisterNetEvent("twh_wilds:set")
AddEventHandler("twh_wilds:set", function(main)
    host = main
end)

RegisterNetEvent("twh_wildHorses:trigger")
AddEventHandler("twh_wildHorses:trigger", function(ptrigger)
    triggeractive = ptrigger
end)


RegisterNetEvent("vorp:SelectedCharacter") 
AddEventHandler("vorp:SelectedCharacter", function(charid)
Citizen.Wait(10000)
Spawning()

end)

function Spawning()
    
        while true do
            Citizen.Wait(100)
            if Config.normals then   
                Wait(1000)
                if GetPlayerServerId(PlayerId()) == host then 

                    for k,v in pairs(horses) do 
                        DeletePed(v)
                    end
                    
                     
                     for k,v in pairs(Config.Locations) do 
                         
                             local hashModel = GetHashKey(v.model) 
                             if IsModelValid(hashModel) then 
                                 RequestModel(hashModel)
                                 while not HasModelLoaded(hashModel) do                
                                     Wait(100)
                                 end
                             end        
                             if v.isGroup then
                                for i = 1, v.groupSize, 1 do
                                    local height = 1
                                    local r1 = v.radius * 1000 + (i*10)
                                    local r2 = v.radius * 1000 + (i*10)
                                    local l1 = math.random(i*10,r1)/1000
                                    local l2 = math.random(i*10,r2)/1000 
                                    local locx = v.loc.x + l1
                                    local locy = v.loc.y + l2
                                    local locz = v.loc.z
                                    local heads = v.heading + math.random(-v.headingDif,v.headingDif)
                                    local horse = CreatePed(hashModel, locx, locy, locz, heads, true, true, true, true)
                                    Citizen.InvokeNative(0x283978A15512B2FE, horse, true)
                                    Citizen.InvokeNative(0xAEB97D84CDF3C00B, horse, true)
                                    table.insert(horses,horse)
                                    Citizen.Wait(1000)
                                end
                             else
                                local horse = CreatePed(hashModel, v.loc.x, v.loc.y, v.loc.z, v.heading, true, true, true, true)
                                Citizen.InvokeNative(0x283978A15512B2FE, horse, true)
                                Citizen.InvokeNative(0xAEB97D84CDF3C00B, horse, true)
                                table.insert(horses,horse)
                                Citizen.Wait(1000)
                            end
                
                     end
                    Wait(spawntimer) 
                else
                    Wait(5000)
                end
            end

            if Config.rares then 
                if Config.spawnCount ~= 0 then 
                    Wait(1000)
                    if GetPlayerServerId(PlayerId()) == host then 
                        for k,v in pairs(rareHorses) do 
                            DeletePed(v)
                        end
                        for i =1, Config.spawnCount do 
                            local random = math.random(1,totalkeysRare)
                            for k,v in pairs(Config.rareLocations) do 
                                if k == random then 
                                    local hashModel = GetHashKey(v.model) 
                                    if IsModelValid(hashModel) then 
                                        RequestModel(hashModel)
                                        while not HasModelLoaded(hashModel) do                
                                            Wait(100)
                                        end
                                    end
                                    if v.isGroup then
                                        for i = 1, v.groupSize, 1 do
                                            local height = 1
                                            r1 = v.radius * 1000 + (i*10)
                                            r2 = v.radius * 1000 + (i*10)
                                            l1 = math.random(i*10,r1)/1000
                                            l2 = math.random(i*10,r2)/1000 
                                            
                                            locx = v.loc.x + l1
                                            locy = v.loc.y + l2
                                            locz = v.loc.z
                                            heads = v.heading + math.random(-v.headingDif,v.headingDif)
                                            local rareHorse = CreatePed(hashModel, v.loc.x, v.loc.y, v.loc.z, v.heading, true, true, true, true)
                                            Citizen.InvokeNative(0x283978A15512B2FE, rareHorse, true)
                                            Citizen.InvokeNative(0xAEB97D84CDF3C00B, rareHorse, true)
                                            table.insert(rareHorses,rareHorse)
                                            Citizen.Wait(1000)
                                        end
                                     else
                                        local rareHorse = CreatePed(hashModel, v.loc.x, v.loc.y, v.loc.z, v.heading, true, true, true, true)
                                        Citizen.InvokeNative(0x283978A15512B2FE, rareHorse, true)
                                        Citizen.InvokeNative(0xAEB97D84CDF3C00B, rareHorse, true)
                                        table.insert(rareHorses,rareHorse)
                                        Citizen.Wait(1000)
                                    end        
                                    
                                end
                            end
                        end
                        Wait(spawntimerRare) 
                    else
                        Wait(5000)
                    end
                else
                    Wait(5000)
                end
            end
        end  
end




function GetPlayers()
	local players = {}
    local actives = GetActivePlayers()
	for k,v in pairs(actives) do
		if NetworkIsPlayerActive(v) then
			table.insert(players, GetPlayerServerId(v))
		end
	end
	return players
    
end



AddEventHandler("onResourceStop",function(resourceName)
    if resourceName == GetCurrentResourceName() then
        for k,v in pairs(rareHorses) do 
            DeletePed(v)
        end
        for k,v in pairs(horses) do 
            DeletePed(v)
        end
    end
end)