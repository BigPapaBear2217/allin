 
local macabre_propsdb = {}
local SpawnedPropDB = {}
local InTriggerArea = false 
local IsPropSpawned = false
local story_trigger = true 
local LocationBlips = {} 
preload_trigger = false
BooksSpawned = {}

--------------------------------------------------
-- Story Page with Paper background ------------------
-------------------------------------------------- 
function StoryModeTop(title, story_trigger, subtext1_title, subtext1, subtext2_title, subtext2, subtext3_title, subtext3, duration)
	local player = PlayerPedId() 	
	hasFocus = true
	hasCursor = true
	SetNuiFocus(hasFocus --[[ boolean ]], 	hasCursor --[[ boolean ]])	
	SendNUIMessage({
		type = 'openstory',
		display = story_trigger,
		title = title,
		subtext1 = subtext1,
		subtext2 = subtext2,
		subtext3 = subtext3,
		subtext1_title = subtext1_title,
		subtext2_title = subtext2_title,
		subtext3_title = subtext3_title,
		duration = duration 
	})
end

function SetDisplay(bool)
	display = bool 		
	hasFocus = bool
	hasCursor = bool
	SetNuiFocus(hasFocus --[[ boolean ]], 	hasCursor --[[ boolean ]])
	SendNUIMessage({type = 'openstory', display = display})
end 

function CallBack(data)
	--print(data)
	SetDisplay(false) -- close the window					
	if Config.trigger.book == true then 
		EndBook() 
	end 
end  

RegisterNUICallback("exit", function(data) CallBack(data) end)
RegisterNUICallback("error", function(data) CallBack(data)  end)
------------------------------------------------------------------------------
-- Main - For displaying Story prompt, input, and display --------------------
------------------------------------------------------------------------------
-- Tell Story
Citizen.CreateThread(function()
	SetDisplay(false)
    while true do
        Citizen.Wait(1)    
        local coords = GetEntityCoords(PlayerPedId())        
		if Config.trigger.story == true then 
			if (Vdist(coords.x, coords.y, coords.z, Config.scene.center.X,Config.scene.center.Y,Config.scene.center.Z) < Config.story.distance) then -- cords for center go here
 
				if Config.story.TextType == false then 
					DrawTxt(Config.story.prompt, 0.50, 0.85, 0.7, 0.7, true, 255, 255, 255, 255, true)
				else 
					DrawText3D(Config.scene.center.X, Config.scene.center.Y, Config.scene.center.Z, Config.story.prompt)
				end 
				if IsControlJustReleased(0, Config.definedkey.hash) then -- Checks for key pressed
					local player = PlayerPedId()  					
					story_trigger = true
					--StoryModeTop(Config.story.title, Config.story.subtext1, Config.story.subtext2, Config.story.subtext3, Config.story.duration)
					if Config.trigger.book == true then 
						StartBook() 
						Citizen.Wait(9000)
					end  
					StoryModeTop(Config.story.title, story_trigger,  Config.story.subtext1_title,  Config.story.subtext1,  Config.story.subtext2_title,  Config.story.subtext2,  Config.story.subtext3_title,  Config.story.subtext3,  Config.story.duration)
 					
				end
			end
		end 
    end
end)  -- close thread 
  
--------------------------------------------------
-- Spawn Objects ------------ --------------------
--------------------------------------------------
                                
--- This section spawns large objects that need to be adjusted so they sit properly on the ground.
function CreateLargeObjects(_prop_item, x,y,z, pitch, roll, yaw, rotationOrder, p5)
    local _prop_item = CreateObject(_prop_item, x,y,z,h, true)
    PlaceObjectOnGroundProperly(_prop_item)
    -- SetEntityRotation(_prop_item, 0, 0, h)
	SetEntityRotation(_prop_item, pitch, roll, yaw, rotationOrder, p5)
    FreezeEntityPosition(_prop_item, true)
    table.insert(macabre_propsdb, _prop_item)
