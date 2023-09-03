local entityEnumerator = {    __gc = function(enum)      if enum.destructor and enum.handle then        enum.destructor(enum.handle)      end      enum.destructor = nil      enum.handle = nil end}
local function EnumerateEntities(initFunc, moveFunc, disposeFunc)    return coroutine.wrap(function()      local iter, id = initFunc()      if not id or id == 0 then        disposeFunc(iter)        return      end            local enum = {handle = iter, destructor = disposeFunc}      setmetatable(enum, entityEnumerator)            local next = true      repeat        coroutine.yield(id)        next, id = moveFunc(iter)      until not next            enum.destructor, enum.handle = nil, nil      disposeFunc(iter)    end) end
function EnumerateObjects()    return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject) end

local buttonPrompts1 = GetRandomIntInRange(0, 0xffffff)
local buttonPrompts2 = GetRandomIntInRange(0, 0xffffff)
local buttonPrompts3 = GetRandomIntInRange(0, 0xffffff)
local buttonPrompts4 = GetRandomIntInRange(0, 0xffffff)
local buttonPrompts5 = GetRandomIntInRange(0, 0xffffff)
local buttonPrompts6 = GetRandomIntInRange(0, 0xffffff)
local campData = {}
local steamId = ""
local charId = 0
local placedProps = {}
local placedFires = {}
local campId = 0
local clotheTable = {}
local canGoStCl = false
local sharedBlips = {}
local block_load = false
local veg_modifier_spheres = {}
local checkedCamp = 0
local campIdentLock = 0
local rangeEnable = false

local gum
TriggerEvent("getApi",function(gumApi)
    gum = gumApi
end)


RegisterNetEvent("gum_camping:useCloth")
AddEventHandler("gum_camping:useCloth", function()
ExecuteCommand("rc")
end)


RegisterNetEvent("gum_camping:sendBack")
AddEventHandler("gum_camping:sendBack", function(cd, steam, char)
	campData = cd
	campId = 0
	if steam ~= nil then
		steamId = steam
	end
	if char ~= nil then
		charId = char
	end
	block_load = true
	TriggerEvent("gum_camping:blockBuild", block_load)
	if myCampBlip ~= nil then
		RemoveBlip(myCampBlip)
	end
	for k,v in pairs(sharedBlips) do
		if v ~= nil then
			RemoveBlip(v)
		end
	end
	Citizen.Wait(0)
	for k,v in pairs(campData) do
		if tonumber(v.charid) == tonumber(charId) and v.identifier == steamId then
			myCampBlip = Citizen.InvokeNative(0x45f13b7e0a15c880, -2086133828, json.decode(v.center).x, json.decode(v.center).y, json.decode(v.center).z, 60.0)
			Citizen.InvokeNative(0x9CB1A1623062F402, myCampBlip, ""..Config.Language[7].text.."")
			SetBlipSprite(myCampBlip, 1754365229)
		end
	end
	for a,b in pairs(campData) do
		if json.decode(b.shared) ~= nil then
			for c,d in pairs(json.decode(b.shared)) do
				if tonumber(d.charid) == tonumber(charId) and (steamId == d.steamid or d.steamid == nil) then
					local sharedBlip = Citizen.InvokeNative(0x45f13b7e0a15c880, -2086133828, json.decode(b.center).x, json.decode(b.center).y, json.decode(b.center).z, 60.0)
					Citizen.InvokeNative(0x9CB1A1623062F402, sharedBlip, ""..Config.Language[8].text.."")
					SetBlipSprite(sharedBlip, 773587962)
					table.insert(sharedBlips, sharedBlip)
				end
			end
		end
	end
	Citizen.Wait(500)
	block_load = false
	TriggerEvent("gum_camping:blockBuild", block_load)
end)

RegisterNetEvent("gum_camping:throwAnim")
AddEventHandler("gum_camping:throwAnim", function(player)
	playCustomAnim("ai_gestures@arthur@standing@speaker", "throw_lt_01", 3000)
end)

RegisterNetEvent("gum_camping:catchAnim")
AddEventHandler("gum_camping:catchAnim", function(player)
	Citizen.Wait(1950)
	playCustomAnim("ai_gestures@gen_male@standing@speaker", "catch_rt_01", 2500)
end)

RegisterNetEvent("gum_camping:runMinigame")
AddEventHandler("gum_camping:runMinigame", function(campIdent)
	campIdentLock = campIdent
	Citizen.InvokeNative(0x7DE9692C6F64CFE8, PlayerPedId(), 1)
	Citizen.Wait(500)
	TriggerEvent("vorp_inventory:CloseInv")
	playCustomAnim2("mech_doors@locked@door_knob@generic@handle_l@hand_l@try_door", "lockpick", -1, 25)
    TriggerEvent('gum_lockpick:client:openLockpick', lockpick)
end)

