local a = false;
local b = false;
local c = false;
local d = true;
local e = "mech_loco_m@character@arthur@fidgets@injured@action@unarmed"
local f = ""
local g = false;
local h = false;
local i = false;
local j = false;
local k = false;
local l = false;
local m = false;
local n = false;
local o = false;
local p = ""
local q = ""
local r = false;
local s = false;
RegisterNetEvent('nic_injury:on')
AddEventHandler('nic_injury:on', function()
    SendNUIMessage({
        type = "ui",
        display = true
    })
end)
RegisterNetEvent('nic_injury:off')
AddEventHandler('nic_injury:off', function()
    SendNUIMessage({
        type = "ui",
        display = false
    })
end)
RegisterNetEvent('nic_injury:useBleedEffect')
AddEventHandler('nic_injury:useBleedEffect', function(t)
    o = true
end)
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsEntityDead(PlayerPedId()) then
            stopEffect()
        end
    end
end)
Citizen.CreateThread(function()
    while true do
        Wait(0)
        for u, v in pairs(Config.settings) do
            g = v.disableControls;
            i = v.bleedingEffect;
            j = v.screenOverlay;
            k = v.clumsiness;
            l = v.soundEffect;
            m = v.injuredAnimation
        end
    end
end)
Citizen.CreateThread(function()
    while true do
        Wait(0)
        local w = Citizen.InvokeNative(0x82368787EA73C0F7, PlayerPedId())
        if (w == false or w <= 40) and not IsEntityDead(PlayerPedId()) then
            n = true
        elseif (w == false or w >= 41) and not IsEntityDead(PlayerPedId()) then
            n = false
        end
    end
end)
Citizen.CreateThread(function()
    while true do
        Wait(0)
        local w = Citizen.InvokeNative(0x82368787EA73C0F7, PlayerPedId())
        if (w == false or w >= 41) and not IsEntityDead(PlayerPedId()) then
            stopEffect()
        end
    end
end)
RegisterNetEvent('nic_injury:disable')
AddEventHandler('nic_injury:disable', function()
    g = true;
    h = true
end)
Citizen.CreateThread(function()
    while true do
        Wait(0)
        if g then
            DisableControlAction(0, 0x8FFC75D6, false)
            DisableControlAction(0, 0xCEFD9220, false)
            DisableControlAction(0, 0xD9D0E1C0, false)
            DisableControlAction(0, 0xDB096B85, false)
            DisablePlayerFiring(PlayerPedId(), true)
        end
    end
end)
Citizen.CreateThread(function()
    while true do
        Wait(0)
        if not h and n and not IsEntityDead(PlayerPedId()) then
            TriggerServerEvent('nic_injury:disableControls')
        end
    end
end)
Citizen.CreateThread(function()
    while true do
        Wait(0)
        if n and not IsEntityDead(PlayerPedId()) then
            if j then
                TriggerEvent("nic_injury:on")
                AnimpostfxPlay("Downed")
                AnimpostfxPlay("PlayerHealthLow")
            end
        else
            Citizen.InvokeNative(0x66B1CB778D911F49, PlayerPedId(), 0.0)
            stopEffect()
        end
    end
end)
Citizen.CreateThread(function()
    while true do
        Wait(0)
        local x = math.random(0, 4)
        if x == 0 then
            f = "wincing_forward"
        elseif x == 1 then
            f = "wincing_forward"
        elseif x == 2 then
            f = "wincing_forward"
        elseif x == 3 then
            f = "wincing_forward"
        else
            f = "wincing_forward"
        end
        if n and not IsEntityDead(PlayerPedId()) then
            if m and not IsEntityPlayingAnim(PlayerPedId(), e, f, 31) then
                playInjuredAnimation()
            end
        elseif not n and IsEntityPlayingAnim(PlayerPedId(), e, f, 31) then
            c = false;
            ClearPedTasks(PlayerPedId())
        end
    end
end)
Citizen.CreateThread(function()
    while true do
        Wait(0)
        if n and not IsEntityDead(PlayerPedId()) then
            if l and not c then
                c = true;
                playInjuredAudio()
            end
        end
    end
end)
Citizen.CreateThread(function()
    while true do
        Wait(0)
        if n and not IsEntityDead(PlayerPedId()) then
            if k then
                Citizen.InvokeNative(0xF0A4F1BBF4FA7497, PlayerPedId(), 5000, 0, 0)
                Citizen.InvokeNative(0xDF993EE5E90ABA25, PlayerPedId(), true)
                Wait(3000)
            end
        end
    end
end)
Citizen.CreateThread(function()
    while true do
        Wait(0)
        if n and not IsEntityDead(PlayerPedId()) then
            TriggerServerEvent('nic_injury:triggerBleed')
        end
    end
end)
Citizen.CreateThread(function()
    while true do
        Wait(0)
        local y = math.random(200, 700)
        local z = math.random(800, 3000)
        local A = GetEntityBoneIndexByName(PlayerPedId(), "SKEL_Head")
        if n then
            Citizen.InvokeNative(0xFFD54D9FE71B966A, PlayerPedId(), 2, 14411, 0.0, 0.1, 0.0, 0.0, 3.0, -1.0, 0.1)
            Citizen.Wait(y)
            Citizen.InvokeNative(0x66B1CB778D911F49, PlayerPedId(), 0.0)
            Citizen.Wait(z)
        else
            Citizen.InvokeNative(0x66B1CB778D911F49, PlayerPedId(), 0.0)
            stopEffect()
        end
    end
end)
function stopEffect()
    o = false;
    s = false;
    r = false;
    n = false;
    g = false;
    h = false;
    AnimpostfxStop("MP_Downed")
    AnimpostfxStop("PlayerHealthLow")
    TriggerEvent("nic_injury:off")
end
function playInjuredAnimation()
    RequestAnimDict(e)
    while not HasAnimDictLoaded(e) do
        Wait(100)
    end
    TaskPlayAnim(PlayerPedId(), e, f, 1.0, -1.0, -1, 31, 0, true, 0, false, 0, false)
    Wait(500)
end
function playInjuredAudio()
    local B = false;
    local C = "Objective_Sounds"
    local D = "FAIL"
    if not B then
        if C ~= 0 then
            Citizen.InvokeNative(0x0F2A2175734926D8, D, C)
        end
        Citizen.InvokeNative(0x67C540AA08E4A6F5, D, C, true, 0)
        B = true
    else
        Citizen.InvokeNative(0x9D746964E0CF2C5F, D, C)
        B = false
    end
end
