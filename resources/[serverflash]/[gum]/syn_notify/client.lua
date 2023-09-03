RegisterNetEvent('syn_left')
AddEventHandler('syn_left', function(t1, t2, dict, txtr, timer)
    if not HasStreamedTextureDictLoaded(dict) then
        RequestStreamedTextureDict(dict, true) 
        while not HasStreamedTextureDictLoaded(dict) do
            Wait(5)
        end
    end
    if txtr ~= nil then
        exports.syn_notify.LeftNot(0, tostring(t1), tostring(t2), tostring(dict), tostring(txtr), tonumber(timer))
    else
        local txtr = "tick"
        exports.syn_notify.LeftNot(0, tostring(t1), tostring(t2), tostring(dict), tostring(txtr), tonumber(timer))
    end
end)

RegisterNetEvent('syn_right')
AddEventHandler('syn_right', function(text, dict, icon, text_color, duration)
    if not HasStreamedTextureDictLoaded(dict) then
        RequestStreamedTextureDict(dict, true) 
        while not HasStreamedTextureDictLoaded(dict) do
            Wait(5)
        end
    end
    if icon ~= nil then
        exports.syn_notify.RightNot(0, text, dict, icon, text_color, duration)
    else
        local icon = "tick"
        exports.syn_notify.RightNot(0, text, dict, icon, text_color, duration)
    end
end)