function lockpick(success)
    pedc = GetEntityCoords(PlayerPedId())
    if success then
		TriggerServerEvent("gum_camping:LoadInventory", "camping_"..tonumber(campIdentLock), Config.Max_Items_In_Storage)
		ClearPedTasks(PlayerPedId())
		campIdentLock = 0
		Citizen.InvokeNative(0x7DE9692C6F64CFE8, PlayerPedId(), 1)
	else
		campIdentLock = 0
        TriggerServerEvent("gum_camping:delLockpick")
        ClearPedTasks(PlayerPedId())
    end
end


RegisterNetEvent("gum_camping:sendBackFires")
AddEventHandler("gum_camping:sendBackFires", function(cd)
	campData = cd
	campId = 0
	block_load = true
	TriggerEvent("gum_camping:blockBuild", block_load)
	Citizen.Wait(500)
	TriggerEvent("gum_camping:blockBuild", block_load)
	block_load = false
end)

RegisterNUICallback('range', function(data, cb)
	if rangeEnable == false then
		rangeEnable = true
	else
		rangeEnable = false
	end
end)

RegisterNetEvent("vorp:SelectedCharacter")
AddEventHandler("vorp:SelectedCharacter", function(charid)
	Citizen.Wait(10000)
	TriggerServerEvent("gum_camping:sendBack", true)
end)

Citizen.CreateThread(function()
	while true do
		local loopCheck = 200
		campId = 0
		canGoStCl = false
		for a,b in pairs(campData) do
			local campCoords = json.decode(b.center)
			local playerCoords = GetEntityCoords(PlayerPedId())
			if block_load == false then
				if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, campCoords.x, campCoords.y, campCoords.z, true) < Config.RadiusRenderBuild then
					campId = b.id
					if tonumber(checkedCamp) ~= tonumber(campId) then
						checkedCamp = campId
						TriggerServerEvent("gum_camping:sendBack")
					end
					if json.decode(b.camp_prop) ~= nil then
						for c,d in pairs(json.decode(b.camp_prop)) do
							buildCamp(c, d, false)
						end
					end
					if json.decode(b.camp_fire) ~= nil then
						for c,d in pairs(json.decode(b.camp_fire)) do
							buildCamp(c, d, true)
						end
					end

					if tonumber(b.charid) == charId and b.identifier == steamId then
						canGoStCl = true
					end
					if b.shared ~= nil then
						local shared = json.decode(b.shared)
						if shared ~= nil then
							for c,d in pairs(shared) do
								if tonumber(d.charid) == charId and d.steamid == steamId then
									canGoStCl = true
								end
							end
						end
					end
					if rangeEnable == true then
						loopCheck = 5
						Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, campCoords.x, campCoords.y, campCoords.z-1.1, 0, 0, 0, 0, 0, 0, 2*80.0, 2*80.0, 20.0, 179, 166, 122, 100, 0, 0, 2, 0, 0, 0, 0)
					end
				end
			end
		end
		if campId == 0 then
			rangeEnable = false
			for a,b in pairs(placedProps) do
				deleteObj(b)
				b = nil
			end
			for a,b in pairs(placedFires) do
				deleteObj(b)
				b = nil
			end
			cleanSpheres()
			Citizen.Wait(0)
			placedProps = {}
			placedFires = {}
		end
		TriggerEvent("gum_camping:sendToTag", campId, campData, charId, steamId)
		Citizen.Wait(loopCheck)
	end
end)

