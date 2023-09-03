--------------------------------------------------------------------------------
------------------------------- Fred Metabolism --------------------------------
--------------------------------------------------------------------------------

local next = next 
local checked = false
local playerstatus = {}
local inGame = false

local water = Config["InitialWater"]
local food = Config["InitialFood"]
local metabolism = Config["InitialMetabolism"]

local drunken = 0
local timer = 0

local timer2 = 0
local hard = 0

local IsPlayerLoaded = false

local Anims = {

    ["eat"] = {
            dict = "mech_inventory@eating@multi_bite@sphere_d8-2_sandwich",
            name = "quick_left_hand", 
            flag = 24
        },
    ["drink"] = {
            dict = "amb_rest_drunk@world_human_drinking@male_a@idle_a",
            name = "idle_a", 
            flag = 24
	},
  
}

local Vomits = {
	["vomit1"] = {
			dict = "amb_misc@world_human_vomit@male_a@idle_a",
			name = "idle_a" ,
			flag = 0,
	},
	["vomit2"] = {
		dict = "amb_misc@world_human_vomit@male_a@idle_c",
		name = "idle_g" ,
		flag = 0,
	},
	["vomit3"] = {
		dict = "amb_misc@world_human_vomit@male_a@idle_c",
		name = "idle_h" ,
		flag = 0,
	},    
}

local BodyCustomization = {

    BodySizes = {
        61606861,
        -1241887289,
        -369348190,
        32611963,
        -20262001
    },
    WaistSizes = {
		-2045421226,
		-1745814259,
		-325933489,
		-1065791927,
		-844699484,
		-1273449080,
		927185840,
		149872391,
		399015098,
		-644349862,
		1745919061,
		1004225511,
		1278600348,
		502499352,
		-2093198664,
		-1837436619,
		1736416063,
		2040610690,
		-1173634986,
		-867801909,
		1960266524
    }
}