end

--- This section spawns samller objects that need be exactly placed in their locations.
function CreateSmallObjects(_prop_item, x,y,z, pitch, roll, yaw, rotationOrder, p5)
    local _prop_item = CreateObject(_prop_item, x,y,z,h, true)
    -- SetEntityRotation(_prop_item, 0, 0, h)
	SetEntityRotation(_prop_item, pitch, roll, yaw, rotationOrder, p5)
    FreezeEntityPosition(_prop_item, true)
    table.insert(macabre_propsdb, _prop_item)
end


-------------------------------------------------------------------------------------------------------
-- Main  - For tracking player proximity and rendering objecs -----------------------------------------
-------------------------------------------------------------------------------------------------------
--- This secion recognizes player location and proximity to message triggers 
Citizen.CreateThread(function() 
	AddBlip()	
	while true do
		Citizen.Wait(1)
		local pos = GetEntityCoords(PlayerPedId())
		if not InTriggerArea and (Vdist(pos.x, pos.y, pos.z, Config.scene.center.X, Config.scene.center.Y, Config.scene.center.Z) < Config.scene.distance) and not IsPropSpawned then
			InTriggerArea = true
			if InTriggerArea then
				if(Config.trigger.largerobjects  == true) then 
					for k,v in pairs(Config.largerobjects) do 
					CreateLargeObjects(v._prop_item, v.x, v.y, v.z, v.pitch, v.roll, v.yaw, 0, true)
					IsPropSpawned = true 
					end
				end 
				if(Config.trigger.smallerobjects  == true) then 
					for k,v in pairs(Config.smallerobjects) do 					
				  	CreateSmallObjects(v._prop_item, v.x, v.y, v.z, v.pitch, v.roll, v.yaw, 0, true)
				  	IsPropSpawned = true 
					end
				end 
			end
		end
		-----------------------------------------------------------------------------------------------
		if InTriggerArea and (Vdist(pos.x, pos.y, pos.z, Config.scene.center.X, Config.scene.center.Y, Config.scene.center.Z) > Config.scene.distance) and IsPropSpawned then
			InTriggerArea = false
			if not InTriggerArea and IsPropSpawned then
				for k, v in pairs(macabre_propsdb) do
					DeleteObject(v)
					IsPropSpawned = false
				end
			end
		end
	end
end)

--------------------------------------------------
-- Startup --------------------------------------- 
-------------------------------------------------- 
AddEventHandler('onResourceStart', function(resource) 
	if resource == GetCurrentResourceName() then 
		if story_trigger == true then 
			story_trigger = false
			StoryModeTop("Default", "Default", "Default", "Default", 2000)
		end 
	end
end)

--------------------------------------------------
-- Cleanup ---------------------------------------
-- Always leave a space cleaner than you found it.
--------------------------------------------------

---remove SpawnedPropDB on resource stop---
AddEventHandler('onResourceStop', function(resource) 
	if resource == GetCurrentResourceName() then
		deleteSpawnedProps(SpawnedPropDB)
		deleteMacabreProps(macabre_propsdb)
		deleteBookProps(BooksSpawned)		
		ClearPedTasksImmediately(PlayerPedId())
		deleteMacabreBlip()
	end
end)

-- deletes items tracked by the client in the spaned prop db
function deleteSpawnedProps(SpawnedPropDB)
	for k,_prop_item in pairs(SpawnedPropDB) do
		DeleteObject(_prop_item)
		table.remove(SpawnedPropDB, k)
	end
end 

-- deletes items tracked by the client in the gunScene prop db
function deleteMacabreProps(macabre_propsdb)
	for k,_prop_item in pairs(macabre_propsdb) do
		DeleteObject(_prop_item)
		table.remove(macabre_propsdb, k)
	end
end 