Citizen.CreateThread(function()
	while true do
		local optimize = 1000
		local pos = GetEntityCoords(PlayerPedId())
		if tonumber(campId) ~= 0 then
			optimize = 200
			local coords, entity = gum.getTarget()
			local entityPos = GetEntityCoords(entity)
			local heading = GetEntityHeading(entity)
			for a,b in pairs(placedProps) do
				local storageEntity = 0
				local storageSize = 0
				for c,d in pairs(Config.Storage_Box) do
					if GetHashKey(c) == GetEntityModel(b) then
						storageEntity = b
						storageSize = d
					end
				end
				if Config.StealtStorage then
					if GetEntityAlpha(entity) == 255 and GetEntityModel(entity) == GetEntityModel(storageEntity) and (entity ~= PlayerPedId()) and b == entity and gum.playerNearCoords(entityPos.x, entityPos.y, entityPos.z, 2.5) and canGoStCl == false then
						optimize = 5
						PromptSetActiveGroupThisFrame(buttonPrompts6, CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[14].text..""))
						if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, 0x27D1C284) then
							TriggerServerEvent("gum_camping:checkLockpickAndState", campId)
						end
					end
				end
				for c,d in pairs(Config.SpawnProps) do
					if d[4] == true and GetEntityModel(b) == GetHashKey(c) and entity == b and GetEntityAlpha(entity) == 255 and (entity ~= PlayerPedId()) and gum.playerNearCoords(entityPos.x, entityPos.y, entityPos.z, 4.0) and canGoStCl then
						optimize = 5
						PromptSetActiveGroupThisFrame(buttonPrompts4, CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[9].text..""))
						if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, 0x27D1C284) then
							TriggerServerEvent("gum_camping:checkClothe")
						end
					end
				end
				if GetEntityAlpha(entity) == 255 and GetEntityModel(entity) == GetEntityModel(storageEntity) and (entity ~= PlayerPedId()) and b == entity and gum.playerNearCoords(entityPos.x, entityPos.y, entityPos.z, 2.5) and canGoStCl then
					optimize = 5
					PromptSetActiveGroupThisFrame(buttonPrompts3, CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[10].text..""))
					if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, 0x27D1C284) then
						turnToEntity(entityPos.x, entityPos.y, entityPos.z)
						Citizen.InvokeNative(0x7DE9692C6F64CFE8, PlayerPedId(), 1)
						TriggerServerEvent("gum_camping:LoadInventory", "camping_"..tonumber(campId), storageSize)
					end
				end
				if GetEntityAlpha(entity) == 140 and (entity ~= PlayerPedId()) and b == entity and gum.playerNearCoords(entityPos.x, entityPos.y, entityPos.z, 4.0) and canGoStCl then
					optimize = 5
					PromptSetActiveGroupThisFrame(buttonPrompts1, CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[13].text..""))
					if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, 0x27D1C284) then
						turnToEntity(entityPos.x, entityPos.y, entityPos.z)
						FreezeEntityPosition(PlayerPedId(), true)
						SetEntityCollision(PlayerPedId(), false, false)
						local propTime = 0 
						for c,d in pairs(Config.SpawnProps) do
							if GetHashKey(c) == GetEntityModel(entity) then
								propTime = d[3]
							end
						end
						for c,d in pairs(campData) do
							if d.id == tonumber(campId) then
								local camp_prop = json.decode(d.camp_prop)
								camp_prop[a] = {object=GetEntityModel(entity), x=entityPos.x, y=entityPos.y, z=entityPos.z, h=GetEntityHeading(entity), builded=true}
								d.camp_prop = json.encode(camp_prop)
								TriggerServerEvent("gum_camping:updateProp", campId, d.camp_prop, GetPlayers())
							end
						end
						local hammerAnim = CreateObject("p_hammer01x", pos.x, pos.y, z_ground, false, false, false)
						AttachEntityToEntity(hammerAnim, PlayerPedId(), GetEntityBoneIndexByName(PlayerPedId(), "XH_R_Hand01"), -0.03, -0.12, -0.04, 260.89, -109.9, -25.1, false, false, true, false, 0, true, false, false)
						playCustomAnim("mini_games@story@beechers@build_wall_pannels","hammer5_loop_good", propTime*1000)
						Citizen.Wait(propTime*1000)
						deleteObj(hammerAnim)
						SetEntityCollision(PlayerPedId(), true, false)
						FreezeEntityPosition(PlayerPedId(), false)
					end
					if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, 0xA1ABB953) then
						turnToEntity(entityPos.x, entityPos.y, entityPos.z)
						local propItem = ""
						for c,d in pairs(Config.SpawnProps) do
							if GetHashKey(c) == GetEntityModel(entity) then
								propItem = d[1]
							end
						end
						for c,d in pairs(campData) do
							if d.id == tonumber(campId) then
								local camp_prop = json.decode(d.camp_prop)
								camp_prop[a] = nil
								d.camp_prop = json.encode(camp_prop)
								TriggerServerEvent("gum_camping:propUpdate", campId, json.decode(d.camp_prop), GetPlayers(), propItem, false)
							end
						end
						Citizen.Wait(2000)
					end
				end
			end
			for a,b in pairs(placedFires) do
				if GetEntityAlpha(entity) == 140 and (entity ~= PlayerPedId()) and b == entity and gum.playerNearCoords(entityPos.x, entityPos.y, entityPos.z, 3.0) and canGoStCl then
					optimize = 5
					PromptSetActiveGroupThisFrame(buttonPrompts1, CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[13].text..""))
					if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, 0x27D1C284) then
						turnToEntity(entityPos.x, entityPos.y, entityPos.z)
						local propTime = 0 
						FreezeEntityPosition(PlayerPedId(), true)
						SetEntityCollision(PlayerPedId(), false, false)
						for c,d in pairs(Config.Fires) do
							if GetHashKey(c) == GetEntityModel(entity) then
								propTime = d[5]
							end
						end
						for c,d in pairs(campData) do
							if d.id == tonumber(campId) then
								local camp_fire = json.decode(d.camp_fire)
								camp_fire[a] = {object=GetEntityModel(entity), x=entityPos.x, y=entityPos.y, z=entityPos.z, h=GetEntityHeading(entity), builded=true}
								d.camp_fire = json.encode(camp_fire)
								TriggerServerEvent("gum_camping:updateFire", campId, d.camp_fire, GetPlayers())
							end
						end
						playCustomAnim("script_campfire@inbred@shoe","base_ped02", propTime*1000)
						Citizen.Wait(propTime*1000)
						SetEntityCollision(PlayerPedId(), true, false)
						FreezeEntityPosition(PlayerPedId(), false)
						ClearPedTasks(PlayerPedId())
					end
					if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, 0xA1ABB953) then
						local propItem = ""
						for c,d in pairs(Config.Fires) do
							if GetHashKey(c) == GetEntityModel(entity) then
								propItem = d[2]
							end
						end
						for c,d in pairs(campData) do
							if d.id == tonumber(campId) then
								local camp_fire = json.decode(d.camp_fire)
								camp_fire[a] = nil
								d.camp_fire = json.encode(camp_fire)
								TriggerServerEvent("gum_camping:fireUpdate", campId, json.decode(d.camp_fire), GetPlayers(), propItem, false)
							end
						end
					end
				end
				local cookingEnabled = false
				if Config.GumCooking then
					for g,h in pairs(Config.CookProp) do
						if GetHashKey(h) == GetEntityModel(entity) then
							cookingEnabled = true
						end
					end
				end
				if GetEntityAlpha(entity) == 255 and (entity ~= PlayerPedId()) and b == entity and gum.playerNearCoords(entityPos.x, entityPos.y, entityPos.z, 2.5) then
					optimize = 5
					local firedOrNot = false
					for c,d in pairs(Config.Fires) do
						if GetHashKey(k) == GetEntityModel(entity) then 
							firedOrNot = false
						end
						if GetHashKey(d[1]) == GetEntityModel(entity) then 
							firedOrNot = true
						end
					end
					if firedOrNot then
						if cookingEnabled == true then
							PromptSetActiveGroupThisFrame(buttonPrompts5, CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[12].text..""))
						else
							PromptSetActiveGroupThisFrame(buttonPrompts2, CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[12].text..""))
						end
					else
						PromptSetActiveGroupThisFrame(buttonPrompts2, CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[11].text..""))
					end
					if cookingEnabled == true then
						if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, 0xA1ABB953) then
							playCustomAnim2("amb_camp@prop_camp_cauldron_stir@male_a@idle_c", "idle_h", -1)
							TriggerServerEvent("gum_cooking:get_inventory")
							Citizen.Wait(100)
						end
					end
					if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, 0x27D1C284) then
						turnToEntity(entityPos.x, entityPos.y, entityPos.z)
						if firedOrNot then
							for c,d in pairs(campData) do
								if d.id == tonumber(campId) then
									FreezeEntityPosition(PlayerPedId(), true)
									SetEntityCollision(PlayerPedId(), false, false)
									local camp_fire = json.decode(d.camp_fire)
									camp_fire[a] = {object=camp_fire[a].object, x=entityPos.x, y=entityPos.y, z=entityPos.z, h=heading, builded=true, fired=false}
									d.camp_fire = json.encode(camp_fire)
									playCustomAnim("script_story@brt2@ig@ig_6_setfire","light_crouch_sweep_arthur", 2000)
									Citizen.Wait(2000)
									TriggerServerEvent("gum_camping:updateCampFire", campId, d.camp_fire, GetPlayers())
									Citizen.Wait(500)
									FreezeEntityPosition(PlayerPedId(), false)
									SetEntityCollision(PlayerPedId(), true, false)
								end
							end
						else
							for c,d in pairs(campData) do
								if d.id == tonumber(campId) then
									FreezeEntityPosition(PlayerPedId(), true)
									SetEntityCollision(PlayerPedId(), false, false)
									local camp_fire = json.decode(d.camp_fire)
									camp_fire[a] = {object=camp_fire[a].object, x=entityPos.x, y=entityPos.y, z=entityPos.z, h=heading, builded=true, fired=true}
									d.camp_fire = json.encode(camp_fire)
									local fired_anim = CreateObject("p_matches01x_new", pos.x, pos.y, pos.z, false, false, false)
									AttachEntityToEntity(fired_anim, PlayerPedId(), GetEntityBoneIndexByName(PlayerPedId(), "XH_L_Hand00"), 0.06, 0, 0.04,  0, 0, 0, false, false, true, false, 0, true, false, false)
									playCustomAnim("script_campfire@lighting_fire@male_female", "light_fire_b_p2_male", 3400)
									Citizen.Wait(3290)
									playCustomAnim("script_campfire@lighting_fire@male_male", "light_fire_a_p2_male_b", 5000)
									Citizen.Wait(4000)
									TriggerServerEvent("gum_camping:updateCampFire", campId, d.camp_fire, GetPlayers())
									Citizen.Wait(500)
									deleteObj(fired_anim)
									FreezeEntityPosition(PlayerPedId(), false)
									SetEntityCollision(PlayerPedId(), true, false)
								end
							end
						end
					end
				end
			end
		end
		Citizen.Wait(optimize)
	end
