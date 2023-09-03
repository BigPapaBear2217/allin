
local function addBlipForCoords(blipname,bliphash,coords)
	local blip = Citizen.InvokeNative(0x554D9D53F696D002,1664425300, coords[1], coords[2], coords[3])
	SetBlipSprite(blip,bliphash,true)
	SetBlipScale(blip,0.2)
	Citizen.InvokeNative(0x9CB1A1623062F402, blip, blipname)
end

addBlipForCoords("Bateau pour Guarma",GetHashKey("blip_ambient_riverboat"),{2670.82,-1552.93,46.51})

--[[ 
local function addBlipForCoords(blipname, bliphash, coords1)
    local blip1 = Citizen.InvokeNative(0x554D9D53F696D002, -1018164873, coords1[1], coords1[2], coords1[3])
    SetBlipSprite(blip1, bliphash, true)
    SetBlipScale(blip1, 0.2)
    Citizen.InvokeNative(0x9CB1A1623062F402, blip1, blipname)

end

local blipName = "Bateau de Guarma"

local blipHash = 692310
local blipCoords1 = {2670.82, -1552.69, 46.52}


addBlipForCoords(blipName, blipHash, blipCoords1)

--local function addBlipForCoords(blipname, blipname2, bliphash, coords1, coords2)



    local blip2 = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, coords2[1], coords2[2], coords2[3])
    SetBlipSprite(blip2, bliphash, true)
    SetBlipScale(blip2, 0.2)
    Citizen.InvokeNative(0x9CB1A1623062F402, blip2, blipname2)
]]
--local blipName2 = "Foins"
--local blipCoords2 = {1393.76, 288.33, 87.60}
--addBlipForCoords(blipName, blipName2, blipHash, blipCoords1, blipCoords2)































--[[

--local function addBlipForCoords(blipname, blipname2, bliphash, coords1, coords2)
local function addBlipForCoords(blipname, bliphash, coords1)
    local blip1 = Citizen.InvokeNative(0x554D9D53F696D002, -1018164873, coords1[1], coords1[2], coords1[3])
    SetBlipSprite(blip1, bliphash, true)
    SetBlipScale(blip1, 0.2)
    Citizen.InvokeNative(0x9CB1A1623062F402, blip1, blipname)
--[[
    local blip2 = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, coords2[1], coords2[2], coords2[3])
    SetBlipSprite(blip2, bliphash, true)
    SetBlipScale(blip2, 0.2)
    Citizen.InvokeNative(0x9CB1A1623062F402, blip2, blipname2)

end

local blipName = "Foins"
--local blipName2 = "Foins"
local blipHash = 692310
local blipCoords1 = {2670.82, -1552.69, 46.52}
--local blipCoords2 = {1393.76, 288.33, 87.60}

addBlipForCoords(blipName, blipHash, blipCoords1)

--addBlipForCoords(blipName, blipName2, blipHash, blipCoords1, blipCoords2)

]]