local ClotheList ={
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
---------------------------------------------------------------------------
-------------------------------- FUNCTIONS --------------------------------
function getThirst()
	return water
end

function getHunger()
	return food
end

function PlayAnimation(ped, anim)
	if not DoesAnimDictExist(anim.dict) then
		return
	end

	RequestAnimDict(anim.dict)

	while not HasAnimDictLoaded(anim.dict) do
		Wait(0)
	end

	TaskPlayAnim(ped, anim.dict, anim.name, 1.0, 1.0, -1, anim.flag, 0, false, false, false, '', false)

	RemoveAnimDict(anim.dict)
end

function ScreenEffect(effect, time)
	AnimpostfxPlay(effect)
	Citizen.Wait(time)
	AnimpostfxStop(effect)
end

----
-- UPDATE PLAYER BODY FUNCTION.
----
function updatePlayerBody(ped, bodyPart1, bodypart2)
	Citizen.InvokeNative(0x1902C4CFCC5BE57C, ped, bodyPart1) -- Changes bodysize
	Citizen.InvokeNative(0x1902C4CFCC5BE57C, ped, bodypart2) -- Changes waist
	Citizen.InvokeNative(0xCC8CA3E88256E58F, ped, false, true, true, true, false) --updates bodycomponents	
end

function vomitLogic()
	hard = hard + 1
	timer2 = 60000
	if hard == 1 then
		local vomitchance = math.random(1,10) -- 10% chance
		if vomitchance == 1 then
			local vom = math.random(1,3)
			PlayAnimation(PlayerPedId(), Vomits["vomit"..vom])
		end
	elseif hard == 2 then
		local vomitchance = math.random(1, 4) -- 25% chance
		if vomitchance == 1 then
			local vom = math.random(1,3)
			PlayAnimation(PlayerPedId(), Vomits["vomit"..vom])
		end
	elseif hard == 3 then
		local vomitchance = math.random(1, 2) -- 50% chance
		if vomitchance == 1 then
			local vom = math.random(1,3)
			PlayAnimation(PlayerPedId(), Vomits["vomit"..vom])
		end
	elseif hard == 4 then
		local vomitchance = math.random(1, 1) -- 100% chance
		if vomitchance == 1 then
			local vom = math.random(1,3)
			PlayAnimation(PlayerPedId(), Vomits["vomit"..vom])
		end
	elseif hard == 5 then
		SetPedToRagdoll(PlayerPedId(-1), 60000, 60000, 0, 0, 0, 0)
		ScreenEffect("PlayerDrunk01", 5000)
		ScreenEffect("PlayerDrunk01_PassOut", 30000)
		hard = 0
	end
end
--------------------------------------------------------------------------
--------------------------- TEMPERATURE SYSTEM ---------------------------
Citizen.CreateThread(function()
    while true do
		Citizen.Wait(0)
		if inGame then
			local player = PlayerPedId()
			local coords = GetEntityCoords(player)
			Citizen.InvokeNative(0xB98B78C3768AF6E0, true)
			temp = math.floor(GetTemperatureAtCoords(coords))
			local hot = 0
			local cold = 0

			-- Checks if the player is wearing clothes
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

			if isWearingHat then temp = temp + Config["HatTemp"] end -- 1

			if isWearingShirt then temp = temp + Config["ShirtTemp"] end -- 2

			if isWearingPants then temp = temp + Config["PantsTemp"] end -- 2

			if isWearingBoots then temp = temp + Config["BootsTemp"] end -- 2

			if isWearingCoat then temp = temp + Config["CoatTemp"] end -- 3

			if isWearingClosedCoat then temp = temp + Config["ClosedCoatTemp"] end -- 4

			if isWearingGloves then temp = temp + Config["GlovesTemp"] end -- 1

			if isWearingVest then temp = temp + Config["VestTemp"] end -- 1

			if isWearingPonchoOne then temp = temp + Config["PonchoTemp"] end -- 5

			if isWearingPonchoTwo then temp = temp + Config["PonchoTemp"] end -- 5

			-- Checks that food and water stay within range
			if food < 0 then food = 0 end
		
			if food > 100 then food = 100 end
		
			if water < 0 then water = 0 end
		
			if water > 100 then water = 100 end
			-- Checks temp against config values and either clears or starts stat loss
			if temp > Config["MaxTemperature"] then hot = Config["WaterHotLoss"] else hot = 0 end

			if temp < Config["MinTemperature"] then	cold = Config["FoodColdLoss"] else cold = 0	end

			if IsPedRunning(PlayerPedId()) then
				if Config["TooCold!"] then
					food = food - (Config["FoodDrainRunning"] + cold)
					water = water - (Config["WaterDrainRunning"] + hot)
				else
					food = food - (Config["FoodDrainRunning"])
					water = water - (Config["WaterDrainRunning"])
				end
			elseif IsPedWalking(PlayerPedId()) then
				if Config["TooCold!"] then
					food = food - (Config["FoodDrainWalking"] + cold)
					water = water - (Config["WaterDrainWalking"] + hot)
				else
					food = food - (Config["FoodDrainWalking"])
					water = water - (Config["WaterDrainWalking"])
				end
			else
				if Config["TooCold!"] then
					food = food - (Config["FoodDrainIdle"] + cold)
					water = water - (Config["WaterDrainIdle"] + hot)
				else
					food = food - (Config["FoodDrainIdle"])
					water = water - (Config["WaterDrainIdle"])
				end
			end
			Citizen.Wait(Config["NeedsTick"])
		end
	end
end)
---------------------------------------------------------------------------
---------------------------- TEMPERATURE CHECK ----------------------------
Citizen.CreateThread(function()
    while true do
		Citizen.Wait(60000)
		if inGame then
			if Config["TooCold!"] then
				if Config["VORP"] then
					if tonumber(temp) <= -8 then
						TriggerEvent("vorp:NotifyLeft", "~t7~Temperature", Config["TempNotify3"], "rpg_textures", "rpg_cold", 4000)
					elseif tonumber(temp) <= -6 then
						TriggerEvent("vorp:NotifyLeft", "~pa~Temperature", Config["TempNotify2"], "rpg_textures", "rpg_cold", 4000)
					elseif tonumber(temp) <= -4 then 
						TriggerEvent("vorp:NotifyLeft", "~t3~Temperature", Config["TempNotify1"], "rpg_textures", "rpg_cold", 4000)
					end
				end
				if Config["RedEM"] then
					if tonumber(temp) <= -8 then
						TriggerEvent("redem_roleplay:NotifyLeft", "~t7~Temperature", Config["TempNotify3"], "rpg_textures", "rpg_cold", 4000)
					elseif tonumber(temp) <= -6 then
						TriggerEvent("redem_roleplay:NotifyLeft", "~pa~Temperature", Config["TempNotify2"], "rpg_textures", "rpg_cold", 4000)
					elseif tonumber(temp) <= -4 then 
						TriggerEvent("redem_roleplay:NotifyLeft", "~t3~Temperature", Config["TempNotify1"], "rpg_textures", "rpg_cold", 4000)
					end
				end
			end
		end
	end
end)
---------------------------------------------------------------------------
------------------------ TEMPERATURE DAMAGE EFFECT ------------------------
Citizen.CreateThread(function()
	while true do
		Wait(5000)
		if inGame then
			if Config["TooCold!"] then
				ped = PlayerPedId()
				health = GetEntityHealth(ped)
				coords = GetEntityCoords(ped)
				if tonumber(temp) <= -8 then
					SetEntityHealth(ped,health  - 5)
				elseif tonumber(temp) <= -6 then
					SetEntityHealth(ped,health  - 2)
				elseif tonumber(temp) <= -4 then
					SetEntityHealth(ped,health  - 1)
				end
				if health > 0 and health < 50 then
					SetEntityHealth(ped, health-1)
					Citizen.InvokeNative(0xa4d3a1c008f250df, 6)  ---hp bleed core
					PlayPain(ped, 9, 1, true, true)
					Citizen.InvokeNative(0x4102732DF6B4005F,"MP_Downed", 0, true) --play
				else
					if Citizen.InvokeNative(0x4A123E85D7C4CA0B,"MP_Downed") then --ifrunning
						Citizen.InvokeNative(0xB4FD7446BAB2F394,"MP_Downed") --- stop
					end
				end
			end
		end
	end
end)
-------------------------------------------------------------------------
----------------- HUNGER AND THIRST NOTIFICATION SYSTEM -----------------
Citizen.CreateThread(function()
    while true do
		Citizen.Wait(1000)
		if inGame then
			local showNotification1 = false
			local showNorification2 = false

			if food <= Config["FoodNotification"] and not shownotifiaction2 then
				shownotifiaction1 = true
				if Config["RedEM"] then
					TriggerEvent("redem_roleplay:Tip", Config["FoodNotify"], 3000)
				end
				if Config["VORP"] then
					TriggerEvent("vorp:Tip", Config["FoodNotify"], 3000)
				end
			end

			if water <= Config["WaterNotification"] and not shownotifiaction1 then
				shownotifiaction2 = true
				if Config["RedEM"] then
					TriggerEvent("redem_roleplay:Tip", Config["WaterNotify"], 3000)
				end
				if Config["VORP"] then
					TriggerEvent("vorp:Tip", Config["WaterNotify"], 3000)
				end
			end

			shownotifiaction2 = not shownotifiaction2
			shownotifiaction1 = not shownotifiaction1

			if food <= Config["FoodStripe"] or water <= Config["WaterStripe"] then
				local health2 = GetEntityHealth(PlayerPedId())
				local remove = health2 - Config["HealthLoss"]
				PlayPain(PlayerPedId(), 9, 1, true, true)
				if remove <= 0 then
					remove = 0
					Citizen.InvokeNative(0x697157CED63F18D4, PlayerPedId(), 500000, false, true, true) -- ApplyDamageToPed
					food = 100
					water = 100
				end
				SetEntityHealth(PlayerPedId(), remove)
			end
		end
	end
end)
--------------------------------------------------------------------------
---------------------- Disable Controls While Drunk ----------------------
Citizen.CreateThread(function()
	while true do
		Wait(0)
		if crazydrunk and inGame then
			if Config["DisableDrunkRun"] == true then	
          		DisableControlAction(0, 0x8FFC75D6, true)
          	end
		end
	end
end)
--------------------------------------------------------------------------
------------------------- Metabolism Loss System -------------------------
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if inGame then
			local ped = PlayerPedId()
			
			if metabolism < 1 then metabolism = 0 end

			if metabolism > 20000 then metabolism = 20000 end

			if IsPedRunning(ped) then
				metabolism = metabolism - Config["MetabolismLossRunning"]
			elseif IsPedWalking(ped) then
				metabolism = metabolism - Config["MetabolismLossRunning"]
			else
				metabolism = metabolism - Config["MetabolismLossIdle"]
			end

			if Config["MetabolismFiesta"] then
				if (metabolism > 0) and (metabolism <= 2500) then
					updatePlayerBody(ped, BodyCustomization.BodySizes[2], BodyCustomization.WaistSizes[1])	
				end
			
				if (metabolism > 2500) and (metabolism <= 5000) then
					updatePlayerBody(ped, BodyCustomization.BodySizes[2], BodyCustomization.WaistSizes[21])	
				end
			
				if (metabolism > 5000) and (metabolism <= 7500) then
					updatePlayerBody(ped, BodyCustomization.BodySizes[3], BodyCustomization.WaistSizes[1])		
				end
			
				if (metabolism > 7500) and (metabolism <= 12500) then
					updatePlayerBody(ped, BodyCustomization.BodySizes[3], BodyCustomization.WaistSizes[21])	
				end
			
				if (metabolism > 12500) and (metabolism <= 15000) then
					updatePlayerBody(ped, BodyCustomization.BodySizes[5], BodyCustomization.WaistSizes[1])
				end
			
				if (metabolism > 15000) and (metabolism <= 17500) then
					updatePlayerBody(ped, BodyCustomization.BodySizes[5], BodyCustomization.WaistSizes[21])
				end

				if (metabolism > 17500) and (metabolism <= 20000) then
					updatePlayerBody(ped, BodyCustomization.BodySizes[4], BodyCustomization.WaistSizes[21])	
				end		
			end

			if Config["VORP"] then
				TriggerServerEvent("fred_meta:setStatus", food, water, metabolism)
			end
			if Config["RedEM"] and IsPlayerLoaded then
				TriggerServerEvent("fred_meta:setStatus", food, water, metabolism)
			end
			if Config["RedEM"] and not IsPlayerLoaded then
				print("^4[Waiting for player to load...]^0")
			end
			Citizen.Wait(Config["MetabolismTick"])
		end
	end
end)
-------------------------------------------------------------------------
------------------ EVENT, USE THIS FOR OTHER RESOURCES ------------------
RegisterNetEvent("fred_meta:consume")
AddEventHandler("fred_meta:consume", function(hunger,thirst, metabolism, innercorestamina, innercorestaminagold, outercorestaminagold, innercorehealth, innercorehealthgold, outercorehealthgold)
	local ped = PlayerPedId()
	local coords = GetEntityCoords(ped)
	food = food + tonumber(hunger)
	water = water + tonumber(thirst)
	metabolism = metabolism + tonumber(metabolism)
	TriggerServerEvent("fred_meta:setStatus", food, water, metabolism)

	if (food < 0) then
		food = 0
	end

	if (food > 100) then
		food = 100
	end

	if water < 0 then
		water = 0
	end

	if water > 100 then
		water = 100
	end

	if (innercorestamina ~= 0) then
		stamina = Citizen.InvokeNative(0x36731AC041289BB1, ped, 1) --ACTUAL STAMINA CORE GETTER
		newStamina = stamina + tonumber(innercorestamina)

		if (newStamina > 100) then
		newStamina = 100
		end
		Citizen.InvokeNative(0xC6258F41D86676E0, ped, 1, newStamina)
	end

	if (innercorehealth ~= 0)then
		health = Citizen.InvokeNative(0x36731AC041289BB1, ped, 0) --ACTUAL HEALTH CORE GETTER
		newHealth = health + tonumber(innercorehealth)

		if (newHealth > 100) then
		newHealth = 100
		end
		Citizen.InvokeNative(0xC6258F41D86676E0, ped, 0, newHealth)
	end

		--TO DO OUTER CORE HEALTH parametro = outerCoreHealth

	--GOLDS

	if (innercorestaminagold ~= 0.0) then
		Citizen.InvokeNative(0x4AF5A4C7B9157D14, PlayerPedId(), 1, innercorestaminagold, true)
	end
	if (outercorestaminagold ~= 0.0) then
		Citizen.InvokeNative(0xF6A7C08DF2E28B28, PlayerPedId(), 1, outercorestaminagold, true)
	end
	if (innercorehealthgold ~= 0.0) then
		Citizen.InvokeNative(0x4AF5A4C7B9157D14, PlayerPedId(), 0, innercorehealthgold, true)
	end
	if	(outercorehealthgold ~= 0.0) then
		Citizen.InvokeNative(0xF6A7C08DF2E28B28, PlayerPedId(), 0, outercorehealthgold, true)
	end
end)
--------------------------------------------------------------------------
--------------------------------------------------------------------------
RegisterNetEvent("fred_meta:useItem")
AddEventHandler("fred_meta:useItem", function(index)
	local ped = PlayerPedId()
	local coords = GetEntityCoords(ped)
	local instantAnim = true

	if food < 0 then food = 0 end

	if food > 100 then food = 100 end

	if water < 0 then water = 0 end

	if water > 100 then water = 100 end
	
	if Config["CloseOnUse"] then
		TriggerEvent("vorp_inventory:CloseInv")
	end
	--
	--ANIMATIONS
	--
	if (Config.ItemsToUse[index]["Animation"] == "eat") then
		local prop = CreateObject(Config.ItemsToUse[index]["PropName"], coords.x, coords.y, coords.z + 0.2, true, true, false, false, true)
		local boneIndex = GetEntityBoneIndexByName(ped, "SKEL_L_Finger12")
		Citizen.Wait(0)
		Citizen.InvokeNative(0xFCCC886EDE3C63EC, ped, 2, 1) -- Removes Weapon from animation
		PlayAnimation(ped, Anims["eat"])
		AttachEntityToEntity(prop, PlayerPedId(), boneIndex, 0.02, 0.028, 0.001, 15.0, 175.0, 0.0, true, true, false, true, 1, true)
		Wait(1000)
		-- EFFECT 
		if (Config.ItemsToUse[index]["Effect"] ~= "") then
			ScreenEffect(Config.ItemsToUse[index]["Effect"], Config.ItemsToUse[index]["EffectDuration"])
		end
		DeleteEntity(prop)
		ClearPedSecondaryTask(ped)
	
	elseif (Config.ItemsToUse[index]["Animation"] == "drink") then
		local prop = CreateObject(Config.ItemsToUse[index]["PropName"], coords.x, coords.y, coords.z + 0.2, true, true, false, false, true)
		local boneIndex = GetEntityBoneIndexByName(ped, "SKEL_R_Finger12")
		Citizen.InvokeNative(0xFCCC886EDE3C63EC, ped, 2, 1) -- Removes Weapon from animation
		Citizen.Wait(0)
		PlayAnimation(ped, Anims["drink"])
		AttachEntityToEntity(prop, PlayerPedId(), boneIndex, 0.02, 0.028, 0.001, 15.0, 175.0, 0.0, true, true, false, true, 1, true)
		Wait(10000)
		-- EFFECT 
		if (Config.ItemsToUse[index]["Effect"] ~= "") then
			ScreenEffect(Config.ItemsToUse[index]["Effect"], Config.ItemsToUse[index]["EffectDuration"])
		end
		DeleteEntity(prop)
		ClearPedSecondaryTask(ped)

	elseif (Config.ItemsToUse[index]["Animation"] == "drink_cup") then
		local ped = PlayerPedId()
		Citizen.InvokeNative(0xFCCC886EDE3C63EC, ped, 2, 1) -- Remove Weapon for Animation
		local propEntity = CreateObject(GetHashKey('p_mugCoffee01x'), GetEntityCoords(ped), true, true, true)
		local task = TaskItemInteraction_2(ped, -1199896558, propEntity, GetHashKey('p_mugCOFFEE01x_ph_r_hand'), GetHashKey('DRINK_COFFEE_HOLD'), 3, 0, -1.0)
		Citizen.Wait(Config["DrinkCupAnim"])
		if (Config.ItemsToUse[index]["Effect"] ~= "") then
			ScreenEffect(Config.ItemsToUse[index]["Effect"], Config.ItemsToUse[index]["EffectDuration"])
		end
		ClearPedSecondaryTask(ped)

	elseif (Config.ItemsToUse[index]["Animation"] == "bowl") then
		local ped = PlayerPedId()
		Citizen.InvokeNative(0xFCCC886EDE3C63EC, ped, 2, 1) -- Removes Weapon from animation
		local bowl = CreateObject("p_bowl04x_stew", GetEntityCoords(ped), true, true, true)
		local spoon = CreateObject("p_spoon01x", GetEntityCoords(ped), true, true, true)
		Citizen.InvokeNative(0x669655FFB29EF1A9, bowl, 0, "Stew_Fill", 1.0)
		Citizen.InvokeNative(0xCAAF2BCCFEF37F77, bowl, 20)
		Citizen.InvokeNative(0xCAAF2BCCFEF37F77, spoon, 82)
		TaskItemInteraction_2(ped, 599184882, bowl, GetHashKey("p_bowl04x_stew_ph_l_hand"), -583731576, 3, 0, -1.0)
		TaskItemInteraction_2(ped, 599184882, spoon, GetHashKey("p_spoon01x_ph_r_hand"), -583731576, 3, 0, -1.0)
		Citizen.InvokeNative(0xB35370D5353995CB, ped, -583731576, 1.0)
		Wait(20000)
		if (Config.ItemsToUse[index]["Effect"] ~= "") then
			ScreenEffect(Config.ItemsToUse[index]["Effect"], Config.ItemsToUse[index]["EffectDuration"])
		end
		DeleteEntity(bowl)
		DeleteEntity(spoon)

	elseif (Config.ItemsToUse[index]["Animation"] == "shortbottle") then
		local propEntity = CreateObject(GetHashKey(Config.ItemsToUse[index]["PropName"]), GetEntityCoords(PlayerPedId()), false, true, false, false, true)
		local anim = TaskItemInteraction_2(PlayerPedId(), -1199896558, propEntity, GetHashKey('p_bottleBeer01x_PH_R_HAND'), GetHashKey('DRINK_BOTTLE@Bottle_Cylinder_D1-55_H18_Neck_A8_B1-8_TABLE_HOLD'), 1, 0, -1.0)
		if (Config.ItemsToUse[index]["SoftAlcohol"]) then
			local drunky = true
			while drunky do
				Wait(1)
				local retval  = DoesEntityExist(propEntity)
				if not retval then
					drunky = false
					drunken = drunken + 1
					if drunken >= Config.ItemsToUse[index]["DrinkCount"] and not crazydrunk then
						timer = Config.ItemsToUse[index]["EffectDuration"]
						crazydrunk = true
						Citizen.InvokeNative(0x406CCF555B04FAD3, PlayerPedId(), 1, 1.0)
						if (Config.ItemsToUse[index]["Effect"] ~= "") then
							ScreenEffect(Config.ItemsToUse[index]["Effect"], Config.ItemsToUse[index]["EffectDuration"])
						end
					end
					if Config["VomitMe"] == true and crazydrunk == true then
						vomitLogic()
					end
				end
			end
		end
		if (Config.ItemsToUse[index]["HardAlcohol"]) then
			local drunky = true
			while drunky do
				Wait(1)
				local retval  = DoesEntityExist(propEntity)
				if not retval then
					drunky = false
					drunken = drunken + 1
					if drunken >= 1 and not crazydrunk then
						timer = Config.ItemsToUse[index]["EffectDuration"]
						crazydrunk = true
						Citizen.InvokeNative(0x406CCF555B04FAD3, PlayerPedId(), 1, 1.0)
						if (Config.ItemsToUse[index]["Effect"] ~= "") then
							ScreenEffect(Config.ItemsToUse[index]["Effect"], Config.ItemsToUse[index]["EffectDuration"])
							--PlayAnimation(PlayerPedId(), Vomits["vomit3"])
						end
					end
					if Config["VomitMe"] == true and crazydrunk == true then
						vomitLogic()
					end
				end
			end
		end
		
	elseif (Config.ItemsToUse[index]["Animation"] == "longbottle") then
		local propEntity = CreateObject(GetHashKey(Config.ItemsToUse[index]["PropName"]), GetEntityCoords(PlayerPedId()), false, true, false, false, true)
		local anim = TaskItemInteraction_2(PlayerPedId(), -1199896558, propEntity, GetHashKey('p_bottleJD01x_ph_r_hand'), GetHashKey('DRINK_BOTTLE@Bottle_Cylinder_D1-3_H30-5_Neck_A13_B2-5_TABLE_HOLD'), 1, 0, -1.0)
		if (Config.ItemsToUse[index]["SoftAlcohol"]) then
			local drunky = true
			while drunky do
				Wait(1)
				local retval  = DoesEntityExist(propEntity)
				if not retval then
					drunky = false
					drunken = drunken + 1
					if drunken >= Config.ItemsToUse[index]["DrinkCount"] and not crazydrunk then
						timer = Config.ItemsToUse[index]["EffectDuration"]
						crazydrunk = true
						Citizen.InvokeNative(0x406CCF555B04FAD3, PlayerPedId(), 1, 1.0)
						if (Config.ItemsToUse[index]["Effect"] ~= "") then
							ScreenEffect(Config.ItemsToUse[index]["Effect"], Config.ItemsToUse[index]["EffectDuration"])
						end
					end
					if Config["VomitMe"] == true and crazydrunk == true then
						vomitLogic()
					end
				end
			end
		end
		if (Config.ItemsToUse[index]["HardAlcohol"]) then
			local drunky = true
			while drunky do
				Wait(1)
				local retval  = DoesEntityExist(propEntity)
				if not retval then
					drunky = false
					drunken = drunken + 1
					if drunken >= 1 and not crazydrunk then
						timer = Config.ItemsToUse[index]["EffectDuration"]
						crazydrunk = true
						Citizen.InvokeNative(0x406CCF555B04FAD3, PlayerPedId(), 1, 1.0)
						if (Config.ItemsToUse[index]["Effect"] ~= "") then
							ScreenEffect(Config.ItemsToUse[index]["Effect"], Config.ItemsToUse[index]["EffectDuration"])
						end
					end
					if Config["VomitMe"] == true and crazydrunk == true then
						vomitLogic()
					end
				end
			end
		end

		
	elseif (Config.ItemsToUse[index]["Animation"] == "syringe") then
		local playerPed = PlayerPedId()
		RequestAnimDict("mech_inventory@item@stimulants@inject@quick")
		while not HasAnimDictLoaded("mech_inventory@item@stimulants@inject@quick") do
			Wait(100)
		end
		TaskPlayAnim(playerPed, "mech_inventory@item@stimulants@inject@quick", "quick_stimulant_inject_lhand", 8.0, -0.5, -1, 0, 0, true, 0, false, 0, false)
		Wait(5000)
		if (Config.ItemsToUse[index]["Effect"] ~= "") then
			ScreenEffect(Config.ItemsToUse[index]["Effect"], Config.ItemsToUse[index]["EffectDuration"])
		end
		DeleteEntity(syringe)
		ClearPedTasks(playerPed)


	elseif (Config.ItemsToUse[index]["Animation"] == "berry") then
		local playerPed = PlayerPedId()
		RequestAnimDict("mech_pickup@plant@berries")
		while not HasAnimDictLoaded("mech_pickup@plant@berries") do
			Wait(100)
		end
		TaskPlayAnim(playerPed, "mech_pickup@plant@berries", "exit_eat", 8.0, -0.5, -1, 0, 0, true, 0, false, 0, false)
		Wait(2500)
		if (Config.ItemsToUse[index]["Effect"] ~= "") then
			ScreenEffect(Config.ItemsToUse[index]["Effect"], Config.ItemsToUse[index]["EffectDuration"])
		end
		ClearPedTasks(playerPed)

	elseif (Config.ItemsToUse[index]["Animation"] == "smoke") then
		local playerPed = PlayerPedId()
		PlaySoundFrontend("Core_Full", "Consumption_Sounds", true, 0)
	
		local prop_name = Config.ItemsToUse[index]["PropName"]
		local ped = PlayerPedId()
		local dict = 'amb_rest@world_human_smoke_cigar@male_a@idle_b'
		local anim = 'idle_d'
		local x,y,z = table.unpack(GetEntityCoords(ped, true))
		local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
		local boneIndex = GetEntityBoneIndexByName(ped, 'SKEL_R_Finger12')
		local smoking = false
		
		if not IsEntityPlayingAnim(ped, dict, anim, 3) then
    
			local waiting = 0
			RequestAnimDict(dict)
			while not HasAnimDictLoaded(dict) do
				waiting = waiting + 100
				Citizen.Wait(100)
				if waiting > 5000 then
					print('RedM Fucked up this animation')
					break
				end
			end
    
			Wait(100)
			AttachEntityToEntity(prop, ped,boneIndex, 0.01, -0.00500, 0.01550, 0.024, 300.0, -40.0, true, true, false, true, 1, true)
			TaskPlayAnim(ped, dict, anim, 8.0, -8.0, -1, 31, 0, true, 0, false, 0, false)
			Wait(1000)

			if proppromptdisplayed == false then
				PromptSetEnabled(PropPrompt, true)
				PromptSetVisible(PropPrompt, true)
				proppromptdisplayed = true
			end
        
			smoking = true
			while smoking do
				if IsEntityPlayingAnim(ped, dict, anim, 3) then

					DisableControlAction(0, 0x07CE1E61, true)
					DisableControlAction(0, 0xF84FA74F, true)
					DisableControlAction(0, 0xCEE12B50, true)
					DisableControlAction(0, 0xB2F377E8, true)
					DisableControlAction(0, 0x8FFC75D6, true)
					DisableControlAction(0, 0xD9D0E1C0, true)

					if IsControlPressed(0, 0x3B24C470) then
						PromptSetEnabled(PropPrompt, false)
						PromptSetVisible(PropPrompt, false)
						proppromptdisplayed = false
						smoking = false
						ClearPedSecondaryTask(ped)
						DeleteObject(prop)
						RemoveAnimDict(dict)
						break
					end
				else
					TaskPlayAnim(ped, dict, anim, 8.0, -8.0, -1, 31, 0, true, 0, false, 0, false)
				end
				Wait(0)
			end
		end
		ClearPedTasks(playerPed)
	end

	food = food + tonumber(Config.ItemsToUse[index]["Hunger"])
	water = water + tonumber(Config.ItemsToUse[index]["Thirst"])
	metabolism = metabolism + tonumber(Config.ItemsToUse[index]["Metabolism"])
	TriggerServerEvent("fred_meta:setStatus", food, water, metabolism)
	--
	-- CORES
	--
	if (Config.ItemsToUse[index]["InnerCoreStamina"] ~= 0) then
		local stamina = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
		if stamina == false then
			newStamina = tonumber(Config.ItemsToUse[index]["InnerCoreStamina"])
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(), 1, newStamina)
		else
			stamina = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1) --ACTUAL STAMINA CORE GETTER
			newStamina = stamina + tonumber(Config.ItemsToUse[index]["InnerCoreStamina"])

			if (newStamina > 100) then
			newStamina = 100
			end
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(), 1, newStamina)
		end
	end

	if (Config.ItemsToUse[index]["InnerCoreHealth"] ~= 0)then
		health = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 0) --ACTUAL HEALTH CORE GETTER
		newHealth = health + tonumber(Config.ItemsToUse[index]["InnerCoreHealth"])

		if (newHealth > 100) then
		newHealth = 100
		end
		Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(), 0, newHealth)
	end

		--TO DO OUTER CORE HEALTH parametro = outerCoreHealth

	--GOLDS
	if (Config.ItemsToUse[index]["InnerCoreStaminaGold"] ~= 0.0) then
		Citizen.InvokeNative(0x4AF5A4C7B9157D14, PlayerPedId(), 1, Config.ItemsToUse[index]["InnerCoreStaminaGold"], true)
	end
	if (Config.ItemsToUse[index]["OuterCoreStaminaGold"] ~= 0.0) then
		Citizen.InvokeNative(0xF6A7C08DF2E28B28, PlayerPedId(), 1, Config.ItemsToUse[index]["OuterCoreStaminaGold"], true)
	end
	if (Config.ItemsToUse[index]["InnerCoreHealthGold"] ~= 0.0) then
		Citizen.InvokeNative(0x4AF5A4C7B9157D14, PlayerPedId(), 0, Config.ItemsToUse[index]["InnerCoreHealthGold"], true)
	end
	if	(Config.ItemsToUse[index]["OuterCoreHealthGold"] ~= 0.0) then
		Citizen.InvokeNative(0xF6A7C08DF2E28B28, PlayerPedId(), 0, Config.ItemsToUse[index]["OuterCoreHealthGold"], true)
	end