end)

function turnToEntity(_x, _y, _z)
	local positionToFace = vector3(_x, _y, _z)
	local pedPos = GetEntityCoords(PlayerPedId())	
	local x = positionToFace.x - pedPos.x
	local y = positionToFace.y - pedPos.y

	-- Calculate heading
	local heading = GetHeadingFromVector_2d(x, y)
	
	-- Set the ped's new heading
	SetEntityHeading(PlayerPedId(), heading)
end
RegisterNUICallback('fixCamp', function(data, cb)
	for a,b in pairs(campData) do
		if b.id == tonumber(campId) then
			if b.damage > 95 then
				if Config.Gum_Notify_Old then
					TriggerEvent("gum_notify:notify", Config.Language[1].text, ""..Config.Language[15].text.."", Config.FirstName, Config.SecondName, 2500)
				end
				if Config.Gum_Notify_NUI then
					TriggerEvent("gum_notify:notify", Config.Language[1].text, ""..Config.Language[15].text.."", Config.Image, 2500)
				end
			else
				local dmg = b.damage
				local howMuch = 0
				for damage = 0,100,7 do
					if damage >= dmg then
						howMuch = howMuch+1
					end
				end
				TriggerEvent("guminputs:getAnswer", ""..Config.Language[16].text.."", ""..Config.Language[17].text.."", ""..Config.Language[18].text.."", function(cb)
					local answer = cb
					if answer == true then
						TriggerServerEvent("gum_camping:fixCamp", campId, Config.FixItems, howMuch, GetPlayers())
					end
				end)
			end
		end
	end
end)

