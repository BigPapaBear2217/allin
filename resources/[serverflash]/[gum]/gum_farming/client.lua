local entityEnumerator = {	__gc = function(enum)	  if enum.destructor and enum.handle then		enum.destructor(enum.handle)	  end	  enum.destructor = nil	  enum.handle = nil end}
local canPlace = false
local placeHerb = ""
local placeSteam = ""
local placeCharid = 0
local placeHerbInfo = {}
local propPlace = 0
local farmId = 0
local protect = 0
local steamId = ""
local charId = 0
local farmData = {}
local placedHerbs = {}
local buttons = {}
local buttons2 = {}
local buttons3 = {}
local buttons4 = {}
local buttons5 = {}
local buttonPrompts = GetRandomIntInRange(0, 0xffffff)
local buttonPrompts2 = GetRandomIntInRange(0, 0xffffff)
local buttonPrompts3 = GetRandomIntInRange(0, 0xffffff)
local buttonPrompts4 = GetRandomIntInRange(0, 0xffffff)
local buttonPrompts5 = GetRandomIntInRange(0, 0xffffff)
local compareTable = {}
local holdBucket = false
local waterInBucket = false
local bucketInHand = nil
local holdTeapot = false
local nowWatering = false
local teapotCount = 0
local blockPickHerb = false
local job = "sucrerie"
local pumpEntities = {}
local farmCarts = {}
local checkIdForLoad = 0

if Config.interaction then
    Citizen.CreateThread(function()
        while true do
            local loop = 500
            if canPlace == true then
                if farmId ~= 0 then
                    local inRange = false
                    local x,y,z = mousePosition()
                    for a,b in pairs(farmData) do
                        if b.id == tonumber(farmId) and tonumber(b.protect) == 0 then
                            if GetDistanceBetweenCoords(x,y,z, json.decode(b.plant_center).x, json.decode(b.plant_center).y, json.decode(b.plant_center).z, false) < 48.0 then
                                inRange = true
                            end
                        end
                    end
                    if inRange then
                        loop = 5
                        SetEntityCoords(propPlace, x,y,z)
                        Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, x,y,z, 0, 0, 0, 0, 0, 0, 0.2, 0.2, 1.0, 0, 255, 0, 5, 0, 0, 2, 0, 0, 0, 0)
                    end
                    SetEntityCollision(propPlace, false)
                    FreezeEntityPosition(PlayerPedId(), true)
                else
                    loop = 5
                    local x,y,z = mousePosition()
                    SetEntityCoords(propPlace, x,y,z)
                    Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, x,y,z, 0, 0, 0, 0, 0, 0, 0.2, 0.2, 1.0, 0, 255, 0, 5, 0, 0, 2, 0, 0, 0, 0)
                    SetEntityCollision(propPlace, false)
                    FreezeEntityPosition(PlayerPedId(), true)
                end
            end
            Citizen.Wait(loop)
        end
    end)
end

RegisterNetEvent('gum_farming:useHerb')
AddEventHandler('gum_farming:useHerb', function(herbSeed, herbData)
    if herbData.multipleUse then
        TriggerEvent("guminputs:getAnswer", ""..Config.Language[3].."", ""..Config.Language[2].."", ""..Config.Language[4].."", function(cb)
            local answer = cb
            if answer == true then
                TriggerEvent(herbData.multipleEvent, herbSeed, herbData.herbItem, herbData.herbToSeed)
            else
                TriggerServerEvent("gum_farming:getSeed", herbSeed, herbData.herbItem, herbData.herbToSeed)
            end
        end)
    else
        TriggerServerEvent("gum_farming:getSeed", herbSeed, herbData.herbItem, herbData.herbToSeed)
    end
end)

RegisterNetEvent('gum_farming:takeBucket')
AddEventHandler('gum_farming:takeBucket', function()
    if blockPickHerb == false then
        blockPickHerb = true
        if not nowWatering then
            local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
            if not IsPedOnMount(PlayerPedId()) and vehicle == 0 then
                if holdTeapot == false then
                    if not holdBucket then
                        holdBucket = true
                        waterInBucket = false
                        playCustomAnim("mech_strafe@generic@first_person@scenarios@bucket","idle", -1, 25)
                        Citizen.Wait(500)
                        local pos = GetEntityCoords(PlayerPedId(), true)
                        bucketInHand = CreateObject("p_bucketcampmil01x", pos.x, pos.y, pos.z, true, true, false)
                        AttachEntityToEntity(bucketInHand, PlayerPedId(), GetEntityBoneIndexByName(PlayerPedId(), "PH_R_Hand"), -0.04, 0.01, 0.0, 0.0, 0.0, -104.0, false, false, true, false, 0, true, false, false)
                        SetEntityCollision(bucketInHand, false, true)
                    else
                        holdBucket = false
                        waterInBucket = false
                        ClearPedTasks(PlayerPedId())
                        deleteObj(bucketInHand)
                        bucketInHand = 0
                    end
                end
            else
                if Config.Gum_Notify_Old then
                    exports['gum_notify']:DisplayLeftNotification(""..Config.Language[1].."", ""..Config.Language[5].."", Config.FirstName, Config.SecondName, 2500)
                end
                if Config.Gum_Notify_NUI then
                    exports['gum_notify']:DisplayLeftNotification(""..Config.Language[1].."", ""..Config.Language[5].."", Config.Image, 2500)
                end
            end
        else
            if Config.Gum_Notify_Old then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[1].."", ""..Config.Language[6].."", Config.FirstName, Config.SecondName, 2500)
            end
            if Config.Gum_Notify_NUI then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[1].."", ""..Config.Language[6].."", Config.Image, 2500)
            end
        end
    end
    blockPickHerb = false
end)

RegisterNetEvent("gum_farming:takeTeapot")
AddEventHandler("gum_farming:takeTeapot", function()
    if not nowWatering then
        local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
		if not IsPedOnMount(PlayerPedId()) and vehicle == 0 then
            if holdBucket == false then
                if holdTeapot == false then
                    holdTeapot = true
                    teapotCount = 0
                    local pos = GetEntityCoords(PlayerPedId())
                    teapotInHand = CreateObject("p_wateringcan01x", pos.x, pos.y, pos.z, true, true, false)
                    AttachEntityToEntity(teapotInHand, PlayerPedId(), GetEntityBoneIndexByName(PlayerPedId(), "SKEL_R_Finger41"), 0.35, 0.2, -0.06, 177.0, 67.0, 29.0, false, false, true, false, 0, true, false, false)
                    SetEntityCollision(teapotInHand, false, true)
                else
                    teapotCount = 0
                    deleteObj(teapotInHand)
                    holdTeapot = false
                    teapotInHand = 0
                end
            end
        else
            if Config.Gum_Notify_Old then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[1].."", ""..Config.Language[5].."", Config.FirstName, Config.SecondName, 2500)
            end
            if Config.Gum_Notify_NUI then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[1].."", ""..Config.Language[5].."", Config.Image, 2500)
            end
        end
    else
        if Config.Gum_Notify_Old then
            exports['gum_notify']:DisplayLeftNotification(""..Config.Language[1].."", ""..Config.Language[6].."", Config.FirstName, Config.SecondName, 2500)
        end
        if Config.Gum_Notify_NUI then
            exports['gum_notify']:DisplayLeftNotification(""..Config.Language[1].."", ""..Config.Language[6].."", Config.Image, 2500)
        end
    end