function deleteBookProps(BooksSpawned)
	for k,_prop_item in pairs(BooksSpawned) do
		DeleteObject(_prop_item)
		table.remove(BooksSpawned, k)
	end
end 

function deleteMacabreBlip()	
	if Config.scene.trigger_blip == true then 
		for key, blip in pairs(LocationBlips) do
			RemoveBlip(blip)
			table.remove(aLocationBlips, key)
		end
	end 
end

-- deletes items that may be stuck in the client or were rendered by the server
function ForceDeleteRenderedItems()	
	for k,v in pairs(Config.largerobjects) do 
		local modelHash = GetHashKey(v._prop_item)
		local isMission = false  --[[ boolean ]]
		local p6 = false  --[[ boolean ]]
		local p7 = false  --[[ boolean ]]	  
		local retvalObject  = GetClosestObjectOfType( v.x, v.y, v.z, radius,  modelHash, isMission, p6, p7)	  
		DeleteObject(retvalObject)
	end 		
	for k,v in pairs(Config.smallerobjects) do 
		local modelHash = GetHashKey(v._prop_item)
		local isMission = false  --[[ boolean ]]
		local p6 = false  --[[ boolean ]]
		local p7 = false  --[[ boolean ]]	  
		local retvalObject  = GetClosestObjectOfType( v.x, v.y, v.z, radius,  modelHash, isMission, p6, p7)	  
		DeleteObject(retvalObject)
	end
	--- spawned books 
	local modelHash = GetHashKey(BookModelm)
	local isMission = false  --[[ boolean ]]
	local p6 = false  --[[ boolean ]]
	local p7 = false  --[[ boolean ]]	  
	local retvalObject  = GetClosestObjectOfType( v.x, v.y, v.z, radius,  modelHash, isMission, p6, p7)	  
	DeleteObject(retvalObject)
	
end


--------------------------------------------------
-- Printed Messages on Screen --------------------
--------------------------------------------------
--- These are from syn_county scripts, and have not been modified
--- This one stays positioned in the center of the screen largish text.
function DrawTxt(str, x, y, w, h, enableShadow, col1, col2, col3, a, centre)
   local str = CreateVarString(10, "LITERAL_STRING", str, Citizen.ResultAsLong())
   SetTextScale(w, h)
   SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), math.floor(a))
   SetTextCentre(centre)
   if enableShadow then SetTextDropshadow(1, 0, 0, 0, 255) end
   Citizen.InvokeNative(0xADA9255D, 10);
   DisplayText(str, x, y)
end 
--- This one is smaller and attached to a fixed point, regardless of camera angle. 
function DrawText3D(x, y, z, text)
	local onScreen,_x,_y=GetScreenCoordFromWorldCoord(x, y, z)
	local px,py,pz=table.unpack(GetGameplayCamCoord())  
	local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
	local str = CreateVarString(10, "LITERAL_STRING", text, Citizen.ResultAsLong())
	if onScreen then
	  SetTextScale(0.30, 0.30)
	  SetTextFontForCurrentCommand(1)
	  SetTextColor(255, 255, 255, 215)
	  SetTextCentre(1)
	  DisplayText(str,_x,_y)
	  local factor = (string.len(text)) / 225
	  DrawSprite("feeds", "hud_menu_4a", _x, _y+0.0125,0.015+ factor, 0.03, 0.1, 35, 35, 35, 190, 0)
	end
end
 
 