RegisterNUICallback('leftHeading', function(data, cb)
	SetEntityHeading(PlayerPedId(), GetEntityHeading(PlayerPedId())+10.0)
end)
RegisterNUICallback('rightHeading', function(data, cb)
	SetEntityHeading(PlayerPedId(), GetEntityHeading(PlayerPedId())-10.0)
end)
RegisterNUICallback('closeClothe', function(data, cb)
	SetNuiFocus(false, false)
	ExecuteCommand("rc")
end)


RegisterNUICallback('delObj', function(data, cb)
	menuAttribute(false)
	for a,b in pairs(campData) do
		if tonumber(campId) == b.id then
			for k,v in pairs(placedProps) do
				if tonumber(v) == tonumber(data.entity) then
					local campProp = json.decode(b.camp_prop)
					for c,d in pairs(campProp) do
						campProp[k] = nil
						local giveProp = ""
						for e,f in pairs(Config.SpawnProps) do
							if GetHashKey(e) == tonumber(data.object) then
								giveProp = f[1]
							end
						end
						TriggerServerEvent("gum_camping:propUpdate", campId, campProp, GetPlayers(), giveProp)
						return false
					end
					return false
				end
			end
			for k,v in pairs(placedFires) do
				if tonumber(v) == tonumber(data.entity) then
					local campFire = json.decode(b.camp_fire)
					for c,d in pairs(campFire) do
						campFire[k] = nil
						local giveProp = ""
						for e,f in pairs(Config.Fires) do
							if GetHashKey(e) == tonumber(data.object) then
								giveProp = f[2]
							end
						end
						TriggerServerEvent("gum_camping:fireUpdate", campId, campFire, GetPlayers(), giveProp)
						return false
					end
					return false
				end
			end
		end
	end
end)

RegisterNUICallback('close', function(data, cb)
	menuAttribute(false)
end)

RegisterCommand(Config.Camp_Manage, function()
	local campProp = {}
	local damage = 0
	local checkOwner = false
	local ifOwner = false
	for a,b in pairs(campData) do
		if tonumber(campId) == b.id then
			local props = json.decode(b.camp_prop)
			local fires = json.decode(b.camp_fire)
			for c,d in pairs(props) do
				if d.builded == true or d.builded == nil then
					table.insert(campProp, {entity=placedProps[c], object=d.object, name=getPropName(placedProps[c])})
				end
			end
			for c,d in pairs(fires) do
				if (d.builded == true or d.builded == nil) and (d.fired == false or d.fired == nil) then
					table.insert(campProp, {entity=placedFires[c], object=d.object, name=getFireName(placedFires[c])})
				end
			end
			damage = b.damage
		end
	end
	for a,b in pairs(campData) do
		if tonumber(campId) == b.id then
			if tonumber(b.charid) == tonumber(charId) then
				ifOwner = true
				checkOwner = true
				menuAttribute(true, campProp, campId, damage, b.shared, ifOwner)
			else
				local shared = json.decode(b.shared)
				for c,d in pairs(shared) do
					if tonumber(d.charid) == tonumber(charId) then
						checkOwner = true
						menuAttribute(true, campProp, campId, damage, b.shared, ifOwner)
					end
				end
			end
		end
	end
	if checkOwner == false then
		if Config.Gum_Notify_Old then
			exports['gum_notify']:DisplayLeftNotification(Config.Language[1].text, Config.Language[83].text, Config.FirstName, Config.SecondName, 2500)
		end
		if Config.Gum_Notify_NUI then
			exports['gum_notify']:DisplayLeftNotification(Config.Language[1].text, Config.Language[83].text, Config.Image, 2500)
		end
	end
end)