end)

function wateringTeapot()
	FreezeEntityPosition(PlayerPedId(), true)
	nowWatering = true
	ClearPedTasks(PlayerPedId())
	playCustomAnim("amb_work@world_human_bucket_fill@female_a@stand_exit_withprop","exit_front", -1, 1)
	Citizen.Wait(1000)
	ClearPedTasks(PlayerPedId())
	Citizen.Wait(50)
	nowWatering = false
	teapotCount = 5
	FreezeEntityPosition(PlayerPedId(), false)
end

function wateringBucket()
	FreezeEntityPosition(PlayerPedId(), true)
	local pos = GetEntityCoords(PlayerPedId(), true)
	nowWatering = true
	holdBucket = false
	ClearPedTasks(PlayerPedId())
	deleteObj(bucketInHand)
	playCustomAnim("amb_work@world_human_bucket_fill@female_a@stand_exit_withprop","exit_front", -1, 1)
	Citizen.Wait(100)
	bucketInHand = CreateObject("p_bucket03x", pos.x, pos.y, pos.z, true, true, false)
	AttachEntityToEntity(bucketInHand, PlayerPedId(), GetEntityBoneIndexByName(PlayerPedId(), "SKEL_R_Finger43"), 0.01, 0.0, 0.0, 174.0, -32.0, 187.0, false, false, true, false, 0, true, false, false)
    SetEntityCollision(bucketInHand, false, true)
    Citizen.Wait(1300)
	deleteObj(bucketInHand)
	Citizen.Wait(500)
	ClearPedTasks(PlayerPedId())
	holdBucket = true
	Citizen.Wait(50)
	playCustomAnim("amb_camp@world_camp_jack_es@bucket_pickup@empty@male_a@base","base", -1, 25)
	bucketInHand = CreateObject("p_bucketcampmil01x", pos.x, pos.y, pos.z, true, true, false)
	AttachEntityToEntity(bucketInHand, PlayerPedId(), GetEntityBoneIndexByName(PlayerPedId(), "PH_R_Hand"), -0.03, 0.02, -0.02, 0.0, 0.0, -94.0, false, false, true, false, 0, true, false, false)
    SetEntityCollision(bucketInHand, false, true)
    nowWatering = false
	waterInBucket = true
	FreezeEntityPosition(PlayerPedId(), false)
end

RegisterNetEvent("gum_farming:getBase")
AddEventHandler("gum_farming:getBase", function(farm, steam, char, jobPlayer)
    if jobPlayer ~= nil then
        job = jobPlayer
    end
    if steam ~= nil then
        steamId = steam
    end
    if char ~= nil then
        charId = char
    end
    farmData = farm
    if myFarmBlip ~= nil then
        RemoveBlip(myFarmBlip)
        myFarmBlip = nil
    end
    for a,b in pairs(farmData) do
        if tonumber(b.charid) == tonumber(charId) and b.steam == steamId then
            myFarmBlip = Citizen.InvokeNative(0x45f13b7e0a15c880, 1247852480, json.decode(b.plant_center).x, json.decode(b.plant_center).y, json.decode(b.plant_center).z, 50.0)
			Citizen.InvokeNative(0x9CB1A1623062F402, myFarmBlip, ""..Config.Language[7].."")
			SetBlipSprite(myFarmBlip, 2350572198)
        end
    end
end)
AddEventHandler('onResourceStop', function(resourceName)
    if (GetCurrentResourceName() == resourceName) then
        if myFarmBlip ~= nil then
            RemoveBlip(myFarmBlip)
            myFarmBlip = nil
        end
        deleteHerbs()
    end
end)

Citizen.CreateThread(function()
    while true do
        local weather = Citizen.InvokeNative(0x51021D36F62AAA83)
        if weather == 1420204096 or weather == 2082228755 or weather == -1721991356 or weather == -416908843 or weather == 212278652 then
            TriggerServerEvent("gum_farming:sendInfoAboutWeather")
        end
        Citizen.Wait(60000)
    end
end)
RegisterNetEvent("gum_farming:sendToClient")
AddEventHandler("gum_farming:sendToClient", function(farm, id)
    farmData = farm
    if farmId == id then
        deleteHerbs()
    end
    if 0 == tonumber(id) then
        deleteHerbs()
        farmId = 0
    end
    if myFarmBlip ~= nil then
        RemoveBlip(myFarmBlip)
        myFarmBlip = nil
    end
--[[    for a,b in pairs(farmData) do
        if tonumber(b.charid) == tonumber(charId) and b.steam == steamId then
            myFarmBlip = Citizen.InvokeNative(0x45f13b7e0a15c880, 1247852480, json.decode(b.plant_center).x, json.decode(b.plant_center).y, json.decode(b.plant_center).z, 50.0)
			Citizen.InvokeNative(0x9CB1A1623062F402, myFarmBlip, ""..Config.Language[7].."")
			SetBlipSprite(myFarmBlip, 2350572198)
        end
    end ]]
end)

RegisterNetEvent("vorp:SelectedCharacter")
AddEventHandler("vorp:SelectedCharacter", function(charid)
    TriggerServerEvent("gum_farming:getBaseInformation")
end)

Citizen.CreateThread(function()
    while true do
        if farmId ~= 0 then
            TriggerServerEvent("gum_farming:checkFarms")
        end
        Citizen.Wait(Config.UpdateTime*60*1000)
    end
end)

Citizen.CreateThread(function()
    while true do
        farmId = 0
        protect = 0
        local coords = GetEntityCoords(PlayerPedId())
        for a,b in pairs(farmData) do
            if b.plant_center ~= nil then
                if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, json.decode(b.plant_center).x, json.decode(b.plant_center).y, json.decode(b.plant_center).z, false) < 50.0 then
                    farmId = b.id
                    protect = b.protect
                    if checkIdForLoad ~= farmId then
                        checkIdForLoad = b.id
                        TriggerServerEvent("gum_farming:checkFarms")
                    end
                end
            end
        end
        if farmId == 0 then
            checkIdForLoad = 0
            deleteHerbs()
        else
            for a,b in pairs(farmData) do
                if b.id == farmId then
                    compareTable = json.decode(b.herbs)
                    for c,d in pairs(json.decode(b.herbs)) do
                        placeHerbs(c, d)
                    end
                end
            end
        end
        Citizen.Wait(500)
    end
end)


Citizen.CreateThread(function()
	createPrompt(""..Config.Language[8].."", 0x3B24C470, buttonPrompts)
    createPrompt(""..Config.Language[9].."", 0x27D1C284, buttonPrompts)
	createPrompt(""..Config.Language[10].."", 0x018C47CF, buttonPrompts)
	createPrompt(""..Config.Language[11].."", 0xA1ABB953, buttonPrompts)

    createPrompt2(""..Config.Language[12].."", 0x3B24C470, buttonPrompts2)
    createPrompt2(""..Config.Language[13].."", 0x27D1C284, buttonPrompts2)

    createPrompt3(""..Config.Language[14].."", 0x27D1C284, buttonPrompts3)

    createPrompt4(""..Config.Language[14].."", 0x27D1C284, buttonPrompts4)

    createPrompt5(""..Config.Language[15].."", 0x018C47CF, buttonPrompts5)
    createPrompt5(""..Config.Language[16].."", 0x27D1C284, buttonPrompts5)
end)

