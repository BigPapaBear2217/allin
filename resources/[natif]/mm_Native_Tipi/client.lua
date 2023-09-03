 
local movable_propsdb = {}
local SpawnedPropDB = {}
local InTriggerArea = false 
local IsSMLPropSpawned = false
local IsLRGPropSpawned = false
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
			if (Vdist(coords.x, coords.y, coords.z, Config.scene.NEW.X,Config.scene.NEW.Y,Config.scene.NEW.Z) < Config.story.distance) then -- cords for center go here
 
				if Config.story.TextType == false then 
					DrawTxt(Config.story.prompt, 0.50, 0.85, 0.7, 0.7, true, 255, 255, 255, 255, true)
				else 
					DrawText3D(Config.scene.NEW.X, Config.scene.NEW.Y, Config.scene.NEW.Z, Config.story.prompt)
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
	--print("creating ".._prop_item.."\", x="..x..", y="..y..", z="..z..", h="..yaw..", pitch="..pitch..", roll="..roll..", yaw="..yaw)	
    local _prop_item = CreateObject(_prop_item, x,y,z,h, true)
    PlaceObjectOnGroundProperly(_prop_item)
    -- SetEntityRotation(_prop_item, 0, 0, h)
	SetEntityRotation(_prop_item, pitch, roll, yaw, rotationOrder, p5)
    FreezeEntityPosition(_prop_item, true)
    table.insert(SpawnedPropDB, _prop_item)
end

--- This section spawns large objects that need to be adjusted so they sit properly on the ground.
function CreateMoveableObject(_prop_item, x,y,z, pitch, roll, yaw)
	--print("creating ".._prop_item.."\", x="..x..", y="..y..", z="..z..", h="..yaw..", pitch="..pitch..", roll="..roll..", yaw="..yaw)	
    local _prop_item = CreateObject(_prop_item, x,y,z, true, true, false, false, true)
    PlaceObjectOnGroundProperly(_prop_item)
    -- SetEntityRotation(_prop_item, 0, 0, h)
	SetEntityRotation(_prop_item, pitch, roll, yaw, 0, true)
    FreezeEntityPosition(_prop_item, true)
    table.insert(movable_propsdb, _prop_item)
end
 
function convert_array(center_pt, object_pt) 
	if center_pt > object_pt then 
		new_pt = center_pt - object_pt
	else 
		new_pt = object_pt - center_pt
	end 
	return new_pt
end 

function spawn_it_now()  
	local pos = GetEntityCoords(PlayerPedId())
	if(Config.trigger.largerobjects  == true) then 
		print( "player position: ", pos.x, pos.y, pos.z)
		print( "scene center: ",  Config.scene.OLD.X, Config.scene.OLD.Y, Config.scene.OLD.Z) 
		print( "NEW scene center: ",  Config.scene.NEW.X, Config.scene.NEW.Y, Config.scene.NEW.Z) 	
		for k,v in pairs(Config.largerobjects) do 
			local x = convert_array(Config.scene.OLD.X, v.x) 
			local y = convert_array(Config.scene.OLD.Y, v.y) 
			local z = convert_array(Config.scene.OLD.Z, v.z)  			
			print("{_prop_item=\""..v._prop_item.."\", x="..x..", y="..y..", z="..z..", h="..v.yaw..", pitch="..v.pitch..", roll="..v.roll..", yaw="..v.yaw.."},")
			--local XNC = tonumber(Config.scene.NEW.X+x)
			--local YNC = tonumber(Config.scene.NEW.Y+y)
			--local ZNC = tonumber(Config.scene.NEW.Z+z)	
			
			local x_offset = -600
            local XNC = tonumber(Config.scene.NEW.X+x+x_offset )
			local y_offset = 500
            local YNC = tonumber(Config.scene.NEW.Y+y+y_offset )

			
			if ZNC < pos.z then 
				ZNC = tonumber(pos.z+1)
			end 							
			--CreateLargeObjects(v._prop_item, v.x, v.y, v.z, v.pitch, v.roll, v.yaw, 0, true)  -- old
			CreateLargeObjects(v._prop_item, XNC, YNC, ZNC, v.pitch, v.roll, v.yaw, 0, true)	-- new											
			IsPropSpawned = true 
		end
	end  
end 

function spawn_near_player()  
	print("spawn_near_player")
	local player = PlayerPedId()  
	local pos = GetEntityCoords(player)
	if Config.trigger.largerobjects  == true then  
		print( "player position: ", pos.x, pos.y, pos.z)
		for k,v in pairs(Config.largerobjects) do 				
			local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(player, 0.0, 2.0, 1))		
			local XNC = tonumber(x + convert_array(Config.scene.OLD.X, v.x) )
			local YNC = tonumber(y + convert_array(Config.scene.OLD.Y, v.y) )
			local ZNC = tonumber(z + convert_array(Config.scene.OLD.Z, v.z) )		 		 							
			--CreateLargeObjects(v._prop_item, v.x, v.y, v.z, v.pitch, v.roll, v.yaw, 0, true)  -- old
			CreateMoveableObject(v._prop_item, XNC, YNC, ZNC, v.pitch, v.roll, v.yaw)	-- new											
			IsPropSpawned = true 
		end
	end  	
	local player = PlayerPedId()  
	ClearPedTasksImmediately(player)
