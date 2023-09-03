local pressing = false
local fisherblip = {}
local NPCFish = {}

MenuData = {}

TriggerEvent(Config.MenuData,function(call)
    MenuData = call
end)

if Config.Shop then

	local Fisherprompt
	local Fishergroup = GetRandomIntInRange(0, 0xffffff)

	function FisherPrompt()
		Citizen.CreateThread(function()
			local str = Config.Language.Interact
			local wait = 0
			Fisherprompt = Citizen.InvokeNative(0x04F97DE45A519419)
			PromptSetControlAction(Fisherprompt, 0xE3BF959B)
			str = CreateVarString(10, 'LITERAL_STRING', str)
			PromptSetText(Fisherprompt, str)
			PromptSetEnabled(Fisherprompt, true)
			PromptSetVisible(Fisherprompt, true)
			PromptSetHoldMode(Fisherprompt, true)
			PromptSetGroup(Fisherprompt, Fishergroup)
			PromptRegisterEnd(Fisherprompt)
		end)
	end

	-- Blip Function
	Citizen.CreateThread(function()	
		if Config.Blip then
			fisherblip = N_0x554d9d53f696d002(1664425300, Config.Location.x, Config.Location.y, Config.Location.z)
			SetBlipSprite(fisherblip, Config.BlipDesign, 1)
			SetBlipScale(fisherblip, Config.BlipSize)
			Citizen.InvokeNative(0x9CB1A1623062F402, fisherblip, Config.Blipname)
		end
		if Config.Model then
			FishModel = GetHashKey(Config.ModelSkin)
			
			while not HasModelLoaded(FishModel) do
				Wait(500)
				RequestModel(FishModel)	
			end
			
			local NPCFish = CreatePed(FishModel, Config.Location.x, Config.Location.y, Config.Location.z-1.60, Config.Location.h, false, true)
			
			while not DoesEntityExist(NPCFish) do
				Wait(300)
			end
			
			Citizen.InvokeNative(0x283978A15512B2FE, NPCFish, true)
			FreezeEntityPosition(NPCFish, true)
			SetEntityInvincible(NPCFish, true)
			SetEntityAsMissionEntity(NPCFish, true, true)
			SetModelAsNoLongerNeeded(FishModel)
			SetBlockingOfNonTemporaryEvents(NPCFish, true)
			SetEntityCanBeDamaged(NPCFish, false)
			SetEntityCollision(NPCFish, false, false)
			
			prop = CreateObject(GetHashKey("p_chair04x"), Config.Location.x, Config.Location.y, Config.Location.z, false, false, false, false, false)
			Citizen.InvokeNative(0x6B9BBD38AB0796DF, prop, NPCFish, GetEntityBoneIndexByName(NPCFish,"SCALE_L_Knee"), 0.0, 0.0, -0.45, 0.0, 0.0, -180.0, true, true, false, false, 1, true) 
			
			TaskStartScenarioInPlace(NPCFish, GetHashKey("PROP_HUMAN_SEAT_CHAIR_FISHING_ROD"), -1)						
		end		
	end)

	Citizen.CreateThread(function()
		FisherPrompt()
		while true do
			optimize = 1500			
			local sleep = true
			local playerPed = PlayerPedId()
			local coords = GetEntityCoords(playerPed)
			local betweencoords = GetDistanceBetweenCoords(coords, Config.Location.x, Config.Location.y, Config.Location.z, true)
			if betweencoords < 2.0 and not pressing then
				optimize = 4
				local FisherGroupName  = CreateVarString(10, 'LITERAL_STRING', Config.Language.Underline)
				PromptSetActiveGroupThisFrame(Fishergroup, FisherGroupName)
				if PromptHasHoldModeCompleted(Fisherprompt) and not pressing then
					Open_Main_Menu_Shop()
					pressing = true
				end
			end
		Citizen.Wait(optimize)		
		end
	end)

	function Open_Main_Menu_Shop()
		MenuData.CloseAll()
		local elements = {
			{label = Config.Language.Naturalbaits, value = 'natural' , desc = "<img src='https://rdr2.reddust-roleplay.de/GameIcons/naturalbait.png' width='96' height='96'>"},
			{label = Config.Language.FakeBaits, value = 'fake' , desc = "<img src='https://rdr2.reddust-roleplay.de/GameIcons/fakebait.png' width='96' height='96'>"},
		}
	   MenuData.Open('default', GetCurrentResourceName(), 'Prime_Fishing',
		{
			title    = Config.Language.Title,
			subtext    = '',
			align    = 'top-right',
			elements = elements,
		},
		function(data, menu)
			if(data.current.value == 'natural') then
				Open_Menu_Natural()
			end
			if(data.current.value == 'fake') then
				Open_Menu_Fake()
			end
		end,
	function(data, menu)
		menu.close()
		pressing = false
		end)
	end

	function Open_Menu_Natural()
		MenuData.CloseAll()
		local elements = {
			{label = Config.Language.Bread, value = 'p_baitBread01x' , desc = Config.Language.Singleprice.." "..Config.BreadPrice.." $"},
			{label = Config.Language.Corn, value = 'p_baitCorn01x' , desc = Config.Language.Singleprice.." "..Config.CornPrice.." $"},
			{label = Config.Language.Cheese, value = 'p_baitCheese01x' , desc = Config.Language.Singleprice.." "..Config.CheesePrice.." $"},
			{label = Config.Language.Worm, value = 'p_baitWorm01x' , desc = Config.Language.Singleprice.." "..Config.WormPrice.." $"},
			{label = Config.Language.Cricket, value = 'p_baitCricket01x' , desc = Config.Language.Singleprice.." "..Config.CricketPrice.." $"},
			{label = Config.Language.Crab, value = 'p_baitcrawfish01x' , desc = Config.Language.Singleprice.." "..Config.Crabprice.." $"},
		}
	   MenuData.Open('default', GetCurrentResourceName(), 'Prime_Fishing',
		{
			title    = Config.Language.Naturalbaits,
			subtext    = '',
			align    = 'top-right',
			elements = elements,
		},
		function(data, menu)
			if(data.current.value == 'p_baitBread01x') then
				menu.close()
				TriggerEvent(Config.InputData, Config.Language.Confirm, Config.Language.Amount, function(cb)
					local count = tonumber(cb)
					if count ~= nil and count ~= -1 and count ~= 0 and count ~= close and count >= 0 then
						pressing = false
						local itemPrice = Config.BreadPrice
						TriggerServerEvent("RedDust_FishingShopItem", data.current.value, count, itemPrice)
					else
						exports['RedDust_Notify']:DisplayLeftNotification(Config.Language.Header, Config.Language.WrongAmoung, Config.Language.ImageFirst, Config.Language.ImageLast, 2500)
						pressing = false
					end
				end)			
			end
			if(data.current.value == 'p_baitCorn01x') then
				menu.close()
				TriggerEvent(Config.InputData, Config.Language.Confirm, Config.Language.Amount, function(cb)
					local count = tonumber(cb)
					if count ~= nil and count ~= -1 and count ~= 0 and count ~= close then
						pressing = false
						local itemPrice = Config.CornPrice
						TriggerServerEvent("RedDust_FishingShopItem", data.current.value, count, itemPrice)
					else
						exports['RedDust_Notify']:DisplayLeftNotification(Config.Language.Header, Config.Language.WrongAmoung, Config.Language.ImageFirst, Config.Language.ImageLast, 2500)
						pressing = false
					end
				end)
			end
			if(data.current.value == 'p_baitCheese01x') then
				menu.close()
				TriggerEvent(Config.InputData, Config.Language.Confirm, Config.Language.Amount, function(cb)
					local count = tonumber(cb)
					if count ~= nil and count ~= -1 and count ~= 0 and count ~= close then
						pressing = false
						local itemPrice = Config.CheesePrice
						TriggerServerEvent("RedDust_FishingShopItem", data.current.value, count, itemPrice)
					else
						exports['RedDust_Notify']:DisplayLeftNotification(Config.Language.Header, Config.Language.WrongAmoung, Config.Language.ImageFirst, Config.Language.ImageLast, 2500)
						pressing = false
					end
				end)
			end
			if(data.current.value == 'p_baitWorm01x') then
				menu.close()
				TriggerEvent(Config.InputData, Config.Language.Confirm, Config.Language.Amount, function(cb)
					local count = tonumber(cb)
					if count ~= nil and count ~= -1 and count ~= 0 and count ~= close then
						pressing = false
						local itemPrice = Config.WormPrice
						TriggerServerEvent("RedDust_FishingShopItem", data.current.value, count, itemPrice)
					else
						exports['RedDust_Notify']:DisplayLeftNotification(Config.Language.Header, Config.Language.WrongAmoung, Config.Language.ImageFirst, Config.Language.ImageLast, 2500)
						pressing = false
					end
				end) 
			end		
			if(data.current.value == 'p_baitCricket01x') then
				menu.close()
				TriggerEvent(Config.InputData, Config.Language.Confirm, Config.Language.Amount, function(cb)
					local count = tonumber(cb)
					if count ~= nil and count ~= -1 and count ~= 0 and count ~= close then
						pressing = false
						local itemPrice = Config.CricketPrice
						TriggerServerEvent("RedDust_FishingShopItem", data.current.value, count, itemPrice)
					else
						exports['RedDust_Notify']:DisplayLeftNotification(Config.Language.Header, Config.Language.WrongAmoung, Config.Language.ImageFirst, Config.Language.ImageLast, 2500)
						pressing = false
					end
				end)
			end	
			if(data.current.value == 'p_baitcrawfish01x') then
				menu.close()
				TriggerEvent(Config.InputData, Config.Language.Confirm, Config.Language.Amount, function(cb)
					local count = tonumber(cb)
					if count ~= nil and count ~= -1 and count ~= 0 and count ~= close then
						pressing = false
						local itemPrice = Config.Crabprice
						TriggerServerEvent("RedDust_FishingShopItem", data.current.value, count, itemPrice)
					else
						exports['RedDust_Notify']:DisplayLeftNotification(Config.Language.Header, Config.Language.WrongAmoung, Config.Language.ImageFirst, Config.Language.ImageLast, 2500)
						pressing = false
					end
				end)
			end		
		end,
	function(data, menu)
		Open_Main_Menu_Shop()
		end)
	end

	function Open_Menu_Fake()
		MenuData.CloseAll()
		local elements = {
			{label = Config.Language.SmallLib, value = 'p_finishedragonfly01x' , desc = Config.Language.Singleprice.." "..Config.SmallLib.." $"},
			{label = Config.Language.SmallWood, value = 'p_FinisdFishlure01x' , desc = Config.Language.Singleprice.." "..Config.SmallWood.." $"},
			{label = Config.Language.SmallIns, value = 'p_finishdcrawd01x' , desc = Config.Language.Singleprice.." "..Config.SmallIns2.." $"},
			{label = Config.Language.RedBlink, value = 'p_lgfwaterspinner01x' , desc = Config.Language.Singleprice.." "..Config.RedBlink.." $"},
			{label = Config.Language.SmallV4, value = 'p_lgoc_spinner_v4' , desc = Config.Language.Singleprice.." "..Config.SmallV4.." $"},
			{label = Config.Language.SmallV6, value = 'p_lgoc_spinner_v6' , desc = Config.Language.Singleprice.." "..Config.SmallV6.." $"},
		}
	   MenuData.Open('default', GetCurrentResourceName(), 'Prime_Fishing',
		{
			title    = Config.Language.Naturalbaits,
			subtext    = '',
			align    = 'top-right',
			elements = elements,
		},
		function(data, menu)
			if(data.current.value == 'p_finishedragonfly01x') then
				menu.close()
				TriggerEvent(Config.InputData, Config.Language.Confirm, Config.Language.Amount, function(cb)
					local count = tonumber(cb)
					if count ~= nil and count ~= -1 and count ~= 0 and count ~= close then
						pressing = false
						local itemPrice = Config.SmallLib
						TriggerServerEvent("RedDust_FishingShopItem", data.current.value, count, itemPrice)
					else
						exports['RedDust_Notify']:DisplayLeftNotification(Config.Language.Header, Config.Language.WrongAmoung, Config.Language.ImageFirst, Config.Language.ImageLast, 2500)
						pressing = false
					end
				end)           
			end
			if(data.current.value == 'p_FinisdFishlure01x') then
				menu.close()
				TriggerEvent(Config.InputData, Config.Language.Confirm, Config.Language.Amount, function(cb)
					local count = tonumber(cb)
					if count ~= nil and count ~= -1 and count ~= 0 and count ~= close then
						pressing = false
						local itemPrice = Config.SmallWood
						TriggerServerEvent("RedDust_FishingShopItem", data.current.value, count, itemPrice)
					else
						exports['RedDust_Notify']:DisplayLeftNotification(Config.Language.Header, Config.Language.WrongAmoung, Config.Language.ImageFirst, Config.Language.ImageLast, 2500)
						pressing = false
					end
				end)            
			end	
			if(data.current.value == 'p_finishdcrawd01x') then
				menu.close()
				TriggerEvent(Config.InputData, Config.Language.Confirm, Config.Language.Amount, function(cb)
					local count = tonumber(cb)
					if count ~= nil and count ~= -1 and count ~= 0 and count ~= close then
						pressing = false
						local itemPrice = Config.SmallIns2
						TriggerServerEvent("RedDust_FishingShopItem", data.current.value, count, itemPrice)
					else
						exports['RedDust_Notify']:DisplayLeftNotification(Config.Language.Header, Config.Language.WrongAmoung, Config.Language.ImageFirst, Config.Language.ImageLast, 2500)
						pressing = false
					end
				end)            
			end
			if(data.current.value == 'p_lgfwaterspinner01x') then
				menu.close()
				TriggerEvent(Config.InputData, Config.Language.Confirm, Config.Language.Amount, function(cb)
					local count = tonumber(cb)
					if count ~= nil and count ~= -1 and count ~= 0 and count ~= close then
						pressing = false
						local itemPrice = Config.RedBlink
						TriggerServerEvent("RedDust_FishingShopItem", data.current.value, count, itemPrice)
					else
						exports['RedDust_Notify']:DisplayLeftNotification(Config.Language.Header, Config.Language.WrongAmoung, Config.Language.ImageFirst, Config.Language.ImageLast, 2500)
						pressing = false
					end
				end)            
			end
			if(data.current.value == 'p_lgoc_spinner_v4') then
				menu.close()
				TriggerEvent(Config.InputData, Config.Language.Confirm, Config.Language.Amount, function(cb)
					local count = tonumber(cb)
					if count ~= nil and count ~= -1 and count ~= 0 and count ~= close then
						pressing = false
						local itemPrice = Config.SmallV4
						TriggerServerEvent("RedDust_FishingShopItem", data.current.value, count, itemPrice)
					else
						exports['RedDust_Notify']:DisplayLeftNotification(Config.Language.Header, Config.Language.WrongAmoung, Config.Language.ImageFirst, Config.Language.ImageLast, 2500)
						pressing = false
					end
				end)            	
			end
			if(data.current.value == 'p_lgoc_spinner_v6') then
				menu.close()
				TriggerEvent(Config.InputData, Config.Language.Confirm, Config.Language.Amount, function(cb)
					local count = tonumber(cb)
					if count ~= nil and count ~= -1 and count ~= 0 and count ~= close then
						pressing = false
						local itemPrice = Config.SmallV6
						TriggerServerEvent("RedDust_FishingShopItem", data.current.value, count, itemPrice)
					else
						exports['RedDust_Notify']:DisplayLeftNotification(Config.Language.Header, Config.Language.WrongAmoung, Config.Language.ImageFirst, Config.Language.ImageLast, 2500)
						pressing = false					
					end
				end)            
			end			
		end,
	function(data, menu)
		Open_Main_Menu_Shop()
		end)
	end

end