function createPrompt(text, key, promptHash)
	buttonPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
	PromptSetControlAction(buttonPrompt, key)
	PromptSetText(buttonPrompt, CreateVarString(10, 'LITERAL_STRING', text))
	PromptSetEnabled(buttonPrompt, true)
	PromptSetVisible(buttonPrompt, true)
    PromptSetStandardizedHoldMode(buttonPrompt, GetHashKey("MEDIUM_TIMED_EVENT"))
	PromptSetGroup(buttonPrompt, promptHash)
	PromptRegisterEnd(buttonPrompt)
    buttons[text] = buttonPrompt
end
function createPrompt2(text, key, promptHash)
	buttonPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
	PromptSetControlAction(buttonPrompt, key)
	PromptSetText(buttonPrompt, CreateVarString(10, 'LITERAL_STRING', text))
	PromptSetEnabled(buttonPrompt, true)
	PromptSetVisible(buttonPrompt, true)
    PromptSetStandardizedHoldMode(buttonPrompt, GetHashKey("MEDIUM_TIMED_EVENT"))
	PromptSetGroup(buttonPrompt, promptHash)
	PromptRegisterEnd(buttonPrompt)
    buttons2[text] = buttonPrompt
end
function createPrompt3(text, key, promptHash)
	buttonPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
	PromptSetControlAction(buttonPrompt, key)
	PromptSetText(buttonPrompt, CreateVarString(10, 'LITERAL_STRING', text))
	PromptSetEnabled(buttonPrompt, true)
	PromptSetVisible(buttonPrompt, true)
    PromptSetStandardizedHoldMode(buttonPrompt, GetHashKey("MEDIUM_TIMED_EVENT"))
	PromptSetGroup(buttonPrompt, promptHash)
	PromptRegisterEnd(buttonPrompt)
    buttons3[text] = buttonPrompt
end
function createPrompt4(text, key, promptHash)
	buttonPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
	PromptSetControlAction(buttonPrompt, key)
	PromptSetText(buttonPrompt, CreateVarString(10, 'LITERAL_STRING', text))
	PromptSetEnabled(buttonPrompt, true)
	PromptSetVisible(buttonPrompt, true)
    PromptSetStandardizedHoldMode(buttonPrompt, GetHashKey("MEDIUM_TIMED_EVENT"))
	PromptSetGroup(buttonPrompt, promptHash)
	PromptRegisterEnd(buttonPrompt)
    buttons4[text] = buttonPrompt
end
function createPrompt5(text, key, promptHash)
	buttonPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
	PromptSetControlAction(buttonPrompt, key)
	PromptSetText(buttonPrompt, CreateVarString(10, 'LITERAL_STRING', text))
	PromptSetEnabled(buttonPrompt, true)
	PromptSetVisible(buttonPrompt, true)
    PromptSetStandardizedHoldMode(buttonPrompt, GetHashKey("MEDIUM_TIMED_EVENT"))
	PromptSetGroup(buttonPrompt, promptHash)
	PromptRegisterEnd(buttonPrompt)
    buttons5[text] = buttonPrompt
end

Citizen.CreateThread(function()
    while true do
        local searched = false
        for entities in EnumerateObjects() do
            if GetEntityModel(entities) == GetHashKey("p_waterpump01x") then
                local playerCd = GetEntityCoords(PlayerPedId())
                local pumpCd = GetEntityCoords(entities)
                if GetDistanceBetweenCoords(playerCd.x, playerCd.y, playerCd.z, pumpCd.x, pumpCd.y, pumpCd.z, false) < 10.0 then
                    searched = true
                    pumpEntities[entities] = true
                end
            end
        end
        if not searched then
            pumpEntities = {}
        end
        Citizen.Wait(2000)
    end
end)


RegisterNetEvent("gum_farming:checkCartEntity")
AddEventHandler("gum_farming:checkCartEntity", function(cartEnt)
    if Config.Debug == true then
        print("Cart Entity: "..cartEnt)
    end
    cartEntity = cartEnt
    for k,v in pairs(Config.Wagons_Support) do
        if GetEntityModel(cartEnt) == GetHashKey(k) then
            if Config.Debug == true then
                print("Save Cart Entity: "..cartEnt)
            end
            TriggerServerEvent("gum_farming:setCart", NetworkGetNetworkIdFromEntity(cartEnt), k, v, GetPlayers())
        end
    end
end)
RegisterNetEvent("gum_farming:deleteFromFarm")
AddEventHandler("gum_farming:deleteFromFarm", function(cartEnt)
    TriggerServerEvent("gum_farming:delFromCart", NetworkGetNetworkIdFromEntity(cartEnt), GetPlayers())
end)

RegisterNetEvent("gum_farming:sendWaterToClient")
AddEventHandler("gum_farming:sendWaterToClient", function(farmCart)
    farmCarts = farmCart
    if Config.Debug == true then
        print("GET INFORMATION ABOUT CART :")
        for a,b in pairs(farmCart) do
            print("NETID : ", a , "WATER : ", b.water, "ID : ", b.id)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        local timer = 1000
        local playerCoords = GetEntityCoords(PlayerPedId())
        for a,b in pairs(farmCarts) do
            if Citizen.InvokeNative(0x38CE16C96BD11344, a) then
                if GetEntityType(NetworkGetEntityFromNetworkId(a)) == 2 then
                    if GetEntityModel(NetworkGetEntityFromNetworkId(a)) == GetHashKey("oilWagon01x") or GetEntityModel(NetworkGetEntityFromNetworkId(a)) == GetHashKey("oilWagon02x")  or GetEntityModel(NetworkGetEntityFromNetworkId(a)) == GetHashKey("cart05") then
                        local cartCoords = GetEntityCoords(NetworkGetEntityFromNetworkId(a))
                        local entityWorld = GetOffsetFromEntityInWorldCoords(NetworkGetEntityFromNetworkId(a), 0.0, -3.0, 0.0)
                        if GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, entityWorld.x, entityWorld.y, entityWorld.z, false) < 1.5 then
                            timer = 5
                            PromptSetActiveGroupThisFrame(buttonPrompts5, CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[17].." "..b.water.."l"))
                            PromptSetVisible(buttons5[""..Config.Language[15]..""], false)
                            PromptSetVisible(buttons5[""..Config.Language[16]..""], false)
                            if holdBucket or holdTeapot then
                                if b.max >= b.water then
                                    if waterInBucket then
                                        PromptSetVisible(buttons5[""..Config.Language[15]..""], true)
                                        if Citizen.InvokeNative(0xE0F65F0640EF0617, buttons5[""..Config.Language[15]..""]) then
                                            b.water = b.water+1
                                            TriggerServerEvent("gum_farming:addWaterToCart", b.id, b.water, a, b.max, GetPlayers())
                                            ClearPedTasks(PlayerPedId())
                                            playCustomAnim("amb_work@prop_human_pump_water@female_b@idle_a", "idle_a", -1, 1)
                                            Citizen.Wait(5000)
                                            ClearPedTasks(PlayerPedId())
                                            playCustomAnim("mech_strafe@generic@first_person@scenarios@bucket","idle", -1, 25)
                                            waterInBucket = false
                                        end
                                    end
                                end
                                if not waterInBucket or (teapotCount == 0 and teapotInHand) then
                                    if b.water >= 1 then
                                        PromptSetVisible(buttons5[""..Config.Language[16]..""], true)
                                        if Citizen.InvokeNative(0xE0F65F0640EF0617, buttons5[""..Config.Language[16]..""]) then
                                            if holdBucket then
                                                FreezeEntityPosition(PlayerPedId(), true)
                                                b.water = b.water-1
                                                TriggerServerEvent("gum_farming:addWaterToCart", b.id, b.water, a, b.max, GetPlayers())
                                                ClearPedTasks(PlayerPedId())
                                                playCustomAnim("amb_work@prop_human_pump_water@female_b@idle_a", "idle_a", -1, 1)
                                                Citizen.Wait(5000)
                                                ClearPedTasks(PlayerPedId())
                                                playCustomAnim("mech_strafe@generic@first_person@scenarios@bucket","idle", -1, 25)
                                                waterInBucket = true
                                                FreezeEntityPosition(PlayerPedId(), false)
                                            else
                                                FreezeEntityPosition(PlayerPedId(), true)
                                                b.water = b.water-1
                                                TriggerServerEvent("gum_farming:addWaterToCart", b.id, b.water, a, b.max, GetPlayers())
                                                playCustomAnim("amb_work@prop_human_pump_water@female_b@idle_a", "idle_a", -1, 1)
                                                Citizen.Wait(5000)
                                                teapotCount = 5
                                                ClearPedTasks(PlayerPedId())
                                                FreezeEntityPosition(PlayerPedId(), false)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        Citizen.Wait(timer)
    end
