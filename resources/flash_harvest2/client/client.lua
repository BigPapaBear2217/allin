 --[[
 local collectPrompt

    Citizen.CreateThread(function()
        collectPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
        PromptSetControlAction(collectPrompt, 0xD9D0E1C0)
        PromptSetText(collectPrompt, 'Collect')
        PromptSetEnabled(collectPrompt, true)
        PromptSetVisible(collectPrompt, true)
        PromptSetHoldMode(collectPrompt, true)
        PromptSetGroup(collectPrompt, Bushgroup)
        PromptRegisterEnd(collectPrompt)
    end)

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)

            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)

            for _, coords in ipairs(Config.HayCoords) do
                local distance = GetDistanceBetweenCoords(playerCoords, coords.x, coords.y, coords.z, true)

                if distance < 2.0 then
                    if IsControlJustReleased(0, 0xD9D0E1C0) then -- Change the control code if needed
                        playKeepkAnimation()
                        TriggerServerEvent('flash_harvest:addItem')
                        TaskPlayAnim(playerPed, animDict, "enter", 8.0, 1.0, -1, 16, 0, false, false, false)
                        Citizen.Wait(10000) -- Attendre 2 secondes pour l'animation (ajuster si nécessaire)
                        ClearPedTasks(playerPed)
                        FreezeEntityPosition(playerPed, false) -- Déverrouiller la position du personnage
                    else
                        FreezeEntityPosition(playerPed, true) -- Verrouiller la position du personnage
                    end
                end
            end
        end
    end)

function playKeepkAnimation()
        local animation = "mech_pickup@plant@gold_currant"

        RequestAnimDict(animation)
        while not HasAnimDictLoaded(animation) do
            Wait(100)
        end
        TaskPlayAnim(PlayerPedId(), animation, "stn_long_low_skill_exit", 8.0, -1.0, -1, 31, 0, true, 0, false, 0, false)
        Citizen.Wait(800)
end 
]]
local collectPrompt

Citizen.CreateThread(function()
    collectPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
    PromptSetControlAction(collectPrompt, 0xD9D0E1C0)
    PromptSetText(collectPrompt, 'Collect')
    PromptSetEnabled(collectPrompt, true)
    PromptSetVisible(collectPrompt, true)
    PromptSetHoldMode(collectPrompt, true)
    PromptSetGroup(collectPrompt, Bushgroup)
    PromptRegisterEnd(collectPrompt)
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)

        for _, coords in ipairs(Config.HayCoords) do
            local distance = GetDistanceBetweenCoords(playerCoords, coords.x, coords.y, coords.z, true)

            if distance < 2.0 then
                if IsControlJustReleased(0, 0xB99A9CAD) then -- Change the control code if needed
                    TriggerServerEvent('flash_harvest2:addItem')

                    -- Décompte de débogage sans pouvoir se déplacer
                    local countdown = 3
                    while countdown > 0 do
                        print("Décompte: " .. countdown)
                        Citizen.Wait(1000)
                        countdown = countdown - 1
                    end

                    playKeepAnimation(playerPed)
                end
            end
        end
    end
end)

function playKeepAnimation(playerPed)
    local animation = "mech_pickup@plant@gold_currant"
    local animDict = "mech_pickup@plant@gold_currant"

    RequestAnimDict(animDict)
    while not HasAnimDictLoaded(animDict) do
        Wait(100)
    end

    TaskPlayAnim(playerPed, animDict, "stn_long_low_skill_exit", 8.0, -1.0, -1, 31, 0, true, 0, false, 0, false)
    FreezeEntityPosition(playerPed, true) -- Bloquer la position du personnage

    -- Durée de l'animation en secondes (ajuster si nécessaire)
    local animationDuration = 5
    Citizen.Wait(animationDuration * 1000)

    ClearPedTasks(playerPed)
    FreezeEntityPosition(playerPed, false) -- Débloquer la position du personnage
end


local function addBlipForCoords(blipname, bliphash, coords)
    local blip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, coords[1], coords[2], coords[3])
    SetBlipSprite(blip, bliphash, true)
    SetBlipScale(blip, 0.2)
    Citizen.InvokeNative(0x9CB1A1623062F402, blip, blipname)
end

local blipName = "Bouse"
local blipHash = 692310
local blipCoords = {1381.74, 278.08, 88.86}

addBlipForCoords(blipName, blipHash, blipCoords)