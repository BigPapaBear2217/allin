local ragdoll = false
keys = {
    -- Letter E
    ["NUM_1 "] = 0xE6F612E4,
}
function whenKeyJustPressed(key)
    if Citizen.InvokeNative(0x580417101DDB492F, 0, key) then
        return true
    else
        return false
    end
end

Citizen.CreateThread(function() 
    while true do 
        Citizen.Wait(10)
        if whenKeyJustPressed(keys["NUM_1 "]) then
            if not ragdoll then 
                ragdoll = true
                SetPedToRagdoll(PlayerPedId(), 1000, 1000, 0, 0, 0, 0) 

            else
                ragdoll = false
            end
            Citizen.Wait(200)
        end  
    end
end) 

Citizen.CreateThread(function() 
    while true do 
        Citizen.Wait(10)
        if ragdoll then 
            ResetPedRagdollTimer(PlayerPedId())
        end
    end
end)