end)

Citizen.CreateThread(function()
    while true do
        for k,v in pairs(pumpEntities) do
            local playerCd = GetEntityCoords(PlayerPedId())
            local pumpCd = GetEntityCoords(k)
            if GetDistanceBetweenCoords(playerCd.x, playerCd.y, playerCd.z, pumpCd.x, pumpCd.y, pumpCd.z, false) < 1.0 and not waterInBucket and not activePump then
                if holdBucket then
                    PromptSetActiveGroupThisFrame(buttonPrompts4, CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[18]..""))
                    if Citizen.InvokeNative(0xE0F65F0640EF0617, buttons4[""..Config.Language[14]..""]) then
                        activePump = true
                        ClearPedTasks(PlayerPedId())
                        Citizen.InvokeNative(0x322BFDEA666E2B0E, PlayerPedId(),  pumpCd.x, pumpCd.y, pumpCd.z, 2.0, -1, 1, 1, 1, 1)
                        Citizen.Wait(3000)
                        FreezeEntityPosition(PlayerPedId(), true)
                        Citizen.Wait(7000)
                        Citizen.InvokeNative(0x322BFDEA666E2B0E, PlayerPedId(),  pumpCd.x, pumpCd.y, pumpCd.z, 2.0, -1, 1, 1, 1, 1)
                        ClearPedTasksImmediately(PlayerPedId())
                        ClearPedTasks(PlayerPedId())
                        playCustomAnim("amb_camp@world_camp_jack_es@bucket_pickup@empty@male_a@base","base", -1, 25)
                        Citizen.Wait(500)
                        waterInBucket = true
                        activePump = false
                        FreezeEntityPosition(PlayerPedId(), false)
                    end
                else
                    if holdTeapot and teapotCount ~= 5 then
                        PromptSetActiveGroupThisFrame(buttonPrompts4, CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[18]..""))
                        if Citizen.InvokeNative(0xE0F65F0640EF0617, buttons4[""..Config.Language[14]..""]) then
                            activePump = true
                            ClearPedTasks(PlayerPedId())
                            Citizen.InvokeNative(0x322BFDEA666E2B0E, PlayerPedId(),  pumpCd.x, pumpCd.y, pumpCd.z, 2.0, -1, 1, 1, 1, 1)
                            Citizen.Wait(3000)
                            FreezeEntityPosition(PlayerPedId(), true)
                            Citizen.Wait(7000)
                            Citizen.InvokeNative(0x322BFDEA666E2B0E, PlayerPedId(),  pumpCd.x, pumpCd.y, pumpCd.z, 2.0, -1, 1, 1, 1, 1)
                            ClearPedTasksImmediately(PlayerPedId())
                            ClearPedTasks(PlayerPedId())
                            playCustomAnim("amb_camp@world_camp_jack_es@bucket_pickup@empty@male_a@base","base", -1, 25)
                            Citizen.Wait(2500)
                            teapotCount = 5
                            activePump = false
                            FreezeEntityPosition(PlayerPedId(), false)
                            ClearPedTasks(PlayerPedId())
                        end
                    end
                end
            end
        end
        if (holdBucket and not waterInBucket) or (teapotCount < 5 and holdTeapot) then
            if IsEntityInWater(PlayerPedId()) then
                PromptSetActiveGroupThisFrame(buttonPrompts3, CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[10]..""))
                if Citizen.InvokeNative(0xE0F65F0640EF0617, buttons3[""..Config.Language[14]..""]) then
                    if bucketInHand then
                        wateringBucket()
                    else
                        wateringTeapot()
                    end
                end
            end
        end
        if farmId ~= 0 then
            for a,b in pairs(placedHerbs) do
                local herbCoord = GetEntityCoords(placedHerbs[a])
                if compareTable ~= nil and compareTable[a] ~= nil then
                    if compareTable[a] ~= nil and compareTable[a].planted ~= nil then
                        if compareTable[a].planted == false then
                            Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, herbCoord.x,herbCoord.y, herbCoord.z, 0, 0, 0, 0, 0, 0, 0.2, 0.2, 1.0, 0, 0, 255, 15, 0, 0, 2, 0, 0, 0, 0)--
                        else
                            Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, herbCoord.x,herbCoord.y, herbCoord.z, 0, 0, 0, 0, 0, 0, 0.2, 0.2, 1.0, 0, 255, 0, 5, 0, 0, 2, 0, 0, 0, 0)--
                        end
                        local playCoords = GetEntityCoords(PlayerPedId())
                        if GetDistanceBetweenCoords(herbCoord.x, herbCoord.y, herbCoord.z, playCoords.x, playCoords.y, playCoords.z, false) < 0.5 then
                            DrawText3D(herbCoord.x,herbCoord.y,herbCoord.z+0.2, "↓")
                            if compareTable[a].planted == false then
                                if Config.interaction then
                                    PromptSetActiveGroupThisFrame(buttonPrompts2, CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[20].." : "..compareTable[a].herbName..""))
                                    if Citizen.InvokeNative(0xE0F65F0640EF0617, buttons2[""..Config.Language[12]..""]) then
                                        TriggerServerEvent("gum_farming:makeThis", farmId, a, GetPlayers())
                                        rakeAnim()
                                        plantAnim()
                                    end
                                    if Citizen.InvokeNative(0xE0F65F0640EF0617, buttons2[""..Config.Language[13]..""]) then
                                        TriggerServerEvent("gum_farming:removeThis", farmId, a, compareTable[a].herbSeed, GetPlayers())
                                        deleteObj(placedHerbs[a])
                                        placedHerbs[a] = nil

                                        Citizen.Wait(1000)
                                    end
                                end
                            else
                                local pickAc = false
                                local destroyAc = false
                                local fertiAc = false
                                local waterAc = false
                                if compareTable[a].growTime <= 0 then
                                    pickAc = true
                                    destroyAc = true
                                    fertiAc = false
                                    waterAc = false
                                    PromptSetVisible(buttons[""..Config.Language[9]..""], true)
                                    PromptSetVisible(buttons[""..Config.Language[11]..""], true)
                                    PromptSetVisible(buttons[""..Config.Language[8]..""], false)
                                    PromptSetVisible(buttons[""..Config.Language[10]..""], false)
                                    if Config.QualitySystem then
                                        PromptSetActiveGroupThisFrame(buttonPrompts, CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[20].." : "..compareTable[a].herbName.." \n"..Config.Language[21].." : "..math.floor(compareTable[a].quality).."% "))
                                    else
                                        PromptSetActiveGroupThisFrame(buttonPrompts, CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[20].." : "..compareTable[a].herbName..""))
                                    end
                                else
                                    pickAc = false
                                    destroyAc = true
                                    fertiAc = true
                                    waterAc = true
                                    PromptSetVisible(buttons[""..Config.Language[9]..""], false)
                                    PromptSetVisible(buttons[""..Config.Language[8]..""], true)
                                    PromptSetVisible(buttons[""..Config.Language[10]..""], true)
                                    PromptSetVisible(buttons[""..Config.Language[11]..""], true)
                                    if Config.QualitySystem then
                                        PromptSetActiveGroupThisFrame(buttonPrompts, CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[20].." : "..compareTable[a].herbName.." \n"..Config.Language[21].." : "..math.floor(compareTable[a].quality).."% \n"..Config.Language[22].." : "..math.floor(compareTable[a].waterCapacity).."% \n"..Config.Language[23].." : "..math.floor(compareTable[a].fertilizeCapacity).."%\n"..Config.Language[24].." : "..math.floor((compareTable[a].growTime))..""..Config.Language[25].." "))
                                    else
                                        PromptSetActiveGroupThisFrame(buttonPrompts, CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[20].." : "..compareTable[a].herbName.."\n"..Config.Language[22].." : "..math.floor(compareTable[a].waterCapacity).."% \n"..Config.Language[23].." : "..math.floor(compareTable[a].fertilizeCapacity).."%\n"..Config.Language[24].." : "..math.floor((compareTable[a].growTime))..""..Config.Language[25]..""))
                                    end
                                end
                                if fertiAc then
                                    if Citizen.InvokeNative(0xE0F65F0640EF0617, buttons[""..Config.Language[8]..""]) then
                                        if (compareTable[a].fertilizeCapacity < 100) then
                                            TriggerServerEvent("gum_farming:fertilize", farmId, a, GetPlayers())
                                            Citizen.Wait(3000)
                                        end
                                    end
                                end
                                if pickAc then
                                    if Citizen.InvokeNative(0xE0F65F0640EF0617, buttons[""..Config.Language[9]..""]) then
                                        local blockPick = false
                                        if tonumber(protect) == 1 then
                                            for c,d in pairs(farmData) do
                                                if GetDistanceBetweenCoords(playCoords.x, playCoords.y, playCoords.z, json.decode(d.plant_center).x, json.decode(d.plant_center).y, json.decode(d.plant_center).z, false) < 50.0*2 then
                                                    for e,f in pairs(Config.FarmingJobCoords) do
                                                        if GetDistanceBetweenCoords(playCoords.x, playCoords.y, playCoords.z, f.coords[1], f.coords[2], f.coords[3], false) < 50.0*2 then
                                                            if job ~= e then
                                                                blockPick = true
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                        if blockPick == true then
                                            if Config.Gum_Notify_Old then
                                                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[1].."", ""..Config.Language[26].."", Config.FirstName, Config.SecondName, 2500)
                                            end
                                            if Config.Gum_Notify_NUI then
                                                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[1].."", ""..Config.Language[26].."", Config.Image, 2500)
                                            end
                                        else
                                            TriggerServerEvent("gum_farming:pickUp", farmId, a, GetPlayers())
                                            FreezeEntityPosition(PlayerPedId(), true)
                                            playCustomAnim("mech_pickup@object", "herb_pick", 4500, 1)
                                            Citizen.Wait(5000)
                                            FreezeEntityPosition(PlayerPedId(), false)
                                        end
                                    end
                                end
                                if waterAc then
                                    if Citizen.InvokeNative(0xE0F65F0640EF0617, buttons[""..Config.Language[10]..""]) then
                                        if waterInBucket and bucketInHand then
                                            if (compareTable[a].waterCapacity < 100) then
                                                FreezeEntityPosition(PlayerPedId(), true)
                                                playCustomAnim("amb_camp@world_camp_jack_es_bucket_pour@male_a@base", "base", -1, 25)
                                                Citizen.Wait(3000)
                                                deleteObj(bucketInHand)
                                                local pos = GetEntityCoords(PlayerPedId(), true)
                                                playCustomAnim("mech_strafe@generic@first_person@scenarios@bucket","idle", -1, 25)
                                                Citizen.Wait(200)
                                                bucketInHand = CreateObject("p_bucketcampmil01x", pos.x, pos.y, pos.z, true, true, false)
                                                AttachEntityToEntity(bucketInHand, PlayerPedId(), GetEntityBoneIndexByName(PlayerPedId(), "PH_R_Hand"), -0.04, 0.01, 0.0, 0.0, 0.0, -104.0, false, false, true, false, 0, true, false, false)
                                                SetEntityCollision(bucketInHand, false, true)
                                                waterInBucket = false
                                                FreezeEntityPosition(PlayerPedId(), false)
                                                TriggerServerEvent("gum_farming:waterAdd", farmId, a, GetPlayers())
                                            end
                                        end
                                        if teapotCount > 0 and teapotInHand then
                                            if (compareTable[a].waterCapacity < 100) then
                                                teapotCount = teapotCount-1
                                                FreezeEntityPosition(PlayerPedId(), true)
                                                playCustomAnim("amb_camp@prop_camp_foodprep@working@potato_scoop@male_b@base","base", -1, 1)
                                                Citizen.Wait(1500)
                                                ClearPedTasks(PlayerPedId())
                                                FreezeEntityPosition(PlayerPedId(), false)
                                                TriggerServerEvent("gum_farming:waterAdd", farmId, a, GetPlayers())
                                            end
                                        end
                                    end
                                end
                                if destroyAc then
                                    if Citizen.InvokeNative(0xE0F65F0640EF0617, buttons[""..Config.Language[11]..""]) then
                                        local blockPick = false
                                        if tonumber(protect) == 1 then
                                            for c,d in pairs(farmData) do
                                                if GetDistanceBetweenCoords(playCoords.x, playCoords.y, playCoords.z, json.decode(d.plant_center).x, json.decode(d.plant_center).y, json.decode(d.plant_center).z, false) < 50.0*2 then
                                                    for e,f in pairs(Config.FarmingJobCoords) do
                                                        if GetDistanceBetweenCoords(playCoords.x, playCoords.y, playCoords.z, f.coords[1], f.coords[2], f.coords[3], false) < 50.0*2 then
                                                            if job ~= e then
                                                                blockPick = true
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                        if blockPick == true then
                                            if Config.Gum_Notify_Old then
                                                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[1].."", ""..Config.Language[26].."", Config.FirstName, Config.SecondName, 2500)
                                            end
                                            if Config.Gum_Notify_NUI then
                                                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[1].."", ""..Config.Language[26].."", Config.Image, 2500)
                                            end
                                        else
                                            TriggerServerEvent("gum_farming:deleteHerb", farmId, a, GetPlayers())
                                            playCustomAnim("amb_camp@world_camp_fire@stomp@male_a@wip_base", "wip_base", -1, 1)
                                            -- exports.gum_status2:DisplayProgressBar(10000)
                                            Citizen.Wait(10000)
                                            ClearPedTasks(PlayerPedId())
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        Citizen.Wait(0)
    end
