local buttonPrompts = GetRandomIntInRange(0, 0xffffff)
local spawnPropHash = ""
local spawnedHerbs = {}
local cacheCounter = {}
local pickedEntity = {}
local herbPlaced = {}
local deletePlacedHerbs = false
local gatherLoop = 1000
local compositeId = {}
local blips = {}

Citizen.CreateThread(function()
	createPrompt(""..Config.PickUp.."", 0x27D1C284, buttonPrompts)
end)

function createPrompt(text, key, promptHash)
	buttonPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
	PromptSetControlAction(buttonPrompt, key)
	PromptSetText(buttonPrompt, CreateVarString(10, 'LITERAL_STRING', text))
	PromptSetEnabled(buttonPrompt, true)
	PromptSetStandardizedHoldMode(buttonPrompt, GetHashKey("SHORT_TIMED_EVENT"))
	PromptSetVisible(buttonPrompt, true)
	PromptSetGroup(buttonPrompt, promptHash)
	PromptRegisterEnd(buttonPrompt)
end

AddEventHandler('onResourceStop', function(resourceName)
	if (GetCurrentResourceName() == resourceName) then
		for k,v in pairs(blips) do
			RemoveBlip(v)
		end
	end
end)

Citizen.CreateThread(function()
	for a,b in pairs(Config.Herbs) do
		for c,d in pairs(b.coords) do
			if b.blipSprite ~= 0 then
				local blip = N_0x554d9d53f696d002(1664425300, d[1], d[2], d[3])
				SetBlipSprite(blip, b.blipSprite, 1) 
				SetBlipScale(blip, 1.5)
				Citizen.InvokeNative(0x9CB1A1623062F402, blip, b.blipName)
				table.insert(blips, blip)
			end
		end
	end
	while true do
		local coords = GetEntityCoords(PlayerPedId())
		local size = GetNumberOfEvents(0) 
		if size > 0 then
			for i = 0, size - 1 do
				if GetEventAtIndex(0, i) == GetHashKey("EVENT_LOOT_COMPLETE") then 
					local eventDataStruct = DataView.ArrayBuffer(128)
					eventDataStruct:SetInt32(0 ,0)
					eventDataStruct:SetInt32(8 ,0)
					local is_data_exists = Citizen.InvokeNative(0x57EC5FA4D4D6AFCA,0,i,eventDataStruct:Buffer(),3)	-- GET_EVENT_DATA
					if PlayerPedId() == eventDataStruct:GetInt32(0) and Citizen.InvokeNative(0x97F696ACA466B4E0, eventDataStruct:GetInt32(8)) == 3 then
						if eventDataStruct:GetInt32(16) == 1 then
						local entity = eventDataStruct:GetInt32(8)
						if pickedEntity[entity] == nil then
							pickedEntity[entity] = true
							if spawnPropHash ~= "" then
								spawnedHerbs[spawnPropHash] = spawnedHerbs[spawnPropHash]-1
								TriggerServerEvent("gum_ecology:giveReward", Config.Herbs[spawnPropHash].items, Config.Herbs[spawnPropHash].randomized)
								DeleteEntity(entity)
								table.remove(compositeId, #compositeId)
								end
							end
						end
					end
					if PlayerPedId() == eventDataStruct:GetInt32(0) and Citizen.InvokeNative(0x9A100F1CF4546629, eventDataStruct:GetInt32(8)) then
						if eventDataStruct:GetInt32(16) == 1 then
						local entity = eventDataStruct:GetInt32(8)
						if pickedEntity[entity] == nil then
							pickedEntity[entity] = true
							Citizen.InvokeNative(0x6BCF5F3D8FFE988D, entity, true)
							TriggerServerEvent("gum_ecology:giveReward", Config.Animals[GetEntityModel(entity)].items, Config.Animals[GetEntityModel(entity)].randomized)
							if Config.DeleteAfterGatherAnimal then
								DeleteEntity(entity)
							end
						end
						end
					end
				end
			end
		end
		for k,v in pairs(herbPlaced) do
			local propCoords = GetEntityCoords(v[1])
			if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, propCoords.x, propCoords.y, propCoords.z, false) < 1.5  then
				PromptSetActiveGroupThisFrame(buttonPrompts, CreateVarString(10, 'LITERAL_STRING', ""..Config.Header..""))
				if Citizen.InvokeNative(0xE0F65F0640EF0617, buttonPrompt) then
					v[2] = v[2]-1
					TriggerServerEvent("gum_ecology:giveReward", Config.Herbs[spawnPropHash].items, Config.Herbs[spawnPropHash].randomized)
					playAnim(Config.Herbs[spawnPropHash].animDict, Config.Herbs[spawnPropHash].animPart, Config.Herbs[spawnPropHash].animDur)
					Citizen.Wait(Config.Herbs[spawnPropHash].animDur)
					if v[2] == 0 then
						spawnedHerbs[spawnPropHash] = spawnedHerbs[spawnPropHash]-1
						DeleteEntity(v[1])
						v[1] = nil
						v = nil
					end
				end
			end
		end
		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function()
	for k,v in pairs(Config.Herbs) do
		spawnedHerbs[k] = 0
		cacheCounter[k] = 0
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(Config.TimerForCounter*1000)
		for k,v in pairs(Config.Herbs) do
			if cacheCounter[k]+1+spawnedHerbs[k] <= v.maxSpawn then
				cacheCounter[k] = cacheCounter[k]+1
			end
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		deletePlacedHerbs = true
		local coords = GetEntityCoords(PlayerPedId())
		for a,b in pairs(Config.Herbs) do
			for c,d in pairs(b.coords) do
				if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, d[1], d[2], d[3], false) < d[4]*2  then
					gatherLoop = 0
					deletePlacedHerbs = false
					if string.match(a, "COMPOSITE") then
						spawnPropHash = a
						createComposite(a, d[1], d[2], d[3],d[4], b.propMax, b.grounded, b.canGatherMore)
					else
						spawnPropHash = a
						createComposite(a, d[1], d[2], d[3],d[4], b.propMax, b.grounded, b.canGatherMore)
					end
				end
			end
		end
		if deletePlacedHerbs and spawnPropHash ~= "" then
			gatherLoop = 1000
			local full = false
			for k,v in pairs(compositeId) do
				if v ~= nil then
					Citizen.InvokeNative(0x5758B1EE0C3FD4AC,v,0)
					cacheCounter[spawnPropHash] = cacheCounter[spawnPropHash]+1
				end
			end
			for k,v in pairs(herbPlaced) do
				if v[1] ~= nil then
					DeleteEntity(v[1])
					cacheCounter[spawnPropHash] = cacheCounter[spawnPropHash]+1
				end
			end
			for k,v in pairs(Config.Herbs) do
				spawnedHerbs[k] = 0
			end
			compositeId = {}
			herbPlaced = {}
			spawnPropHash = ""
		end
		Citizen.Wait(gatherLoop)
	end