end)
--------------------------------------------------------------------------
------------------------------ DRUNK EFFECT ------------------------------
Citizen.CreateThread(function()
    while true do
        Wait(1000)
		if inGame then
			if crazydrunk then
				if timer > 0 then
					timer = timer - 1000
				else
					Citizen.InvokeNative(0x406CCF555B04FAD3 , PlayerPedId(), 1, 0.0)
					crazydrunk = false
					drunken = 0
				end
			end
			if timer2 > 0 then
				timer2 = timer2 - 1000
			else
				hard = 0
			end
		end
	end
end)
--------------------------------------------------------------------------
--------------------------------------------------------------------------
if Config["VORP"] then
	RegisterNetEvent("vorp:SelectedCharacter")
	AddEventHandler("vorp:SelectedCharacter", function(charid)
		TriggerServerEvent("fred_meta:checkStatus")
		TriggerEvent("vorpcharacter:refreshPlayerSkin")
	end)
end
--------------------------------------------------------------------------
--------------------------------------------------------------------------
if Config["RedEM"] then
	RegisterNetEvent("fred_meta:PlayerLoaded")
	AddEventHandler("fred_meta:PlayerLoaded", function()
		IsPlayerLoaded = true
		if IsPlayerLoaded then
			print("^2[Player loaded!]^0")
		end
	end)
end
--------------------------------------------------------------------------
--------------------------------------------------------------------------
RegisterNetEvent("fred_meta:applyChanges")
AddEventHandler("fred_meta:applyChanges", function(hunger, thirst, metabo)
	if hunger ~= nil then food = hunger end
          
	if food > 100 then food = 100 end
          
	if thirst ~= nil then water = thirst end
          
	if water > 100 then water = 100 end
          
	if metabo ~= nil then metabolism = metabo end

	inGame = true
	TriggerEvent("fred_meta:isready")
end)
--------------------------------------------------------------------------
--------------------------------------------------------------------------