end)

RegisterNetEvent("gum_farming:makeFerti")
AddEventHandler("gum_farming:makeFerti", function(herb, steam, charid, herbInfo)
    FreezeEntityPosition(PlayerPedId(), true)
    playCustomAnim("mech_pickup@object","herb_pick", -1, 1)
    Citizen.Wait(1000)
    -- exports.gum_status2:DisplayProgressBar(1000)
    ClearPedTasks(PlayerPedId())
    FreezeEntityPosition(PlayerPedId(), false)
end)

function placeHerbs(position, herbData)
    if placedHerbs[position] == nil and herbData.potStageProps ~= nil then
        if herbData.planted then
            placedHerbs[position] = false
            while not HasModelLoaded(GetHashKey(herbData.potStageProps[1][1])) do
                Wait(0)
                modelrequest( GetHashKey(herbData.potStageProps[1][1]) )
            end
            if herbData.growTime > herbData.potStageProps[1][2] then
                placedHerbs[position] = CreateObject(GetHashKey(herbData.potStageProps[1][1]), herbData.coords[1], herbData.coords[2], herbData.coords[3], false, false, false)
            elseif herbData.growTime > herbData.potStageProps[2][2] then
                placedHerbs[position] = CreateObject(GetHashKey(herbData.potStageProps[2][1]), herbData.coords[1], herbData.coords[2], herbData.coords[3], false, false, false)
            elseif herbData.growTime > herbData.potStageProps[3][2] then
                placedHerbs[position] = CreateObject(GetHashKey(herbData.potStageProps[3][1]), herbData.coords[1], herbData.coords[2], herbData.coords[3], false, false, false)
            elseif herbData.growTime > herbData.potStageProps[4][2] or herbData.growTime <= 0 then
                placedHerbs[position] = CreateObject(GetHashKey(herbData.potStageProps[4][1]), herbData.coords[1], herbData.coords[2], herbData.coords[3], false, false, false)
            end
            SetEntityAlpha(placedHerbs[position], 255)
            SetEntityCollision(placedHerbs[position], false, true)
            FreezeEntityPosition(placedHerbs[position], true)
            SetEntityCoords(placedHerbs[position], herbData.coords[1], herbData.coords[2], herbData.coords[3]-herbData.grounded)
        else
            if herbData.potStageProps[1][1] ~= nil then
                placedHerbs[position] = false
                while not HasModelLoaded(GetHashKey(herbData.potStageProps[1][1])) do
                    Wait(0)
                    modelrequest( GetHashKey(herbData.potStageProps[1][1]) )
                end
                placedHerbs[position] = CreateObject(GetHashKey(herbData.potStageProps[1][1]), herbData.coords[1], herbData.coords[2], herbData.coords[3], false, false, false)
                SetEntityAlpha(placedHerbs[position], 155)
                SetEntityCollision(placedHerbs[position], false, true)
                FreezeEntityPosition(placedHerbs[position], true)
                SetEntityCoords(placedHerbs[position], herbData.coords[1], herbData.coords[2], herbData.coords[3]-herbData.grounded)
            end
        end
    end