end)

function createComposite(prop,x,y,z,r,propMax,ground,howMuch)
	if string.match(prop, "COMPOSITE") then
		if spawnedHerbs[prop] < propMax and cacheCounter[prop] > 0 then
			local ranX = math.random(-math.floor(r-2), math.floor(r-2))
			local ranY = math.random(-math.floor(r-2), math.floor(r-2))
			if groundCheck(x+ranX, y+ranY) ~= nil then
				spawnedHerbs[prop] = spawnedHerbs[prop]+1
				cacheCounter[prop] = cacheCounter[prop]-1
				local hash = GetHashKey(prop)
				Citizen.InvokeNative(0x73F0D0327BFA0812, hash);
				local i = 1
				while not Citizen.InvokeNative(0x5E5D96BE25E9DF68, hash) and i < 500 do
					i = i + 1
					Citizen.Wait(0)
				end
				if Citizen.InvokeNative(0x5E5D96BE25E9DF68, hash) then 
					compos = Citizen.InvokeNative(0x5B4BBE80AD5972DC, hash, x+ranX, y+ranY, groundCheck(x+ranX, y+ranY), 0.0, 0, Citizen.PointerValueInt(), -1,Citizen.ReturnResultAnyway())
					table.insert(compositeId, compos)
				end
			end
		end
	else
		if spawnedHerbs[prop] < propMax and cacheCounter[prop] > 0 then
			local ranX = math.random(-math.floor(r-4), math.floor(r-4))
			local ranY = math.random(-math.floor(r-4), math.floor(r-4))
			if groundCheck(x+ranX, y+ranY) ~= nil then
				spawnedHerbs[prop] = spawnedHerbs[prop]+1
				cacheCounter[prop] = cacheCounter[prop]-1
				local hash = GetHashKey(prop)
				local herbEntity = CreateObject(hash, x+ranX, y+ranY, groundCheck(x+ranX, y+ranY), false, false, false)
				FreezeEntityPosition(PlayerPedId(), false)
				SetEntityCoords(herbEntity, x+ranX, y+ranY, groundCheck(x+ranX, y+ranY)+0.5-ground)
				local heading = math.random(-300, 300)
				SetEntityHeading(herbEntity, tonumber(heading..".0"))
				table.insert(herbPlaced, {herbEntity, howMuch, prop})
			end
		end
	end
end

function playAnim(dict,name, time)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(100)
    end
    TaskPlayAnim(PlayerPedId(), dict, name, 1.0, 1.0, time, 1, 0, true, 0, false, 0, false)
end

function groundCheck(x, y)
    local gChk, groundZ = nil, nil
    for height = 1, 1000 do
		gChk, groundZ = GetGroundZAndNormalFor_3dCoord(x, y, height+0.0)
		if gChk then
			return groundZ
		end
    end
