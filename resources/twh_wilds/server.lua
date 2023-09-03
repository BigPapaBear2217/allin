
local spawntrigger = false
local oldvalue = 1000


RegisterServerEvent("twh_wilds:setHost")
AddEventHandler("twh_wilds:setHost", function ()
    local _source = source
    TriggerClientEvent("twh_wilds:fetch",_source)
end)

RegisterServerEvent("twh_wilds:host")
AddEventHandler("twh_wilds:host", function (players)
    local main 
    local _source = source
    for key, value in pairs(players) do      
        if value < oldvalue then
            main = value
            oldvalue = value
        end
        
        
    end
    TriggerClientEvent("twh_wilds:set",_source, main)
    
end)

RegisterServerEvent("twh_wildHorses:spawntrigger")
AddEventHandler("twh_wildHorses:spawntrigger", function ()
    local _source = source
    spawntrigger = true

end)

RegisterServerEvent("twh_wildHorses:gettrigger")
AddEventHandler("twh_wildHorses:gettrigger", function ()
    local _source = source
    TriggerClientEvent("twh_wildHorses:trigger",_source, spawntrigger)
end)