RegisterNetEvent("gum_camping:sendBackCloseUi")
AddEventHandler("gum_camping:sendBackCloseUi", function(cd)
	campData = cd
	menuAttribute(false)
end)

RegisterNetEvent("gum_camping:sendBackUpdate")
AddEventHandler("gum_camping:sendBackUpdate", function(cd)
	campData = cd
	local damage = 0
	local checkOwner = false
	block_load = true
	TriggerEvent("gum_camping:blockBuild", block_load)
	campId = 0
	Citizen.Wait(200)
	TriggerEvent("gum_camping:blockBuild", block_load)
	block_load = false
	Citizen.Wait(500)
	local campProp = {}
	for a,b in pairs(campData) do
		if tonumber(campId) == b.id then
			local props = json.decode(b.camp_prop)
			local fires = json.decode(b.camp_fire)
			for c,d in pairs(props) do
				if d.builded == true or d.builded == nil then
					table.insert(campProp, {entity=placedProps[c], object=d.object, name=getPropName(placedProps[c])})
				end
			end
			for c,d in pairs(fires) do
				if (d.builded == true or d.builded == nil) and (d.fired == false or d.fired == nil) then
					table.insert(campProp, {entity=placedFires[c], object=d.object, name=getFireName(placedFires[c])})
				end
			end
			damage = b.damage
		end
	end
	for a,b in pairs(campData) do
		if tonumber(campId) == b.id then
			if tonumber(b.charid) == tonumber(charId) then
				ifOwner = true
				checkOwner = true
				menuAttribute(true, campProp, campId, damage, b.shared, checkOwner)
			else
				local shared = json.decode(b.shared)
				for c,d in pairs(shared) do
					if tonumber(d.charid) == tonumber(charId) then
						checkOwner = false
						menuAttribute(true, campProp, campId, damage, b.shared, checkOwner)
					end
				end
			end
		end
	end
end)


function menuAttribute(state, campProp, campId, damage, shared, owner)
	SetNuiFocus(state, state)
	if state == true then
		SendNUIMessage({type = "openCamp",campId=campId,campProp=campProp, damage=damage, keyeList=json.decode(shared), owner=owner, language=Config.Language})
	else
		SendNUIMessage({type = "closeCamp"})
	end
end


function getPropName(propName)
	local name = ""
	for k,v in pairs(Config.SpawnProps) do
		if GetHashKey(k) == GetEntityModel(propName) then
			name = v[2]
		end
	end 
	return name
end
function getFireName(propName)
	local name = ""
	local noExist = false
	for k,v in pairs(Config.Fires) do
		if GetHashKey(k) == GetEntityModel(propName) then
			name = v[4]
			noExist = true
		end
	end 
	if noExist == false then
		for k,v in pairs(Config.Fires) do
			if GetHashKey(v[1]) == GetEntityModel(propName) then
				name = v[4]
				return name
			end
		end 
	else
		return name
	end--
end


RegisterCommand(Config.Camp_Load_Cmd, function()
	if not cant_spam then
		cant_spam = true
		TriggerServerEvent("gum_camping:sendBack")
		Citizen.Wait(5000)
		cant_spam = false
	else
		if Config.Gum_Notify_Old then
			exports['gum_notify']:DisplayLeftNotification(Config.Language[1].text, Config.Language[2].text, Config.FirstName, Config.SecondName, 2500)
		end
		if Config.Gum_Notify_NUI then
			exports['gum_notify']:DisplayLeftNotification(Config.Language[1].text, Config.Language[2].text, Config.Image, 2500)
		end
	end
end)


function cleanSpheres()
	for k,v in pairs(veg_modifier_spheres) do
		Citizen.InvokeNative(0x9CF1836C03FB67A2,Citizen.PointerValueIntInitialized(v), 0);
	end
	veg_modifier_spheres = {}
end