--------------------------------------------------
-- Teleporters -----------------------------------
-------------------------------------------------- 

 -- Enter Scene
 Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)    
        local coords = GetEntityCoords(PlayerPedId())   
		if Config.trigger.enter_scene == true then       
			if (Vdist(coords.x, coords.y, coords.z, Config.enter_scene.start.X,Config.enter_scene.start.Y,Config.enter_scene.start.Z) < Config.enter_scene.distance) then -- cords for door go here
				
				DrawTxt(Config.enter_scene.language, 0.50, 0.85, 0.7, 0.7, true, 255, 255, 255, 255, true)
				if IsControlJustReleased(0, Config.definedkey.hash) then -- Checks for key pressed
					local player = PlayerPedId() 

					DoScreenFadeOut(Config.enter_scene.fadetimer)
					Wait(Config.enter_scene.waittimer) 		

					FreezeEntityPosition(player, true) -- freeze player  -- Player can fall through the map in certain situations	
					SetEntityCoords(player, Config.enter_scene.land.X, Config.enter_scene.land.Y, Config.enter_scene.land.Z)
					SetEntityHeading(player, Config.enter_scene.heading)

					Wait(Config.enter_scene.waittimer) -- wait for ymap to load 
					DoScreenFadeIn(Config.enter_scene.fadetimer) 
					FreezeEntityPosition(player, false) -- unfreeze player. 
				end
			end
		end
    end
end)  -- close thread 
 

-- Exit Scene
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1) 
        local coords = GetEntityCoords(PlayerPedId())  
		if Config.trigger.exit_scene == true then  
			if (Vdist(coords.x, coords.y, coords.z, Config.exit_scene.start.X, Config.exit_scene.start.Y, Config.exit_scene.start.Z) < Config.exit_scene.distance) then -- starting point			
				DrawTxt(Config.exit_scene.language, 0.50, 0.85, 0.7, 0.7, true, 255, 255, 255, 255, true)
				
				if IsControlJustReleased(0, Config.definedkey.hash) then -- Checks for key pressed
					local player = PlayerPedId() 

					DoScreenFadeOut(Config.exit_scene.fadetimer)
					Wait(Config.exit_scene.waittimer) 	

					FreezeEntityPosition(player, true) -- freeze player -- Player can fall through the map in certain situations	
					SetEntityCoords(player, Config.exit_scene.land.X, Config.exit_scene.land.Y, Config.exit_scene.land.Z)
					SetEntityHeading(player, Config.exit_scene.heading)

					Wait(Config.exit_scene.waittimer) -- wait for things to render
					DoScreenFadeIn(Config.exit_scene.fadetimer) 
					FreezeEntityPosition(player, false) -- unfreeze player

				end
			end
		end
    end
end)  -- close thread 
 

-----
print ("scriptname", Config.ScriptName)
local command_str = Config.ScriptName .. ":scottybeammeup"
RegisterCommand("HeartMe", function(source, args)    
    if args ~= nil then   
        local data =  source
		-- no input, use preset variables
        local x = Config.enter_scene.land.X
        local y = Config.enter_scene.land.Y
        local z = Config.enter_scene.land.Z  
		if Config.scene.teleportme == true then 
        	TriggerEvent( command_str, x, y, z )
		else 
			print(command_str, " is disabled. ")
		end 
    end
end)

RegisterNetEvent(command_str)
AddEventHandler(command_str, function(x,y,z)  
	
	if Config.scene.teleportme == true then 
		local player = PlayerPedId() 
		Wait(800)
		DoScreenFadeOut(5000) 
		Wait(10000)
		SetEntityCoords(player, x, y, z)
		DoScreenFadeIn(5000)      
	else 
		print(command_str, " is disabled. ")
	end 
end)

--------------------------------------------------
-- Blip -----------------------------------
--------------------------------------------------  

function AddBlip()
	if Config.scene.trigger_blip == true then 
		local blip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, Config.scene.center.X, Config.scene.center.Y, Config.scene.center.Z)
		print("blip",blip)  
		table.insert(LocationBlips, blip) -- for clean up
		SetBlipSprite(blip, Config.scene.blip_sprite, true) 
		SetBlipScale(blip,0.2)
		BlipTitle = CreateVarString(10, "LITERAL_STRING", Config.story.title)
		Citizen.InvokeNative(0x9CB1A1623062F402, blip, BlipTitle) -- SetBlipNameFromPlayerString( blip, BlipTitle ) 
	end 
end  