end
function modelrequest(model)
    Citizen.CreateThread(function()
        RequestModel(model)
    end)
end

function deleteHerbs()
    for k,v in pairs(placedHerbs) do
        if placedHerbs[k] ~= nil then
            deleteObj(placedHerbs[k])
            placedHerbs[k] = nil
        end
    end
end
RegisterNUICallback('cancel', function(data, cb)
    canPlace = false
    TriggerServerEvent("gum_farming:getBack", placeHerb)
    SetNuiFocus(false, false)
    FreezeEntityPosition(PlayerPedId(), false)
    SetEntityCollision(PlayerPedId(), true)
    DeleteEntity(propPlace)
end)
function rakeAnim()
    local timer = 15000
    for a,b in pairs(Config.FarmingJobCoords) do
        if job == a then
            timer = 7500
        end
    end
    FreezeEntityPosition(PlayerPedId(), true)
    local Get_Coords = GetEntityCoords(PlayerPedId())
    playCustomAnim("amb_work@world_human_farmer_rake@male_a@idle_a","idle_a", -1, 1)
    Citizen.Wait(1000)
    local rakeInHand = CreateObject("p_rake02x", Get_Coords.x, Get_Coords.y, Get_Coords.z, true, true, false)
    AttachEntityToEntity(rakeInHand, PlayerPedId(), GetEntityBoneIndexByName(PlayerPedId(), "PH_R_Hand"), 0.0, 0.0, 0.19, 0.0, 0.0, 0.0, false, false, true, false, 0, true, false, false)
    Citizen.Wait(timer)
    -- exports.gum_status2:DisplayProgressBar(timer)
    deleteObj(rakeInHand)
    ClearPedTasks(PlayerPedId())
    FreezeEntityPosition(PlayerPedId(), false)
end

function plantAnim()
    local farmar = false
    for a,b in pairs(Config.FarmingJobCoords) do
        if job == a then
            farmar = true
        end
    end
    FreezeEntityPosition(PlayerPedId(), true)
    if farmar then
    else
        playCustomAnim("amb_camp@world_camp_jack_plant@idle_a","idle_c", -1, 1)
        Citizen.Wait(8000)
        -- exports.gum_status2:DisplayProgressBar(8000)
    end
    playCustomAnim("amb_camp@world_camp_jack_plant@idle_a","idle_a", -1, 1)
    if farmar then
        Citizen.Wait(6000)
        -- exports.gum_status2:DisplayProgressBar(6000)
    else
        Citizen.Wait(6000)
        -- exports.gum_status2:DisplayProgressBar(6000)
    end
    ClearPedTasks(PlayerPedId())
    FreezeEntityPosition(PlayerPedId(), false)
end

function playCustomAnim(dict,name, time, flag)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(100)
    end
	TaskPlayAnim(PlayerPedId(), dict, name, 1.0, 1.0, time, flag, 0, true, 0, false, 0, false)  
end