function buildCamp(k, v, fire)
		if fire == false then
			if placedProps[k] == nil then
				local object = v.object
				placedProps[k] = CreateObject(v.object, v.x, v.y, v.z, false, false, false)
				SetEntityHeading(placedProps[k], v.h)
				PlaceObjectOnGroundProperly(placedProps[k], true)
				FreezeEntityPosition(placedProps[k], true)
				if v.builded == false then
					SetEntityAlpha(placedProps[k], 140)
				end
				for a,b in pairs(Config.SpawnProps) do
					if tonumber(object) == GetHashKey(a) then
						if b[5] ~= 0 then
							local veg_radius = b[5]
							local veg_Flags =  1 + 2 + 4 + 8 + 16 + 32 + 64 + 128 + 256   -- implement to all debris, grass, bush, etc...
							local veg_ModType = 1 	-- 1 | VMT_Cull
							local veg_modifier_sphere = Citizen.InvokeNative(0xFA50F79257745E74,v.x, v.y, v.z, veg_radius, veg_ModType, veg_Flags, 0);   -- ADD_VEG_MODIFIER_SPHERE
							table.insert(veg_modifier_spheres, veg_modifier_sphere)
						end
					end
				end
				for a,b in pairs(Config.PlaceMoreDown) do
					if GetHashKey(a) == v.object then
						SetEntityCoords(placedProps[k], v.x, v.y, v.z-b)
					end
				end
			end
		else
			if placedFires[k] == nil then
				local object = v.object
				if v.fired == true then
					for a,b in pairs(Config.Fires) do
						if tonumber(object) == GetHashKey(a) then
							object = b[1]
						end
					end
				end
				placedFires[k] = CreateObject(object, v.x, v.y, v.z, false, false, false)
				SetEntityHeading(placedFires[k], v.h)
				PlaceObjectOnGroundProperly(placedFires[k], true)
				FreezeEntityPosition(placedFires[k], true) 
				if v.builded == false then
					SetEntityAlpha(placedFires[k], 140)
				end
				SetEntityCoords(placedFires[k], v.x, v.y, v.z)
				for a,b in pairs(Config.Fires) do
					if tonumber(object) == GetHashKey(a) or GetHashKey(object) == GetHashKey(b[1]) then
						local veg_radius = b[6]
						local veg_Flags =  1 + 2 + 4 + 8 + 16 + 32 + 64 + 128 + 256   -- implement to all debris, grass, bush, etc...
						local veg_ModType = 1 	-- 1 | VMT_Cull
		
						local veg_modifier_sphere = Citizen.InvokeNative(0xFA50F79257745E74,v.x, v.y, v.z, veg_radius, veg_ModType, veg_Flags, 0);   -- ADD_VEG_MODIFIER_SPHERE
						table.insert(veg_modifier_spheres, veg_modifier_sphere)
					end
				end
			end
		end
end



RegisterNetEvent("gum_camping:sendOutfits")
AddEventHandler("gum_camping:sendOutfits", function(otft_tbl)
	clotheTable = otft_tbl
	SetNuiFocus(true, true)
	SendNUIMessage({type = "openCloth", campId=campId,clothe=otft_tbl})
end)

RegisterNUICallback('showOutfit', function(data, cb)
	for k,v in pairs(clotheTable) do
		if v.id == tonumber(data.id) then
			changeOutfitPreview(json.decode(v.comps))
		end
	end
end)
RegisterNUICallback('useClothe', function(data, cb)
	for k,v in pairs(clotheTable) do
		if v.id == tonumber(data.id) then
			TriggerEvent("guminputs:getAnswer", ""..Config.Language[19].text.."", ""..Config.Language[20].text.."", ""..Config.Language[21].text.."", function(cb)
				local answer = cb
				if answer == true then
					SetNuiFocus(false, false)
					SendNUIMessage({type = "closeCloth"})
					TriggerServerEvent("gum_camping:useClothe", v.comps)
				else
					SetNuiFocus(false, false)
					SendNUIMessage({type = "closeCloth"})
					TriggerServerEvent("gum_camping:deleteClothe", tonumber(data.id))
				end
			end)
		end
	end
end)

function HasBodyComponentsLoaded(type, hash_for_load, text)
    -- local readyLoad = false
    -- while readyLoad == true do
    --     Citizen.InvokeNative(0xD3A7B003ED343FD9, PlayerPedId(), hash_for_load, false, true, true)
    --     Wait(0)
    --     Citizen.InvokeNative(0x704C908E9C405136, PlayerPedId())
    --     Citizen.InvokeNative(0xCC8CA3E88256E58F, PlayerPedId(), 0, 1, 1, 1, 0)
    --     -- Wait(0)
    --     -- readyLoad = Citizen.InvokeNative(0xA0BC8FAED8CFEB3C, PlayerPedId())
    -- end
	 Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), type, 0)
    Citizen.InvokeNative(0xD3A7B003ED343FD9, PlayerPedId(), hash_for_load, false, true, true)
    Citizen.InvokeNative(0xCC8CA3E88256E58F, PlayerPedId(), 0, 1, 1, 1, false);
    return true
