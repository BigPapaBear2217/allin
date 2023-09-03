local notifyTable = {}
RegisterNetEvent('gum_notify:notify')
AddEventHandler('gum_notify:notify', function(title, subtext, icon, duration)
    show_notification(true, title, subtext, icon, duration)
end)

exports('DisplayLeftNotification', function(title, subtext, icon, duration)
    show_notification(true, title, subtext, icon, duration)
end)

function show_notification(bool, title_text, subtext_text, icon_text, duration)
    table.insert(notifyTable, {bool, title_text, subtext_text, icon_text, duration})
end


function delete_show_notification(bool)
    SendNUIMessage({type = "notify", status = bool})
end

Citizen.CreateThread(function()
    while true do
        for a,b in pairs(notifyTable) do
            SendNUIMessage({type = "notify",status = b[1],title = b[2],text = b[3],id = b[4]})
            Citizen.Wait(tonumber(b[5]))
            table.remove(notifyTable, a)
            delete_show_notification(false)
        end
        Citizen.Wait(200)
    end
end)