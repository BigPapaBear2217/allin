local display = false
local answer_value = nil
RegisterNUICallback("exit", function(data)
    SetDisplay(false)
end)

RegisterNUICallback("main", function(data)
    SetDisplay(false)
end)

RegisterNUICallback("error", function(data)
    SetDisplay(false)
end)

RegisterNUICallback("HorseShoeWasFixed", function(data)
	answer_value = true
end)

function SetDisplay(bool)
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "ui",
        status = bool,
    })
end
RegisterNetEvent('crp_horseshoe:startMinigame')
AddEventHandler('crp_horseshoe:startMinigame', function()
    SetDisplay(true)
end)