RegisterNetEvent("gum_farming:water_ranch_check")
AddEventHandler("gum_farming:water_ranch_check", function(callback)
   callback(waterInBucket)
    if waterInBucket then
        waterInBucket = false
        FreezeEntityPosition(PlayerPedId(), true)
        playCustomAnim("amb_camp@world_camp_jack_es_bucket_pour@male_a@base", "base", -1, 25)
        Citizen.Wait(3000)
        DeleteEntity(bucketInHand)
        Citizen.Wait(0)
        local pos = GetEntityCoords(PlayerPedId(), true)
        playCustomAnim("mech_strafe@generic@first_person@scenarios@bucket","idle", -1, 25)
        Citizen.Wait(200)
        bucketInHand = CreateObject("p_bucketcampmil01x", pos.x, pos.y, pos.z, true, true, false)
        AttachEntityToEntity(bucketInHand, PlayerPedId(), GetEntityBoneIndexByName(PlayerPedId(), "PH_R_Hand"), -0.04, 0.01, 0.0, 0.0, 0.0, -104.0, false, false, true, false, 0, true, false, false)
        FreezeEntityPosition(PlayerPedId(), false)
    end
end)

IsTownBanned = function (town)
	for k,v in pairs(Config.Banned_Towns_List) do
		if town == GetHashKey(v) then
			return true
		end
	end
	return false
end
RegisterNetEvent("gum_farming:placeHerb")
AddEventHandler("gum_farming:placeHerb", function(herb, steam, charid, herbInfo)
    local coordsPlayer = GetEntityCoords(PlayerPedId())
    local itFarmer = false
    if herbInfo.coordLockEnable == true then
        local checkIfInRange = false
        for a,b in pairs(Config.FarmHerbs) do
            if a == herb then
                for c,d in pairs(herbInfo.coordLock) do
                    if GetDistanceBetweenCoords(coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, d[1], d[2], d[3], false) < d[4] then
                        checkIfInRange = true
                    end  
                end
            end
        end
        if checkIfInRange == false then
            if Config.Gum_Notify_Old then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[1].."", ""..Config.Language[34].."", Config.FirstName, Config.SecondName, 2500)
            end
            if Config.Gum_Notify_NUI then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[1].."", ""..Config.Language[34].."", Config.Image, 2500)
            end
            return false
        end
    end
    FreezeEntityPosition(PlayerPedId(), true)
    if Config.BannedCity then
        local pCoords = GetEntityCoords(PlayerPedId())
        local town_hash = Citizen.InvokeNative(0x43AD8FC02B429D33, coordsPlayer, 1)
        if IsTownBanned(town_hash) then
            TriggerServerEvent("gum_farming:getBack", herb)
            if Config.Gum_Notify_Old then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[1].."", ""..Config.Language[27].."", Config.FirstName, Config.SecondName, 2500)
            end
            if Config.Gum_Notify_NUI then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[1].."", ""..Config.Language[27].."", Config.Image, 2500)
            end
            FreezeEntityPosition(PlayerPedId(), false)
            return false
        end
    end
    
    for a,b in pairs(Config.FarmingJobCoords) do
        if job == a then
            itFarmer = true
        end
    end
    if itFarmer == false then
        local onCoords = false
        for a,b in pairs(Config.FarmingJobCoords) do
            if GetDistanceBetweenCoords(coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, b.coords[1], b.coords[2], b.coords[3], false) < 50.0*2 then
                onCoords = true
            end
        end
        for a,b in pairs(farmData) do
            if farmId == b.id then
                if #json.decode(b.herbs) >= Config.HerbCountMax then
                    TriggerServerEvent("gum_farming:getBack", herb)
                    if Config.Gum_Notify_Old then
                        exports['gum_notify']:DisplayLeftNotification(""..Config.Language[1].."", ""..Config.Language[28]..""..Config.HerbCountMax..""..Config.Language[29].."", Config.FirstName, Config.SecondName, 2500)
                    end
                    if Config.Gum_Notify_NUI then
                        exports['gum_notify']:DisplayLeftNotification(""..Config.Language[1].."", ""..Config.Language[28]..""..Config.HerbCountMax..""..Config.Language[29].."", Config.Image, 2500)
                    end
                    FreezeEntityPosition(PlayerPedId(), false)
                    return false
                end
            end
        end
        if tonumber(farmId) == 0 then
            for a,b in pairs(farmData) do
                if (tonumber(charid) == tonumber(b.charid) and steam == b.steam) then
                    TriggerServerEvent("gum_farming:getBack", herb)
                    if Config.Gum_Notify_Old then
                        exports['gum_notify']:DisplayLeftNotification(""..Config.Language[1].."", ""..Config.Language[30].."", Config.FirstName, Config.SecondName, 2500)
                    end
                    if Config.Gum_Notify_NUI then
                        exports['gum_notify']:DisplayLeftNotification(""..Config.Language[1].."", ""..Config.Language[30].."", Config.Image, 2500)
                    end
                    FreezeEntityPosition(PlayerPedId(), false)
                    return false
                end
            end
        end
        if onCoords then
            TriggerServerEvent("gum_farming:getBack", herb)
            if Config.Gum_Notify_Old then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[1].."", ""..Config.Language[33].."", Config.FirstName, Config.SecondName, 2500)
            end
            if Config.Gum_Notify_NUI then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[1].."", ""..Config.Language[33].."", Config.Image, 2500)
            end
            FreezeEntityPosition(PlayerPedId(), false)
            return false
        else
            if not Config.interaction then
                if canPlace == true then
                    TriggerServerEvent("gum_farming:getBack", herb)
                    return false
                end
            end
            canPlace = true
            if Config.interaction then
                SetNuiFocus(true, true)
                FreezeEntityPosition(PlayerPedId(), true)
                SetEntityCollision(PlayerPedId(), false)
            end
            
            placeHerbInfo = herbInfo
            placeHerb = herb
            if Config.interaction then
                propPlace = CreateObject(GetHashKey(placeHerbInfo.potStageProps[1][1]), coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, false, false, false)
            else
                propPlace = CreateObject(GetHashKey(placeHerbInfo.potStageProps[1][1]), coordsPlayer.x, coordsPlayer.y, coordsPlayer.z-1.0, false, false, false)
                simulatePlace()
            end
        end
    else
        local onCoords = false
        local maxHerbs = 0
        for a,b in pairs(Config.FarmingJobCoords) do
            if job == a then
                if GetDistanceBetweenCoords(coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, b.coords[1], b.coords[2], b.coords[3], false) < 50.0*2 then
                    onCoords = true
                    maxHerbs = b.count
                end
            end
        end
        if tonumber(farmId) == 0 then
            for a,b in pairs(farmData) do
                if (tonumber(charid) == tonumber(b.charid) and steam == b.steam) then
                    TriggerServerEvent("gum_farming:getBack", herb)
                    if Config.Gum_Notify_Old then
                        exports['gum_notify']:DisplayLeftNotification(""..Config.Language[1].."", ""..Config.Language[30].."", Config.FirstName, Config.SecondName, 2500)
                    end
                    if Config.Gum_Notify_NUI then
                        exports['gum_notify']:DisplayLeftNotification(""..Config.Language[1].."", ""..Config.Language[30].."", Config.Image, 2500)
                    end
                    FreezeEntityPosition(PlayerPedId(), false)
                    return false
                end
            end
        end
        if onCoords == false then
            TriggerServerEvent("gum_farming:getBack", herb)
            if Config.Gum_Notify_Old then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[1].."", ""..Config.Language[31].."", Config.FirstName, Config.SecondName, 2500)
            end
            if Config.Gum_Notify_NUI then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[1].."", ""..Config.Language[31].."", Config.Image, 2500)
            end
            return false
        else
            for a,b in pairs(farmData) do
                if farmId == b.id then
                    if maxHerbs <= #json.decode(b.herbs) then
                        if Config.Gum_Notify_Old then
                            exports['gum_notify']:DisplayLeftNotification(""..Config.Language[1].."", ""..Config.Language[28]..""..maxHerbs..""..Config.Language[29].."", Config.FirstName, Config.SecondName, 2500)
                        end
                        if Config.Gum_Notify_NUI then
                            exports['gum_notify']:DisplayLeftNotification(""..Config.Language[1].."", ""..Config.Language[28]..""..maxHerbs..""..Config.Language[29].."", Config.Image, 2500)
                        end
                        FreezeEntityPosition(PlayerPedId(), false)
                        return false
                    end
                end
            end
            if not Config.interaction then
                if canPlace == true then
                    TriggerServerEvent("gum_farming:getBack", herb)
                    return false
                end
            end
            canPlace = true
            if Config.interaction then
                SetNuiFocus(true, true)
                FreezeEntityPosition(PlayerPedId(), true)
                SetEntityCollision(PlayerPedId(), false)
            end
            
            placeHerbInfo = herbInfo
            placeHerb = herb
            if Config.interaction then
                propPlace = CreateObject(GetHashKey(placeHerbInfo.potStageProps[1][1]), coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, false, false, false)
            else
                propPlace = CreateObject(GetHashKey(placeHerbInfo.potStageProps[1][1]), coordsPlayer.x, coordsPlayer.y, coordsPlayer.z-1.0, false, false, false)
                simulatePlace()
            end
        end
    end