end 

-------------------------------------------------------------------------------------------------------
-- Main  - For tracking player proximity and rendering objecs -----------------------------------------
-------------------------------------------------------------------------------------------------------
--- This secion recognizes player location and proximity to message triggers 
Citizen.CreateThread(function() 
	if Config.trigger.story == true then 
		AddBlip()	
		while true do
			Citizen.Wait(1)		
			local pos = GetEntityCoords(PlayerPedId())
			if not InTriggerArea and (Vdist(pos.x, pos.y, pos.z, Config.scene.NEW.X, Config.scene.NEW.Y, Config.scene.NEW.Z) < Config.scene.distance) and not IsPropSpawned then			
				InTriggerArea = true
				if InTriggerArea then
					spawn_it_now()    
				end
			end
			-----------------------------------------------------------------------------------------------
			if InTriggerArea and (Vdist(pos.x, pos.y, pos.z, Config.scene.NEW.X, Config.scene.NEW.Y, Config.scene.NEW.Z) > Config.scene.distance) and IsPropSpawned then
				InTriggerArea = false
				if not InTriggerArea and IsPropSpawned then
					for k, v in pairs(movable_propsdb) do					
						SetEntityAsMissionEntity(v)  
						DeleteObject(v)
						IsPropSpawned = false
					end
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
		deleteStationaryPromps() 
		deleteMoveableProps()
		deleteBookProps()		
		ClearPedTasksImmediately(PlayerPedId())
		deleteMacabreBlip()
	end
end)
 
-- deletes items tracked by the client in the gunScene prop db
function deleteStationaryPromps()
	while #SpawnedPropDB > 0 do  
		for k,_prop_item in pairs(SpawnedPropDB) do 
			Wait(200)
			local retval --[[ boolean ]] =	DoesEntityExist(	_prop_item --[[ Entity ]]	)
			print("DoesEntityExist", retval)
			if retval == true or retval == 1 then 
				DeleteObject(_prop_item)
				Wait(200)
				local retval --[[ boolean ]] =	DoesEntityExist(	_prop_item --[[ Entity ]]	)
				if retval == false or retval == 0 then 
					table.remove(SpawnedPropDB, k)
				end 
			end 
		end
	end  
end 

function deleteMoveableProps()
	while #movable_propsdb > 0 do  
		for k,_prop_item in pairs(movable_propsdb) do 
			Wait(200)
			local retval --[[ boolean ]] =	DoesEntityExist(	_prop_item --[[ Entity ]]	)
			print("DoesEntityExist", retval)
			if retval == true or retval == 1 then 
				DeleteObject(_prop_item)
				Wait(200)
				local retval --[[ boolean ]] =	DoesEntityExist(	_prop_item --[[ Entity ]]	)
				if retval == false or retval == 0 then 
					table.remove(movable_propsdb, k)
				end 
			end 
		end
	end 
end 

function deleteBookProps(BooksSpawned)
	if BooksSpawned ~= nil then 
		for k,_prop_item in pairs(BooksSpawned) do
			SetEntityAsMissionEntity(_prop_item)  
			DeleteObject(_prop_item)
			table.remove(BooksSpawned, k)
		end
	end 
end 

function deleteMacabreBlip()	
	if Config.scene.trigger_blip == true then 
		for key, blip in pairs(LocationBlips) do
			RemoveBlip(blip)
			table.remove(LocationBlips, key)
		end
	end 
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
 
--------------------------------------------------------------------
--------------------------------------------------------------------
RegisterCommand(Config.promptspawncommand, function(source, args) 

	player_allowed_spawn = (Config.HowManyAPlayerCanSpawn+1)*#Config.largerobjects 
	print("player_allowed_spawn",player_allowed_spawn)

	player_has_how_many_already = #movable_propsdb
	print("limit",player_has_how_many_already)

	if player_allowed_spawn > player_has_how_many_already then 
		--task_KNEEL()  
		--task_WHITTLE()  
		--task_HAMMER()
		task_INSPECT()
		--task_TENDFIRE() 
		--task_HAMMERSTAKES() 
      	spawn_near_player() 
    end 
end)

RegisterCommand(Config.promptclueaupcommand, function(source, args)
	deleteMoveableProps()
end)--------------------------------------------------------------------
--------------------------------------------------------------------
 
--------------------------------------------------
-- Blip -----------------------------------
--------------------------------------------------  

function AddBlip()
	if Config.scene.trigger_blip == true then 
		local blip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, Config.scene.NEW.X, Config.scene.NEW.Y, Config.scene.NEW.Z)
		print("blip",blip)  
		table.insert(LocationBlips, blip) -- for clean up
		SetBlipSprite(blip, Config.scene.blip_sprite, true) 
		SetBlipScale(blip,2.5)
		BlipTitle = CreateVarString(10, "LITERAL_STRING", Config.story.title)
		Citizen.InvokeNative(0x9CB1A1623062F402, blip, BlipTitle) -- SetBlipNameFromPlayerString( blip, BlipTitle ) 
	end 
end  