end


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local _strblob = string.blob or function(length)
    return string.rep("\0", math.max(40 + 1, length))
end
function delete_obj(obj)
	if DoesEntityExist(obj) then
		SetEntityAsMissionEntity(obj, false, true)
		NetworkRequestControlOfEntity(obj)
		local timeout = 0
		while not NetworkHasControlOfEntity(obj) and timeout < 5000 do
			timeout = timeout+100
			if timeout == 5000 then
			end
			Wait(100)
		end
		if NetworkHasControlOfEntity(obj) then
		end
		FreezeEntityPosition(obj , false)
		DeleteEntity(obj)
	end
end

DataView = {
    EndBig = ">",
    EndLittle = "<",
    Types = {
        Int8 = { code = "i1", size = 1 },
        Uint8 = { code = "I1", size = 1 },
        Int16 = { code = "i2", size = 2 },
        Uint16 = { code = "I2", size = 2 },
        Int32 = { code = "i4", size = 4 },
        Uint32 = { code = "I4", size = 4 },
        Int64 = { code = "i8", size = 8 },
        Uint64 = { code = "I8", size = 8 },

        LuaInt = { code = "j", size = 8 }, -- a lua_Integer
        UluaInt = { code = "J", size = 8 }, -- a lua_Unsigned
        LuaNum = { code = "n", size = 8}, -- a lua_Number
        Float32 = { code = "f", size = 4 }, -- a float (native size)
        Float64 = { code = "d", size = 8 }, -- a double (native size)
        String = { code = "z", size = -1, }, -- zero terminated string
    },

    FixedTypes = {
        String = { code = "c", size = -1, }, -- a fixed-sized string with n bytes
        Int = { code = "i", size = -1, }, -- a signed int with n bytes
        Uint = { code = "I", size = -1, }, -- an unsigned int with n bytes
    },
}
DataView.__index = DataView

local function _ib(o, l, t) return ((t.size < 0 and true) or (o + (t.size - 1) <= l)) end
local function _ef(big) return (big and DataView.EndBig) or DataView.EndLittle end

local SetFixed = nil

function DataView.ArrayBuffer(length)
    return setmetatable({
        offset = 1, length = length, blob = _strblob(length)
    }, DataView)
end

function DataView.Wrap(blob)
    return setmetatable({
        offset = 1, blob = blob, length = blob:len(),
    }, DataView)
end

function DataView:Buffer() return self.blob end
function DataView:ByteLength() return self.length end
function DataView:ByteOffset() return self.offset end
function DataView:SubView(offset)
    return setmetatable({
        offset = offset, blob = self.blob, length = self.length,
    }, DataView)
end

for label,datatype in pairs(DataView.Types) do
    DataView["Get" .. label] = function(self, offset, endian)
        local o = self.offset + offset
        if _ib(o, self.length, datatype) then
            local v,_ = string.unpack(_ef(endian) .. datatype.code, self.blob, o)
            return v
        end
        return nil
    end

    DataView["Set" .. label] = function(self, offset, value, endian)
        local o = self.offset + offset
        if _ib(o, self.length, datatype) then
            return SetFixed(self, o, value, _ef(endian) .. datatype.code)
        end
        return self
    end

    if datatype.size >= 0 and string.packsize(datatype.code) ~= datatype.size then
        local msg = "Pack size of %s (%d) does not match cached length: (%d)"
        error(msg:format(label, string.packsize(fmt[#fmt]), datatype.size))
        return nil
    end
end

for label,datatype in pairs(DataView.FixedTypes) do
    DataView["GetFixed" .. label] = function(self, offset, typelen, endian)
        local o = self.offset + offset
        if o + (typelen - 1) <= self.length then
            local code = _ef(endian) .. "c" .. tostring(typelen)
            local v,_ = string.unpack(code, self.blob, o)
            return v
        end
        return nil -- Out of bounds
    end

    DataView["SetFixed" .. label] = function(self, offset, typelen, value, endian)
        local o = self.offset + offset
        if o + (typelen - 1) <= self.length then
            local code = _ef(endian) .. "c" .. tostring(typelen)
            return SetFixed(self, o, value, code)
        end
        return self
    end
end

SetFixed = function(self, offset, value, code)
    local fmt = { }
    local values = { }
    if self.offset < offset then
        local size = offset - self.offset
        fmt[#fmt + 1] = "c" .. tostring(size)
        values[#values + 1] = self.blob:sub(self.offset, size)
    end

    fmt[#fmt + 1] = code
    values[#values + 1] = value
    local ps = string.packsize(fmt[#fmt])
    if (offset + ps) <= self.length then
        local newoff = offset + ps
        local size = self.length - newoff + 1

        fmt[#fmt + 1] = "c" .. tostring(size)
        values[#values + 1] = self.blob:sub(newoff, self.length)
    end

    self.blob = string.pack(table.concat(fmt, ""), table.unpack(values))
    self.length = self.blob:len()
    return self
end