end)


RegisterNUICallback('simulateClick', function(data, cb)
    local x,y,z =  table.unpack(GetEntityCoords(PlayerPedId()))
    local ZoneTypeId = 10
    local current_district = Citizen.InvokeNative(0x43AD8FC02B429D33 ,x,y,z,ZoneTypeId)
    local temperature = GetTemperatureAtCoords(x,y,z)
    local protect = 0
    local coordsPlayer = GetEntityCoords(PlayerPedId())
    for a,b in pairs(Config.FarmingJobCoords) do
        if GetDistanceBetweenCoords(coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, b.coords[1], b.coords[2], b.coords[3], false) < 50.0*2 then
            protect = 1
        end
    end
    local coordsHerb = GetEntityCoords(propPlace)
    local herbCenter = {x=coordsPlayer.x, y=coordsPlayer.y, z=coordsPlayer.z}
    local herbInformation = {
        herbSeed = placeHerb,
        herbName = placeHerbInfo.herbName,
        potStageProps = placeHerbInfo.potStageProps,
        weatherAffect = placeHerbInfo.weatherAffect,
        growTime = placeHerbInfo.growTime,
        temperatureSlow = placeHerbInfo.temperatureSlow,
        temperatureGood = placeHerbInfo.temperatureGood,
        temperatureHot = placeHerbInfo.temperatureHot,
        nowTemp = temperature,
        fertilizer = placeHerbInfo.fertilizer,
        quality = placeHerbInfo.quality,
        rewardItem = placeHerbInfo.rewardItem,
        grounded = placeHerbInfo.grounded,
        coords = {coordsHerb.x, coordsHerb.y, coordsHerb.z},
        fertilizeCapacity = 0,
        waterCapacity = 0,
        currentDistrict = current_district,
        planted = false,
    }
    TriggerServerEvent("gum_farming:sendSave", farmId, herbCenter, herbInformation, protect, GetPlayers())
    SetEntityCollision(PlayerPedId(), true)
    SetNuiFocus(false, false)
    FreezeEntityPosition(PlayerPedId(), false)
    deleteObj(propPlace)
    canPlace = false
end)

if not Config.interaction then
    function simulatePlace()
        local x,y,z =  table.unpack(GetEntityCoords(PlayerPedId()))
        local ZoneTypeId = 10
        local current_district = Citizen.InvokeNative(0x43AD8FC02B429D33 ,x,y,z,ZoneTypeId)
        local temperature = GetTemperatureAtCoords(x,y,z)
        local protect = 0
        local coordsPlayer = GetEntityCoords(PlayerPedId())
        for a,b in pairs(Config.FarmingJobCoords) do
            if GetDistanceBetweenCoords(coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, b.coords[1], b.coords[2], b.coords[3], false) < 50.0*2 then
                protect = 1
            end
        end
        local coordsHerb = GetEntityCoords(propPlace)
        local herbCenter = {x=coordsPlayer.x, y=coordsPlayer.y, z=coordsPlayer.z}
        local herbInformation = {
            herbSeed = placeHerb,
            herbName = placeHerbInfo.herbName,
            potStageProps = placeHerbInfo.potStageProps,
            weatherAffect = placeHerbInfo.weatherAffect,
            growTime = placeHerbInfo.growTime,
            temperatureSlow = placeHerbInfo.temperatureSlow,
            temperatureGood = placeHerbInfo.temperatureGood,
            temperatureHot = placeHerbInfo.temperatureHot,
            nowTemp = temperature,
            fertilizer = placeHerbInfo.fertilizer,
            quality = placeHerbInfo.quality,
            rewardItem = placeHerbInfo.rewardItem,
            grounded = placeHerbInfo.grounded,
            coords = {coordsHerb.x, coordsHerb.y, coordsHerb.z},
            fertilizeCapacity = 0,
            waterCapacity = 0,
            currentDistrict = current_district,
            planted = true,
        }
        rakeAnim()
        plantAnim()
        TriggerServerEvent("gum_farming:sendSave", farmId, herbCenter, herbInformation, protect, GetPlayers())
        SetEntityCollision(PlayerPedId(), true)
        SetNuiFocus(false, false)
        FreezeEntityPosition(PlayerPedId(), false)
        deleteObj(propPlace)
        canPlace = false
    end
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

local function EnumerateEntities(initFunc, moveFunc, disposeFunc)
	return coroutine.wrap(function()
	  local iter, id = initFunc()
	  if not id or id == 0 then
		disposeFunc(iter)
		return
	  end
	  
	  local enum = {handle = iter, destructor = disposeFunc}
	  setmetatable(enum, entityEnumerator)
	  
	  local next = true
	  repeat
		coroutine.yield(id)
		next, id = moveFunc(iter)
	  until not next
	  
	  enum.destructor, enum.handle = nil, nil
	  disposeFunc(iter)
	end)
end

function EnumerateObjects()
    return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
end

function deleteObj(obj)
    local timeout = 0
    if obj ~= nil then
        SetEntityAsMissionEntity(obj, false, true)
        NetworkRequestControlOfEntity(obj)
        while not NetworkHasControlOfEntity(obj) do
            timeout = timeout+1
            if timeout > 10 then
                break
            end
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