end
function changeOutfitPreview(table_news)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x9925C067, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x83887E88, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x5E47CA6, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x3F1F01E5, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x5FC29285, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x7505EF42, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x7A96FACA, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x2026C46D, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x877A2CF7, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x485EE834, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0xE06D30CE, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x662AC34, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0xAF14310B, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x3C1A74CD, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0xEABE0032, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x94504D26, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x7A6BBD0B, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0xF16A1D23, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x7BC10759, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x9B2C8B89, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0xA6D134C6, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0xFAE9107F, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0xB6B6122D, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x1D4C528A, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x7505EF42, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0xA0E3AB7F, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x3107499B, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x777EC6EF, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x18729F39, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x91CE9B20, 0)
	Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x79D7DF96, 0)
	Citizen.InvokeNative(0xCC8CA3E88256E58F, PlayerPedId(), 0, 1, 1, 1, 0)
	Citizen.Wait(50)
	
	for k,v in pairs(table_news) do
		HasBodyComponentsLoaded(0xA6D134C6, v, "")
	end
end

Citizen.CreateThread(function()
	createPrompt(""..Config.Language[22].text.."", 0x27D1C284, buttonPrompts1)
	createPrompt(""..Config.Language[23].text.."", 0xA1ABB953, buttonPrompts1)
	createPrompt(""..Config.Language[24].text.."", 0x27D1C284, buttonPrompts2)
	createPrompt(""..Config.Language[25].text.."", 0x27D1C284, buttonPrompts3)
	createPrompt(""..Config.Language[26].text.."", 0x27D1C284, buttonPrompts4)
	createPrompt(""..Config.Language[27].text.."", 0xA1ABB953, buttonPrompts5)
	createPrompt(""..Config.Language[28].text.."", 0x27D1C284, buttonPrompts5)
	createPrompt(""..Config.Language[29].text.."", 0x27D1C284, buttonPrompts6)
end)

function createPrompt(text, key, promptHash)
	buttonPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
	PromptSetControlAction(buttonPrompt, key)
	PromptSetText(buttonPrompt, CreateVarString(10, 'LITERAL_STRING', text))
	PromptSetEnabled(buttonPrompt, true)
	PromptSetVisible(buttonPrompt, true)
	PromptSetGroup(buttonPrompt, promptHash)
	PromptRegisterEnd(buttonPrompt)
end


function GetPlayers()
	local players = {}
	for i = 0, 32 do
		if NetworkIsPlayerActive(i) then
            table.insert(players, GetPlayerServerId(i))
		end
	end
	return players
end

function deleteObj(obj)
    if obj ~= nil then
		SetEntityAsMissionEntity(obj, false, true)
		NetworkRequestControlOfEntity(obj)
		while not NetworkHasControlOfEntity(obj) do
			if not DoesEntityExist(obj) then
				break
			end
			Wait(100)
		end
		if NetworkHasControlOfEntity(obj) then
		end
		DeleteEntity(obj)
	end
end

function playCustomAnim(dict,name, time)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(1)
    end
	TaskPlayAnim(PlayerPedId(), dict, name, 1.0, 1.0, time, 1, 0, true, 0, false, 0, false)  
end
function playCustomAnim2(dict,name, time)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(1)
    end
	TaskPlayAnim(PlayerPedId(), dict, name, 1.0, 1.0, time, 25, 0, true, 0, false, 0, false)  
end

IsTownBanned = function (town)
	for k,v in pairs(Config.BannedTowns) do
		if town == GetHashKey(v) then
			return true
		end
	end
	return false
end

function DrawText3D(x, y, z, text)
	local onScreen,_x,_y=GetScreenCoordFromWorldCoord(x, y, z)
	local px,py,pz=table.unpack(GetGameplayCamCoord())  
	local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
	local str = CreateVarString(10, "LITERAL_STRING", text, Citizen.ResultAsLong())
	if onScreen then
		SetTextScale(0.30, 0.30)
		SetTextFontForCurrentCommand(0)
		SetTextColor(255, 255, 255, 255)
		SetTextCentre(1)
		SetTextDropshadow(1, 1, 0, 0, 200)
		DisplayText(str,_x,_y)
		local factor = (string.len(text)) / 225
		--DrawSprite("generic_textures", "hud_menu_4a", _x, _y+0.0125,0.015+ factor, 0.03, 0.1, 35, 35, 35, 190, 0)
		--DrawSprite("feeds", "toast_bg", _x, _y+0.0125,0.015+ factor, 0.03, 0.1, 100, 1, 1, 190, 0)
	end
end

AddEventHandler('onResourceStop', function(resourceName)
	if (GetCurrentResourceName() == resourceName) then
		cleanSpheres()
		if myCampBlip ~= nil then
			RemoveBlip(myCampBlip)
		end
		for k,v in pairs(sharedBlips) do
			RemoveBlip(v)
		end
		for k,v in pairs(placedProps) do
			DeleteEntity(v)
		end
		for k,v in pairs(placedFires) do
			DeleteEntity(v)
		end
	end
end)
