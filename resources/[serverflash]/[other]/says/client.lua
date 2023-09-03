local time = 7000

RegisterCommand('s', function(source, args)
    local text = ''
    for i = 1,#args do
        text = text .. ' ' .. args[i]
    end
    text = text .. ' '
    TriggerServerEvent('3dme:shareDisplay2', text)
end)

RegisterNetEvent('3dme:triggerDisplay2')
AddEventHandler('3dme:triggerDisplay2', function(text, source)
    Display(GetPlayerFromServerId(source), text)
end)

function Display(mePlayer, text)
    local displaying = true
    if chatMessage then
        local coordsMe = GetEntityCoords(GetPlayerPed(mePlayer), false)
        local coords = GetEntityCoords(PlayerPedId(), false)
        local dist = Vdist2(coordsMe, coords)
        if dist < 2500 then
            TriggerEvent('chat:addMessage', {
                color = { color.r, color.g, color.b },
                multiline = false,
                args = { text}
            })
        end
    end

    Citizen.CreateThread(function()
    	Wait(time)
        displaying = false
    end)
    Citizen.CreateThread(function()--
        while displaying do
            Wait(0)
            local coordsMe = GetEntityCoords(GetPlayerPed(mePlayer), false)
            local coords = GetEntityCoords(PlayerPedId(), false)
            local dist = Vdist2(coordsMe, coords)
            if dist < 250 then
            DrawText3D(coordsMe['x'], coordsMe['y'], coordsMe['z'], text)
            end
        end
    end)
end



function DrawText3D(x, y, z, text, scale)
    local onScreen,_x,_y=GetScreenCoordFromWorldCoord(x, y, z+1.0)
    local px,py,pz=table.unpack(GetGameplayCamCoord())  
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
    local str = CreateVarString(10, "LITERAL_STRING", text, Citizen.ResultAsLong())
    if onScreen then
        if not scale then scale = 0.3 end



    	SetTextScale(scale, scale)
  		SetTextFontForCurrentCommand(1)
        SetTextColor(255, 0, 0, 215)
    	SetTextCentre(1)
    	DisplayText(str,_x,_y)
    	local factor = (string.len(text)) / 225
    	DrawSprite("feeds", "hud_menu_4a", _x, _y+0.0125,0.015+ factor, 0.03, 0.1, 35, 35, 35, 190, 0)
    end
end