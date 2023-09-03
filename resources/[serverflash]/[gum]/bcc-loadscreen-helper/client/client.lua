local online, spacebar, firstSpawn, active= false, false, true, true

RegisterNUICallback('isgameinitiated', function(data, cb)
    cb({
        online = online,
        spacebar = spacebar
    })
end)

AddEventHandler('playerSpawned', function()
    if firstSpawn then
        online = true
        firstSpawn = false
    end
end) 

Citizen.CreateThread(function()
    while true and active do
        Citizen.Wait(0)
        if Citizen.InvokeNative(0x580417101DDB492F, 0, 0xD9D0E1C0) then
            spacebar = true
            active = false
        elseif online then
            spacebar = true
            active = false
        end
    end
end)
