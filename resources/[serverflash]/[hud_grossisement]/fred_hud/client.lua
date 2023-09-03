local inGame = false
local fdisplay = true
local isInMenu = false
local position
-- mystress = nil

 RegisterNetEvent("gui:getItems")
 AddEventHandler("gui:getItems", function(THEITEMS)
     SendNUIMessage({
        items = THEITEMS,
     })
 end)

-- RegisterNetEvent("gui:getStress") --[[ THIS FUNCTION SHIFTS THE STRESS VARIABLE FROM THE SERVER SIDE TO THE CLIENT SIDE ]]
-- AddEventHandler("gui:getStress", function(stress)
--     mystress = stress
--     print("This is your stress:", mystress)
-- end) 

-- RegisterNetEvent("gui:setstress") --[[ THIS FUNCTION RECORDS THE PLAYER'S STRESS ON A VARIABLE SERVER ]]
-- AddEventHandler("gui:setstress", function()
--     local _src = source
--     TriggerServerEvent("maliko:notstress")
-- end)

-- Citizen.CreateThread(function() --[[ THIS THREAD CHARGES PLAYER STRESS AT LOGIN]]
--     TriggerEvent("gui:setstress")
--     print("I activate the Server side")
-- end)

-- Citizen.CreateThread(function() --[[ THIS THREAD DECREASES PLAYER STRESS EVERY 30 SECONDS BY 3. ]]
-- while true do 
--     Wait(30000)
--     TriggerServerEvent("AbbassaStress", mystress)
--     mystress = nil
-- end
-- end)

local ClotheList = {
    0x9925C067, -- Hat
    0x2026C46D, -- Shirt
    0x1D4C528A, -- Pants
    0x777EC6EF, -- Boots
    0xE06D30CE, -- Coats
    0x662AC34, -- Closed Coats
    0xEABE0032, -- Gloves
    0x485EE834, -- Vest
    0xAF14310B, -- Ponchos 1
    0x3C1A74CD -- Ponchos 2
}

RegisterNetEvent("fred_meta:isready")
AddEventHandler("fred_meta:isready", function()
	inGame = true 
end)

RegisterNetEvent("fred_hud:menuActive")
AddEventHandler("fred_hud:menuActive", function(int)
	if int == 1 then
		isInMenu = true
	elseif int == 0 then
		isInMenu = false
	end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
		local isPaused = IsPauseMenuActive()
		local isHudInactive = IsHudHidden()

		if inGame then
			Citizen.InvokeNative(0x50C803A4CD5932C5 , true)
			local myhunger = exports["fred_metabolism"]:getHunger()
			local mythirst = exports["fred_metabolism"]:getThirst()

			local player = PlayerPedId()
			local coords = GetEntityCoords(player)
			Citizen.InvokeNative(0xB98B78C3768AF6E0,true)
			local temp = GetTemperatureAtCoords(coords)
			local _src = source

			if Config["BodyTemp"] == true then
				local isWearingHat = Citizen.InvokeNative(0xFB4891BD7578CDC1, player, ClotheList[1])
				local isWearingShirt = Citizen.InvokeNative(0xFB4891BD7578CDC1, player, ClotheList[2])
				local isWearingPants = Citizen.InvokeNative(0xFB4891BD7578CDC1, player, ClotheList[3])
				local isWearingBoots = Citizen.InvokeNative(0xFB4891BD7578CDC1, player, ClotheList[4])
				local isWearingCoat = Citizen.InvokeNative(0xFB4891BD7578CDC1, player, ClotheList[5])
				local isWearingClosedCoat = Citizen.InvokeNative(0xFB4891BD7578CDC1, player, ClotheList[6])
				local isWearingGloves = Citizen.InvokeNative(0xFB4891BD7578CDC1, player, ClotheList[7])
				local isWearingVest = Citizen.InvokeNative(0xFB4891BD7578CDC1, player, ClotheList[8])
				local isWearingPonchoOne = Citizen.InvokeNative(0xFB4891BD7578CDC1, player, ClotheList[9])
				local isWearingPonchoTwo = Citizen.InvokeNative(0xFB4891BD7578CDC1, player, ClotheList[10])
		
				if isWearingHat then
					temp = temp + 1
				end

				if isWearingShirt then
					temp = temp + 2
				end

				if isWearingPants then
					temp = temp + 2
				end

				if isWearingBoots then
					temp = temp + 2
				end

				if isWearingCoat then
					temp = temp + 3
				end

				if isWearingClosedCoat then
					temp = temp + 4
				end

				if isWearingGloves then
					temp = temp + 1
				end

				if isWearingVest then
					temp = temp + 1
				end

				if isWearingPonchoOne then
					temp = temp + 5
				end

				if isWearingPonchoTwo then
					temp = temp + 5
				end
			end
			if isRadarActive then
				position = "altered"
			else
				position = "normal"
			end
			if fdisplay and not isPaused and not isInMenu and not isHudInactive then
				SendNUIMessage({
					action = "updateStatusHud",
					hunger = myhunger,
					thirst = mythirst,
					temp = math.floor(temp).."°C",
					alignment = position,
				})
			else
				SendNUIMessage({
					show = false,
				})
			end
		end
        Citizen.Wait(250)
    end
end)

RegisterCommand('fhud', function(source, args, rawCommand)
	fdisplay = not fdisplay
end)
