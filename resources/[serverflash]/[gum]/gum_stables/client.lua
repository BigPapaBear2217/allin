local wheelModelTable = {[GetHashKey("armysupplywagon_wheel_lf")] = true,[GetHashKey("armysupplywagon_wheel_lr")] = true,[GetHashKey("breach_cannon_wheel_lf")] = true,[GetHashKey("buggy01_wheel_lf")] = true,[GetHashKey("buggy02_wheel_lf")] = true,[GetHashKey("buggy03_wheel_lf")] = true,[GetHashKey("cart01_wheel_lf")] = true,[GetHashKey("cart02_wheel_lf")] = true,[GetHashKey("cart_03_wheel_lf")] = true,[GetHashKey("cart04_wheel_lr")] = true,[GetHashKey("cart05_wheel_lf")] = true,[GetHashKey("cart05_wheel_lr")] = true,[GetHashKey("cart06_wheel_lf")] = true,[GetHashKey("cart06_wheel_lr")] = true,[GetHashKey("cart07_wheel_lf")] = true,[GetHashKey("cart08_wheel_lf")] = true,[GetHashKey("chuckwagon000x_wheel_lf")] = true,[GetHashKey("chuckwagon000x_wheel_lr")] = true,[GetHashKey("chuckwagon002x_wheel_lf")] = true,[GetHashKey("chuckwagon002x_wheel_lr")] = true,[GetHashKey("coach2_2x_wheel_lf")] = true,[GetHashKey("coach2_2x_wheel_lr")] = true,[GetHashKey("coach2_wheel_lf")] = true,[GetHashKey("coach2_wheel_lr")] = true,[GetHashKey("coach3_wheel_lf")] = true,[GetHashKey("coach3_wheel_lr")] = true,[GetHashKey("coach4_wheel_lf")] = true,[GetHashKey("coach4_wheel_lr")] = true,[GetHashKey("coach5_wheel_lf")] = true,[GetHashKey("coach5_wheel_lr")] = true,[GetHashKey("coach6_wheel_lf")] = true,[GetHashKey("coach6_wheel_lr")] = true,[GetHashKey("coalwagon_wheel_lf")] = true,[GetHashKey("gatchuck_2_wheel_lf")] = true,[GetHashKey("gatchuck_2_wheel_lr")] = true,[GetHashKey("gatchuck_wheel_lf")] = true,[GetHashKey("gatchuck_wheel_lr")] = true,[GetHashKey("gatling_gun_wheel_lf")] = true,[GetHashKey("hotchkiss_wheel_lf")] = true,[GetHashKey("logwagon2_wheel_lf")] = true,[GetHashKey("logwagon_wheel_lf")] = true,[GetHashKey("oilwagon01x_wheel_lf")] = true,[GetHashKey("oilwagon01x_wheel_lr")] = true,[GetHashKey("oilwagon02x_wheel_lf")] = true,[GetHashKey("oilwagon02x_wheel_lr")] = true,[GetHashKey("policewagon01x_wheel_lf")] = true,[GetHashKey("policewagon01x_wheel_lr")] = true,[GetHashKey("policewagongatling01x_wheel_lf")] = true,[GetHashKey("policewagongatling01x_wheel_lr")] = true,[GetHashKey("stagecoach001x_wheel_lf")] = true,[GetHashKey("stagecoach001x_wheel_lr")] = true,[GetHashKey("stagecoach002x_wheel_lf")] = true,[GetHashKey("stagecoach002x_wheel_lr")] = true,[GetHashKey("stagecoach003x_wheel_lf")] = true,[GetHashKey("stagecoach003x_wheel_lr")] = true,[GetHashKey("stagecoach004_2x_wheel_lf")] = true,[GetHashKey("stagecoach004_2x_wheel_lr")] = true,[GetHashKey("stagecoach004x_wheel_lf")] = true,[GetHashKey("stagecoach004x_wheel_lr")] = true,[GetHashKey("stagecoach005x_wheel_lf")] = true,[GetHashKey("stagecoach005x_wheel_lr")] = true,[GetHashKey("stagecoach006x_wheel_lf")] = true,[GetHashKey("stagecoach006x_wheel_lr")] = true,[GetHashKey("supplywagon2_wheel_lf")] = true,[GetHashKey("supplywagon2_wheel_lr")] = true,[GetHashKey("supplywagon_wheel_lf")] = true,[GetHashKey("supplywagon_wheel_lr")] = true,[GetHashKey("utilitywag_wheel_lf")] = true,[GetHashKey("utilitywag_wheel_lr")] = true,[GetHashKey("wagon02x_wheel_lf")] = true,[GetHashKey("wagon02x_wheel_lr")] = true,[GetHashKey("wagon03x_wheel_lf")] = true,[GetHashKey("wagon03x_wheel_lr")] = true,[GetHashKey("wagon04x_wheel_lf")] = true,[GetHashKey("wagon04x_wheel_lr")] = true,[GetHashKey("wagon05x_2_wheel_lf")] = true,[GetHashKey("wagon05x_2_wheel_lr")] = true,[GetHashKey("wagon05x_wheel_lf")] = true,[GetHashKey("wagon05x_wheel_lr")] = true,[GetHashKey("wagon06x_wheel_lf")] = true,[GetHashKey("wagon06x_wheel_lr")] = true,[GetHashKey("wagonarmoured01x_wheel_lf")] = true,[GetHashKey("wagonarmoured01x_wheel_lr")] = true,[GetHashKey("wagoncircus01x_wheel_lf")] = true,[GetHashKey("wagoncircus01x_wheel_lr")] = true,[GetHashKey("wagoncircus02x_wheel_lf")] = true,[GetHashKey("wagoncircus02x_wheel_lr")] = true,[GetHashKey("wagondairy01x_wheel_lf")] = true,[GetHashKey("wagondairy01x_wheel_lr")] = true,[GetHashKey("wagondoc01x_wheel_lf")] = true,[GetHashKey("wagondoc01x_wheel_lr")] = true,[GetHashKey("wagonprison01x_wheel_lf")] = true,[GetHashKey("wagonprison01x_wheel_lr")] = true,[GetHashKey("wagontraveller01x_wheel_lf")] = true,[GetHashKey("wagontraveller01x_wheel_lr")] = true,[GetHashKey("wagonwork01x_wheel_lf")] = true,[GetHashKey("wagonwork01x_wheel_lr")] = true,[GetHashKey("warwagon2_wheel_lf")] = true,[GetHashKey("warwagon2_wheel_lr")] = true,[GetHashKey("mp005_bountywagon01x_wheel_lf")] = true,[GetHashKey("mp005_bountywagon01x_wheel_lr")] = true,[GetHashKey("mp005_cardinalflw_p")] = true,[GetHashKey("mp005_chocdaisy_p")] = true,[GetHashKey("mp005_huntercart01_wheel_lf")] = true,[GetHashKey("mp005_huntercart01_wheel_lr")] = true}
local propsDatas = {0xE0C338BD,	0xD28F9C56,	0x69F966C8,	0x5827C325,	0x94CE3C61,	0x830398CC,	0xAFFCF2BE,	0x9F275113,	0xDA9244A3,	0x460A74C6,	0x4514190C,	0xDCC33A7C,	0x2459E0BD,	0xEA0F04C9,	0x03CE3847,}
local allShoes,allBridles,allLantern,allHolsters,allMustaches,allMasks,allStirrups,allBedrols,allBlankets,allManes,allBags,allSaddles,allTails,allHorns = {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {},{}
local horseComponentTable = {["saddlecloths"] = {0x17CEB41A, allBlankets},["saddles"] = {0xBAA7E618, allSaddles},["acshorn"] = {0x5447332, allHorns},["stirrups"] = {0xDA6DADCA, allStirrups},["bags"] = {0x80451C25, allBags},["acsluggage"] = {0xEFB31921, allBedrols},["lantern"] = {0x1530BE1C, allLantern},["Mask"] = {0xD3500E5D, allMasks},["tails"] = {0xA63CAE10, allTails},["manes"] = {0xAA0217AB, allManes},["mustache"] = {0x30DEFDDF, allMustaches},["holster"] = {0xAC106B30, allHolsters},["bridle"] = {0x94B2E3AF, allBridles},}
local wheelTable = {0,1,4,5}
local promptLonging = GetRandomIntInRange(0, 0xffffff)
local promptTraining = GetRandomIntInRange(0, 0xffffff)
local promptBreederStore = GetRandomIntInRange(0, 0xffffff)
local promptPelts  = GetRandomIntInRange(0, 0xffffff)
local promptTrainer = GetRandomIntInRange(0, 0xffffff)
local promptSaveTo = GetRandomIntInRange(0, 0xffffff)
local promptYourCart = GetRandomIntInRange(0, 0xffffff)
local promptNormalStables = GetRandomIntInRange(0, 0xffffff)
local promptCompanyStables = GetRandomIntInRange(0, 0xffffff)
local promptSpotStables = GetRandomIntInRange(0, 0xffffff)
local promptFixWheel = GetRandomIntInRange(0, 0xffffff)
local promptWildHorse = GetRandomIntInRange(0, 0xffffff)
local promptCamera = GetRandomIntInRange(0, 0xffffff)
local promptStorage = GetRandomIntInRange(0, 0xffffff)
local promptAnimalOnCart = GetRandomIntInRange(0, 0xffffff)
local promptSharedHorse = GetRandomIntInRange(0, 0xffffff)
local promptSharedAnimal = GetRandomIntInRange(0, 0xffffff)
local promptSharedCart = GetRandomIntInRange(0, 0xffffff)
local promptSaveToCompany = GetRandomIntInRange(0, 0xffffff)
local priceThisComp = ""
local yourHorseAge = 0
local yourHorseCooldown = 0
local yourCartCooldown = 0
local saveToStable = 0
local saveToSpot = 0
local yourHorseFriendly = 0
local yourHorseCourage = 0
local randomKeyTable = {}
local brokenHorses = {}
local yourHorseFollowYou = false
local entityPreview = {}
local breedEntityPreview = {}
local breedSlots = {}
local gainExpBlock = 0
local yourHorseEntity = nil
local active = false
local expBreed = 0
local heading = -60.0
local zoom = 60.0
local price = 0
local yourHorseGainExp = 0
local yourBreedHorses = {}
local yourHorses = {}
local yourCarts = {}
local yourHorseExp = 0
local yourHorseLevel = 0
local yourHorseIsDead = false
local openStablePosition = 0
local openCompanyStablePosition = 0
local SellWildHorse = {}
local yourHorseCount = 0
local yourCartCount = 0
local imageAcceleration = 1
local imageSpeed = 1
local imageTurn = 1
local sharedHorseCartData = {}
local yourHorseNetwork = nil
local yourCartNetwork = nil
local tamming = false
local editedHorseStoreTable = {}
local horseTableWithoutCat = {}
local editedCartStoreTable = {}
local antiSpam = false
local extras = {}
local livery = {}
local lantern = {}
local componentCartPrice = {}
local componentHorsePrice = {}
local breedEntityPreview = {}
local buycompos = {}
local activeCamera = false 
local activeInterCamera = false
local yourJob = {}
local yourGroup = ""
local antiSpam = false
local steamId = ""
local yourHorseId = 0
local yourCartId = 0
local canEnter = false
local blipsStables = {}
local blipsSellSpot = {}
local blipsSpotTake = {}
local blipsBreederStore = {}
local animalsDataGlobal = {}
local priceFirstHorseForBreed = 0
local priceSecondHorseForBreed = 0
local npcsMan = {}
local companyNpc = {}
local npcsHorse = {}
local yourHorsePlayAnim = false
local blockSkillSpam = false
local transferCityId = 0
local transferSpotId = 0
local huntingCarts = {}
local workerCarts = {}
local checkDeadId = 0
local miniGameRunning = false
local waitForFixCart = nil
local counterForFixCart = 0
local needItem = false
local createdNpc = nil
local yourHorseHoofState = 0
local yourHorseDirtState = 0
local yourHorsePelts = {}
local allYourHorses = {}
local allYourCarts = {}
local mouseX = 0.0
local mouseY = 20.0
local fov = 50.0
local canRotate = false
local cam = nil
local angleY = 0.0
local angleZ = 0.0
local previewPed = nil
local yourHorseBlockUse = 0
local api
local storageSizeTable = {}
local holdSaddle = nil
local propSaddle = nil
local cartHorses = {}
local speed = 2.0
local yourHorseLonging = false
local direction = 1
local radiusLonging = 10.0
local blockInteract = false
local interactHorse = nil
local transferedComps = {}
local canTameHorse = false
local canMaxStoreHorses = 0
local maxStoreHorses = 0
local storeDataGlobal = {}
local yourHorseInTraining = false
local blockEatNow = false
local someOneNearEntity = nil
local someOneNearAge = nil
local someOneNearId = nil
local sharedPromptId = nil
local companyHorse = false
local canManage = false
local canTrain = false
local canTame = false
local canBreed = false
local canShoe = false
local canAccess = false
local canRepair = false
local canHeal = false
local canCleanHoof = false
local canColorHorse = false
local canSeeStats = false
local maxAllowedHorses = 5
local maxAllowedCarts = 3
local maxAllowedBreed = 3
local boostExp = 1.0


TriggerEvent("getApi",function(gumApi) api = gumApi end)
TriggerEvent('chat:addSuggestion', '/'..Config.Language[476].text..'', ''..Config.Suggestions[1]..'', {})
TriggerEvent('chat:addSuggestion', '/'..Config.Language[404].text..'', ''..Config.Suggestions[6]..'', {})

RegisterNetEvent('gum_stables:openAdministration')
AddEventHandler('gum_stables:openAdministration', function(dataTable)
    SetNuiFocus(true, true)
    SendNUIMessage({type = 'openAdmin',datas = dataTable})
end)

function getEntityPrevies1()
    return entityPreview[1]
end

function getEntityPrevies2()
    return entityPreview[2]
end

RegisterNUICallback('addUserToAdmin', function(data, cb)
    api.getInput( ""..Config.Language[53].text.."", ""..Config.Language[520].text.."", function(cb)
        local playerId = tonumber(cb)
        if playerId ~= nil and playerId ~= 'close' then
            TriggerServerEvent('gum_stables:addUserToAdmin', playerId)
        end
    end)
end)

RegisterNUICallback('removeUserFromAdmin', function(data, cb)
    TriggerServerEvent('gum_stables:removeUserFromAdmin', data.charid, data.steam, data.job)
end)

RegisterNUICallback('cambreed', function(data,cb)
    startCamera(true)
end)

RegisterNUICallback('resetcam', function(data,cb)
    startCamera()
end)

RegisterNUICallback('putDownSaddle', function(data, cb)
    ExecuteCommand(''..Config.Language[476].text..'')
    SetNuiFocus(false, false)
    SendNUIMessage({type = 'clearComponents'})
end)

RegisterNUICallback('close_menu', function(data,cb)
    closeMenu()
end)

RegisterNUICallback('transferNotify', function(data,cb)
    api.notify(Config.Language[15].text, Config.Language[432].text, Config.Image, Config.Language[432].time)
end)

RegisterNUICallback('thisHorseTransfer', function(data,cb)
    if transferCityId ~= 0 then
        TriggerServerEvent("gum_stables:transferToCity", tonumber(transferCityId), tonumber(data.id), "horse")
        closeMenu()
        api.notify(Config.Language[15].text, Config.Language[431].text.."</br>"..data.name, Config.Image, Config.Language[422].time)
    elseif transferSpotId ~= 0 then
        TriggerServerEvent("gum_stables:transferToSpot", tonumber(transferSpotId), tonumber(data.id), "horse")
        closeMenu()
        api.notify(Config.Language[15].text, Config.Language[431].text.."</br>"..data.name, Config.Image, Config.Language[422].time)
    else
        api.notify(Config.Language[15].text, Config.Language[422].text, Config.Image, Config.Language[422].time)
    end
end)


RegisterNUICallback('thisCartTransfer', function(data,cb)
    if transferCityId ~= 0 then
        local name = ""
        for k,v in pairs(Config.SpotsForStable) do
            if transferCityId == k then
                name = v.blipSetting.blipStablesName
            end
        end
        TriggerServerEvent("gum_stables:transferToCity", tonumber(transferCityId), tonumber(data.id), "cart")
        closeMenu()
        api.notify(Config.Language[15].text, Config.Language[431].text.."</br>"..name, Config.Image, Config.Language[422].time)
    elseif transferSpotId ~= 0 then
        local name = ""
        for k,v in pairs(Config.SpotForTakeCd) do
            if k == transferSpotId then
                name = v.blipSetting.blipName
            end
        end
        TriggerServerEvent("gum_stables:transferToSpot", tonumber(transferSpotId), tonumber(data.id), "cart")
        closeMenu()
        api.notify(Config.Language[15].text, Config.Language[431].text.."</br>"..name, Config.Image, Config.Language[422].time)
    else
        api.notify(Config.Language[15].text, Config.Language[422].text, Config.Image, Config.Language[422].time)
    end
end)

RegisterNUICallback('thisCityTransfer', function(data,cb)
    transferSpotId = 0
    for k,v in pairs(Config.SpotsForStable) do
        if v.blipSetting.blipStablesName == data.name then
            transferCityId = tonumber(k)
        end
    end
    api.notify(Config.Language[15].text, Config.Language[433].text..data.name.."</br>"..Config.Language[434].text, Config.Image, Config.Language[433].time)
end)

RegisterNUICallback('thisSpotTransfer', function(data,cb)
    transferCityId = 0
    for k,v in pairs(Config.SpotForTakeCd) do
        if v.blipSetting.blipName == data.name then
            transferSpotId = tonumber(k)
        end
    end
    api.notify(Config.Language[15].text, Config.Language[433].text..data.name.."</br>"..Config.Language[434].text, Config.Image, Config.Language[433].time)
end)

function saveHorseColor(ph, ch1, ch2, ch3, pt, ct1, ct2, ct3)
    for a,b in pairs(yourHorses) do
        if tonumber(yourHorseId) == tonumber(b.id) or b.selected == 1 then
            local yourComponents = json.decode(b.components)
            if ph ~= nil then
                yourComponents["horseColorPal"] = ph
                yourComponents["horseColor1"] = ch1
                yourComponents["horseColor2"] = ch2
                yourComponents["horseColor3"] = ch3
            end
            if pt ~= nil then
                yourComponents["tailColorPal"] = pt
                yourComponents["tailColor1"] = ct1
                yourComponents["tailColor2"] = ct2
                yourComponents["tailColor3"] = ct3
            end
            b.components = json.encode(yourComponents)
            TriggerServerEvent("gum_stables:saveHorseColor", b.id, b.components)
            api.notify(""..Config.Language[15].text.."", ""..Config.Language[526].text.."", Config.Image, Config.Language[405].time)
            closeMenu()
        end
    end
end

function closeMenu()
    activeCamera = false
    activeInterCamera = false
    transferCityId = 0
    transferSpotId = 0
    SetNuiFocus(false, false)
    SendNUIMessage({type = "open_stable", status=false})
    SendNUIMessage({type = "clear_stables"})
    for k,v in pairs(breedEntityPreview) do
        api.deletePed(v)
        breedEntityPreview[k] = nil
        breedSlots[k] = nil
    end
    api.deletePed(createdNpc)
    createdNpc = nil
    cam = nil
    RenderScriptCams(false, true, 1000, true, false)
    Citizen.Wait(100)
    for a,b in pairs(entityPreview) do
        if GetEntityType(b) == 1 then
            api.deletePed(b)
        else
            api.deleteObj(b)
        end
        entityPreview[a] = nil
    end
    DestroyCam(camera, false)
    DestroyCam(cam, false)
    camera = nil
    cam = nil
    Citizen.Wait(1000)
    activeCamera = false
    activeInterCamera = false
    DestroyAllCams(true)
end

RegisterNUICallback('agilityupdate', function(data,cb)
    if canShoe then
        local horseComponents = {}
        local newAgilityCheck = 0
        for k,v in pairs(yourHorses) do
            if tonumber(yourHorseId) == tonumber(v.id) or tonumber(v["selected"]) == 1 then
                horseComponents = json.decode(v.components)
                for k2,v2 in pairs(json.decode(v.state)) do
                    for k3,v3 in pairs(v2) do
                        newAgilityCheck = v3
                    end
                end
            end
        end
        if tonumber(newAgilityCheck) == tonumber(data.agility_new) then
            api.notify(""..Config.Language[15].text.."", ""..Config.Language[405].text.."", Config.Image, Config.Language[405].time)
            return false
        end
        if (data.agility_new+data.sp <= Config.Max_Agility+1) and (data.agility_new+data.acc <= Config.Max_Agility+1) and (data.agility_new+data.agi <= Config.Max_Agility+1)  then
            horseComponents["Horse_Shoe"] = "0x0865A270"  
            local horse_agility = {}
            table.insert(horse_agility, {agility=data.agility_new , speed=data.agility_new , acceleration=data.agility_new })
            local newAgilityCheck = 0
            for k,v in pairs(yourHorses) do
                if tonumber(yourHorseId) == tonumber(v.id) or tonumber(v["selected"]) == 1 then
                    TriggerServerEvent("gum_stables:update_state", horse_agility, data.agility_new, horseComponents, tonumber(data.agility_new*Config.Horse_Shoe), v.id)
                    TriggerEvent("gum_stables:fleeHorse", true)
                end
            end
            closeMenu()
        else
            api.notify(""..Config.Language[15].text.."", ""..Config.Language[362].text.."", Config.Image, Config.Language[362].time)
        end
    else
        api.notify(""..Config.Language[15].text.."", ""..Config.Language[234].text.."", Config.Image, Config.Language[234].time)
    end
end)

RegisterNUICallback('select_horse', function(data,cb)
    api.getAnswer( ""..Config.Language[363].text.."", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
        local answer = cb
        if answer == true then
            TriggerEvent("gum_stables:fleeHorse", true)
            closeMenu()
            yourHorseCooldown = 0
            TriggerServerEvent("gum_stables:select_horse", tonumber(data.id), 1)
            api.notify(""..Config.Language[15].text.."", ""..Config.Language[213].text.."", Config.Image, Config.Language[213].time)
        else
            return false
        end
    end)

end)

RegisterNUICallback('health_horse', function(data,cb)
    local id = tonumber(data.id)
    local defaultPrice = 0
    if not canHeal then
        api.notify(''..Config.Language[15].text..'', ''..Config.Language[518].text..'', Config.Image, Config.Language[518].time)
        return false
    end
    for k,v in pairs(yourHorses) do
        if v.id == id then
            for a,b in pairs(Config.Horses) do
                for c,d in pairs(b) do
                    if c == v.model then
                        defaultPrice = d.dollarPrice
                    end
                end
            end
        end
    end
    for k,v in pairs(yourHorses) do
        if v.id == id then
            if Config.HealHorse then
                api.getAnswer( ""..Config.Language[54].text.." "..(defaultPrice/Config.HealCount).."$? "..Config.Language[55].text.."", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
                    local answer = cb
                    if answer == true then
                        checkDeadId = 0
                        TriggerEvent("gum_stables:fleeHorse", true)
                        closeMenu()
                        TriggerServerEvent("gum_stables:health_dead_horse", v["id"], (defaultPrice/Config.HealCount))
                        return true
                    else
                        return false
                    end
                end)
            else
                api.getAnswer( ""..Config.Language[54].text.." "..Config.HealPrice.."$? "..Config.Language[55].text.."", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
                    local answer = cb
                    if answer == true then
                        checkDeadId = 0
                        TriggerEvent("gum_stables:fleeHorse", true)
                        closeMenu()
                        TriggerServerEvent("gum_stables:health_dead_horse", v["id"], Config.HealPrice)
                        return true
                    else
                        return false
                    end
                end)
            end
        end
    end
end)

RegisterNUICallback('sell_horse', function(data,cb)
    local price = 0
    local id = data.id
    local can_sell_wild = false
    for a,b in pairs(Config.Horses) do
        for c,d in pairs(b) do
            if c == data.model then
                price = d.dollarPrice/d.sellPrice
            end
        end
    end
    local rounded_price = math.floor(price * 100 + 0.5) / 100 
    local message = ""..Config.Language[337].text.." " .. rounded_price .. "$"

    api.getAnswer(message, ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
        local answer = cb
        if answer == true then
            api.setPromptEnable(""..Config.Language[79].text.."", promptNormalStables, false)
            closeMenu()
            TriggerServerEvent("gum_stables:sell_horse_my", tonumber(id), rounded_price)
        end
    end)
    Citizen.Wait(4000)
    api.setPromptEnable(""..Config.Language[79].text.."", promptNormalStables, true)
end)

function round(number, decimals)
    local multiplier = 10 ^ decimals
    return math.floor(number * multiplier + 0.5) / multiplier
end

RegisterNUICallback('selectcart', function(data,cb)
    api.getAnswer( ""..Config.Language[364].text.."", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
        local answer = cb
        if answer == true then
            closeMenu()
            yourCartCooldown = 0
            TriggerEvent("gum_stables:fleeCart")
            TriggerServerEvent("gum_stables:select_wagons", tonumber(data.id))
            api.notify(""..Config.Language[15].text.."", ""..Config.Language[2133].text.."", Config.Image, Config.Language[2133].time)
        else
            return false
        end
    end)
end)

RegisterNUICallback('sellcart', function(data,cb)
    for a,b in pairs(Config.Wagons) do
        for c,d in pairs(b) do
            if data.model == c then
                api.getAnswer( ""..Config.Language[278].text..""..(d.dollarPrice/d.sellPrice).."$ ?", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
                    local answer = cb
                    if answer == true then
                        api.setPromptEnable(""..Config.Language[79].text.."", promptNormalStables, false)
                        closeMenu()
                        TriggerServerEvent("gum_stables:sell_wagon_my", tonumber(data.id), (d.dollarPrice/d.sellPrice))
                    end
                end)
            end
        end
    end
    Citizen.Wait(4000)
    api.setPromptEnable(""..Config.Language[79].text.."", promptNormalStables, true)
end)

RegisterNUICallback('qkey', function(data,cb)
    if activeInterCamera == true then
        heading = heading+4.5
        if entityPreview[1] ~= nil then
            SetEntityHeading(entityPreview[1], heading)
        end
        if entityPreview[2] ~= nil then
            SetEntityHeading(entityPreview[2], heading)
        end
    end
end)

RegisterNUICallback('ekey', function(data,cb)
    if activeInterCamera == true then
        heading = heading-4.5
        if entityPreview[1] ~= nil then
            SetEntityHeading(entityPreview[1], heading)
        end
        if entityPreview[2] ~= nil then
            SetEntityHeading(entityPreview[2], heading)
        end
    end
end)

RegisterNUICallback('wkey', function(data,cb)
    if activeInterCamera == true and not Config.InteractibleCamera then
        zoom = zoom+5.0
        startCamera()
    end
end)

RegisterNUICallback('skey', function(data,cb)
    if activeInterCamera == true  and not Config.InteractibleCamera then
        zoom = zoom-5.0
        startCamera()
    end
end)

RegisterNUICallback('horseOpenShoes', function(data,cb)
    local selected = false
    if antiSpam == false then
        antiSpam = true
        for k,v in pairs(yourHorses) do
            if tonumber(yourHorseId) == v.id or tonumber(v["selected"]) == 1 then
                showMyHorse(v.model, v.id)
                selected = true
            end
        end
        if selected == true then
            SendNUIMessage({type = "open_shoes"})
            existEntity(entityPreview[1])
            local offset = GetOffsetFromEntityInWorldCoords(entityPreview[1], -0.6, -0.8, -1.1)
            local npcSpawn = "u_m_m_bwmstablehand_01"
            loadModel(npcSpawn)
            createdNpc = CreatePed(GetHashKey(npcSpawn), offset.x, offset.y, offset.z, 0.0, false, false, 0, 0)
            existEntity(createdNpc)
            setHorseClean(createdNpc)
            Citizen.InvokeNative(0x283978A15512B2FE, createdNpc, true)
            turnToEntityNPC(createdNpc, offset.x, offset.y, offset.z)
            SetEntityCollision(createdNpc, false, false)
            if IsEntityPlayingAnim(createdNpc, "script_re@stranded_rider","horseshoe_idle_man", 3) == false then
                api.playAnim(createdNpc, "script_re@stranded_rider","horseshoe_idle_man", 1, -1)
            end
            if IsEntityPlayingAnim(entityPreview[1], "script_re@stranded_rider","horseshoe_idle_horse", 3) == false then
                api.playAnim(entityPreview[1], "script_re@stranded_rider","horseshoe_idle_horse", 1, -1)
            end
            cleanDirty(createdNpc)
            Citizen.Wait(4000)
            antiSpam = false
        else
            api.notify(""..Config.Language[15].text.."", ""..Config.Language[289].text.."", Config.Image, Config.Language[289].time)
            antiSpam = false
        end
    end
end)

function turnToEntityNPC(entity, _x, _y, _z)
	local positionToFace = vector3(_x, _y, _z)
	local pedPos = GetEntityCoords(entity)	
	local x = positionToFace.x - pedPos.x
	local y = positionToFace.y - pedPos.y
	local heading = GetHeadingFromVector_2d(x, y)	
	SetEntityHeading(entity, heading-140.0)
end

function turnToEntity(entity, _x, _y, _z)
	local positionToFace = vector3(_x, _y, _z)
	local pedPos = GetEntityCoords(entity)	
	local x = positionToFace.x - pedPos.x
	local y = positionToFace.y - pedPos.y
	local heading = GetHeadingFromVector_2d(x, y)	
	SetEntityHeading(entity, heading-195.0)
end

function turnToEntitySaddle(entity, _x, _y, _z)
	local positionToFace = vector3(_x, _y, _z)
	local pedPos = GetEntityCoords(entity)	
	local x = positionToFace.x - pedPos.x
	local y = positionToFace.y - pedPos.y
	local heading = GetHeadingFromVector_2d(x, y)	
	SetEntityHeading(entity, heading)
end

RegisterNUICallback('horsecomponent', function(data,cb)
    local selected = false
    for k,v in pairs(yourHorses) do
        if tonumber(yourHorseId) == tonumber(v.id) or tonumber(v["selected"]) == 1 then
            selected = true
        end
    end
    if selected == false then
        api.notify(""..Config.Language[15].text.."", ""..Config.Language[289].text.."", Config.Image, Config.Language[289].time)
        return false
    end

    for k,v in pairs(yourHorses) do
        if tonumber(yourHorseId) == tonumber(v.id) or tonumber(v.selected) == 1 then
            local acsluggage,Mask,lantern,stirrups,saddles,manes,tails,bags,acshorn,saddlecloths,bridle,holster,mustache,propsData = 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
            for a, b in pairs(json.decode(v.components)) do
                if a == "saddlecloths" then   saddlecloths = b   end
                if a == "bridle" then         bridle = b         end
                if a == "holster" then        holster = b        end
                if a == "mustache" then       mustache = b       end
                if a == "acshorn" then        acshorn = b        end
                if a == "bags" then           bags = b           end
                if a == "tails" then          tails = b          end
                if a == "manes" then          manes = b          end
                if a == "saddles" then        saddles = b        end
                if a == "stirrups" then       stirrups = b       end
                if a == "lantern" then        lantern = b        end
                if a == "Mask" then           Mask = b           end
                if a == "acsluggage" then     acsluggage = b     end
                if a == "propsData" then      propsData = b      end
            end
            for a, b in pairs(allBlankets) do     if b.hash == tonumber(saddlecloths) then   saddlecloths = a   end end
            for a, b in pairs(propsDatas) do       if b == tonumber(propsData) then            propsData = a      end end            
            for a, b in pairs(allManes) do        if b.hash == tonumber(manes) then          manes = a          end end
            for a, b in pairs(allBags) do         if b.hash == tonumber(bags) then           bags = a           end end
            for a, b in pairs(allSaddles) do      if b.hash == tonumber(saddles) then        saddles = a        end end
            for a, b in pairs(allTails) do        if b.hash == tonumber(tails) then          tails = a          end end
            for a, b in pairs(allHorns) do        if b.hash == tonumber(acshorn) then        acshorn = a        end end
            for a, b in pairs(allStirrups) do     if b.hash == tonumber(stirrups) then       stirrups = a       end end
            for a, b in pairs(allMasks) do        if b.hash == tonumber(Mask) then           Mask = a           end end
            for a, b in pairs(allMustaches) do    if b.hash == tonumber(mustache) then       mustache = a       end end
            for a, b in pairs(allHolsters) do     if b.hash == tonumber(holster) then        holster = a        end end
            for a, b in pairs(allLantern) do      if b.hash == tonumber(lantern) then        lantern = a        end end
            for a, b in pairs(allBridles) do      if b.hash == tonumber(bridle) then         bridle = a         end end
            selected = true
            SendNUIMessage({type = "horse_components", saddle_cloths=saddlecloths, bridle=bridle, holster=holster, mustache=mustache, acshorn=acshorn, bags=bags, tails=tails, manes=manes,saddles=saddles, stirrups=stirrups, lantern=lantern, Mask=Mask, acsluggage=acsluggage,propsData=propsData})
            showMyHorse(v.model, v.id)
        end
    end
end)

RegisterNUICallback('horseColor', function(data,cb)
    local selected = false
    for k,v in pairs(yourHorses) do
        if tonumber(yourHorseId) == tonumber(v.id) or tonumber(v["selected"]) == 1 then
            selected = true
        end
    end
    if selected == false then
        api.notify(""..Config.Language[15].text.."", ""..Config.Language[289].text.."", Config.Image, Config.Language[289].time)
        return false
    end

    for k,v in pairs(yourHorses) do
        if tonumber(yourHorseId) == tonumber(v.id) or tonumber(v.selected) == 1 then
            selected = true
            SendNUIMessage({type = "horse_color"})
            showMyHorse(v.model, v.id)
        end
    end
end)

function startCameraMovable()
    local entityCoords = GetEntityCoords(entityPreview[1])
    local newPos = ProcessNewPosition()
    if cam == nil or cam == -1 then
        activeInterCamera = true
        DestroyCam(cam, false)
        cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", newPos.x, newPos.y, newPos.z, 0.0, 0.0, 100.0, fov)
        PointCamAtCoord(cam, entityCoords.x, entityCoords.y, entityCoords.z + 0.5)
        SetCamActiveWithInterp(cam, camera, 500, 0, 0)
        RenderScriptCams(true, true, 500, true, true)
    else
        local camBefore = cam
        cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", newPos.x, newPos.y, newPos.z, 0.0, 0.0, 100.0, fov)
        PointCamAtCoord(cam, entityCoords.x, entityCoords.y, entityCoords.z + 0.5)
        SetCamActiveWithInterp(cam, camBefore, 50, 0, 0)
        RenderScriptCams(true, true, 50, true, true)
        while Citizen.InvokeNative(0x578F8F1CAA17BD2B, cam) do
            Citizen.Wait(0)
        end
        DestroyCam(camBefore, false)
    end
end

RegisterNUICallback('buy_cart', function(data,cb)
    local PositionForBuy = 0
    if tonumber(maxAllowedCarts) <= tonumber(#allYourCarts) then
        api.notify(""..Config.Language[15].text.."", ""..Config.Language[228].text.."", Config.Image, 2000)
        return false
    end
  
    for f,g in pairs(Config.SpotsForStable) do
        local coords = GetEntityCoords(PlayerPedId())
        if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, g.baseSetting.enterCoords[1], g.baseSetting.enterCoords[2], g.baseSetting.enterCoords[3], false) < 20.0 then
            positionForBuy = f
        end
    end
    for k,v in pairs(Config.Wagons) do
        if data.category == data.category then
            for c,d in pairs(v) do
                if data.type == d.name then
                    if Config.GoldRol then
                        api.getInput( ""..Config.Language[53].text.."", ""..Config.Language[191].text.."", function(cb)
                            local wagon_name = tostring(cb)
                            if wagon_name ~= nil and wagon_name ~= 'close' then
                                Citizen.Wait(1000)
                                api.getAnswer( ""..Config.Language[267].text.."", "$", "G", function(cb)
                                    local pay_with = cb
                                    if pay_with == true then
                                        if v[2] ~= 0 then
                                            TriggerServerEvent("gum_stables:save_wagon_s", c, wagon_name, d.dollarPrice, 0, positionForBuy)
                                        end
                                        closeMenu()
                                    elseif pay_with == false then
                                        if v[3] ~= 0 then
                                            TriggerServerEvent("gum_stables:save_wagon_s", c, wagon_name, d.goldPrice, 1, positionForBuy)
                                        end
                                        closeMenu()
                                    end
                                end)
                            end
                        end)
                    else
                        api.getInput( ""..Config.Language[53].text.."", ""..Config.Language[191].text.."", function(cb)
                            local wagon_name = tostring(cb)
                            if wagon_name ~= nil and wagon_name ~= 'close' then
                                closeMenu()
                                if v[2] ~= 0 then
                                    TriggerServerEvent("gum_stables:save_wagon_s", c, wagon_name, d.dollarPrice, 0, positionForBuy)
                                end
                            end
                        end)
                    end
                end
            end
        end
    end
end)

RegisterNUICallback('buy_horse', function(data,cb)
    if tonumber(maxAllowedHorses) <= tonumber(#allYourHorses) then
        api.notify(""..Config.Language[15].text.."", ""..Config.Language[228].text.."", Config.Image, 2000)
        return false
    end
    local horse_model = ""
    local price = 0
    local gold = 0
    for a,b in pairs(Config.Horses) do
        if a == data.category then
            for c,d in pairs(b) do
                if d.colorName == data.horse then
                    horse_model = c
                    price = d.dollarPrice
                    gold = d.goldPrice
                    horseBodyHeadColor = d.horseBodyHeadColor
                    horseTailManesColor = d.horseTailManesColor
                end
            end
        end
    end
    
    local positionForBuy = 0
    for f,g in pairs(Config.SpotsForStable) do
        local coords = GetEntityCoords(PlayerPedId())
        if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, g.baseSetting.enterCoords[1], g.baseSetting.enterCoords[2], g.baseSetting.enterCoords[3], false) < 15.0 then
            positionForBuy = f
        end
    end
    if Config.GoldRol then
        if horse_model ~= "" and (price ~= 0 or gold ~= 0) then
            api.getAnswer( ""..Config.Language[339].text.."", ""..Config.Language[340].text.."", ""..Config.Language[341].text.."", function(cb)
                local cub = cb
                if cub == true or cub == false then
                    api.getAnswer( ""..Config.Language[342].text.."", ""..Config.Language[343].text.."", ""..Config.Language[344].text.."", function(cb)
                        local male = cb
                        if male == true or male == false then
                            api.getInput( ""..Config.Language[345].text.."", ""..Config.Language[346].text.."", function(cb)
                                local name_horse = cb
                                if name_horse ~= 'close' and name_horse ~= nil then
                                    api.getAnswer( ""..Config.Language[347].text.."", "$", "G", function(cb)
                                        local pay_with = cb
                                        if pay_with == true then
                                            if price ~= 0 then
                                                TriggerServerEvent("gum_stables:save_horse_s", horse_model, name_horse, male, cub, price, pay_with, positionForBuy, horseBodyHeadColor, horseTailManesColor)
                                                closeMenu()
                                            end
                                        elseif pay_with == false then
                                            if gold ~= 0 then
                                                TriggerServerEvent("gum_stables:save_horse_s", horse_model, name_horse, male, cub, gold, pay_with, positionForBuy, horseBodyHeadColor, horseTailManesColor)
                                                closeMenu()
                                            end
                                        end
                                    end)
                                end
                            end)
                        end
                    end)
                end
            end)
        end
    else
        if horse_model ~= "" and price ~= 0 then
            api.getAnswer( ""..Config.Language[339].text.."", ""..Config.Language[340].text.."", ""..Config.Language[341].text.."", function(cb)
                local cub = cb
                if cub == true or cub == false then
                    api.getAnswer( ""..Config.Language[342].text.."", ""..Config.Language[343].text.."", ""..Config.Language[344].text.."", function(cb)
                        local male = cb
                        if male == true or male == false then
                            api.getInput( ""..Config.Language[345].text.."", ""..Config.Language[346].text.."", function(cb)
                                local name_horse = cb
                                if name_horse ~= 'close' and name_horse ~= nil then
                                    TriggerServerEvent("gum_stables:save_horse_s", horse_model, name_horse, male, cub, price, true, positionForBuy, horseBodyHeadColor, horseTailManesColor)
                                    closeMenu()
                                end
                            end)
                        end
                    end)
                end
            end)
        end
    end
end)

RegisterNUICallback('cartcomponents', function(data,cb)
    local selected = false
    for k,v in pairs(yourCarts) do
        if tonumber(yourCartId) == tonumber(v.id) or v["selected"] == 1 then
            selected = true
        end
    end
    if selected == false then
        return false
    end
    local max_tints = 0
    local max_lantern = 0
    local max_livery = 0
    local max_extras = 0
    local max_propset = 0
    local model = ""
    local id = ""
    extras = {}
    livery = {}
    lantern = {}
    propsets = {}
    for k,v in pairs(yourCarts) do
        if tonumber(yourCartId) == tonumber(v.id) or v["selected"] == 1 then
            id = v.id
            model = v.model
        end
    end
    for k,v in pairs(Config.vehicle_propsets) do
        if k == model then
            for a,b in pairs(v) do
                max_propset = max_propset+1
                table.insert(propsets, b)
            end
        end
    end
    for k, v in pairs(Config.vehicle_extras) do
        for i=1,20 do
            if v[i] ~= nil then
                if k == model then
                    max_extras = max_extras+1
                    table.insert(extras, v[i])
                end
            end
        end
    end
    for k, v in pairs(Config.vehicle_tints) do
        if k == model then
            max_tints = v
        end
    end
    for k, v in pairs(Config.vehicle_liveries) do
        for i=1,20 do
            if v[i] ~= nil then
                if k == model then
                    max_livery = max_livery+1
                    table.insert(livery, v[i][1])
                end
            end
        end
    end
    for k, v in pairs(Config.vehicle_lantern_propsets) do
        for i=1,20 do
            if v[i] ~= nil then
                if k == model then
                    max_lantern = max_lantern+1
                    table.insert(lantern, v[i])
                end
            end
        end
    end
    if model ~= "" then
        showMyCart(model, id)
    else
        return false
    end
    SendNUIMessage({type = "comp_cart_load", lantern=lantern, max_lantern=max_lantern, livery=livery, max_livery=max_livery, max_tints=max_tints, max_extras=max_extras, extras=extras, max_propset=max_propset, id=id})
end)

RegisterNUICallback('BuyComponents', function(data,cb)
    local compPrice = 0
    for a,b in pairs(yourHorses) do
        if tonumber(yourHorseId) == tonumber(b.id) or b.selected == 1 then
            local yourComponents = json.decode(b.components)
            for c,d in pairs(horseComponentTable) do
                if tonumber(data[c]) ~= 0 then
                    if tonumber(horseComponentTable[c][2][tonumber(data[c])].hash) ~= tonumber(yourComponents[c]) then
                        compPrice = compPrice + horseComponentTable[c][2][tonumber(data[c])].price
                        yourComponents[c] = tonumber(horseComponentTable[c][2][tonumber(data[c])].hash)
                    end
                else
                    yourComponents[c] = nil
                end
            end
            if tonumber(data.propsData) ~= 0 then
                if tonumber(yourComponents["propsData"]) ~= tonumber(data.propsData) then
                    yourComponents["propsData"] = tonumber(data.propsData)
                    componentHorsePrice["propsData"] = Config.Horse_Props
                end
            else
                componentHorsePrice["propsData"] = 0
                yourComponents["propsData"] = nil
            end

            api.getAnswer( ""..Config.Language[348].text.." "..compPrice.."$ ?", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
                local input = cb
                if input == true then
                    TriggerServerEvent("gum_stables:buy_components", yourComponents, b.id, compPrice)
                    TriggerEvent("gum_stables:fleeHorse", true)
                    closeMenu()
                end
            end)
        end
    end
end)

RegisterNUICallback('selectcartcomponent', function(data,cb)
    if data.comp == "horseCars" then
        for k,v in pairs(yourCarts) do
            if tonumber(yourCartId) == tonumber(v["id"]) or v.selected == 1 then
                if tonumber(data.value) ~= 0 then
                    local value = tonumber(data.value)
                    showMyCart(v["model"], v["id"], value)
                    componentCartPrice["horses"] = {Config.HorsesDraft, value}
                    loadNewCompList()
                else
                    componentCartPrice["horses"] = {0, 0}
                end
            end
        end
    end
    if data.comp == "propset" then
        local getEntityCoords = GetEntityCoords(entityPreview[1])
        for k,v in pairs(propsets) do
            if k == tonumber(data.value) then
                if entityPreview[1] ~= nil then
                    local playerCoords = GetEntityCoords(PlayerPedId())
                    local getEntityCoords = GetOffsetFromEntityInWorldCoords(entityPreview[1], 0.0, -0.9, 0.0)
                    for a,b in pairs(GetGamePool('CObject')) do
                        local coords = GetEntityCoords(b)
                        if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, getEntityCoords.x, getEntityCoords.y, getEntityCoords.z, false) < 1.2 and GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, coords.x, coords.y, coords.z, false) > 1.00 then
                            DeleteEntity(b)
                        end
                    end
                end
                Citizen.InvokeNative(0x75F90E4051CC084C, entityPreview[1], 0)
                Citizen.Wait(50)
                Citizen.InvokeNative(0x75F90E4051CC084C, entityPreview[1], GetHashKey(v))
                Citizen.InvokeNative(0x31F343383F19C987, entityPreview[1], 1.0, 1)

                Citizen.InvokeNative(0x7264F9CA87A9830B, entityPreview[1])
                Citizen.InvokeNative(0xD798DF5DB67B1659, entityPreview[1])
                componentCartPrice["propset"] = {Config.Propset, v}
                Citizen.Wait(100)
                for a,b in pairs(GetGamePool('CObject')) do
                    local coords = GetEntityCoords(b)
                    if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, getEntityCoords.x, getEntityCoords.y, getEntityCoords.z, false) < 3.0 then
                        SetEntityCollision(b, false, false)
                    end
                end
            end
            if tonumber(data.value) == 0 then
                componentCartPrice["propset"] = {0, "none"}
                for a,b in pairs(GetGamePool('CObject')) do
                    local coords = GetEntityCoords(b)
                    if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, getEntityCoords.x, getEntityCoords.y, getEntityCoords.z, false) < 2.0 then
                        DeleteEntity(b)
                    end
                end
                Citizen.InvokeNative(0x75F90E4051CC084C, entityPreview[1], 0)
            end
        end
    end
    if data.comp == "lanternss" then
        for k,v in pairs(lantern) do
            if k == tonumber(data.value) then
                componentCartPrice["lantern"] = {Config.Lantern, v}
                Citizen.InvokeNative(0xC0F0417A90402742, entityPreview[1], GetHashKey(v))
            end
        end
        if tonumber(data.value) == 0 then
            Citizen.InvokeNative(0xE31C0CB1C3186D40, entityPreview[1])
            componentCartPrice["lantern"] = {0, "none"}
        end
    end
    if data.comp == "tint" then
        if tonumber(data.value) < 0 then
            Citizen.InvokeNative(0x758C3460EE915D0A, entityPreview[1], 0.0)
            Citizen.InvokeNative(0xBAE0EEDF93F05EAA, entityPreview[1], 0.0)
            Citizen.InvokeNative(0x8268B098F6FCA4E2, entityPreview[1], -1)
            componentCartPrice["tint"] = {0, 0}
        else
            Citizen.InvokeNative(0x758C3460EE915D0A, entityPreview[1], 0.0)
            Citizen.InvokeNative(0xBAE0EEDF93F05EAA, entityPreview[1], 0.0)
            Citizen.InvokeNative(0x8268B098F6FCA4E2, entityPreview[1], tonumber(data.value))
            componentCartPrice["tint"] = {Config.Tint, tonumber(data.value)}
        end
    end
    if data.comp == "livery" then
        for k,v in pairs(livery) do
            if k == tonumber(data.value) then
                componentCartPrice["livery"] = {Config.Livery, v}
                Citizen.InvokeNative(0xF89D82A0582E46ED, entityPreview[1], v)
            end
        end
        if tonumber(data.value) == 0 then
            componentCartPrice["livery"] = {0, -1}
        end
    end
    local exr_number = string.match(data.comp,"%d+")
    local is_extras = string.find(data.comp, "Extra")
    if is_extras == 1 then
        for k,v in pairs(extras) do
            if k == exr_number+1 then
                if tonumber(data.value) == 0 then
                    componentCartPrice["extra_"..v] = {Config.Extras, v, 1}
                    Citizen.InvokeNative(0xBB6F89150BC9D16B, entityPreview[1], v, 1)
                else
                    componentCartPrice["extra_"..v] = {Config.Extras, v, 0}
                    Citizen.InvokeNative(0xBB6F89150BC9D16B, entityPreview[1], v, 0)
                end
            end
        end
    end
end)

function loadNewCompList()
    for k,v in pairs(componentCartPrice) do
        if k == "lanternss" then
            Citizen.InvokeNative(0xC0F0417A90402742, entityPreview[1], GetHashKey(v[2]))
        end
        if k == "livery" then
            Citizen.InvokeNative(0xF89D82A0582E46ED, entityPreview[1], v[2])
        end
        if k == "tint" then
            Citizen.InvokeNative(0x758C3460EE915D0A, entityPreview[1], 0.0)
            Citizen.InvokeNative(0xBAE0EEDF93F05EAA, entityPreview[1], 0.0)
            Citizen.InvokeNative(0x8268B098F6FCA4E2, entityPreview[1], tonumber(v[2]))
        end
        if k == "propset" then
            if entityPreview[1] ~= nil then
                local playerCoords = GetEntityCoords(PlayerPedId())
                local getEntityCoords = GetOffsetFromEntityInWorldCoords(entityPreview[1], 0.0, -0.9, 0.0)
                for a,b in pairs(GetGamePool('CObject')) do
                    local coords = GetEntityCoords(b)
                    if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, getEntityCoords.x, getEntityCoords.y, getEntityCoords.z, false) < 1.2 and GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, coords.x, coords.y, coords.z, false) > 1.00 then
                        DeleteEntity(b)
                    end
                end
            end
            Citizen.InvokeNative(0x75F90E4051CC084C, entityPreview[1], 0)
            Citizen.Wait(50)
            Citizen.InvokeNative(0x75F90E4051CC084C, entityPreview[1], GetHashKey(v[2]))
            Citizen.InvokeNative(0x31F343383F19C987, entityPreview[1], 1.0, 1)
    
            Citizen.InvokeNative(0x7264F9CA87A9830B, entityPreview[1])
            Citizen.InvokeNative(0xD798DF5DB67B1659, entityPreview[1])
        end
    end
end

RegisterNUICallback('buycartcomponents', function(data,cb)
    local price = 0
    local new_extras = {}
    local sendextras = {}
    local lantern = nil
    local tint = nil
    local livery = nil
    local propset = nil
    local horses = nil
    for k,v in pairs(componentCartPrice) do
        price = price+v[1]
    end

    for k,v in pairs(yourCarts) do
        if v.id == tonumber(data.id) then
            new_extras = json.decode(v.comp_extras)
        end
    end
    for a,b in pairs(componentCartPrice) do
        if string.match(a,"extra") then
            for c,d in pairs(new_extras) do
                if c == tostring(b[2]) then
                    new_extras[c] = b[3]
                end
            end
        end
    end
    sendextras = json.encode(new_extras)
    Citizen.Wait(0)
    for k,v in pairs(componentCartPrice) do
        if k == "lantern" then
            lantern = v[2]
        end
        if k == "tint" then
            tint = v[2]
        end
        if k == "livery" then
            livery = v[2]
        end
        if k == "propset" then
            propset = v[2]
        end
        if k == "horses" then
            horses = v[2]
        end
    end
    local positionForBuy = 0
    for f,g in pairs(Config.SpotsForStable) do
        local coords = GetEntityCoords(PlayerPedId())
        if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, g.baseSetting.enterCoords[1], g.baseSetting.enterCoords[2], g.baseSetting.enterCoords[3], false) < 2.0 then
            positionForBuy = f
        end
    end
    api.getAnswer( ""..Config.Language[348].text.." "..price.."$ ?", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
		local input = cb
		if input == true then
            if price == 0 then
                api.notify(""..Config.Language[15].text.."", ""..Config.Language[349].text.."", Config.Image, Config.Language[349].time)
            else
                TriggerEvent("gum_stables:fleeCart")
                closeMenu()
                TriggerServerEvent("gum_stables:save_comp_wagon", data.id, livery, tint, price, positionForBuy, propset, horses, lantern, sendextras)
                componentCartPrice = {}
                new_extras = {}
                sendextras = {}
                lantern = nil
                tint = nil
                livery = nil
                Citizen.Wait(1000)
                TriggerServerEvent("gum_stables:check_wagons")
            end
			return true
		else
			return false
		end
	end)
end)

RegisterNUICallback('selectcomponent', function(data,cb)
    if horseComponentTable[data.comp] then
        for a,b in pairs(horseComponentTable[data.comp][2]) do
            if tonumber(data.value) ~= 0 and tonumber(data.value) == a then
                local hash = horseComponentTable[data.comp][2][tonumber(data.value)].hash
                if Config.Debug then
                    print(hash)
                end
                priceThisComp = " | "..Config.Language[504].text..""..horseComponentTable[data.comp][2][tonumber(data.value)].price
                buycompos[data.comp] = hash
                setClothOnHorse(entityPreview[1], hash)
                for c,d in pairs(buycompos) do
                    if d ~= "none" then
                        setClothOnHorse(entityPreview[1], d)
                    else
                        if c ~= "propsData" then
                            if horseComponentTable[c] ~= nil then
                                removeClothFromHorse(entityPreview[1], horseComponentTable[c][1])
                            end
                        end
                    end
                end
                break
            end
        end
        if tonumber(data.value) == 0 then
            buycompos[data.comp] = "none"
            removeClothFromHorse(entityPreview[1], horseComponentTable[data.comp][1])
            for c,d in pairs(buycompos) do
                if d ~= "none" then
                    setClothOnHorse(entityPreview[1], d)
                else
                    if c ~= "propsData" then
                        if horseComponentTable[c] ~= nil then
                            removeClothFromHorse(entityPreview[1], horseComponentTable[c][1])
                        end
                    end
                end
            end
        end
    end
    if not horseComponentTable[data.comp] then
        for k,v in pairs(yourHorses) do
            if  tonumber(yourHorseId) == v.id or tonumber(v["selected"]) == 1 then
                if tonumber(data.value) == 0 then
                    showMyHorse(v.model, v.id)
                    buycompos["propsData"] = "none"

                    for c,d in pairs(buycompos) do
                        if d ~= "none" then
                            setClothOnHorse(entityPreview[1], d)
                        else
                            if c ~= "propsData" then
                                if horseComponentTable[c] ~= nil then
                                    removeClothFromHorse(entityPreview[1], horseComponentTable[c][1])
                                end
                            end
                        end
                    end
                else
                    showMyHorse(v.model, v.id)
                    Citizen.Wait(0)
                    Citizen.InvokeNative(0x1902C4CFCC5BE57C,entityPreview[1], tonumber(propsDatas[tonumber(data.value)])) 
                    Citizen.InvokeNative(0xCC8CA3E88256E58F,entityPreview[1], false, true, true, true, false)
                    buycompos["propsData"] = tonumber(data.value)

                    for c,d in pairs(buycompos) do
                        if d ~= "none" then
                            setClothOnHorse(entityPreview[1], d)
                        else
                            if c ~= "propsData" then
                                if horseComponentTable[c] ~= nil then
                                    removeClothFromHorse(entityPreview[1], horseComponentTable[c][1])
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end)

function showMyHorse(model, id)
    SendNUIMessage({type = 'cameraInteract'})
    api.deleteObj(entityPreview[1], true)
    while DoesEntityExist(entityPreview[1]) do
        Wait(0)
    end
    local match = string.match(model, "%w*01%w*")
    if not match then
        model = string.gsub(model, "%d+", "")
    end
    loadModel(model)
    if openCompanyStablePosition == 0 then
        for k,v in pairs(Config.SpotsForStable) do
            if k == openStablePosition then
                entityPreview[1] = CreatePed(GetHashKey(model), v.spawnSetting.spawnStore[1], v.spawnSetting.spawnStore[2], v.spawnSetting.spawnStore[3]-0.05, heading, false, false, 0, 0)
            end
        end
    else
        for k,v in pairs(Config.HorseCompany) do
            if k == openCompanyStablePosition then
                entityPreview[1] = CreatePed(GetHashKey(model), v.spawnSetting.spawnStore[1], v.spawnSetting.spawnStore[2], v.spawnSetting.spawnStore[3]-0.05, heading, false, false, 0, 0)
            end
        end
    end
    existEntity(entityPreview[1])
    Citizen.Wait(150)
    Citizen.InvokeNative(0x283978A15512B2FE, entityPreview[1], true)
    previewPed = horse_preview
    setHorseClean(entityPreview[1])
    loadHorseComponent(entityPreview[1], id)
    if Config.InteractibleCamera and entityPreview[1] then
        startCameraMovable()
    end
    cleanDirty(entityPreview[1])
    antiSpam = false
end

RegisterNUICallback('show_breed_horse', function(data,cb)
    if antiSpam == false then
        antiSpam = true
        for k,v in pairs(breedEntityPreview) do
            api.deletePed(v)
            breedEntityPreview[k] = nil
        end
        showHorseBreed(data.model1, 1, data.id1)
        showHorseBreed(data.model2, 2, data.id2)
        if data.reward ~= "none" then
            if data.model1 == data.reward then
                showHorseBreed(data.reward, 3)
            elseif data.model2 == data.reward then
                showHorseBreed(data.reward, 4)
            end
        end
        Citizen.Wait(350)
        antiSpam = false
    end
end)

function showHorseBreed(model, count, id)
    local match = string.match(model, "%w*01%w*")
    if not match then
        model = string.gsub(model, "%d+", "")
    end
    loadModel(model)
    if openCompanyStablePosition == 0 then
        for k,v in pairs(Config.SpotsForStable) do
            if k == openStablePosition then
                if tonumber(count) == 1 then
                    breedEntityPreview[count] = CreatePed(GetHashKey(model), v.spawnSetting.breedHorseLeft[1], v.spawnSetting.breedHorseLeft[2],v.spawnSetting.breedHorseLeft[3], v.spawnSetting.breedHorseLeft[4], false, false, 0, 0)
                elseif tonumber(count) == 2 then
                    breedEntityPreview[count] = CreatePed(GetHashKey(model), v.spawnSetting.breedHorseRight[1], v.spawnSetting.breedHorseRight[2],v.spawnSetting.breedHorseRight[3], v.spawnSetting.breedHorseRight[4], false, false, 0, 0)
                elseif tonumber(count) == 3 then
                    local horseCoords = GetOffsetFromEntityInWorldCoords(breedEntityPreview[1], -0.5, 0.0, -1.0)
                    breedEntityPreview[count] = CreatePed(GetHashKey(model), horseCoords.x, horseCoords.y, horseCoords.z, GetEntityHeading(breedEntityPreview[1]), false, false, 0, 0)
                elseif tonumber(count) == 4 then
                    local horseCoords = GetOffsetFromEntityInWorldCoords(breedEntityPreview[2], 0.5, 0.0, -1.0)
                    breedEntityPreview[count] = CreatePed(GetHashKey(model), horseCoords.x, horseCoords.y, horseCoords.z, GetEntityHeading(breedEntityPreview[2]), false, false, 0, 0)
                end
                SetEntityCollision(breedEntityPreview[count], false, false)
            end
        end
    else
        for k,v in pairs(Config.HorseCompany) do
            if k == openCompanyStablePosition then
                if tonumber(count) == 1 then
                    breedEntityPreview[count] = CreatePed(GetHashKey(model), v.spawnSetting.breedHorseLeft[1], v.spawnSetting.breedHorseLeft[2],v.spawnSetting.breedHorseLeft[3], v.spawnSetting.breedHorseLeft[4], false, false, 0, 0)
                    for a,b in pairs(yourHorses) do
                        if tonumber(id) == b.id then
                            loadYourColor(json.decode(b["components"]), breedEntityPreview[count])
                        end
                    end
                elseif tonumber(count) == 2 then
                    breedEntityPreview[count] = CreatePed(GetHashKey(model), v.spawnSetting.breedHorseRight[1], v.spawnSetting.breedHorseRight[2],v.spawnSetting.breedHorseRight[3], v.spawnSetting.breedHorseRight[4], false, false, 0, 0)
                    for a,b in pairs(yourHorses) do
                        if tonumber(id) == b.id then
                            loadYourColor(json.decode(b["components"]), breedEntityPreview[count])
                        end
                    end
                elseif tonumber(count) == 3 then
                    local horseCoords = GetOffsetFromEntityInWorldCoords(breedEntityPreview[1], -0.5, 0.0, -1.0)
                    breedEntityPreview[count] = CreatePed(GetHashKey(model), horseCoords.x, horseCoords.y, horseCoords.z, GetEntityHeading(breedEntityPreview[1]), false, false, 0, 0)
                elseif tonumber(count) == 4 then
                    local horseCoords = GetOffsetFromEntityInWorldCoords(breedEntityPreview[2], 0.5, 0.0, -1.0)
                    breedEntityPreview[count] = CreatePed(GetHashKey(model), horseCoords.x, horseCoords.y, horseCoords.z, GetEntityHeading(breedEntityPreview[2]), false, false, 0, 0)
                end
                SetEntityCollision(breedEntityPreview[count], false, false)
            end
        end
    end
    existEntity(breedEntityPreview[count])
    Citizen.Wait(100)
    setHorseClean(breedEntityPreview[count])
    for a,b in pairs(yourHorses) do
        if tonumber(id) == b.id then
            loadYourColor(json.decode(b["components"]), breedEntityPreview[count])
        end
    end
    if count == 3 or count == 4 then
        SetPedScale(breedEntityPreview[count], 0.6)
    end
end

RegisterNUICallback('save_breed', function(data,cb)
    if data.time == Config.Language[104].text then
        api.notify(""..Config.Language[15].text.."", ""..Config.Language[371].text, Config.Image, Config.Language[96].time)
        return false
    end
    closeMenu()
    local positionForBuy = 0
    for f,g in pairs(Config.SpotsForStable) do
        local coords = GetEntityCoords(PlayerPedId())
        if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, g.baseSetting.enterCoords[1], g.baseSetting.enterCoords[2], g.baseSetting.enterCoords[3], false) < 2.0 then
            positionForBuy = f
        end
    end
    if data.model ~= "none" then
        local set_sex = ""
        local random_gender = math.random(1,2)
        if random_gender == 1 then
            set_sex = ""..Config.Language[68].text..""
        elseif random_gender == 2 then
            set_sex = ""..Config.Language[67].text..""
        end
        api.getInput( ""..Config.Language[53].text.."", ""..Config.Language[167].text.." "..set_sex.."", function(cb)
            local name_horse = tostring(cb)
            if name_horse ~= "close" and name_horse ~= nil then
                TriggerServerEvent("gum_stables:save_adult_horse", data.model, data.sex, name_horse, tonumber(data.id1), tonumber(data.id2), positionForBuy, set_sex, tonumber(data.exp))
                for k,v in pairs(breedEntityPreview) do
                    api.deletePed(v)
                    breedEntityPreview[k] = nil
                    breedSlots[k] = nil
                end
            end
        end)
    end
end)

RegisterNUICallback('show_horse', function(data, cb)
    if antiSpam == false then
        antiSpam = true
        for k,v in pairs(yourHorses) do
            if v.id == tonumber(data.id) and tonumber(data.id) ~= showId then
                showMyHorse(v.model, tonumber(data.id))
            end
        end
    end
end)

RegisterNUICallback('show_cart', function(data,cb)
    for k,v in pairs(yourCarts) do
        if tonumber(data.id) == v["id"] then
            showMyCart(v.model, v.id)
        end
    end
end)

RegisterNUICallback('clear_preview', function(data, cb)
    priceThisComp = ""
    activeInterCamera = false
    if createdNpc then
        api.deletePed(createdNpc)
        createdNpc = nil
    end
    for k,v in pairs(entityPreview) do
        if (Citizen.InvokeNative(0x97F696ACA466B4E0, v) == 1) then
            api.deletePed(v)
            entityPreview[k] = nil
        else
            api.deleteObj(v)
            entityPreview[k] = nil
        end
    end
end)

RegisterNUICallback('left_cart', function(data, cb)
    if antiSpam == false then
        antiSpam = true
        local counter = 0
        local newCart = 1
        for a,b in pairs(editedCartStoreTable) do
            if b.category == data.category then
                if data.category ~= checkCategoryShop then
                    checkCategoryShop = data.category
                    shopTable = {}
                end
                counter = counter + 1
                shopTable[counter] = b
            end
        end
        for k,v in pairs(shopTable) do
            if v.name == data.cart then
                newCart = k-1
                if newCart == 0 then
                    newCart = #shopTable
                end
                break
            end
        end

        local newHorseData = shopTable[newCart]
        SendNUIMessage({type = "change_cart", cart=newHorseData.name, category=newHorseData.category, money=newHorseData.dollarPrice, gold=newHorseData.goldPrice, storage=newHorseData.storageSlot})
        showCartStore(newHorseData.model)

    end
end)

RegisterNUICallback('right_cart', function(data, cb)
    if antiSpam == false then
        antiSpam = true
        local counter = 0
        local newCart = 1
        for a,b in pairs(editedCartStoreTable) do
            if b.category == data.category then
                if data.category ~= checkCategoryShop then
                    checkCategoryShop = data.category
                    shopTable = {}
                end
                counter = counter + 1
                shopTable[counter] = b
            end
        end

        for i, v in ipairs(shopTable) do
            if v.name == data.cart then
                newCart = i+1
                if newCart > #shopTable then
                    newCart = 1
                end
                break
            end
        end
        local newHorseData = shopTable[newCart]
        SendNUIMessage({type = "change_cart", cart=newHorseData.name, category=newHorseData.category, money=newHorseData.dollarPrice, gold=newHorseData.goldPrice, storage=newHorseData.storageSlot})
        showCartStore(newHorseData.model)

    end
end)

RegisterNUICallback('shwo_prepare_breed', function(data, cb)
    local id = tonumber(data.id)
    local model = ""
    for k,v in pairs(yourHorses) do
        if v.id == id then
            name = v.name
            model = v.model
        end
    end
    if breedEntityPreview[1] and breedEntityPreview[2] then
        for k,v in pairs(breedEntityPreview) do
            api.deletePed(breedEntityPreview[k])
            breedEntityPreview[k] = nil
        end
    end

    if breedSlots[1] == nil then
        if breedEntityPreview[1] ~= nil then
            api.deletePed(breedEntityPreview[1])
            breedEntityPreview[1] = nil
        end
        showHorseBreed(model, 1, data.id)
    elseif breedSlots[2] == nil then
        if breedEntityPreview[2] ~= nil then
            api.deletePed(breedEntityPreview[2])
            breedEntityPreview[2] = nil
        end
        showHorseBreed(model, 2, data.id)
    end
end)

RegisterNUICallback('add_to_breed', function(data, cb)
    local id = tonumber(data.id)
    if canBreed then
        if breedSlots[1] == nil then
            for k,v in pairs(yourHorses) do
                if v.id == tonumber(data.id) then
                    for a,b in pairs(Config.Horses) do
                        for c,d in pairs(b) do
                            if v.model == c and not d.canBreed then
                                return false
                            end
                        end
                    end
                    api.getAnswer( ""..Config.Language[334].text.."", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
                        local answer = cb
                        if answer == true then
                            if breedEntityPreview[1] ~= nil then
                                api.deletePed(breedEntityPreview[1])
                                breedEntityPreview[1] = nil
                            end
                            local price = priceHorseByModel(v.model)
                            breedSlots[1] = {id=v.id, model=v.model, name=v.name, sex=v.sex, price=price}
                            showHorseBreed(v.model, 1, v.id)
                            if Config.FixBrainerItem then
                                if Config.Language[1640].text == v.breeding then
                                    needItem = true
                                end
                            end
                        end
                    end)
                end
            end
        elseif breedSlots[2] == nil then
            for k,v in pairs(yourHorses) do
                if v.id == tonumber(data.id) then
                    for a,b in pairs(Config.Horses) do
                        for c,d in pairs(b) do
                            if v.model == c and not d.canBreed then
                                return false
                            end
                        end
                    end
                    if Config.BreedPriceEnable then
                        local range
                        if breedSlots[1].price >= priceHorseByModel(v.model) then
                            range = breedSlots[1].price-priceHorseByModel(v.model)
                            if tonumber(range) >= Config.BreedPriceDistance then
                                api.notify(""..Config.Language[15].text.."", ""..Config.Language[388].text.."", Config.Image, Config.Language[388].time)
                                return false
                            end
                        else
                            range = priceHorseByModel(v.model)-breedSlots[1].price
                            if range >= Config.BreedPriceDistance then
                                api.notify(""..Config.Language[15].text.."", ""..Config.Language[388].text.."", Config.Image, Config.Language[388].time)
                                return false
                            end
                        end
                    end
                    if breedSlots[1].sex == v.sex then
                        return false
                    end
                    if breedSlots[1].id == v.id then
                        return false
                    end
                    api.getAnswer( ""..Config.Language[334].text.."", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
                        local answer = cb
                        if answer == true then
                            if breedEntityPreview[2] ~= nil then
                                api.deletePed(breedEntityPreview[2])
                                breedEntityPreview[2] = nil
                            end
                            breedSlots[2] = {id=v.id, model=v.model, name=v.name, sex=v.sex, price=price}
                            showHorseBreed(v.model, 2, v.id)
                            if Config.FixBrainerItem then
                                if Config.Language[1640].text == v.breeding then
                                    needItem = true
                                end
                            end
                        end
                    end)
                end
            end
        end
        if breedSlots[1] and breedSlots[2] then
            if Config.PayForBreed then
                local calcPrice = 0
                for a,b in pairs(breedSlots) do
                    calcPrice = calcPrice + b.price
                end
                calcPrice = (calcPrice/2)/100*Config.BreedPricePercent
                api.getAnswer( ""..Config.Language[257].text..""..calcPrice..""..Config.Language[258].text.."", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
                    local answer = cb
                    if answer == true then
                        TriggerServerEvent("gum_stables:horse_start_breed", breedSlots[1].model, breedSlots[1].id, breedSlots[1].name, breedSlots[2].model, breedSlots[2].id, breedSlots[2].name, (((breedSlots[1].price+breedSlots[2].price)/2)/100*Config.BreedPricePercent), needItem)
                        for k,v in pairs(breedEntityPreview) do
                            api.deletePed(v)
                            breedEntityPreview[k] = nil
                            breedSlots[k] = nil
                            needItem = false
                        end
                        breedEntityPreview = {}
                        breedSlots = {}
                        closeMenu()
                    else
                        for k,v in pairs(breedEntityPreview) do
                            api.deletePed(v)
                            breedEntityPreview[k] = nil
                            breedSlots[k] = nil
                            needItem = false
                        end
                        breedEntityPreview = {}
                        breedSlots = {}
                    end
                end)
            else
                api.getAnswer( ""..Config.Language[365].text.."", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
                    local answer = cb
                    if answer == true then
                        TriggerServerEvent("gum_stables:horse_start_breed", breedSlots[1].model, breedSlots[1].id, breedSlots[1].name, breedSlots[2].model, breedSlots[2].id, breedSlots[2].name, 0, needItem)
                        for k,v in pairs(breedEntityPreview) do
                            api.deletePed(v)
                            breedEntityPreview[k] = nil
                            breedSlots[k] = nil
                            needItem = false
                        end
                        breedEntityPreview = {}
                        breedSlots = {}
                        closeMenu()
                    else
                        for k,v in pairs(breedEntityPreview) do
                            api.deletePed(v)
                            breedEntityPreview[k] = nil
                            breedSlots[k] = nil
                            needItem = false
                        end
                        breedEntityPreview = {}
                        breedSlots = {}
                    end
                end)
            end
        end
    end
end)

function jobCheck(typeJob)
    local job = false
    if type(yourJob) == "table" then
        for a,b in pairs(yourJob) do
            if b.job == typeJob then
                job = true
            end
        end
    else
        if yourJob == typeJob then
            job = true
        end
    end
    return job
end

function priceHorseByModel(model)
    local price = 0
    for k2,v2 in pairs(Config.Horses) do
        for x,y in pairs(v2) do
            if x == x then
                price = y.dollarPrice
            end
        end
    end
    return price
end

RegisterNUICallback('clear_breed', function(data, cb)
    for k,v in pairs(breedEntityPreview) do
        api.deletePed(v)
        breedEntityPreview[k] = nil
        breedSlots[k] = nil
    end
    needItem = false
end)

RegisterNUICallback('openStorage', function(data, cb)
    SetNuiFocus(false, false)
    local itsWagon = data.cart
    if itsWagon == "true" then
        if GetEntityModel(yourCartEntity) == GetHashKey("logwagon") then
            TriggerServerEvent("gum_stables:getAbility", storageSizeTable[GetEntityModel(yourCartEntity)][1], yourCartId, "logwagon", "wood")
        elseif GetEntityModel(yourCartEntity) == GetHashKey("coal_wagon") then
            TriggerServerEvent("gum_stables:getAbility", storageSizeTable[GetEntityModel(yourCartEntity)][1], yourCartId, "coal_wagon", "stone")
        elseif GetEntityModel(yourCartEntity) == GetHashKey("oilWagon01x") then
        else
            TriggerServerEvent('gum_stables:registerStorage', "wagon_"..tonumber(yourCartId), storageSizeTable[GetEntityModel(yourCartEntity)][1])
            TriggerServerEvent("gum_stables:openStorage", "wagon_"..tonumber(yourCartId), storageSizeTable[GetEntityModel(yourCartEntity)][1])
        end
    else
        TriggerServerEvent("gum_stables:openStorage", "horse_"..tonumber(data.id), storageSizeTable[GetEntityModel(yourHorseEntity)][1])
    end
    SendNUIMessage({type = "clearManage"})
end)

RegisterNetEvent('gum_stables:wearClothe')
AddEventHandler('gum_stables:wearClothe', function(comps)
    FreezeEntityPosition(PlayerPedId(), true)
    api.playAnim(PlayerPedId(), 'mech_loco_m@character@arthur@fidgets@hat@normal@unarmed@normal@left_hand', 'hat_lhand_a', 25, 2000)
    Citizen.Wait(2000)
    api.playAnim(PlayerPedId(), 'mech_loco_m@character@arthur@fancy@unarmed@idle@_variations', 'idle_b', 25, 5000)
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x9925C067, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x5E47CA6, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x662AC34, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x5FC29285, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x7A96FACA, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x2026C46D, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x877A2CF7, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x485EE834, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0xE06D30CE, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0xAF14310B, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x3C1A74CD, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0xEABE0032, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x7A6BBD0B, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0xF16A1D23, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x7BC10759, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x9B2C8B89, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0xA6D134C6, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0xFAE9107F, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0xB6B6122D, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x1D4C528A, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0xA0E3AB7F, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x3107499B, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x777EC6EF, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x18729F39, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0xF1542D11, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x514ADCEA, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x91CE9B20, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x83887E88, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x79D7DF96, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), 0x94504D26, 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), GetHashKey("masks"), 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), GetHashKey("armor"), 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), GetHashKey("dresses"), 0);
    Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), GetHashKey("pants"), 0);
    Citizen.InvokeNative(0xCC8CA3E88256E58F, PlayerPedId(), 0, 1, 1, 1, 0);
    Citizen.Wait(5000)
    api.playAnim(PlayerPedId(), 'script_re@burning_bodies', 'push_two_bodies_undertaker', 25, 3000)
    Citizen.Wait(3000)
    api.playAnim(PlayerPedId(), 'mech_loco_m@character@arthur@fidgets@insects@crouch@unarmed@idle', 'idle', 1, 2000)
    Citizen.Wait(2000)
    FreezeEntityPosition(PlayerPedId(), false)
    comps = json.decode(comps)
    if comps["Hat"] ~= -1 then
        loadComponent(PlayerPedId(), comps["Hat"], "HAT")
    end
    if comps["EyeWear"] ~= -1 then
        loadComponent(PlayerPedId(), comps["EyeWear"], "EyeWear")
    end
    if comps["Mask"] ~= -1 then
        loadComponent(PlayerPedId(), comps["Mask"], "Mask")
    end
    if comps["Shirt"] ~= -1 then
        loadComponent(PlayerPedId(), comps["Shirt"], "Shirt")
    end
	if comps["Vest"] ~= -1 then
        loadComponent(PlayerPedId(), comps["Vest"], "Vest")
    end
    if comps["NeckWear"] ~= -1 then
        loadComponent(PlayerPedId(), comps["NeckWear"], "NeckWear")
    end
    if comps["Suspender"] ~= -1 then
        loadComponent(PlayerPedId(), comps["Suspender"], "Suspender")
    end
    if comps["NeckTies"] ~= -1 then
        loadComponent(PlayerPedId(), comps["NeckTies"], "NeckTies")
    end
    if comps["Coat"] ~= -1 then
        loadComponent(PlayerPedId(), comps["Coat"], "Coat")
    end
	if comps["CoatClosed"] ~= -1 then
        loadComponent(PlayerPedId(), comps["CoatClosed"], "CoatClosed")
    end
    if comps["Poncho"] ~= -1 then
        loadComponent(PlayerPedId(), comps["Poncho"], "Poncho")
    end
    if comps["Cloak"] ~= -1 then
        loadComponent(PlayerPedId(), comps["Cloak"], "Cloak")
    end
    if comps["Glove"] ~= -1 then
        loadComponent(PlayerPedId(), comps["Glove"], "Glove")
    end
    if comps["RingRh"] ~= -1 then
        loadComponent(PlayerPedId(), comps["RingRh"], "RingRh")
    end
	if comps["RingLh"] ~= -1 then
        loadComponent(PlayerPedId(), comps["RingLh"], "RingLh")
    end
    if comps["Bracelet"] ~= -1 then
        loadComponent(PlayerPedId(), comps["Bracelet"], "Bracelet")
    end
    if comps["Buckle"] ~= -1 then
        loadComponent(PlayerPedId(), comps["Buckle"], "Buckle")
    end
    if comps["Chap"] ~= -1 then
        loadComponent(PlayerPedId(), comps["Chap"], "Chap")
    end
    if comps["Skirt"] ~= -1 then
        loadComponent(PlayerPedId(), comps["Skirt"], "Skirt")
    end
    if comps["Pant"] == -1 then
        loadComponent(PlayerPedId(), playerSkinTable["LegsType"], "Legs")
    else
        loadComponent(PlayerPedId(), comps["Pant"], "Pant")
    end
    if comps["Boots"] ~= -1 then
        loadComponent(PlayerPedId(), comps["Boots"], "Boots")
    end 
    if comps["Spurs"] ~= -1 then
        loadComponent(PlayerPedId(), comps["Spurs"], "Spurs")
    end
    if comps["Spats"] ~= -1 then
        loadComponent(PlayerPedId(), comps["Spats"], "Spats")
    end
    if comps["Gauntlets"] ~= -1 then
        loadComponent(PlayerPedId(), comps["Gauntlets"], "Gauntlets")
    end
    if comps["Loadouts"] ~= -1 then
        loadComponent(PlayerPedId(), comps["Loadouts"], "Loadouts")
    end
    if comps["Accessories"] ~= -1 then
        loadComponent(PlayerPedId(), comps["Accessories"], "Accessories")
    end
    if comps["Belt"] ~= -1 then
        loadComponent(PlayerPedId(), comps["Belt"], "Belt")
    end
    if comps["Gunbelt"] ~= -1 then
        loadComponent(PlayerPedId(), comps["Gunbelt"], "Gunbelt")
    end
    if comps["GunbeltAccs"] ~= -1 then
        loadComponent(PlayerPedId(), comps["GunbeltAccs"], "GunbeltAccs")
    end
    if comps["Satchels"] ~= -1 then
        loadComponent(PlayerPedId(), comps["Satchels"], "Satchels")
    end
    if comps["Holster"] ~= -1 then
        loadComponent(PlayerPedId(), comps["Holster"], "Holster")
    end
    if comps["Armor"] ~= -1 and comps["Armor"] ~= nil then
        loadComponent(PlayerPedId(), comps["Armor"], "Armor")
    end
    if comps["Dresses"] ~= -1 and comps["Dresses"] ~= nil then
        loadComponent(PlayerPedId(), comps["Dresses"], "Dresses")
    end
end)


function loadComponent(ped, hash_for_load)
    local readyLoad = false
    Citizen.InvokeNative(0xD3A7B003ED343FD9, ped, hash_for_load, false, true, true)
	local timeout = 1
    while readyLoad == false do
		timeout = timeout + 1
        readyLoad = Citizen.InvokeNative(0xA0BC8FAED8CFEB3C, ped)
		if timeout > 10 then
			break
		end
        Wait(0)
    end
    return true
end

RegisterNUICallback('manageAccess', function(data, cb)
    api.getAnswer( ""..Config.Language[390].text.."", ""..Config.Language[391].text.."", ""..Config.Language[392].text.."", function(cb)
        local answer = cb
        if answer == true then
            api.getInput( ""..Config.Language[53].text.."", ""..Config.Language[276].text.."", function(cb)
                local playerId = tonumber(cb)
                if playerId ~= 0 and playerId ~= 'close' and playerId ~= nil then
                    if data.cart == "true" then
                        TriggerServerEvent("gum_stables:update_access", NetworkGetNetworkIdFromEntity(yourCartEntity), playerId, 0)
                    else
                        TriggerServerEvent("gum_stables:update_access", NetworkGetNetworkIdFromEntity(yourHorseEntity), playerId, 0)
                    end
                end
            end)                
        else
            api.getInput( ""..Config.Language[53].text.."", ""..Config.Language[276].text.."", function(cb)
                local playerId = tonumber(cb)
                if playerId ~= 0 and playerId ~= 'close' and playerId ~= nil then
                    if data.cart == "true" then
                        TriggerServerEvent("gum_stables:update_access", NetworkGetNetworkIdFromEntity(yourCartEntity), playerId, 1)
                    else
                        TriggerServerEvent("gum_stables:update_access", NetworkGetNetworkIdFromEntity(yourHorseEntity), playerId, 1)
                    end
                end
            end)
        end
    end)
end)

RegisterNUICallback('manageClothe', function(data, cb)
    api.getAnswer( ""..Config.Language[393].text.."", ""..Config.Language[394].text.."", ""..Config.Language[395].text.."", function(cb)
        local answer = cb
        if answer == true then
            api.getAnswer( ""..Config.Language[396].text.."", ""..Config.Language[397].text.."", ""..Config.Language[398].text.."", function(cb)
                local answer = cb
                if answer == true then
                    TriggerServerEvent("gum_stables:useClothe", data.id, 1)
                else
                    api.getInput( ""..Config.Language[398].text.."", ""..Config.Language[399].text.."", function(cb)
                        local clotheId = tonumber(cb)
                        if clotheId ~= 0 and clotheId ~= 'close' and clotheId ~= nil then
                            TriggerServerEvent("gum_stables:changeClothe", data.id, 1, clotheId)
                        end
                    end)
                end
            end)
        else
            api.getAnswer( ""..Config.Language[396].text.."", ""..Config.Language[397].text.."", ""..Config.Language[398].text.."", function(cb)
                local answer = cb
                if answer == true then
                    TriggerServerEvent("gum_stables:useClothe", data.id, 2)
                else
                    api.getInput( ""..Config.Language[398].text.."", ""..Config.Language[399].text.."", function(cb)
                        local clotheId = tonumber(cb)
                        if clotheId ~= 0 and clotheId ~= 'close' and clotheId ~= nil then
                            TriggerServerEvent("gum_stables:changeClothe", data.id, 2, clotheId)
                        end
                    end)
                end
            end)
        end
    end)
end)

RegisterNUICallback('showHorseSS', function(data, cb)
    local category = ""
    local oldHorseModel = 0
    if entityPreview[1] == nil then
        for k,v in pairs(editedHorseStoreTable) do
            if v.colorName == data.horse and v.category == data.category then
                category = v.category
                horse = k
            end
        end
        for k,v in pairs(editedHorseStoreTable) do
            if category == v.category then
                if horse == k then
                    oldHorseModel = k
                end
            end
        end
        local existInTable = false
        for k,v in pairs(editedHorseStoreTable) do
            if category == v.category then
                if k == old_horse then
                    existInTable = true
                    SendNUIMessage({type = "change_horse", horse=v.data[2], category=category, money=v.data[4], gold=v.data[5],storage=v.data[6]})
                    if GetEntityModel(horse_preview) ~= GetHashKey(v.data[1]) then
                        showHorseStore(v.data[1], v.data[3], v.data[2], category)
                    end
                end
            end
        end
    end
end)

local checkCategoryShop = ""
local shopTable = {}
RegisterNUICallback('right_horse', function(data, cb)
    if not antiSpam then
        antiSpam = true
        local counter = 0
        for k, v in pairs(editedHorseStoreTable) do
            if v.category == data.category then
                if data.category ~= checkCategoryShop then
                    checkCategoryShop = data.category
                    shopTable = {}
                end
                counter = counter + 1
                shopTable[counter] = v
            end
        end

        local newHorseModel = 1
        for i, v in ipairs(shopTable) do
            if v.colorName == data.horse then
                newHorseModel = i+1
                if newHorseModel > #shopTable then
                    newHorseModel = 1
                end
                break
            end
        end
        local newHorseData = shopTable[newHorseModel]
        SendNUIMessage({type = "change_horse",horse = newHorseData.colorName,category = newHorseData.category,money = newHorseData.dollarPrice,gold = newHorseData.goldPrice,storage = newHorseData.storageSlot,})
        showHorseStore(newHorseData.model, newHorseData.state, newHorseData.colorName, newHorseData.category, newHorseData.horseStats)
    end
end)


RegisterNUICallback('left_horse', function(data, cb)
    if antiSpam == false then
        antiSpam = true
        local shopTable = {}
        local newHorseModel = 0
        local counter = 0
        for k, v in pairs(editedHorseStoreTable) do
            if v.category == data.category then
                if data.category ~= checkCategoryShop then
                    checkCategoryShop = data.category
                    shopTable = {}
                end
                counter = counter + 1
                shopTable[counter] = v
            end
        end
        for k,v in pairs(shopTable) do
            if v.colorName == data.horse then
                newHorseModel = k-1
                if newHorseModel == 0 then
                    newHorseModel = #shopTable
                end
                break
            end
        end
        for k,v in pairs(shopTable) do
            if k == newHorseModel then
                SendNUIMessage({type = "change_horse",horse = v.colorName,category = v.category,money = v.dollarPrice,gold = v.goldPrice,storage = v.storageSlot,})
                showHorseStore(v.model, v.state, v.colorName, v.category, v.horseStats)
            end
        end
    end
end)

exports('getStables', function()
    return Config.CityStablesHorse, Config.CityStablesWagon, Config.CallFromStableHorse, Config.CallFromStableCart, allYourHorses, allYourCarts
end)

RegisterNetEvent('gum_stables:send_horses_data_company')
AddEventHandler('gum_stables:send_horses_data_company', function(table_horse, table_comp, table_wagon, table_breed, job, identifier, createAfterLogin, isRegistered, company)
	yourHorses = table_horse
    yourCarts = table_wagon
    yourBreedHorses = table_breed
    yourJob = job
    openCompanyStablePosition = company

    if isRegistered then
        yourJob = isRegistered
    end
    loadPermissions()
    for k,v in pairs(yourHorses) do
        yourHorseCount = k
    end
    for k,v in pairs(yourCarts) do
        yourCartCount = k
    end
    allYourHorses = {}
    allYourCarts = {}
    for a,b in pairs(yourHorses) do
        table.insert(allYourHorses, b)
    end
    for a,b in pairs(yourCarts) do
        table.insert(allYourCarts, b)
    end

    SetNuiFocus(true, true)

    activeCamera = true
    editedHorseStoreTable = {}
    editedCartStoreTable = {}
    allYourHorses = {}
    allYourCarts = {}
    yourHorseCount = 0
    yourCartCount = 0
    for a,b in pairs(yourHorses) do
        yourHorseCount = yourHorseCount + 1
        table.insert(allYourHorses, b)
    end
    for a,b in pairs(yourCarts) do
        yourCartCount = yourCartCount + 1
        table.insert(allYourCarts, b)
    end

    local newTableHorseFilter = yourHorses
    local newTableCartFilter = yourCarts
     for k,v in pairs(Config.Horses) do
        for k2,v2 in pairs(v) do
            if type(yourJob) == "table" then
                for c,d in pairs(yourJob) do
                    for e,f in pairs(v2.jobForBuy) do
                        if d.job == f and d.job ~= Config.UnemployedJob and v.enabled and v2.groupForBuy[1] == "none" then
                            if v2.dollarPrice < 50 then
                                editedHorseStoreTable[k2..v2.colorName] = {state=1, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                            elseif v2.dollarPrice < 150 then
                                editedHorseStoreTable[k2..v2.colorName] = {state=2, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                            elseif v2.dollarPrice < 250 then
                                editedHorseStoreTable[k2..v2.colorName] = {state=3, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                            else
                                editedHorseStoreTable[k2..v2.colorName] = {state=4, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                            end
                        end
                    end
                end
            else
                for e,f in pairs(v2.jobForBuy) do
                    if yourJob == f and yourJob ~= Config.UnemployedJob and v.enabled and v2.groupForBuy[1] == "none" then
                        if v2.dollarPrice < 50 then
                            editedHorseStoreTable[k2..v2.colorName] = {state=1, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                        elseif v2.dollarPrice < 150 then
                            editedHorseStoreTable[k2..v2.colorName] = {state=2, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                        elseif v2.dollarPrice < 250 then
                            editedHorseStoreTable[k2..v2.colorName] = {state=3, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                        else
                            editedHorseStoreTable[k2..v2.colorName] = {state=4, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                        end
                    end
                end
            end
            for e,f in pairs(v2.jobForBuy) do
                if Config.UnemployedJob == f and v.enabled and v2.groupForBuy[1] == "none" then
                    if v2.dollarPrice < 50 then
                        editedHorseStoreTable[k2..v2.colorName] = {state=1, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                    elseif v2.dollarPrice < 150 then
                        editedHorseStoreTable[k2..v2.colorName] = {state=2, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                    elseif v2.dollarPrice < 250 then
                        editedHorseStoreTable[k2..v2.colorName] = {state=3, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                    else
                        editedHorseStoreTable[k2..v2.colorName] = {state=4, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                    end
                end
            end
            if v2.groupForBuy[1] ~= "none" then
                for e,f in pairs(v2.groupForBuy) do
                    if f == yourGroup then
                        if v2.dollarPrice < 50 then
                            editedHorseStoreTable[k2..v2.colorName] = {state=1, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                        elseif v2.dollarPrice < 150 then
                            editedHorseStoreTable[k2..v2.colorName] = {state=2, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                        elseif v2.dollarPrice < 250 then
                            editedHorseStoreTable[k2..v2.colorName] = {state=3, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                        else
                            editedHorseStoreTable[k2..v2.colorName] = {state=4, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                        end
                    end
                end
            end
        end
    end
    horseTableWithoutCat = {}
    for k,v in pairs(Config.Horses) do
        for k2,v2 in pairs(v) do
            horseTableWithoutCat[GetHashKey(k2)] = {model=k2, colorName=k.." "..v2.colorName, dollarPrice=v2.dollarPrice, storageSlot=v2.storageSlot, peltStorage=v2.peltStorage, sellPrice=v2.sellPrice, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
        end
    end
    for k,v in pairs(Config.Wagons) do
        editedCartStoreTable[k] = {category=k, model=k, name=v.name, dollarPrice=v.dollarPrice, goldPrice=v.goldPrice, storageSlot=v.storageSlot, jobForBuy=v.jobForBuy}
    end
    startCamera()
    local newStableSystem = {}
    for k,v in pairs(Config.SpotsForStable) do
        newStableSystem[k] = v.blipSetting.blipStablesName
    end
    local newSpotsSystem = {}
    for k,v in pairs(Config.SpotForTakeCd) do
        newSpotsSystem[k] = v.blipSetting.blipName
    end
    SendNUIMessage({type = "open_stable", allYourCarts=allYourCarts, allYourHorses=allYourHorses, canTransfer=Config.TransferEnable, stablesInfo=newStableSystem, spotsInfo=newSpotsSystem, status=true, horses = editedHorseStoreTable, carts=editedCartStoreTable, myhorses=newTableHorseFilter, mywagon=newTableCartFilter, mybreed=yourBreedHorses, gold_enable=Config.GoldRol, language=Config.Language, callHorse=Config.CallFromStableHorse, callCart=Config.CallFromStableCart, callMeFrom=Config.SpotForTake, callMeHorseStable=Config.CityStablesHorse, callMeCartStable=Config.CityStablesWagon, fixBreed=Config.FixBrainerItem, isTrainer=canTrain, fixFemale=Config.FemaleFixToo, isBreeder=isBreeder, company=true, canColorHorse=canColorHorse})
    SendNUIMessage({type = "comp_preload", blankets=#allBlankets,  saddles=#allSaddles, horns=#allHorns, stirrups=#allStirrups, bags=#allBags, bedrolls=#allBedrols, lantern=#allLantern, accessories=#allMasks, tails=#allTails, manes=#allManes, mustaches=#allMustaches, holsters=#allHolsters, bridles=#allBridles, propsData=#propsDatas})

end)

RegisterNetEvent('gum_stables:send_horses_data_nw')
AddEventHandler('gum_stables:send_horses_data_nw', function(table_horse, table_comp, table_wagon, table_breed, job, identifier, createAfterLogin, isRegistered, isGroup)
	yourHorses = table_horse
    yourCarts = table_wagon
    yourBreedHorses = table_breed
    yourJob = job
    if isGroup ~= nil then
        yourGroup = isGroup
    end
    if isRegistered then
        yourJob = isRegistered
    end
    loadPermissions()
    for k,v in pairs(yourHorses) do
        yourHorseCount = k
    end
    for k,v in pairs(yourCarts) do
        yourCartCount = k
    end

    allYourHorses = {}
    allYourCarts = {}
    for a,b in pairs(yourHorses) do
        table.insert(allYourHorses, b)
    end
    for a,b in pairs(yourCarts) do
        table.insert(allYourCarts, b)
    end
    for a,b in pairs(createAfterLogin) do
        if b[5] == true then
            if Config.RespawnAfterLoginHorse then
                for c,d in pairs(allYourHorses) do
                    if tonumber(d.id) == tonumber(a) then
                        if b[1] ~= nil and b[1] ~= 0.0 and b[1] ~= 0 and b[1] ~= "0.0" then
                            local coords = GetEntityCoords(PlayerPedId())
                            local dist = GetDistanceBetweenCoords(coords.x, coords.y, coords.z, b[1], b[2], b[3], false)
                            if dist < 100.0 then
                                initiateHorse(d.model, d.id, b[1], b[2], b[3], b[4], true)
                            end
                        end
                    end
                end
            end
        else
            if Config.RespawnAfterLoginCart then
                for c,d in pairs(allYourCarts) do
                    if tonumber(d.id) == tonumber(a) then
                        if b[1] ~= nil and b[1] ~= 0.0 and b[1] ~= 0 and b[1] ~= "0.0" then
                            local coords = GetEntityCoords(PlayerPedId())
                            local dist = GetDistanceBetweenCoords(coords.x, coords.y, coords.z, b[1], b[2], b[3], false)
                            if dist < 100.0 then
                                initiateCart(d.model, d.id, b[1], b[2]+1.0, b[3], b[4], true)
                            end
                        end
                    end
                end
            end
        end
    end
end)
function loadPermissions()
    canManage,canTrain,canTame,canBreed,canShoe,canAccess,canRepair,canHeal,canCleanHoof = false,false,false,false,false,false,false,false,false
    maxAllowedHorses,maxAllowedCarts,maxAllowedBreed = 0,0,0
    for a,b in pairs(Config.Jobs) do
        if a == "unemployed" then
            if b.canManage then     canManage = true end
            if b.canTrain then      canTrain = true end
            if b.canTraining then      canTraining = true end
            if b.canTrainFriendly then      canTrainFriendly = true end
            if b.canTrainCourage then      canTrainCourage = true end
            if b.canTame then       canTame = true end
            if b.canBreed then      canBreed = true end
            if b.canShoe then       canShoe = true end
            if b.canAccess then     canAccess = true end
            if b.canRepair then     canRepair = true end
            if b.canHeal then       canHeal = true end
            if b.canCleanHoof then  canCleanHoof = true end
            if b.canColorHorse then  canColorHorse = true end
            boostExp = b.boostExp
            maxAllowedBreed = b.breedCount
            maxAllowedCarts = b.cartCount
            maxAllowedHorses = b.horseCount
        end
    end
    Citizen.Wait(0)
    for a,b in pairs(Config.Jobs) do
        if a ~= "unemployed" and jobCheck(a) then
            if b.canTraining then      canTraining = true end
            if b.canTrainFriendly then      canTrainFriendly = true end
            if b.canTrainCourage then      canTrainCourage = true end
            if b.canManage then     canManage = true end
            if b.canTrain then      canTrain = true end
            if b.canTame then       canTame = true end
            if b.canBreed then      canBreed = true end
            if b.canShoe then       canShoe = true end
            if b.canAccess then     canAccess = true end
            if b.canRepair then     canRepair = true end
            if b.canHeal then       canHeal = true end
            if b.canCleanHoof then  canCleanHoof = true end
            if b.canColorHorse then  canColorHorse = true end
            boostExp = b.boostExp
            maxAllowedBreed = b.breedCount
            maxAllowedCarts = b.cartCount
            maxAllowedHorses = b.horseCount
        end
    end

end
RegisterNetEvent('gum_stables:send_horse_breed_list')
AddEventHandler('gum_stables:send_horse_breed_list', function(tablesss)
	yourBreedHorses = tablesss
end)

RegisterNUICallback('manicomponents', function(data, cb)
    if not Citizen.InvokeNative(0xFB4891BD7578CDC1, yourHorseEntity, horseComponentTable[data.comp][1]) then
        setClothOnHorse(yourHorseEntity, tonumber(data.hash))
    else
        removeClothFromHorse(yourHorseEntity, horseComponentTable[data.comp][1])
    end
end)

function setClothOnHorse(ped, hash)
    local readyLoad = false
    if not HasModelLoaded(GetHashKey(hash)) then
        Citizen.InvokeNative(0xFA28FE3A6246FC30, GetHashKey(hash))
    end
    Citizen.InvokeNative(0xD3A7B003ED343FD9, ped, hash, true, true, true)    
    local iterationCount = 0
    while readyLoad == false do
        readyLoad = Citizen.InvokeNative(0xA0BC8FAED8CFEB3C, ped)
        if not DoesEntityExist(ped) then
            break
        end
        iterationCount = iterationCount + 1
        if iterationCount >= 100 then
            break
        end
        Wait(0)
    end
    Citizen.InvokeNative(0x704C908E9C405136, ped)
    Citizen.InvokeNative(0xCC8CA3E88256E58F, ped, 0, 1, 1, 1, 0)
    return true
end

function removeClothFromHorse(ped, hash)
    Citizen.InvokeNative(0xD710A5007C2AC539, ped, tonumber(hash), 0)
    Citizen.InvokeNative(0xCC8CA3E88256E58F, ped,  0, 1, 1, 1, 0)
end


function showHorseStore(model, state, name, category, stats)
    SendNUIMessage({type = 'cameraInteract'})
    api.deletePed(entityPreview[1])
    api.deletePed(entityPreview[2])
    while DoesEntityExist(entityPreview[1]) do
        Wait(0)
    end
    local hoofModel = model
    local match = string.match(model, "%w*01%w*")
    if not match then
        model = string.gsub(model, "%d+", "")
    end

    loadModel(model)
    if openCompanyStablePosition == 0 then
        for k,v in pairs(Config.SpotsForStable) do
            if k == openStablePosition then
                entityPreview[1] = CreatePed(GetHashKey(model), v.spawnSetting.spawnStore[1], v.spawnSetting.spawnStore[2], v.spawnSetting.spawnStore[3], heading, false, false, 0, 0)
            end
        end
    else
        for k,v in pairs(Config.HorseCompany) do
            if k == openCompanyStablePosition then
                entityPreview[1] = CreatePed(GetHashKey(model), v.spawnSetting.spawnStore[1], v.spawnSetting.spawnStore[2], v.spawnSetting.spawnStore[3], heading, false, false, 0, 0)
            end
        end
    end
    existEntity(entityPreview[1])
    if openCompanyStablePosition == 0 then
        for k,v in pairs(Config.SpotsForStable) do
            if k == openStablePosition then
                local horseCoords = GetOffsetFromEntityInWorldCoords(entityPreview[1], -1.5, 0.0, -1.5)
                entityPreview[2] = CreatePed(GetHashKey(model), horseCoords.x, horseCoords.y, horseCoords.z, heading, false, false, 0, 0)
            end
        end
    else
        for k,v in pairs(Config.HorseCompany) do
            if k == openCompanyStablePosition then
                local horseCoords = GetOffsetFromEntityInWorldCoords(entityPreview[1], -1.5, 0.0, -1.5)
                entityPreview[2] = CreatePed(GetHashKey(model), horseCoords.x, horseCoords.y, horseCoords.z, heading, false, false, 0, 0)
            end
        end
    end
    existEntity(entityPreview[2])
    setHorseClean(entityPreview[2])
    setHorseClean(entityPreview[1])
    SetPedScale(entityPreview[2], 0.5)
    SetEntityCollision(entityPreview[1], false, false)
    SetEntityCollision(entityPreview[2], false, false)
    if horseTableWithoutCat[GetHashKey(hoofModel)] ~= nil then
        if horseTableWithoutCat[GetHashKey(hoofModel)].fireHooves then
            SetPedConfigFlag(entityPreview[1], 207, true)
            SetPedConfigFlag(entityPreview[2], 207, true)
        end
    end
    Citizen.Wait(150)
    if Config.InteractibleCamera and entityPreview[1] then
        startCameraMovable()
    end
    loadColorOnHorseStore(name, category)
    loadColorOnHorseStore(name, category)
    cleanDirty(entityPreview[1])
    cleanDirty(entityPreview[2])
    if horseTableWithoutCat[GetEntityModel(entityPreview[1])] ~= nil then
        if horseTableWithoutCat[GetEntityModel(entityPreview[1])].horseStats ~= nil then
            SetAttributeBaseRank(entityPreview[1], 4, tonumber(horseTableWithoutCat[GetEntityModel(entityPreview[1])].horseStats[3]))
            SetAttributeBaseRank(entityPreview[1], 5, tonumber(horseTableWithoutCat[GetEntityModel(entityPreview[1])].horseStats[2]))
            SetAttributeBaseRank(entityPreview[1], 6, tonumber(horseTableWithoutCat[GetEntityModel(entityPreview[1])].horseStats[1]))
        end
    end
    Citizen.Wait(150)
    SendNUIMessage({type = "change_state", agi=GetAttributeBaseRank(entityPreview[1], 4), acc= GetAttributeBaseRank(entityPreview[1], 6), sp=GetAttributeBaseRank(entityPreview[1], 5), st=state})
    antiSpam = false
end

function loadColorOnHorseStore(name, category)
    for k,v in pairs(Config.Horses) do
        if category == k then
            for c,d in pairs(v) do
                if name == d.colorName then
                    if d.horseBodyHeadColor ~= nil then
                        loadColor(d.horseBodyHeadColor[1], d.horseBodyHeadColor[2], d.horseBodyHeadColor[3], d.horseBodyHeadColor[4], true)
                    end
                    if d.horseTailManesColor ~= nil then
                        loadColor(d.horseTailManesColor[1], d.horseTailManesColor[2], d.horseTailManesColor[3], d.horseTailManesColor[4])
                    end
                end
            end
        end
    end
end


function cleanDirty(ped)
    ClearPedEnvDirt(ped)
    ClearPedDamageDecalByZone(ped ,10 ,"ALL")
    ClearPedBloodDamage(ped)
end

function showCartStore(model)
    SendNUIMessage({type = 'cameraInteract'})
    api.deleteObj(entityPreview[1])
    loadModel(GetHashKey(model))
    if openCompanyStablePosition == 0 then
        for k,v in pairs(Config.SpotsForStable) do
            if k == openStablePosition then
                entityPreview[1] = CreateVehicle(GetHashKey(model), v.spawnSetting.spawnStore[1], v.spawnSetting.spawnStore[2], v.spawnSetting.spawnStore[3], heading, false, false, 0, 0)
            end
        end
    else
        for k,v in pairs(Config.HorseCompany) do
            if k == openCompanyStablePosition then
                entityPreview[1] = CreateVehicle(GetHashKey(model), v.spawnSetting.spawnStore[1], v.spawnSetting.spawnStore[2], v.spawnSetting.spawnStore[3], heading, false, false, 0, 0)
            end
        end
    end
    FreezeEntityPosition(entityPreview[1], true)
    existEntity(entityPreview[1])
    setHorseClean(entityPreview[1])
    Citizen.Wait(150)
    if Config.InteractibleCamera and entityPreview[1] then
        startCameraMovable()
    end
    antiSpam = false
end

function getYourHorse()
    return yourHorseEntity
end

function showMyCart(model, id, horses)
    SendNUIMessage({type = 'cameraInteract'})
    api.deleteObj(entityPreview[1])
    loadModel(GetHashKey(model))
    if openCompanyStablePosition == 0 then
        for k,v in pairs(Config.SpotsForStable) do
            if k == openStablePosition then
                entityPreview[1] = CreateVehicle(GetHashKey(model), v.spawnSetting.spawnStore[1], v.spawnSetting.spawnStore[2], v.spawnSetting.spawnStore[3], heading, false, false, 0, 0)
            end
        end
    else
        for k,v in pairs(Config.HorseCompany) do
            if k == openCompanyStablePosition then
                entityPreview[1] = CreateVehicle(GetHashKey(model), v.spawnSetting.spawnStore[1], v.spawnSetting.spawnStore[2], v.spawnSetting.spawnStore[3], heading, false, false, 0, 0)
            end
        end
    end
    FreezeEntityPosition(entityPreview[1], true)
    existEntity(entityPreview[1])
    loadCartComponent(entityPreview[1], id, nil, horses)
    Citizen.Wait(150)
    if Config.InteractibleCamera and entityPreview[1] then
        startCameraMovable()
    end
    antiSpam = false
end

function loadHorseComponent(entity, id)
    for a,b in pairs(yourHorses) do
        if b.id == id then
            yourHorseExp = b.exp
            if b.age ~= Config.Language[417].text then
                for i = 1, 5 do
                    if i >= tonumber(b.age) then
                        SetPedScale(entity, 0.5 + (i * 0.1))
                        break
                    end
                end
            end
            if tostring(b.sex) == ""..Config.Language[68].text.."" then
                Citizen.InvokeNative(0x5653AB26C82938CF, entity, 41611, 1.0)
                UpdatePedVariation(entity)
            else
                Citizen.InvokeNative(0x5653AB26C82938CF, entity, 41611, 0.0)
                UpdatePedVariation(entity)
            end
            if tostring(b.sex) == ""..Config.Language[68].text.."" then
                if breed == ""..Config.Language[216].text.."" then
                    Citizen.InvokeNative(0x1902C4CFCC5BE57C, entity, tonumber(0xEB76D635))
                    Citizen.InvokeNative(0xCC8CA3E88256E58F, entity, false, true, true, true, false)
                end
            end

            local turnImage = 0
            local speedImage = 0
            local accelerationImage = 0
            local state_table = json.decode(b.state)
            for k,v in pairs(state_table) do
                turnImage = tonumber(v.agility)
                speedImage = tonumber(v.speed)
                accelerationImage = tonumber(v.acceleration)
            end
            if b.isdead ~= nil then
                if tonumber(b.isdead) >= 1 then
                    SetEntityHealth(entity, 0)
                end
            end

            for c,d in pairs(json.decode(b["components"])) do
                if c ~= "bridle" and c ~= "acshorn" then
                    setClothOnHorse(entity, tonumber(d))
                end
            end
            for c,d in pairs(json.decode(b["components"])) do
                if c == "bridle" or c == "acshorn" then
                    setClothOnHorse(entity, tonumber(d))
                end
            end
            loadYourColor(json.decode(b["components"]), entity)
            Citizen.Wait(0)
            if updateProps == nil then
                for c,d in pairs(json.decode(b["components"])) do
                    if c == 'propsData' then
                        Citizen.InvokeNative(0x1902C4CFCC5BE57C,entity, tonumber(propsDatas[tonumber(d)])) 
                        Citizen.InvokeNative(0xCC8CA3E88256E58F,entity, false, true, true, true, false)
                    end
                end
            end
            if b.courage == nil then
                b.courage = 0
            end
            yourHorseFriendly = b.friendly
            yourHorseCourage = b.courage

            local status = json.decode(b.status)
            if status.stamina == nil then
                status.stamina = 100
            end
            if status.health == nil then
                status.health = 100
            end
            if status.hoof == nil then
                status.hoof = 100
            end
            if status.dirt == nil then
                status.dirt = 0
            end
            setStatus(status.stamina, status.health, status.hoof, status.dirt)
            if horseTableWithoutCat[GetEntityModel(entity)].horseStats ~= nil then
                SetAttributeBaseRank(entity, 4, tonumber(horseTableWithoutCat[GetEntityModel(entity)].horseStats[3]))
                SetAttributeBaseRank(entity, 5, tonumber(horseTableWithoutCat[GetEntityModel(entity)].horseStats[2]))
                SetAttributeBaseRank(entity, 6, tonumber(horseTableWithoutCat[GetEntityModel(entity)].horseStats[1]))
            end
            Citizen.Wait(0)
            local imageTurn = GetAttributeBaseRank(entity, 4)
            local imageSpeed = GetAttributeBaseRank(entity, 5)
            local imageAcceleration = GetAttributeBaseRank(entity, 6)
            imageTurn = imageTurn+turnImage
            imageSpeed = imageSpeed+speedImage
            imageAcceleration = imageAcceleration+accelerationImage
            SetAttributeBaseRank(entity, 3, tonumber(b.courage))
            SetAttributeBaseRank(entity, 2, tonumber(b.courage))
            SetAttributePoints(entity, 4, tonumber(math.floor(imageTurn*85)))
            SetAttributePoints(entity, 5, tonumber(math.floor(imageTurn*85)))
            SetAttributePoints(entity, 6, tonumber(math.floor(imageTurn*85)))
            SetAttributeBaseRank(entity, 4, tonumber(imageTurn)-1)
            SetAttributeBaseRank(entity, 5, tonumber(imageSpeed)-1)
            SetAttributeBaseRank(entity, 6, tonumber(imageAcceleration)-1)
            if b.age ~= Config.Language[417].text then
                if tonumber(b.age) <= 4.75 then
                    SetPedConfigFlag(entity, 136, true)
                end
                if 1 >= tonumber(b.age) then
                    SetPedScale(entity, 0.600)
                elseif 2 >= tonumber(b.age) then
                    SetPedScale(entity, 0.650)
                elseif 3 >= tonumber(b.age) then
                    SetPedScale(entity, 0.700)
                elseif 4 >= tonumber(b.age) then
                    SetPedScale(entity, 0.800)
                elseif 5 >= tonumber(b.age) then
                    SetPedScale(entity, 0.900)
                end
            end
            SetAttributePoints(entity, 7, tonumber(math.floor(yourHorseExp)))
            if Config.AllHaveSameStats then
                SetAttributePoints(entity, 0, tonumber(math.floor(yourHorseExp)))
                SetAttributePoints(entity, 1, tonumber(math.floor(yourHorseExp)))
            end
            SendNUIMessage({type = "send_default_state", agi=imageTurn, acc=imageAcceleration, sp=imageSpeed})
            SendNUIMessage({type = "change_state", agi=imageTurn, acc=imageAcceleration, sp=imageSpeed})
            if horseTableWithoutCat[GetHashKey(b.model)].fireHooves then
                SetPedConfigFlag(entity, 207, true)
            end

        end
    end
end

function loadCartComponent(entity, id, notStore, value)
    for k,v in pairs(yourCarts) do
        if tonumber(id) == tonumber(v.id) then
            if value == nil then
                Citizen.InvokeNative(0x8C6D9A399126C194, entity, tonumber(v.horses))
            else
                Citizen.InvokeNative(0x8C6D9A399126C194, entity, tonumber(value))
            end
            if Config.AffectDamageToCart then
                SetEntityHealth(entity, tonumber(v.health_cart))
            end

            local animals = json.decode(v.animals)
            Citizen.InvokeNative(0x31F343383F19C987, entity, tonumber(#animals/2/100), 1) 
            Citizen.Wait(0)
            if v.comp_propset ~= "none" then
                Citizen.InvokeNative(0x75F90E4051CC084C, entity, GetHashKey(v.comp_propset))
                Citizen.InvokeNative(0x31F343383F19C987, entity, 1.0, 1)
                Citizen.InvokeNative(0x7264F9CA87A9830B, entity)
                Citizen.InvokeNative(0xD798DF5DB67B1659, entity)
            end
            Citizen.InvokeNative(0x8268B098F6FCA4E2, entity, tonumber(v["comp_tints"]))
            Citizen.InvokeNative(0xF89D82A0582E46ED, entity, tonumber(v["comp_liveries"]))
            for i=1,20 do
                if i ~= nil then
                    if tonumber(json.decode(v["comp_extras"])[tostring(i)]) == 0 then
                        Citizen.InvokeNative(0xBB6F89150BC9D16B, entity, i, 0)
                    end
                    if tonumber(json.decode(v["comp_extras"])[tostring(i)]) == 1 then
                        Citizen.InvokeNative(0xBB6F89150BC9D16B, entity, i, 1)
                    end
                end
            end
            if v["model"] == "logwagon" then
                local empty = false
                for x,z in pairs(json.decode(v.addonArray)) do
                    if z ~= 0 then
                        empty = true
                    end
                end
                if empty == true then
                    Citizen.InvokeNative(0x75F90E4051CC084C, entity, 0)
                    Citizen.Wait(5)
                    Citizen.InvokeNative(0x75F90E4051CC084C, entity, GetHashKey("pg_veh_logwagon_1"))
                    Citizen.InvokeNative(0x31F343383F19C987, entity, 1.0, 1)
                end
            end
            if v["model"] == "coal_wagon" then
                local empty = false
                for x,z in pairs(json.decode(v.addonArray)) do
                    if z ~= 0 then
                        empty = true
                    end
                end
                if empty == true then
                    Citizen.InvokeNative(0x75F90E4051CC084C, entity, 0)
                    Citizen.Wait(5)
                    Citizen.InvokeNative(0x75F90E4051CC084C, entity, GetHashKey("pg_delivery_Coal01x"))
                    Citizen.InvokeNative(0x31F343383F19C987, entity, 1.0, 1)
                end
            end
            if v["model"] == "huntercart01" then
                Citizen.InvokeNative(0x75F90E4051CC084C, entity, GetHashKey("pg_mp005_huntingWagonTarp01"))
                Citizen.InvokeNative(0x31F343383F19C987, entity, tonumber(0.0), 1) 
            end
            Citizen.InvokeNative(0xC0F0417A90402742, entity, GetHashKey(v["comp_lantern"]))
            Citizen.Wait(0)
            for a,b in pairs(json.decode(v.damage_wheel)) do
                Citizen.InvokeNative(0xd4f5efb55769d272, entity, b)
            end




            if GetEntityModel(yourCartEntity) == GetHashKey("logwagon") then
                local empty = false
                for x,z in pairs(json.decode(v.addonArray)) do
                    if tonumber(z) ~= 0 then
                        empty = true
                    end
                end
                if empty == true then
                    Citizen.InvokeNative(0x75F90E4051CC084C, yourCartEntity, 0)
                    Citizen.Wait(5)
                    Citizen.InvokeNative(0x75F90E4051CC084C, yourCartEntity, GetHashKey("pg_veh_logwagon_1"))
                    Citizen.InvokeNative(0x31F343383F19C987, yourCartEntity, 1.0, 1)
                else
                    Citizen.InvokeNative(0x75F90E4051CC084C, yourCartEntity, 0)
                end
            end
            if GetEntityModel(yourCartEntity) == GetHashKey("coal_wagon") then
                local empty = false
                for x,z in pairs(json.decode(v.addonArray)) do
                    if tonumber(z) ~= 0 then
                        empty = true
                    end
                end
                if empty == true then
                    Citizen.InvokeNative(0x75F90E4051CC084C, yourCartEntity, 0)
                    Citizen.Wait(5)
                    Citizen.InvokeNative(0x75F90E4051CC084C, yourCartEntity, GetHashKey("pg_delivery_Coal01x"))
                    Citizen.InvokeNative(0x31F343383F19C987, yourCartEntity, 1.0, 1)
                else
                    Citizen.InvokeNative(0x75F90E4051CC084C, yourCartEntity, 0)
                end
            end


        end
    end
    if not notStore then
        SetEntityCollision(entity, false, false)
        local getEntityCoords = GetEntityCoords(entity)
        for a,b in pairs(GetGamePool('CObject')) do
            local coords = GetEntityCoords(b)
            if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, getEntityCoords.x, getEntityCoords.y, getEntityCoords.z, false) < 6.0 then
                SetEntityCollision(b, false, false)
            end
        end
    end
    setHorseClean(entity, notStore)
    cleanDirty(entity)
end

function setHorseClean(ped, notStore)
    Citizen.InvokeNative(0x283978A15512B2FE, ped, true)
    SetPedAsGroupMember(ped, GetPedGroupIndex(PlayerPedId()))
    if not notStore then
        FreezeEntityPosition(ped, true)
        TaskStandStill(ped, -1)
        SetBlockingOfNonTemporaryEvents(ped,true)
    end
    SetEntityAsMissionEntity(ped, true, true)
    SetModelAsNoLongerNeeded(GetHashKey(model))
    ClearPedEnvDirt(ped)
    ClearPedDamageDecalByZone(ped ,10 ,"ALL")
    ClearPedBloodDamage(ped)
    if Config.AffectDirtyToCart then
        if (Citizen.InvokeNative(0x97F696ACA466B4E0, ped) == 1) then
            local healthCart = GetEntityHealth(ped)
            if healthCart > 600 then
                Citizen.InvokeNative(0x4D15E49764CB328A, ped, 0.0)
                Citizen.InvokeNative(0x758C3460EE915D0A, ped, 0.0)
                Citizen.InvokeNative(0xBAE0EEDF93F05EAA, ped, 0.0)
            elseif healthCart >= 500 and healthCart <= 600 then
                Citizen.InvokeNative(0x4D15E49764CB328A, ped, 0.2)
                Citizen.InvokeNative(0x758C3460EE915D0A, ped, 0.2)
                Citizen.InvokeNative(0xBAE0EEDF93F05EAA, ped, 0.2)
            elseif healthCart >= 400 and healthCart <= 500 then
                Citizen.InvokeNative(0x4D15E49764CB328A, ped, 0.4)
                Citizen.InvokeNative(0x758C3460EE915D0A, ped, 0.4)
                Citizen.InvokeNative(0xBAE0EEDF93F05EAA, ped, 0.4)
            elseif healthCart >= 300 and healthCart <= 400 then
                Citizen.InvokeNative(0x4D15E49764CB328A, ped, 0.6)
                Citizen.InvokeNative(0x758C3460EE915D0A, ped, 0.6)
                Citizen.InvokeNative(0xBAE0EEDF93F05EAA, ped, 0.6)
            elseif healthCart >= 200 and healthCart <= 300 then
                Citizen.InvokeNative(0x4D15E49764CB328A, ped, 0.8)
                Citizen.InvokeNative(0x758C3460EE915D0A, ped, 0.8)
                Citizen.InvokeNative(0xBAE0EEDF93F05EAA, ped, 0.8)
            elseif healthCart >= 100 and healthCart <= 200 then
                Citizen.InvokeNative(0x4D15E49764CB328A, ped, 0.9)
                Citizen.InvokeNative(0x758C3460EE915D0A, ped, 0.9)
                Citizen.InvokeNative(0xBAE0EEDF93F05EAA, ped, 0.9)
            elseif healthCart >= 0 and healthCart <= 100 then
                Citizen.InvokeNative(0x4D15E49764CB328A, ped, 1.0)
                Citizen.InvokeNative(0x758C3460EE915D0A, ped, 1.0)
                Citizen.InvokeNative(0xBAE0EEDF93F05EAA, ped, 1.0)
            end
        end
    end
end

function UpdatePedVariation(mount)
    return Citizen.InvokeNative(0xCC8CA3E88256E58F, mount , false, true, true, true, false)
end

Citizen.CreateThread(function()
    Citizen.Wait(1000)
    while true do
        local coords = GetEntityCoords(PlayerPedId())
        for a,b in pairs(Config.SpotsForStable) do
            if b.npcSetting.enabled then
                if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, b.npcSetting.coords[1], b.npcSetting.coords[2], b.npcSetting.coords[3], false) < 40.0  then
                    if b.npcSetting.useTime then
                        if GetClockHours() >= b.npcSetting.timeOpen and GetClockHours() < b.npcSetting.timeClose then
                            if npcsHorse["stable"][a] ~= nil then
                                TaskStandStill(npcsHorse["stable"][a], -1)
                            end
                            createNpc("stable", a, b.npcSetting.model, b.npcSetting.coords[1], b.npcSetting.coords[2], b.npcSetting.coords[3], b.npcSetting.coords[4])
                        else
                            despawnNpc("stable", a) 
                        end
                    else
                        createNpc("stable", a, b.npcSetting.model, b.npcSetting.coords[1], b.npcSetting.coords[2], b.npcSetting.coords[3], b.npcSetting.coords[4])
                    end
                else
                    despawnNpc("stable", a) 
                end
            end
        end

        for k,v in pairs(Config.SpotForTakeCd) do
            if v.npcSetting.enabled then
                if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, v.npcSetting.coords[1], v.npcSetting.coords[2], v.npcSetting.coords[3], false) < 40.0  then
                    createNpc("spot", k, v.npcSetting.model, v.npcSetting.coords[1], v.npcSetting.coords[2], v.npcSetting.coords[3], v.npcSetting.coords[4])
                else
                    despawnNpc("spot", k) 
                end
            end
        end
        for k,v in pairs(Config.BreederStore) do
            if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, v.coords[1], v.coords[2], v.coords[3], false) < 40.0  then
                createNpc("breed", k, v.npc, v.coords[1], v.coords[2], v.coords[3], v.coords[4])
            else
                despawnNpc("breed", k) 
            end
        end

        for k,v in pairs(Config.HorseCompany) do
            if v.npcSetting.enabled then
                if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, v.npcSetting.coords[1], v.npcSetting.coords[2], v.npcSetting.coords[3], false) < 40.0  then
                    createNpc("company", k, v.npcSetting.model, v.npcSetting.coords[1], v.npcSetting.coords[2], v.npcSetting.coords[3], v.npcSetting.coords[4])
                else
                    despawnNpc("company", k) 
                end
            end
        end

        if gainExpBlock > 0 then
            gainExpBlock = gainExpBlock - 1
        end
        if gainExpBlock < 0 then
            gainExpBlock = 0
        end

        if yourHorseCooldown > 0 then
            yourHorseCooldown = yourHorseCooldown - 1
        end
        if yourHorseCooldown < 0 then
            yourHorseCooldown = 0
        end
        if yourCartCooldown > 0 then
            yourCartCooldown = yourCartCooldown - 1
        end
        if yourCartCooldown < 0 then
            yourCartCooldown = 0
        end

        Citizen.Wait(1000)
    end
end)

function createNpc(typeNpc, count, model, x,y,z,h)
    if npcsMan[typeNpc][count] == nil then
        Citizen.CreateThread(function()
            if h == nil then
                h = 0.0
            end
            npcsMan[typeNpc][count] = false
            local npcSpawn = model
            loadModel(npcSpawn)
            local npcSpawnCode = CreatePed(GetHashKey(npcSpawn), x, y, z, h, false, false, 0, 0)
            existEntity(npcSpawnCode)
            Citizen.Wait(500)
            setHorseClean(npcSpawnCode)
            npcsMan[typeNpc][count] = npcSpawnCode
            if typeNpc == "stable" then
                TaskStartScenarioInPlace(npcSpawnCode, GetHashKey("WORLD_HUMAN_HORSE_TEND_BRUSH_LINK"), -1, true, false, false, false)
                local countNpc = 0
                for k,v in pairs(horseTableWithoutCat) do
                    countNpc = 1 + countNpc
                end
                local randomHorseAnim = math.random(1, countNpc)
                local countNpc = 0
                for a,b in pairs(horseTableWithoutCat) do
                    countNpc = 1 + countNpc
                    if countNpc == randomHorseAnim then
                        npcsHorse[typeNpc][count] = false
                        local npcSpawn = b.model
                        loadModel(npcSpawn)
                        local entityWorld = GetOffsetFromEntityInWorldCoords(npcsMan[typeNpc][count], 0.0, 0.8, 0.0-1.0)
                        local npcSpawnCode = CreatePed(GetHashKey(npcSpawn), entityWorld.x, entityWorld.y, entityWorld.z, h+90.0, false, false, 0, 0)
                        existEntity(npcSpawnCode)
                        Citizen.Wait(500)
                        setHorseClean(npcSpawnCode)
                        SetEntityCollision(npcSpawnCode, false, false)
                        npcsHorse[typeNpc][count] = npcSpawnCode
                        SetPedConfigFlag(npcSpawnCode, 136, true)
                        SetPedConfigFlag(npcSpawnCode, 26, true)
                    end
                end
            end
        end)
    end
    if npcsHorse[typeNpc][count] ~= nil and npcsHorse[typeNpc][count] ~= false then
        TaskStandStill(npcsHorse[typeNpc][count], -1)
    end
end

function despawnNpc(typeNpc, count) 
    if npcsMan[typeNpc] ~= nil then
        if npcsMan[typeNpc][count] ~= nil and npcsMan[typeNpc][count] ~= false then
            api.deletePed(npcsMan[typeNpc][count])
            npcsMan[typeNpc][count] = nil
        end
    end
    if npcsHorse[typeNpc] ~= nil then
        if npcsHorse[typeNpc][count] ~= nil and npcsMan[typeNpc][count] ~= false then
            api.deletePed(npcsHorse[typeNpc][count])
            npcsHorse[typeNpc][count] = nil
        end
    end
end

RegisterNUICallback('callCarts', function(data,cb)
    for k,v in pairs(yourCarts) do
        if v["id"] == tonumber(data.id) then
            if not antiSpam then
                closeMenu()
                TriggerEvent("gum_stables:fleeCart")
                antiSpam = true
                local x,y,z,h = 0,0,0,0
                if openCompanyStablePosition == 0 then
                    for k,v in pairs(Config.SpotsForStable) do
                        if k == openStablePosition then
                            x,y,z,h = v.spawnSetting.spawnCalled[1], v.spawnSetting.spawnCalled[2], v.spawnSetting.spawnCalled[3], v.spawnSetting.spawnCalled[4]
                        end
                    end
                else
                    for k,v in pairs(Config.HorseCompany) do
                        if k == openCompanyStablePosition then
                            x,y,z,h = v.spawnSetting.spawnCalled[1], v.spawnSetting.spawnCalled[2], v.spawnSetting.spawnCalled[3], v.spawnSetting.spawnCalled[4]
                        end
                    end
                end
                Citizen.Wait(1000)
                initiateCart(v.model, v.id, x, y, z, h, true)
                Citizen.Wait(1000)
                antiSpam = false
            end
        end
    end
end)

RegisterNUICallback('callHorses', function(data,cb)
    for k,v in pairs(yourHorses) do
        if v.id == tonumber(data.id) then
            if not antiSpam then
                if tonumber(v["isdead"]) == 0 then
                    if companyHorse then
                        TriggerServerEvent("gum_stables:deselectThisHorse", yourHorseId)
                    end
                    TriggerEvent("gum_stables:fleeHorse", true)
                    closeMenu()
                    antiSpam = true
                    local x,y,z,h = 0,0,0,0
                    if openCompanyStablePosition == 0 then
                        for k,v in pairs(Config.SpotsForStable) do
                            if k == openStablePosition then
                                x,y,z,h = v.spawnSetting.spawnCalled[1], v.spawnSetting.spawnCalled[2], v.spawnSetting.spawnCalled[3], v.spawnSetting.spawnCalled[4]
                            end
                        end
                    else
                        for k,v in pairs(Config.HorseCompany) do
                            if k == openCompanyStablePosition then
                                x,y,z,h = v.spawnSetting.spawnCalled[1], v.spawnSetting.spawnCalled[2], v.spawnSetting.spawnCalled[3], v.spawnSetting.spawnCalled[4]
                            end
                        end
                    end
                    if yourHorseEntity == nil then
                        companyHorse = true
                        TriggerServerEvent("gum_stables:selectThisHorse", tonumber(v.id))
                        yourHorseId = v.id
                        idForModel = v.model
                        initiateHorse(v.model, v.id, x, y, z, h, true)
                    else
                        closeMenu()
                    end
                    antiSpam = false
                end
            end
        end
    end
end)

RegisterNUICallback('callFromSpot', function(data,cb)
    SetNuiFocus(false, false)
    if data.isHorse == "true" then
        local coords = GetEntityCoords(PlayerPedId())
        for a,b in pairs(Config.SpotForTakeCd) do
            if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, b.baseSetting.enterCoords[1], b.baseSetting.enterCoords[2], b.baseSetting.enterCoords[3], false) < 3.0 then
                for k,v in pairs(yourHorses) do
                    if v.id == tonumber(data.id) then
                        if not antiSpam then
                            antiSpam = true
                            TriggerEvent("gum_stables:fleeHorse", true)
                            closeMenu()
                            local x,y,z,h = 0,0,0,0
                            x,y,z,h = b.baseSetting.spawnCalled[1], b.baseSetting.spawnCalled[2], b.baseSetting.spawnCalled[3], b.baseSetting.spawnCalled[4]
                       
                            if yourHorseEntity == nil then
                                yourHorseId = v.id
                                idForModel = v.model
                                api.notify(""..Config.Language[15].text.."", ""..Config.Language[284].text, Config.Image, Config.Language[284].time)
                                Citizen.Wait(Config.TimeForSpawn*1000)
                                initiateHorse(v.model, v.id, x, y, z, h, true)
                            else
                                closeMenu()
                            end
                            antiSpam = false
                        end
                    end
                end
            end
        end
    else
        local coords = GetEntityCoords(PlayerPedId())
        for a,b in pairs(Config.SpotForTakeCd) do
            if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, b.baseSetting.enterCoords[1], b.baseSetting.enterCoords[2], b.baseSetting.enterCoords[3], false) < 3.0 then
                for k,v in pairs(yourCarts) do
                    if v["id"] == tonumber(data.id) then
                        if not antiSpam then
                            if not NetworkDoesNetworkIdExist(yourCartNetwork) then
                                closeMenu()
                                antiSpam = true
                                local x,y,z,h = 0,0,0,0
                                x,y,z,h = b.baseSetting.spawnCalled[1], b.baseSetting.spawnCalled[2], b.baseSetting.spawnCalled[3], b.baseSetting.spawnCalled[4]
                                api.notify(""..Config.Language[15].text.."", ""..Config.Language[285].text, Config.Image, Config.Language[285].time)
                                Citizen.Wait(Config.TimeForSpawn*1000)
                                initiateCart(v.model, v.id, x,y,z,h, true)
                                Citizen.Wait(1000)
                                antiSpam = false
                            end
                        end
                    end
                end
            end
        end
    end
end)

function clearPrompts()
    if globalPromptGroup ~= nil then
        api.promptDelete(""..Config.Language[356].text.."", globalPromptGroup)
        api.promptDelete(""..Config.Language[357].text.."", globalPromptGroup)
        api.promptDelete(""..Config.Language[358].text.."", globalPromptGroup)
        api.promptDelete(""..Config.Language[359].text.."", globalPromptGroup)
        api.promptDelete(""..Config.Language[360].text.."", globalPromptGroup)
        api.promptDelete(""..Config.Language[361].text.."", globalPromptGroup)
        api.promptDelete(""..Config.Language[430].text.."", globalPromptGroup)
    end
end

RegisterNetEvent('gum_stables:transferCart')
AddEventHandler('gum_stables:transferCart', function()
    api.setPromptEnable(""..Config.Language[82].text.."", promptYourCart, false)
    api.getInput( ""..Config.Language[53].text.."", ""..Config.Language[95].text.."", function(cb)
        local playerid = tonumber(cb)
        if playerid ~= 'close' and playerid ~= nil then
            TriggerServerEvent("gum_stables:transfer_wagon", playerid, yourCartId)
            TriggerEvent("gum_stables:fleeCart")
            return false
        end
    end)
    Citizen.Wait(2000)
    api.setPromptEnable(""..Config.Language[82].text.."", promptYourCart, true)
end)

RegisterNetEvent('gum_stables:debugCart')
AddEventHandler('gum_stables:debugCart', function()
    local cartId = yourCartId
    local cCoords, cHeading = GetEntityCoords(yourCartEntity), GetEntityHeading(yourCartEntity)
    api.setPromptEnable(""..Config.Language[435].text.."", promptYourCart, false)

    TriggerEvent("gum_stables:fleeCart")
    if DoesEntityExist(yourCartEntity) then
        Wait(0)
    end
    Citizen.Wait(100)
    for k,v in pairs(yourCarts) do
        if tonumber(cartId) == v.id then
            initiateCart(v.model, v.id, cCoords.x, cCoords.y, cCoords.z, cHeading, true)
        end
    end
    Citizen.Wait(5000)
    api.setPromptEnable(""..Config.Language[435].text.."", promptYourCart, true)
end)

RegisterNetEvent('gum_stables:openAnimals')
AddEventHandler('gum_stables:openAnimals', function()
    api.setPromptEnable(""..Config.Language[382].text.."", promptYourCart, false)
    TriggerServerEvent('gum_stables:getAnimals', yourCartId, storageSizeTable[GetEntityModel(yourCartEntity)][2])
    Citizen.Wait(2000)
    api.setPromptEnable(""..Config.Language[382].text.."", promptYourCart, true)
end)

RegisterNetEvent('gum_stables:openAnimalsShared')
AddEventHandler('gum_stables:openAnimalsShared', function()
    api.setPromptEnable(""..Config.Language[382].text.."", promptSharedCart, false)
    TriggerServerEvent('gum_stables:getAnimals', someOneNearId, storageSizeTable[GetEntityModel(someOneNearEntity)][2])
    Citizen.Wait(2000)
    api.setPromptEnable(""..Config.Language[382].text.."", promptSharedCart, true)
end)

RegisterNetEvent('gum_stables:openNuiAnimals')
AddEventHandler('gum_stables:openNuiAnimals', function(id, size, animals)
    SetNuiFocus(true, true)
    SendNUIMessage({type = "openAnimals", cartItems=json.decode(animals), maxStorage=size, wagonId=id})
end)

RegisterNUICallback('cleanAnimals', function(data, cb)
    TriggerServerEvent('gum_stables:closeAnimals', tonumber(data.id))
end)

RegisterNetEvent('gum_stables:storageCartShared')
AddEventHandler('gum_stables:storageCartShared', function()
    api.setPromptEnable(""..Config.Language[81].text.."", promptSharedCart, false)
    if GetEntityModel(someOneNearEntity) == GetHashKey("logwagon") then
        TriggerServerEvent("gum_stables:getAbility", storageSizeTable[GetEntityModel(someOneNearEntity)][1], someOneNearId, "logwagon", "wood")
    elseif GetEntityModel(someOneNearEntity) == GetHashKey("coal_wagon") then
        TriggerServerEvent("gum_stables:getAbility", storageSizeTable[GetEntityModel(someOneNearEntity)][1], someOneNearId, "coal_wagon", "stone")
    elseif GetEntityModel(someOneNearEntity) == GetHashKey("oilWagon01x") then
    else
        if storageSizeTable[GetEntityModel(someOneNearEntity)][1] ~= 0 then
            TriggerServerEvent('gum_stables:registerStorage', "wagon_"..tonumber(someOneNearId), storageSizeTable[GetEntityModel(someOneNearEntity)][1])
            TriggerServerEvent("gum_stables:openStorage", "wagon_"..tonumber(someOneNearId), storageSizeTable[GetEntityModel(someOneNearEntity)][1])
        end
    end
    Citizen.Wait(3000)
    api.setPromptEnable(""..Config.Language[81].text.."", promptSharedCart, true)
end)

RegisterNetEvent('gum_stables:giveBackAnimal')
AddEventHandler('gum_stables:giveBackAnimal', function(animalData)
    local coords = GetEntityCoords(PlayerPedId())
    if animalData.quality then
        createAnimal(animalData.model, coords.x, coords.y, coords.z, GetEntityHeading(PlayerPedId()), animalData.loot, tonumber(animalData.quality))
    else
        local obj = CreateObject(animalData.model, GetEntityCoords(PlayerPedId()), 1, 1, 1)
        if Config.Pelts2[GetHashKey(animalData.model)][2] then
            Citizen.InvokeNative(0xF0B4F759F35CC7F5, obj, -1648601722, PlayerPedId(), 0, 512)
        else
            if animalData.model == "p_cs_pelt_medlarge" then
                Citizen.InvokeNative(0xF0B4F759F35CC7F5, obj, 1212186523, PlayerPedId(), 0, 512)
            else
                Citizen.InvokeNative(0xF0B4F759F35CC7F5, obj, -1161106381, PlayerPedId(), 0, 512)
            end  
        end
        Citizen.InvokeNative(0x399657ED871B3A6C, obj, tonumber(animalData.provisionHash))
    end
end)

RegisterNetEvent('gum_stables:putAnimalToCartShared')
AddEventHandler('gum_stables:putAnimalToCartShared', function()
    api.setPromptEnable(""..Config.Language[85].text.."", promptSharedAnimal, false)
    local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
    local quality = {''..Config.Language[509].text..'',''..Config.Language[510].text..'',''..Config.Language[511].text..''}
    local pedQuality = Citizen.InvokeNative(0x7BCC6087D130312A, holding)
    local peltHash = Citizen.InvokeNative(0x31FEF6A20F00B963, holding)

    if Config.Animals[GetEntityModel(holding)] ~= nil then
        if pedQuality == false then
            TriggerServerEvent("gum_stables:updateAnimals", someOneNearId, {type="animal", model=Config.Animals2[GetEntityModel(holding)], quality=0, name=Config.Animals[GetEntityModel(holding)], textQuality=""..Config.Language[509].text.."", loot=Citizen.InvokeNative(0x8DE41E9902E85756, holding)}, storageSizeTable[GetEntityModel(someOneNearEntity)][2])
            api.deletePed(holding)
        else
            TriggerServerEvent("gum_stables:updateAnimals", someOneNearId, {type="animal", model=Config.Animals2[GetEntityModel(holding)], quality=pedQuality, name=Config.Animals[GetEntityModel(holding)], textQuality=quality[pedQuality +1], loot=Citizen.InvokeNative(0x8DE41E9902E85756, holding)}, storageSizeTable[GetEntityModel(someOneNearEntity)][2])
            api.deletePed(holding)
        end
    end
    if Config.Pelts[GetEntityModel(holding)] ~= nil then
        TriggerServerEvent("gum_stables:updateAnimals", someOneNearId, {type="pelt", model=Config.Pelts2[GetEntityModel(holding)][1], name=Config.Pelts[GetEntityModel(holding)], provisionHash=peltHash}, storageSizeTable[GetEntityModel(someOneNearEntity)][2])
        api.deleteObj(holding)
    end    
    Citizen.Wait(4000)
    api.setPromptEnable(""..Config.Language[85].text.."", promptSharedAnimal, true)
end)

RegisterNetEvent('gum_stables:putAnimalToCart')
AddEventHandler('gum_stables:putAnimalToCart', function()
    api.setPromptEnable(""..Config.Language[85].text.."", promptAnimalOnCart, false)
    local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
    local quality = {''..Config.Language[509].text..'',''..Config.Language[510].text..'',''..Config.Language[511].text..''}
    local pedQuality = Citizen.InvokeNative(0x7BCC6087D130312A, holding)
    local peltHash = Citizen.InvokeNative(0x31FEF6A20F00B963, holding)

    if Config.Animals[GetEntityModel(holding)] ~= nil then
        if pedQuality == false then
            TriggerServerEvent("gum_stables:updateAnimals", yourCartId, {type="animal", model=Config.Animals2[GetEntityModel(holding)], quality=0, name=Config.Animals[GetEntityModel(holding)], textQuality=""..Config.Language[509].text.."", loot=Citizen.InvokeNative(0x8DE41E9902E85756, holding)}, storageSizeTable[GetEntityModel(yourCartEntity)][2])
            api.deletePed(holding)
        else
            if quality[pedQuality +1] == nil then
                TriggerServerEvent("gum_stables:updateAnimals", yourCartId, {type="animal", model=Config.Animals2[GetEntityModel(holding)], quality=pedQuality, name=Config.Animals[GetEntityModel(holding)], textQuality=Config.Language[509].text, loot=Citizen.InvokeNative(0x8DE41E9902E85756, holding)}, storageSizeTable[GetEntityModel(yourCartEntity)][2])
            else
                TriggerServerEvent("gum_stables:updateAnimals", yourCartId, {type="animal", model=Config.Animals2[GetEntityModel(holding)], quality=pedQuality, name=Config.Animals[GetEntityModel(holding)], textQuality=quality[pedQuality +1], loot=Citizen.InvokeNative(0x8DE41E9902E85756, holding)}, storageSizeTable[GetEntityModel(yourCartEntity)][2])
            end
            api.deletePed(holding)
        end
    end
    if Config.Pelts[GetEntityModel(holding)] ~= nil then
        TriggerServerEvent("gum_stables:updateAnimals", yourCartId, {type="pelt", model=Config.Pelts2[GetEntityModel(holding)][1], name=Config.Pelts[GetEntityModel(holding)], provisionHash=peltHash}, storageSizeTable[GetEntityModel(yourCartEntity)][2])
        api.deleteObj(holding)
    end    
    Citizen.Wait(4000)
    api.setPromptEnable(""..Config.Language[85].text.."", promptAnimalOnCart, true)
end)

RegisterNetEvent('gum_stables:storageCart')
AddEventHandler('gum_stables:storageCart', function()
    api.setPromptEnable(""..Config.Language[81].text.."", promptYourCart, false)
    if storageSizeTable[GetEntityModel(yourCartEntity)][1] ~= 0 then
        SetNuiFocus(true, true)
        SendNUIMessage({type = "openBagsManage", size=storageSizeTable[GetEntityModel(yourCartEntity)][1], id=yourCartId, cart=true, shared=Config.Access_Other_Storage, byId=Config.Access_Only_Id, clothes=Config.Clothe1InBlanket, language=Config.Language})
    end
    Citizen.Wait(3000)
    api.setPromptEnable(""..Config.Language[81].text.."", promptYourCart, true)
end)

RegisterNetEvent('gum_stables:fleeCart')
AddEventHandler('gum_stables:fleeCart', function()
    api.showPrompt('', promptYourCart, false)
    yourCartCooldown = Config.CooldownWagon
    TriggerEvent("gum_farming:deleteFromFarm", yourCartEntity)
    if DoesEntityExist(yourCartEntity) then
        for k,v in pairs(yourCarts) do
            if tonumber(yourCartId) == tonumber(v.id) then
                v.health_cart = GetEntityHealth(yourCartEntity)
                TriggerServerEvent("gum_stables:save_health_wagon", v.id, GetEntityHealth(yourCartEntity))
            end
        end
    end
    local playerCoords = GetEntityCoords(PlayerPedId())
    local getEntityCoords = GetOffsetFromEntityInWorldCoords(yourCartEntity, 0.0, -0.9, 0.0)
    TriggerServerEvent("gum_stables:removeEntity", NetworkGetNetworkIdFromEntity(yourCartEntity), yourCartId)
    for a,b in pairs(GetGamePool('CObject')) do
        local coords = GetEntityCoords(b)
        if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, getEntityCoords.x, getEntityCoords.y, getEntityCoords.z, false) < 1.2 and GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, coords.x, coords.y, coords.z, false) > 0.90 then
            DeleteEntity(b)
        end
    end
    for a,b in pairs(cartHorses) do
        if DoesEntityExist(b) then
            api.deletePed(b)
        end
    end
    yourCartEntity = nil
    yourCartNetwork = nil
    yourCartId = 0
end)

RegisterNetEvent('gum_stables:fleeHorse')
AddEventHandler('gum_stables:fleeHorse', function(skilFleeAnim)
    stopSave = true
    local promptGroup = Citizen.InvokeNative(0xB796970BD125FCE8, yourHorseEntity)
    clearPrompts()
    yourHorseCooldown = Config.Cooldown
    api.showPrompt('', promptGroup, false)
    if not skilFleeAnim then
        TaskAnimalFlee(yourHorseEntity, PlayerPedId(), -1)
    end
    if companyHorse then
        TriggerServerEvent("gum_stables:deselectThisHorse", yourHorseId)
        companyHorse = false
    end
    if not skilFleeAnim then
        Wait(2000)
    end
    TriggerServerEvent("gum_stables:removeEntity", NetworkGetNetworkIdFromEntity(yourHorseEntity), yourHorseId)
    yourHorseEntity = nil
    yourHorseNetwork = nil
    clearPrompts()
    Citizen.Wait(50)
    yourHorsePelts = {}
    yourHorseId = 0
    yourHorseGainExp = 0
    yourHorseExp = 0
    yourHorseCourage = 0
    yourHorseFriendly = 0
    yourHorsePlayAnim = false
    yourHorseInTraining = false
    yourHorseLonging = false
    yourHorseFollowYou = false
    stopSave = false
end)

Citizen.CreateThread(function()
    while true do
        local optimize = 15000
        if yourHorseEntity ~= nil then
            optimize = 15000
            local maxExp = GetMaxAttributePoints(yourHorseEntity, 7)
            if not stopSave then
                if yourHorseExp <= maxExp then
                    if canTrain and yourHorseGainExp ~= 0 then
                        yourHorseExp = math.floor(yourHorseExp+yourHorseGainExp)
                        expBreed = expBreed+yourHorseGainExp
                    end
                end
                saveHorseStatusExp()
                SetAttributePoints(yourHorseEntity, 7, tonumber(math.floor(yourHorseExp)))
                if Config.AllHaveSameStats then
                    SetAttributePoints(yourHorseEntity, 0, tonumber(math.floor(yourHorseExp)))
                    SetAttributePoints(yourHorseEntity, 1, tonumber(math.floor(yourHorseExp)))
                end
            end
        end
        Citizen.Wait(optimize)
    end
end)


function saveHorseStatusExp()
    for k,v in pairs(yourHorses) do
        if v.id == tonumber(yourHorseId) then
            if DoesEntityExist(yourHorseEntity) then
                local checkChange = false
                if Config.SaveStatus then
                    if v.status ~= nil then
                        local statusTable = json.decode(v.status)
                        local stamina = Citizen.InvokeNative(0x36731AC041289BB1, yourHorseEntity, 1) 
                        local health = Citizen.InvokeNative(0x36731AC041289BB1, yourHorseEntity, 0)
                        if GetEntityHealth(yourHorseEntity) < 1 and tonumber(yourHorses[k].isdead) ~= 2 then
                            yourHorses[k].isdead = 1
                        end
                        if statusTable.hoof == nil then
                            statusTable.hoof = 100
                        end
                        if statusTable.dirt == nil then
                            statusTable.dirt = 0
                        end
                        if stamina == false then 
                            stamina = 0 
                        end
                        if health == false then
                            health = 0
                        end
                        if statusTable.stamina ~= stamina then
                            checkChange = true
                        end
                        if statusTable.health ~= health then
                            checkChange = true
                        end
                        if statusTable.hoof ~= yourHorseHoofState then
                            checkChange = true
                        end
                        if statusTable.dirt ~= yourHorseDirtState then
                            checkChange = true
                        end
                        statusTable.stamina = stamina
                        statusTable.health = health
                        statusTable.hoof = yourHorseHoofState
                        statusTable.dirt = yourHorseDirtState
                        v.status = json.encode(statusTable)
                    end
                end
                if yourHorseGainExp ~= 0 then
                    checkChange = true
                end
                if yourHorseExp ~= 0 then
                    yourHorses[k]["exp"] = tonumber(math.floor(yourHorseExp))
                end
                if checkChange and not stopSave then
                    TriggerServerEvent("gum_stables:saveStatus", v.id, v.status, v.isdead, yourHorseExp)
                end
                yourHorseGainExp = 0
                expBreed = 0
            end
        end
    end
end


function gainHorseExp(exp)
    local yourMaxExps = GetMaxAttributePoints(yourHorseEntity, 7)
    if tonumber(yourHorseExp) <= tonumber(yourMaxExps) and canTrain then
        yourHorseGainExp = yourHorseGainExp+(boostExp*exp)
    end
end

if Config.Destroy_Wheel then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(Config.TimerForCheckSpeed*1000)
            local speed = GetEntitySpeed(GetVehiclePedIsIn(PlayerPedId(), false))
            if speed >= 12.0 then
                for a,b in pairs(wheelTable) do
                    local randomWheel = math.random(1,4)
                    if a == randomWheel then
                        if not Citizen.InvokeNative(0xCB2CA620C48BC875, yourCartEntity, b) then
                            local randomDestroy = math.random(0,100)
                            if randomDestroy < Config.Chance_On_Destroy then
                                Citizen.InvokeNative(0xd4f5efb55769d272, yourCartEntity, b)
                                TriggerServerEvent("gum_stables:damage_wheel", yourCartId, b)
                            end
                        end
                    end
                end
            end
        end
    end)
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(Config.Age_Check*60*1000)
        if not Config.Real_Logic then
            TriggerServerEvent("gum_stables:age_update")
        end
        if Config.Dead_On_Old then
            for k,v in pairs(yourHorses) do
                if v["age"] == Config.Language[417].text then
                    local randomAgeDead = math.random(1,100)
                    if Config.Chance_For_Dead >= tonumber(randomAgeDead) and tonumber(v.isdead) ~= 2 then
                        yourHorses[k].isDead = 2
                        if yourHorseEntity ~= nil then
                            if tonumber(yourHorseId) == v.id then
                                SetEntityHealth(yourHorseEntity, 0)
                            end
                        end
                        TriggerServerEvent("gum_stables:dead_old_update", v.id)
                    end
                end
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(Config.ExpTimer*1000)
        local canGainExp = false
        if Config.CinematicCameraProtection and not IsCinematicCamRendering() then
            canGainExp = true
        else
            if not Config.CinematicCameraProtection then
                canGainExp = true
            end
        end
        if canGainExp then
            if yourHorseEntity ~= nil then
                if IsPedWalking(yourHorseEntity) and not IsCinematicCamRendering() and not Citizen.InvokeNative(0xEFC4303DDC6E60D3, PlayerPedId()) then
                    gainHorseExp(Config.ExpTable.Walking)
                end
                if IsPedRunning(yourHorseEntity) and not IsCinematicCamRendering() and not Citizen.InvokeNative(0xEFC4303DDC6E60D3, PlayerPedId()) then
                    gainHorseExp(Config.ExpTable.Running)
                end
                if Citizen.InvokeNative(0x57E457CD2C0FC168, yourHorseEntity) and not Citizen.InvokeNative(0xEFC4303DDC6E60D3, PlayerPedId()) then
                    gainHorseExp(Config.ExpTable.Sprinting)
                end
                if Citizen.InvokeNative(0xEFC4303DDC6E60D3, PlayerPedId()) and IsPedWalking(PlayerPedId()) then
                    for k,v in pairs(yourHorses) do
                        if idForStorageHorse == v.id or v.selected == 1 then
                            if v.age ~= Config.Language[417].text then
                                if tonumber(v["age"]) <= 5.0 then
                                    gainHorseExp(Config.ExpTable.IfCub)
                                else
                                    gainHorseExp(Config.ExpTable.IfAdult)
                                end
                            else
                                gainHorseExp(Config.ExpTable.IfAdult)
                            end
                        end
                    end
                end
            end
        end
    end
end)

if Config.SaveStatus and Config.hoofHook then
    Citizen.CreateThread(function()
        while true do
            if yourHorseEntity then
                if yourHorseHoofState >= 0 then
                    if Citizen.InvokeNative(0x57E457CD2C0FC168, yourHorseEntity) then
                        yourHorseHoofState = yourHorseHoofState - Config.HoofDownIfSprint
                    end
                    if IsPedRunning(yourHorseEntity) then
                        yourHorseHoofState = yourHorseHoofState - Config.HoofDownIfRun
                    end
                    if IsPedWalking(yourHorseEntity) then
                        yourHorseHoofState = yourHorseHoofState - Config.HoofDownIfWalk
                    end
                end
                if yourHorseHoofState < 0 then
                    yourHorseHoofState = 0
                end 
            end
            Citizen.Wait(Config.timerForHook*1000)
        end
    end)
end

if Config.SaveStatus and Config.DirtyStatus then
    Citizen.CreateThread(function()
        while true do
            if yourHorseEntity then
                if Config.DirtyOnlyWhileRide then
                    if yourHorseDirtState < GetMaxAttributePoints(yourHorseEntity, 16) and GetMount(PlayerPedId()) == yourHorseEntity then
                        yourHorseDirtState = yourHorseDirtState + Config.DirtyValue
                    end
                else
                    if yourHorseDirtState < GetMaxAttributePoints(yourHorseEntity, 16) then
                        yourHorseDirtState = yourHorseDirtState + Config.DirtyValue
                    end
                end
                if IsEntityInWater(yourHorseEntity) then
                    yourHorseDirtState = yourHorseDirtState - 1000
                    if yourHorseDirtState < 0 then
                        yourHorseDirtState = 0
                    end
                end
                SetAttributePoints(yourHorseEntity, 16, math.floor(yourHorseDirtState))
            end
            Citizen.Wait(Config.DirtyUpdate*1000)
        end
    end)
end



function ground_check(x, y)
    local gChk, groundZ = nil, nil
    for height = 1, 1000 do
		gChk, groundZ = GetGroundZAndNormalFor_3dCoord(x, y, height+0.0)
		if gChk then
            return groundZ
		end
    end
end

function cleanHorseFromOld(ped)
    removeClothFromHorse(ped, 0xD3500E5D)
    removeClothFromHorse(ped, 0xBAA7E618)
    removeClothFromHorse(ped, 0x05447332)
    removeClothFromHorse(ped, 0xDA6DADCA)
    removeClothFromHorse(ped, 0x80451C25)
    removeClothFromHorse(ped, 0x17CEB41A)
    removeClothFromHorse(ped, 0x1530BE1C)
    removeClothFromHorse(ped, 0xEFB31921)
    removeClothFromHorse(ped, 0x94B2E3AF)
    removeClothFromHorse(ped, 0xAC106B30)
end

function setStatus(stamina, health, hoof, dirt)
    if stamina == false then stamina = 1 end
    if health == false then health = 1 end
    if dirt == nil or dirt == false then dirt = 0 end
    if stamina == 0 then
        stamina = 1
    end
    if health == 0 then
        health = 1
    end
    Citizen.InvokeNative(0xC6258F41D86676E0, yourHorseEntity, 1, stamina)
    Citizen.InvokeNative(0xC6258F41D86676E0, yourHorseEntity, 0, health)
    if GetMaxAttributePoints(yourHorseEntity, 16, dirt) < dirt then
        SetAttributePoints(yourHorseEntity, 16, 10000)
    else
        SetAttributePoints(yourHorseEntity, 16, math.floor(dirt))
    end
    yourHorseDirtState = dirt
    if hoof == nil then
        yourHorseHoofState = 0
    else
        yourHorseHoofState = hoof
    end
end

RegisterNetEvent("gum_stables:addSharedHorse")
AddEventHandler("gum_stables:addSharedHorse", function(networkId, horseInfo)
    sharedHorseCartData[networkId] = horseInfo
end)

RegisterNetEvent("gum_stables:removeSharedData")
AddEventHandler("gum_stables:removeSharedData", function(networkId)
    sharedHorseCartData[networkId] = nil
    if networkId == yourHorseNetwork then
        clearPrompts()
        yourHorseEntity = nil
        yourHorseNetwork = nil
        yourHorsePelts = {}
        yourHorseId = 0
        yourHorseGainExp = 0
        yourHorseExp = 0
        yourHorseCourage = 0
        yourHorseFriendly = 0
        yourHorsePlayAnim = false
        yourHorseInTraining = false
        yourHorseLonging = false
        yourHorseFollowYou = false
        stopSave = false
    end
end)

RegisterNetEvent("gum_stables:sendAccessToPlayer")
AddEventHandler("gum_stables:sendAccessToPlayer", function(networkId, horseInfo)
    sharedHorseCartData[networkId] = horseInfo
end)

RegisterNetEvent("gum_stables:callFromHousing")
AddEventHandler("gum_stables:callFromHousing", function(id, what, x, y, z, h)
    if what == "horse" then
        for a,b in pairs(yourHorses) do
            if tonumber(id) == tonumber(b.id) then
                initiateHorse(b.model, b.id, x, y, z, h, true)
            end
        end
    elseif what == "wagon" then
        for a,b in pairs(yourCarts) do
            if tonumber(id) == tonumber(b.id) then
                TriggerEvent("gum_stables:fleeWagon", true)
                Citizen.Wait(200)
                yourCartEntity = nil
                initiateCart(b.model, b.id, x, y, z, h, true)
            end
        end
    end
end)

RegisterNetEvent("gum_stables:cleanShoes")
AddEventHandler("gum_stables:cleanShoes", function()
    if not canCleanHoof then
        return false
    end
    for a,b in pairs(yourHorses) do
        if b.id == tonumber(yourHorseId) then
            if b.status ~= nil then
                local statusTable = json.decode(b.status)
                statusTable["hoof"] = 100
                yourHorseHoofState = 100
                b.status = json.encode(statusTable)
            end
        end
    end
end)

RegisterNetEvent("gum_stables:cleanShoe")
AddEventHandler("gum_stables:cleanShoe", function(item)
    if not canCleanHoof then
        return false
    end
    if not getMountAndVehicle() then
        return false
    end
    local pCoords = GetEntityCoords(PlayerPedId())
    local hEntity = getNearHorseEntity()
    if hEntity == nil then
        api.notify(''..Config.Language[15].text..'', ''..Config.Language[515].text..'', Config.Image, Config.Language[480].time)
        return false
    end
    local playerId = getPlayerIdFromServer(3.0)
    local hCoords = GetEntityCoords(hEntity)
    requestNetwork(hEntity)
    api.getAnswer(''..Config.Language[517].text..''..playerId, ''..Config.Language[335].text..'', ''..Config.Language[336].text..'', function(cb)
        if cb == true then
            local offset = GetOffsetFromEntityInWorldCoords(hEntity, -0.80, -0.75, -1.1)
            local offset2 = GetOffsetFromEntityInWorldCoords(hEntity, -1.5, -0.7, 0.1)
            FreezeEntityPosition(hEntity, true)
            SetEntityCollision(hEntity, false, false)
            SetEntityCoords(PlayerPedId(), offset.x, offset.y, offset.z)
            turnToEntity(PlayerPedId(), offset2.x, offset2.y, offset2.z)
            api.playAnim(PlayerPedId(), "script_re@stranded_rider","enter_line01_man", 1, 8000)
            api.playAnim(hEntity, "script_re@stranded_rider","enter_line01_horse", 1, 8000)
            Citizen.Wait(7000)
            if GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, hCoords.x, hCoords.y, hCoords.z, false) > 1.5 then
                ClearPedTasks(PlayerPedId())
                ClearPedTasks(hEntity)
                SetEntityCollision(hEntity, true, true)
                FreezeEntityPosition(hEntity, false)
                return false
            end  
            if Config.removeAfterUse then
                TriggerServerEvent("gum_stables:rem_function", item)
            end
            api.playAnim(PlayerPedId(), "script_re@stranded_rider","horseshoe_idle_man", 1, 4000)
            api.playAnim(hEntity, "script_re@stranded_rider","horseshoe_idle_horse", 1, 4000)
            local cleaNer = CreateObject("p_clothinghook01x", pCoords.x, pCoords.y, pCoords.x, false, false, false)
            AttachEntityToEntity(cleaNer, PlayerPedId(), GetEntityBoneIndexByName(PlayerPedId(), "PH_R_Hand"), 0.0, -0.12, 0.07, 209.0, 52.0, -35.0, false, false, true, false, 0, true, false, false)
            Citizen.Wait(4000)
            api.playAnim(PlayerPedId(), "script_re@stranded_rider","kick_l_man", 1, 500)
            api.playAnim(hEntity, "script_re@stranded_rider","kick_l_horse", 1, 500)
            Citizen.Wait(500)
            DeleteEntity(cleaNer)
            SetEntityCollision(hEntity, true, true)
            FreezeEntityPosition(hEntity, false)
            ClearPedTasks(PlayerPedId())
            TriggerServerEvent("gum_stables:cleanShoes", playerId)
        else
            return false
        end
    end)
end)

RegisterCommand(""..Config.Language[404].text.."", function(source, args, rawCommand)
    if IsPedOnMount(PlayerPedId()) then
        if IsEntityPlayingAnim(PlayerPedId(), "veh_horseback@seat_rear@female@left@normal@idle","idle", 3) == false then
            api.playAnim(PlayerPedId(), "veh_horseback@seat_rear@female@left@normal@idle","idle", 1, -1)
        else
            ClearPedTasks(PlayerPedId())
        end
    end
end)

if Config.TransferSaddle then
    RegisterCommand(""..Config.Language[476].text.."", function(source, args, rawCommand)
        local pCoords = GetEntityCoords(PlayerPedId())
        local horseCoords = GetEntityCoords(yourHorseEntity)
        local offset = GetOffsetFromEntityInWorldCoords(yourHorseEntity, -0.8, 0.1, 0.0)
        local offset2 = GetOffsetFromEntityInWorldCoords(yourHorseEntity, -1.0, 0.0, 0.0)
        local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, offset.x, offset.y, offset.z, true)
        if blockMeForNow then
            api.notify(""..Config.Language[15].text.."", ""..Config.Language[480].text, Config.Image, Config.Language[480].time)
            Citizen.Wait(2000)
            return false
        end
        blockMeForNow = true
        if dist < 1.5 and GetEntityHealth(yourHorseEntity) > 0 then
            if not propSaddle then
                if Citizen.InvokeNative(0xFB4891BD7578CDC1, yourHorseEntity, GetHashKey("horse_saddles")) then
                    for a,b in pairs(yourHorses) do
                        if yourHorseId == b.id then
                            transferedComps = {}
                            SetEntityCoords(PlayerPedId(), offset.x, offset.y, offset.z-1.0)
                            Citizen.Wait(100)
                            turnToEntitySaddle(PlayerPedId(), horseCoords.x, horseCoords.y, horseCoords.z)
                            local comp = json.decode(b.components)
                            for c,d in pairs(comp) do
                                if Config.TransferItems[c] then
                                    transferedComps[c] = d
                                    comp[c] = nil
                                end
                            end
                            b.components = json.encode(comp)
                            api.playAnim(PlayerPedId(), "mech_pickup@saddle_bundle@gear_transfer@remove_alive@lt","base", 1, 1000)
                            Citizen.Wait(500)
                            for c,d in pairs(transferedComps) do
                                isEquipedGear(c, d)
                            end
                            Citizen.Wait(400)
                            api.playAnim(PlayerPedId(), "mech_pickup@saddle_bundle@horse_satchel@remove@lt","base", 1, 2000)

                            loadModel(GetHashKey("p_cs_saddle01x"))
                            propSaddle = CreateObject("p_cs_saddle01x", pCoords.x, pCoords.y, pCoords.x, 1, 1, false)
                            AttachEntityToEntity(propSaddle, PlayerPedId(), GetEntityBoneIndexByName(PlayerPedId(), "PH_L_Hand"), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true, false, false)
                            SetEntityCollision(propSaddle, false, true)

                            Citizen.Wait(1900)
                            api.playAnim(PlayerPedId(), "mech_pickup@saddle_bundle@carried@human","grip_arms", 27, -1)
                            local pCoords = GetEntityCoords(PlayerPedId())
                            TriggerServerEvent("gum_stables:saveSaddle", yourHorseId, comp, true)
                            blockMeForNow = nil
                        end
                    end
                else
                    api.notify(""..Config.Language[15].text.."", ""..Config.Language[477].text, Config.Image, Config.Language[477].time)
                    blockMeForNow = nil
                end
            else
                if yourHorseEntity ~= nil then
                    if not Citizen.InvokeNative(0xFB4891BD7578CDC1, yourHorseEntity, GetHashKey("horse_saddles")) then
                        for a,b in pairs(yourHorses) do
                            if yourHorseId == b.id then
                                local offset = GetOffsetFromEntityInWorldCoords(yourHorseEntity, -0.8, 0.1, 0.0)
                                SetEntityCoords(PlayerPedId(), offset.x, offset.y, offset.z-1.0)
                                Citizen.Wait(100)
                                turnToEntitySaddle(PlayerPedId(), horseCoords.x, horseCoords.y, horseCoords.z)
                                local comp = json.decode(b.components)
                                for c,d in pairs(transferedComps) do
                                    comp[c] = d
                                end
                                b.components = json.encode(comp)
                                ClearPedTasks(PlayerPedId())
                                api.playAnim(PlayerPedId(), "mech_pickup@saddle_bundle@gear_transfer@secure_gear","secure_gear_lt", 1, 4000)  
                                Citizen.Wait(800)
                                for c,d in pairs(transferedComps) do
                                    isEquipedGear(c, d)
                                end
                                api.deleteObj(propSaddle)
                                propSaddle = nil
                                TriggerServerEvent("gum_stables:saveSaddle", yourHorseId, comp, false)
                                blockMeForNow = nil
                                transferedComps = {}
                            end
                        end
                    else
                        api.notify(""..Config.Language[15].text.."", ""..Config.Language[478].text, Config.Image, Config.Language[478].time)
                        blockMeForNow = nil
                    end
                end
            end
        elseif dist < 1.5 and GetEntityHealth(yourHorseEntity) == 0 then
            if not propSaddle then
                if Citizen.InvokeNative(0xFB4891BD7578CDC1, yourHorseEntity, GetHashKey("horse_saddles")) then
                    for a,b in pairs(yourHorses) do
                        if yourHorseId == b.id then
                            transferedComps = {}
                            SetEntityCoords(PlayerPedId(), offset2.x, offset2.y, offset2.z-1.0)
                            Citizen.Wait(100)
                            turnToEntitySaddle(PlayerPedId(), horseCoords.x, horseCoords.y, horseCoords.z)
                    
                            local comp = json.decode(b.components)
                            for c,d in pairs(comp) do
                                if Config.TransferItems[c] then
                                    isEquipedGear(c, d)
                                    transferedComps[c] = d
                                    comp[c] = nil
                                end
                            end
                            b.components = json.encode(comp)
                            api.playAnim(PlayerPedId(), "mech_pickup@saddle@gear_transfer@remove_dead@rt","remove_dead_lf", 1, 5500)
                            Citizen.Wait(2000)
                            local pCoords = GetEntityCoords(PlayerPedId())
                            loadModel(GetHashKey("p_cs_saddle01x"))
                            propSaddle = CreateObject("p_cs_saddle01x", pCoords.x, pCoords.y, pCoords.x, 1, 1, 1)
                            AttachEntityToEntity(propSaddle, PlayerPedId(), GetEntityBoneIndexByName(PlayerPedId(), "PH_L_Hand"), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true, false, false)
                            SetEntityCollision(propSaddle, false, true)
                            Citizen.Wait(2500)
                            api.playAnim(PlayerPedId(), "mech_pickup@saddle_bundle@carried@human","grip_arms", 27, -1)
                            TriggerServerEvent("gum_stables:saveSaddle", yourHorseId, comp, true)
                            blockMeForNow = nil
                        end
                    end
                else
                    api.notify(""..Config.Language[15].text.."", ""..Config.Language[477].text, Config.Image, Config.Language[477].time)
                    blockMeForNow = nil
                end
            end
        else
            api.notify(""..Config.Language[15].text.."", ""..Config.Language[479].text, Config.Image, Config.Language[479].time)
            blockMeForNow = nil
        end
    end)
end


function isEquipedGear(typeCat, hash)
    if not Citizen.InvokeNative(0xFB4891BD7578CDC1, yourHorseEntity, horseComponentTable[typeCat][1]) then
        setClothOnHorse(yourHorseEntity, tonumber(hash))
    else
        removeClothFromHorse(yourHorseEntity, horseComponentTable[typeCat][1])
    end
end


-- RegisterCommand(""..Config.Language[400].text.."", function(source, args, rawCommand)

-- end, false)

-- RegisterCommand(""..Config.Language[401].text.."", function(source, args, rawCommand)

-- end, false)

-- RegisterCommand(""..Config.Language[402].text.."", function(source, args, rawCommand)
 
-- end, false)

-- RegisterCommand(""..Config.Language[403].text.."", function(source, args, rawCommand)

-- end, false)

RegisterNetEvent("gum_stables:openBreederStoreServer")
AddEventHandler('gum_stables:openBreederStoreServer', function()
    local coords = GetEntityCoords(PlayerPedId())
    for k,v in pairs(Config.BreederStore) do
        local dist = GetDistanceBetweenCoords(coords.x, coords.y, coords.z, v.coords[1], v.coords[2], v.coords[3], true)
        if dist < 5.0 then
            SetNuiFocus(true, true)
            TriggerServerEvent('gum_stables:openBreederStore', k)
        end
    end
end)

RegisterNetEvent('gum_stables:openBreederStore')
AddEventHandler('gum_stables:openBreederStore', function(storeData, job)
    if storeData == nil then
        SetNuiFocus(false, false)
        return false
    end
    storeDataGlobal = storeData
    maxStoreHorses = 0
    canMaxStoreHorses = 0
    local coords = GetEntityCoords(PlayerPedId())
    local isYourStore = false
    for k,v in pairs(Config.BreederStore) do
        local dist = GetDistanceBetweenCoords(coords.x, coords.y, coords.z, v.coords[1], v.coords[2], v.coords[3], true)
        if dist < 2.0 then
            if type(yourJob) == "table" then
                for c,d in pairs(yourJob) do
                    if d.job == k then
                        isYourStore = true
                    end
                end
            else
                if yourJob == k then
                    isYourStore = true
                end
            end
            canMaxStoreHorses = v.maxHorses
        end
    end
    for k,v in pairs(storeData) do
        if v.storePosition == job then
            maxStoreHorses = maxStoreHorses+1
        end
    end
    SendNUIMessage({
        type = 'openBreederStore',
        storeData = storeData,
        job = job,
        isYourStore = isYourStore
    })
end)

RegisterNUICallback('addHorseToStore', function(data, cb)
    if yourHorseId == nil or yourHorseEntity == nil then
        SetNuiFocus(false, false)
        api.notify(''..Config.Language[15].text..'', ''..Config.Language[485].text..'', Config.Image, Config.Language[485].time)
        return false
    end
    if tonumber(canMaxStoreHorses) <= tonumber(maxStoreHorses) then
        SetNuiFocus(false, false)
        api.notify(''..Config.Language[15].text..'', ''..Config.Language[498].text..'', Config.Image, Config.Language[498].time)
        return false
    end
    api.getInput(''..Config.Language[487].text..'', ''..Config.Language[493].text..'',function(price)
        if price ~= 'close' and price ~= nil then
            if tonumber(price) > 0 then
                if Config.BreederStorePriceLimit == 0 then
                    api.getInput(''..Config.Language[487].text..'', ''..Config.Language[488].text..'',function(desc)
                        if desc ~= 'close' and desc ~= nil then
                            TriggerServerEvent('gum_stables:addToStore', yourHorseId, tonumber(price), data.job, desc)
                            TriggerEvent("gum_stables:fleeHorse", true)
                        else
                            TriggerServerEvent('gum_stables:addToStore', yourHorseId, tonumber(price), data.job, "")
                            TriggerEvent("gum_stables:fleeHorse", true)
                        end
                    end)
                else
                    if tonumber(price) <= Config.BreederStorePriceLimit then
                        api.getInput(''..Config.Language[487].text..'', ''..Config.Language[488].text..'',function(desc)
                            if desc ~= 'close' and desc ~= nil then
                                TriggerServerEvent('gum_stables:addToStore', yourHorseId, tonumber(price), data.job, desc)
                                TriggerEvent("gum_stables:fleeHorse", true)
                            else
                                TriggerServerEvent('gum_stables:addToStore', yourHorseId, tonumber(price), data.job, "")
                                TriggerEvent("gum_stables:fleeHorse", true)
                            end
                        end)
                    else
                        SetNuiFocus(false, false)
                        api.notify(''..Config.Language[15].text..'', ''..Config.Language[497].text..'', Config.Image, Config.Language[497].time)
                    end
                end
            else
                SetNuiFocus(false, false)
            end
        end
    end)
end)

RegisterNUICallback('buyBreedHorse', function(data, cb)
    api.getAnswer(''..Config.Language[489].text..''..data.price..'$ ?', ''..Config.Language[335].text..'', ''..Config.Language[336].text..'', function(cb)
        if cb == true then
            TriggerServerEvent("gum_stables:buyBreedHorse", data.id, data.job)
        end
    end)
end)
RegisterNUICallback('takeBreedHorse', function(data, cb)
    api.getAnswer(''..Config.Language[529].text..'', ''..Config.Language[335].text..'', ''..Config.Language[336].text..'', function(cb)
        if cb == true then
            TriggerServerEvent("gum_stables:takeBreedHorse", data.id, data.job)
        end
    end)
end)
RegisterNUICallback('takeBreederMoney', function(data, cb)
    TriggerServerEvent("gum_stables:takeBreederMoney", data.id, data.price, data.job)
end)

RegisterNUICallback('showBreederHorse', function(data, cb)
    if entityPreview[1] ~= nil then
        api.deletePed(entityPreview[1])
    end
    local model = data.model
    local match = string.match(data.model, "%w*01%w*")
    if not match then
        model = string.gsub(data.model, "%d+", "")
    end
    loadModel(model)
    local x,y,z,h = 0,0,0,0
    local coords = GetEntityCoords(PlayerPedId())
    for k,v in pairs(Config.BreederStore) do
        local dist = GetDistanceBetweenCoords(coords.x, coords.y, coords.z, v.coords[1], v.coords[2], v.coords[3], true)
        if dist < 2.0 then
            x,y,z,h = v.horseCoords[1], v.horseCoords[2], v.horseCoords[3], v.horseCoords[4]
        end
    end
    if x == 0 then
        return false
    end
    entityPreview[1] = CreatePed(GetHashKey(model), x, y, z, h, true, true, 0, 0)

    existEntity(entityPreview[1])

    Citizen.InvokeNative(0x283978A15512B2FE, entityPreview[1], true)
    FreezeEntityPosition(entityPreview[1], true)
    SetModelAsNoLongerNeeded(GetHashKey(model))
    SetPedConfigFlag(entityPreview[1], 324, true)
    SetPedConfigFlag(entityPreview[1], 211, true)
    SetPedConfigFlag(entityPreview[1], 208, true)
    SetPedConfigFlag(entityPreview[1], 209, true)
    SetPedConfigFlag(entityPreview[1], 400, true)
    SetPedConfigFlag(entityPreview[1], 297, true)
    SetPedConfigFlag(entityPreview[1], 136, false)
    SetPedConfigFlag(entityPreview[1], 312, false)
    SetPedConfigFlag(entityPreview[1], 113, false)
    SetPedConfigFlag(entityPreview[1], 301, false)  
    SetPedConfigFlag(entityPreview[1], 277, true)
    SetPedConfigFlag(entityPreview[1], 319, true)
    SetPedConfigFlag(entityPreview[1], 122, true)
    SetPedConfigFlag(entityPreview[1], 297, true)
    Citizen.InvokeNative(0x8DE41E9902E85756, entityPreview[1])
    SetPedConfigFlag(entityPreview[1], 6, true)
    SetAnimalTuningBoolParam(entityPreview[1], 25, false)
    SetAnimalTuningBoolParam(entityPreview[1], 24, false)
    SetAnimalTuningBoolParam(entityPreview[1], 48, false)
    TaskAnimalUnalerted(entityPreview[1], -1, false, 0, 0)
    SetBlockingOfNonTemporaryEvents(entityPreview[1], true)

    if data.age ~= Config.Language[417].text then
        if tonumber(data.age) <= 4.75 then
            SetPedConfigFlag(entityPreview[1], 136, true)
        end
        if 1 >= tonumber(data.age) then
            SetPedScale(entityPreview[1], 0.600)
        elseif 2 >= tonumber(data.age) then
            SetPedScale(entityPreview[1], 0.650)
        elseif 3 >= tonumber(data.age) then
            SetPedScale(entityPreview[1], 0.700)
        elseif 4 >= tonumber(data.age) then
            SetPedScale(entityPreview[1], 0.800)
        elseif 5 >= tonumber(data.age) then
            SetPedScale(entityPreview[1], 0.900)
        end
    end

    if tostring(data.sex) == ""..Config.Language[68].text.."" then
        Citizen.InvokeNative(0x5653AB26C82938CF, entityPreview[1], 41611, 1.0)
        UpdatePedVariation(entityPreview[1])
    else
        Citizen.InvokeNative(0x5653AB26C82938CF, entityPreview[1], 41611, 0.0)
        UpdatePedVariation(entityPreview[1])
    end
    ClearPedEnvDirt(entityPreview[1])
    ClearPedDamageDecalByZone(entityPreview[1] ,10 ,"ALL")
    ClearPedBloodDamage(entityPreview[1])
    PlaceObjectOnGroundProperly(entityPreview[1], true)
    for k,v in pairs(storeDataGlobal) do
        if tonumber(data.id) == v.id then
            for a,b in pairs(json.decode(v.components)) do
                setClothOnHorse(entityPreview[1], tonumber(b))
            end
            for a,b in pairs(json.decode(v.components)) do
                if a == 'bridle' then
                    setClothOnHorse(entityPreview[1], (b))
                end
                if a == 'propsData' then
                    Citizen.InvokeNative(0x1902C4CFCC5BE57C,entityPreview[1], tonumber(propsDatas[tonumber(b)])) 
                    Citizen.InvokeNative(0xCC8CA3E88256E58F,entityPreview[1], false, true, true, true, false)
                end
            end
            loadYourColor(json.decode(v["components"]), entityPreview[1])
        end
    end

    Citizen.Wait(150)
    
    if Config.InteractibleCamera and entityPreview[1] then
        startCameraMovable()
    end
end)


RegisterNetEvent('gum_stables:debugWheel')
AddEventHandler('gum_stables:debugWheel', function()
    blockInteract = false
end)

RegisterNetEvent("gum_stables:blockMinigame")
AddEventHandler("gum_stables:blockMinigame", function(stateMinigame)
    miniGameRunning = stateMinigame
end)

RegisterNetEvent("gum_stables:checkTameProtect")
AddEventHandler("gum_stables:checkTameProtect", function(state, time)
    canTameHorse = state
    if state == true then
        api.notify(""..Config.Language[15].text.."", Config.Language[448].text..time, Config.Image, Config.Language[448].time)
    end
end)

RegisterCommand("wild", function(source, args, rawCommand)
    Citizen.InvokeNative(0xAEB97D84CDF3C00B, GetMount(PlayerPedId()), true)
end)

RegisterNUICallback('maniAnimal', function(data,cb)
    SetNuiFocus(false, false)
    SendNUIMessage({type = "clearManage"})
    local num = tonumber(data.a)+1
    local coords = GetEntityCoords(PlayerPedId())
    local boolean_value = string_value == data.loot
    createAnimal(data.model, coords.x, coords.y, coords.z, GetEntityHeading(PlayerPedId()), boolean_value, tonumber(data.quality))
    TriggerServerEvent("gum_stables:removeAnimals", tonumber(data.id), num)
end)

RegisterNUICallback('maniPelt', function(data,cb)
    SetNuiFocus(false, false)
    SendNUIMessage({type = "clearManage"})
    local num = tonumber(data.a)+1
    local obj = CreateObject(data.model, GetEntityCoords(PlayerPedId()), 1, 1, 1)
    if Config.Pelts2[GetHashKey(data.model)][2] then
        Citizen.InvokeNative(0xF0B4F759F35CC7F5, obj, -1648601722, PlayerPedId(), 0, 512) -- Big
    else
        if data.model == "p_cs_pelt_medlarge" then
            Citizen.InvokeNative(0xF0B4F759F35CC7F5, obj, 1212186523, PlayerPedId(), 0, 512) -- Small
        else
            Citizen.InvokeNative(0xF0B4F759F35CC7F5, obj, -1161106381, PlayerPedId(), 0, 512) -- Small
        end  
    end
    Citizen.InvokeNative(0x399657ED871B3A6C, obj, tonumber(data.provisionHash))
    TriggerServerEvent("gum_stables:removeAnimals", tonumber(data.id), num)
end)

RegisterNetEvent('gum_stables:openStable')
AddEventHandler('gum_stables:openStable', function()
    activeCamera = true
    local pCoords = GetEntityCoords(PlayerPedId())
    openStablePosition = 0
    openCompanyStablePosition = 0
    if Config.enableInteractWithNpc then
        for a,b in pairs(Config.SpotsForStable) do
            if GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, b.baseSetting.enterCoords[1], b.baseSetting.enterCoords[2], b.baseSetting.enterCoords[3], false) < 5.5 then
                TriggerServerEvent("gum_stables:check_all_info")
                Citizen.Wait(500)
                SetNuiFocus(true, true)
                openStablePosition = a
                startCamera()
                break
            end
        end
    else
        for a,b in pairs(Config.SpotsForStable) do
            if GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, b.baseSetting.enterCoords[1], b.baseSetting.enterCoords[2], b.baseSetting.enterCoords[3], false) < 1.5 then
                TriggerServerEvent("gum_stables:check_all_info")
                Citizen.Wait(500)
                SetNuiFocus(true, true)
                openStablePosition = a
                startCamera()
                break
            end
        end
    end
    if openStablePosition ~= 0 then
        editedHorseStoreTable = {}
        editedCartStoreTable = {}
        allYourHorses = {}
        allYourCarts = {}
        yourHorseCount = 0
        yourCartCount = 0
        for a,b in pairs(yourHorses) do
            yourHorseCount = yourHorseCount + 1
            table.insert(allYourHorses, b)
        end
        for a,b in pairs(yourCarts) do
            yourCartCount = yourCartCount + 1
            table.insert(allYourCarts, b)
        end

        local newTableHorseFilter = yourHorses
        local newTableCartFilter = yourCarts
        for k,v in pairs(Config.Horses) do
            for k2,v2 in pairs(v) do
                if type(yourJob) == "table" then
                    for c,d in pairs(yourJob) do
                        for e,f in pairs(v2.jobForBuy) do
                            if d.job == f and d.job ~= Config.UnemployedJob and v2.groupForBuy[1] == "none" then
                                if v2.dollarPrice < 50 then
                                    editedHorseStoreTable[k2..v2.colorName] = {state=1, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                                elseif v2.dollarPrice < 150 then
                                    editedHorseStoreTable[k2..v2.colorName] = {state=2, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                                elseif v2.dollarPrice < 250 then
                                    editedHorseStoreTable[k2..v2.colorName] = {state=3, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                                else
                                    editedHorseStoreTable[k2..v2.colorName] = {state=4, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                                end
                            end
                        end
                    end
                else
                    for e,f in pairs(v2.jobForBuy) do
                        if yourJob == f and yourJob ~= Config.UnemployedJob and v2.groupForBuy[1] == "none" then
                            if v2.dollarPrice < 50 then
                                editedHorseStoreTable[k2..v2.colorName] = {state=1, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                            elseif v2.dollarPrice < 150 then
                                editedHorseStoreTable[k2..v2.colorName] = {state=2, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                            elseif v2.dollarPrice < 250 then
                                editedHorseStoreTable[k2..v2.colorName] = {state=3, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                            else
                                editedHorseStoreTable[k2..v2.colorName] = {state=4, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                            end
                        end
                    end
                end
                for e,f in pairs(v2.jobForBuy) do
                    if Config.UnemployedJob == f and v2.groupForBuy[1] == "none"then
                        if v2.dollarPrice < 50 then
                            editedHorseStoreTable[k2..v2.colorName] = {state=1, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                        elseif v2.dollarPrice < 150 then
                            editedHorseStoreTable[k2..v2.colorName] = {state=2, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                        elseif v2.dollarPrice < 250 then
                            editedHorseStoreTable[k2..v2.colorName] = {state=3, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                        else
                            editedHorseStoreTable[k2..v2.colorName] = {state=4, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                        end
                    end
                end
                if v2.groupForBuy[1] ~= "none" then
                    for e,f in pairs(v2.groupForBuy) do
                        if f == yourGroup then
                            if v2.dollarPrice < 50 then
                                editedHorseStoreTable[k2..v2.colorName] = {state=1, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                            elseif v2.dollarPrice < 150 then
                                editedHorseStoreTable[k2..v2.colorName] = {state=2, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                            elseif v2.dollarPrice < 250 then
                                editedHorseStoreTable[k2..v2.colorName] = {state=3, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                            else
                                editedHorseStoreTable[k2..v2.colorName] = {state=4, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
                            end
                        end
                    end
                end
            end
        end
        horseTableWithoutCat = {}
        for k,v in pairs(Config.Horses) do
            for k2,v2 in pairs(v) do
                horseTableWithoutCat[GetHashKey(k2)] = {model=k2, colorName=k.." "..v2.colorName, dollarPrice=v2.dollarPrice, storageSlot=v2.storageSlot, peltStorage=v2.peltStorage, sellPrice=v2.sellPrice, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
            end
        end
        for k,v in pairs(Config.Wagons) do
            for a,b in pairs(v) do
                if b.enabled and (b.stables == 0 or openStablePosition == b.stables) and b.groupForBuy[1] == "none" then
                    for c,d in pairs(b.jobForBuy) do
                        if type(yourJob) == "table" then
                            for e,f in pairs(yourJob) do
                                if f.job == d and f.job ~= Config.UnemployedJob then
                                    editedCartStoreTable[a] = {category=k, model=a, name=b.name, dollarPrice=b.dollarPrice, goldPrice=b.goldPrice, storageSlot=b.storageSlot, jobForBuy=b.jobForBuy}
                                end
                            end
                        else
                            if yourJob == d then
                                editedCartStoreTable[a] = {category=k, model=a, name=b.name, dollarPrice=b.dollarPrice, goldPrice=b.goldPrice, storageSlot=b.storageSlot, jobForBuy=b.jobForBuy}
                            end
                        end
                        for e,f in pairs(b.jobForBuy) do
                            if Config.UnemployedJob == f then
                                editedCartStoreTable[a] = {category=k, model=a, name=b.name, dollarPrice=b.dollarPrice, goldPrice=b.goldPrice, storageSlot=b.storageSlot, jobForBuy=b.jobForBuy}
                            end
                        end
                    end
                end
                if b.groupForBuy[1] ~= "none" then
                    for c,d in pairs(b.groupForBuy) do
                        if d == yourGroup then
                            editedCartStoreTable[a] = {category=k, model=a, name=b.name, dollarPrice=b.dollarPrice, goldPrice=b.goldPrice, storageSlot=b.storageSlot, jobForBuy=b.jobForBuy}
                        end
                    end
                end
            end
        end

        if Config.CityStablesHorse then
            for i=1, #newTableHorseFilter do
                for k,v in pairs(newTableHorseFilter) do
                    if tonumber(openStablePosition) ~= tonumber(v.cityPosition) then
                        table.remove(newTableHorseFilter, k)
                    end
                end
            end
        end

        if Config.CityStablesWagon then
            for i=1, #newTableCartFilter do
                for k,v in pairs(newTableCartFilter) do
                    if tonumber(openStablePosition) ~= tonumber(v.cityPosition) then
                        table.remove(newTableCartFilter, k)
                    end
                end
            end
        end
        local newStableSystem = {}
        for k,v in pairs(Config.SpotsForStable) do
            newStableSystem[k] = v.blipSetting.blipStablesName
        end
        local newSpotsSystem = {}
        for k,v in pairs(Config.SpotForTakeCd) do
            newSpotsSystem[k] = v.blipSetting.blipStablesName
        end

        SendNUIMessage({type = "open_stable", allYourCarts=allYourCarts, allYourHorses=allYourHorses, canTransfer=Config.TransferEnable, stablesInfo=newStableSystem, spotsInfo=newSpotsSystem, status=true, horses = editedHorseStoreTable, carts=editedCartStoreTable, myhorses=newTableHorseFilter, mywagon=newTableCartFilter, mybreed=yourBreedHorses, gold_enable=Config.GoldRol, language=Config.Language, callHorse=Config.CallFromStableHorse, callCart=Config.CallFromStableCart, callMeFrom=Config.SpotForTake, callMeHorseStable=Config.CityStablesHorse, callMeCartStable=Config.CityStablesWagon, fixBreed=Config.FixBrainerItem, isTrainer=canTrain, fixFemale=Config.FemaleFixToo, isBreeder=isBreeder, canColorHorse=canColorHorse})
        SendNUIMessage({type = "comp_preload", blankets=#allBlankets,  saddles=#allSaddles, horns=#allHorns, stirrups=#allStirrups, bags=#allBags, bedrolls=#allBedrols, lantern=#allLantern, accessories=#allMasks, tails=#allTails, manes=#allManes, mustaches=#allMustaches, holsters=#allHolsters, bridles=#allBridles, propsData=#propsDatas})
    end
end)



RegisterNetEvent('gum_stables:openCompanyStable')
AddEventHandler('gum_stables:openCompanyStable', function()
    local pCoords = GetEntityCoords(PlayerPedId())
    openStablePosition = 0
    if Config.enableInteractWithNpc then
        for a,b in pairs(Config.HorseCompany) do
            if GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, b.baseSetting.enterCoords[1], b.baseSetting.enterCoords[2], b.baseSetting.enterCoords[3], false) < 5.5 then
                TriggerServerEvent("gum_stables:check_all_info_company", a, b.Job)
                break
            end
        end
    else
        for a,b in pairs(Config.HorseCompany) do
            if GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, b.baseSetting.enterCoords[1], b.baseSetting.enterCoords[2], b.baseSetting.enterCoords[3], false) < 1.5 then
                TriggerServerEvent("gum_stables:check_all_info_company", a, b.Job)
                break
            end
        end
    end
end)

RegisterNetEvent('gum_stables:openSpot')
AddEventHandler('gum_stables:openSpot', function() 
    local pCoords = GetEntityCoords(PlayerPedId())
    local fromSpot = nil
    local horses = false
    local carts = false
    for a,b in pairs(Config.SpotForTakeCd) do
        if GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, b.baseSetting.enterCoords[1], b.baseSetting.enterCoords[2], b.baseSetting.enterCoords[3], false) < 2.0 then
            TriggerServerEvent("gum_stables:check_all_info")
            Citizen.Wait(500)
            SetNuiFocus(true, true)
            fromSpot = a
            horses = b.horses
            carts = b.carts
        end
    end
    if fromSpot ~= nil then
        if horses == nil then
            horses = false
        end
        if carts == nil then
            carts = false
        end
        local elements = {}
        if Config.CallFromStableHorse and Config.CityStablesHorse then
            for k2,v2 in pairs(Config.Horses) do
                for x,y in pairs(v2) do
                    for k,v in pairs(yourHorses) do
                        if x == v["model"] then
                            if tonumber(v["isdead"]) == 0 and Config.Language[216].text ~= v["breeding"] then
                                isdeadhorse = Config.Language[38].text
                                if v.spotPosition == tonumber(fromSpot) and horses then
                                    if v.age == Config.Language[417].text then
                                        table.insert(elements, {id=v.id, isHorse = true, label = ""..v["name"].."", value = ""..v["id"]..""..v["name"].."", desc = ""..Config.Language[43].text.." : "..v2.name.."</br> "..Config.Language[279].text.." : "..y[1].."</br>"..Config.Language[44].text.." : "..v["name"].."</br>"..Config.Language[45].text.." : "..v["sex"].."</br>"..Config.Language[46].text.." : "..v["breeding"].."</br>"..Config.Language[301].text.." : "..v["exp"].." </br>"..Config.Language[47].text.." : "..v.age.."</br>"..Config.Language[48].text.." : "..isdeadhorse..""})
                                    else
                                        table.insert(elements, {id=v.id, isHorse = true, label = ""..v["name"].."", value = ""..v["id"]..""..v["name"].."", desc = ""..Config.Language[43].text.." : "..v2.name.."</br> "..Config.Language[279].text.." : "..y[1].."</br>"..Config.Language[44].text.." : "..v["name"].."</br>"..Config.Language[45].text.." : "..v["sex"].."</br>"..Config.Language[46].text.." : "..v["breeding"].."</br>"..Config.Language[301].text.." : "..v["exp"].." </br>"..Config.Language[47].text.." : "..(math.floor(v.age*10)/10).."</br>"..Config.Language[48].text.." : "..isdeadhorse..""})
                                    end
                                end
                            end
                        end
                    end
                end
            end
        else
            for k2,v2 in pairs(Config.Horses) do
                for x,y in pairs(v2) do
                    if y[1] ~= nil then
                        for k,v in pairs(yourHorses) do
                            if x == v["model"] then
                                if tonumber(v["isdead"]) == 0 and Config.Language[216].text ~= v["breeding"]  and horses then
                                    isdeadhorse = Config.Language[38].text
                                    if v.age == Config.Language[417].text then
                                        table.insert(elements, {id=v.id, isHorse = true, label = ""..v["name"].."", value = ""..v["id"]..""..v["name"].."", desc = ""..Config.Language[43].text.." : "..v2.name.."</br> "..Config.Language[279].text.." : "..y[1].."</br>"..Config.Language[44].text.." : "..v["name"].."</br>"..Config.Language[45].text.." : "..v["sex"].."</br>"..Config.Language[46].text.." : "..v["breeding"].."</br>"..Config.Language[301].text.." : "..v["exp"].." </br>"..Config.Language[47].text.." : "..v.age.."</br>"..Config.Language[48].text.." : "..isdeadhorse..""})
                                    else
                                        table.insert(elements, {id=v.id, isHorse = true, label = ""..v["name"].."", value = ""..v["id"]..""..v["name"].."", desc = ""..Config.Language[43].text.." : "..v2.name.."</br> "..Config.Language[279].text.." : "..y[1].."</br>"..Config.Language[44].text.." : "..v["name"].."</br>"..Config.Language[45].text.." : "..v["sex"].."</br>"..Config.Language[46].text.." : "..v["breeding"].."</br>"..Config.Language[301].text.." : "..v["exp"].." </br>"..Config.Language[47].text.." : "..(math.floor(v.age*10)/10).."</br>"..Config.Language[48].text.." : "..isdeadhorse..""})
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        if Config.CallFromStableCart and Config.CityStablesHorse then
            for k,v in pairs(yourCarts) do
                if v.spotPosition == tonumber(fromSpot) and carts then
                    table.insert(elements,{id=v.id, isHorse = false, label = ""..v["name"].."", value = ""..v["id"]..""..v["name"].."", desc = ""})
                end
            end
        else
            for k,v in pairs(yourCarts) do
                if carts then
                    table.insert(elements,{id=v.id, isHorse = false, label = ""..v["name"].."", value = ""..v["id"]..""..v["name"].."", desc = ""})
                end
            end
        end
        SendNuiMessage(json.encode({type = "openSpot", array = elements}))
    end
end)


RegisterNetEvent('gum_stables:fix_this_cart')
AddEventHandler('gum_stables:fix_this_cart', function(state)
    waitForFixCart = state
end)

RegisterNetEvent("gum_stables:fixWheel")
AddEventHandler("gum_stables:fixWheel", function(num)
    if not canRepair then
        return false
    end
    local timeout = 0
    if not blockInteract then
        blockInteract = true
        requestNetwork(yourCartEntity)
        antiSpam = true
        local playerPed = PlayerPedId()
        local EntityCoords = GetEntityCoords(yourCartEntity)
        local EntityHeading = GetEntityHeading(yourCartEntity)
        api.playAnim(PlayerPedId(), "amb_work@prop_human_repair_wagon_wheel_on@rear@male_a@idle_a", "idle_b", 1, -1)
        Citizen.Wait(2100)
        api.playAnim(PlayerPedId(), "amb_work@prop_human_repair_wagon_wheel_on@rear@male_a@idle_a", "idle_c", 1, -1)
        Citizen.Wait(2900)
        api.playAnim(PlayerPedId(), "amb_work@prop_human_repair_wagon_wheel_on@rear@male_a@idle_a", "idle_a", 1, -1)
        Citizen.Wait(2900)
        api.playAnim(PlayerPedId(), "amb_work@prop_human_repair_wagon_wheel_on@front@male_a@idle_b","idle_d", 1, -1)
        Citizen.Wait(2100)
        api.playAnim(PlayerPedId(), "amb_work@prop_human_repair_wagon_wheel_on@front@male_a@idle_a","idle_c", 1, -1)
        TriggerEvent("fix_wheel")
        Citizen.Wait(2100)

        while (waitForFixCart == nil) do
            counterForFixCart = counterForFixCart+1
            if counterForFixCart > 60 then
                counterForFixCart = 0
                waitForFixCart = nil
                blockInteract = false
                ClearPedTasks(PlayerPedId())
                api.notify(""..Config.Language[15].text.."", Config.Language[375].text, Config.Image, Config.Language[375].time)
                return false
            end
            Citizen.Wait(1000)
        end
        if waitForFixCart == true then
            ClearPedTasks(PlayerPedId())
            for k,v in pairs(yourCarts) do
                if tonumber(yourCartId) == v.id then
                    local wlDmg = json.decode(yourCarts[k].damage_wheel)
                    for c,d in pairs(wlDmg) do
                        if tonumber(d) == tonumber(num) then
                            wlDmg[c] = nil
                        end
                    end
                    yourCarts[k].damage_wheel = json.encode(wlDmg)
                    TriggerServerEvent("gum_stables:fix_wheel", v.id, yourCarts[k].damage_wheel)
                end
            end
            local oldId = yourCartId
            TriggerEvent('gum_stables:fleeCart')
            if DoesEntityExist(yourCartEntity) then
                Wait(100)
            end
            Citizen.Wait(500)
            for k,v in pairs(yourCarts) do
                if tonumber(oldId) == v.id then
                    initiateCart(v.model, v.id, EntityCoords.x, EntityCoords.y, EntityCoords.z, EntityHeading, true)
                end
            end
        end
        counterForFixCart = 0
        waitForFixCart = nil
        blockInteract = false
    end
end)

RegisterNetEvent('gum_stables:fix_cart')
AddEventHandler('gum_stables:fix_cart', function()
    if not canRepair then
        return false
    end
    if yourCartEntity ~= nil and not blockInteract then
        requestNetwork(yourCartEntity)
        if not blockInteract then
            blockInteract = true
            if Config.RemoveKit then
                TriggerServerEvent("gum_stables:remove_kit")
            end
            TriggerEvent("fix_wheel")
            local playerPed = PlayerPedId()
            local EntityCoords = GetEntityCoords(yourCartEntity)
            local EntityHeading = GetEntityHeading(yourCartEntity)
            api.playAnim(PlayerPedId(), "amb_work@world_human_repair@high@wrench@male_b@base","base", 1, -1)
            while (waitForFixCart == nil) do
                counterForFixCart = counterForFixCart+1
                if counterForFixCart > 60 then
                    counterForFixCart = 0
                    waitForFixCart = nil
                    blockInteract = false
                    api.notify(""..Config.Language[15].text.."", Config.Language[375].text, Config.Image, Config.Language[375].time)
                    return false
                end
                Citizen.Wait(1000)
            end
            Citizen.Wait(0)
            if waitForFixCart == true then
                SetEntityHealth(yourCartEntity, 1000)
                local oldId = yourCartId
                TriggerEvent('gum_stables:fleeCart')
                if DoesEntityExist(yourCartEntity) then
                    Wait(50)
                end
                Citizen.Wait(300)
                for k,v in pairs(yourCarts) do
                    if tonumber(oldId) == v.id then
                        initiateCart(v.model, v.id, EntityCoords.x, EntityCoords.y, EntityCoords.z, EntityHeading, true)
                    end
                end
                ClearPedTasks(PlayerPedId())
            end
            waitForFixCart = nil
            blockInteract = false
        else
            blockInteract = false
            api.notify(""..Config.Language[15].text.."", Config.Language[107].text, Config.Image, Config.Language[107].time)
        end
   
    end
end)


RegisterNetEvent("gum_stables:rename")
AddEventHandler("gum_stables:rename", function()
    api.getAnswer( ""..Config.Language[437].text.."", ""..Config.Language[438].text.."", ""..Config.Language[439].text.."", function(cb)
        local answer = cb
        if answer == true then
            if yourHorseEntity == nil then
                return false
            end
            api.getInput( ""..Config.Language[53].text.."", ""..Config.Language[440].text.."", function(cb)
                local name = cb
                if name ~= nil and name ~= 'close' then
                    TriggerServerEvent("gum_stables:rename", "horse", yourHorseId, name)
                end
            end)
        else
            if yourCartEntity == nil then
                return false
            end
            api.getInput( ""..Config.Language[53].text.."", ""..Config.Language[441].text.."", function(cb)
                local name = cb
                if name ~= nil and name ~= 'close' then
                    TriggerServerEvent("gum_stables:rename", "cart", yourCartId, name)
                end
            end)
        end
    end)
end)

RegisterNetEvent('gum_stables:getAbility')
AddEventHandler('gum_stables:getAbility', function(information, maxStorage, wagonId, model, typeItem)
    if model == "logwagon" then
        SetNuiFocus(true, true)
        SendNUIMessage({type = "openAddon", items=Config.Wood_Items, cartItems=json.decode(information), maxStorage=maxStorage, wagonId=wagonId, model=model, typeItem="wood"})
    elseif model == "coal_wagon" then
        SetNuiFocus(true, true)
        SendNUIMessage({type = "openAddon", items=Config.Stone_Items, cartItems=json.decode(information), maxStorage=maxStorage, wagonId=wagonId, model=model, typeItem="stone"})
    end

    if GetEntityModel(yourCartEntity) == GetHashKey("logwagon") then
        local empty = false
        for x,z in pairs(json.decode(information)) do
            if tonumber(z) ~= 0 then
                empty = true
            end
        end
        if empty == true then
            Citizen.InvokeNative(0x75F90E4051CC084C, yourCartEntity, 0)
            Citizen.Wait(5)
            Citizen.InvokeNative(0x75F90E4051CC084C, yourCartEntity, GetHashKey("pg_veh_logwagon_1"))
            Citizen.InvokeNative(0x31F343383F19C987, yourCartEntity, 1.0, 1)
        else
            Citizen.InvokeNative(0x75F90E4051CC084C, yourCartEntity, 0)
        end
    end
    if GetEntityModel(yourCartEntity) == GetHashKey("coal_wagon") then
        local empty = false
        for x,z in pairs(json.decode(information)) do
            if tonumber(z) ~= 0 then
                empty = true
            end
        end
        if empty == true then
            Citizen.InvokeNative(0x75F90E4051CC084C, yourCartEntity, 0)
            Citizen.Wait(5)
            Citizen.InvokeNative(0x75F90E4051CC084C, yourCartEntity, GetHashKey("pg_delivery_Coal01x"))
            Citizen.InvokeNative(0x31F343383F19C987, yourCartEntity, 1.0, 1)
        else
            Citizen.InvokeNative(0x75F90E4051CC084C, yourCartEntity, 0)
        end
    end
end)

RegisterNUICallback('maniAddon', function(data,cb)
    api.getAnswer( ""..Config.Language[406].text.."", ""..Config.Language[407].text.."", ""..Config.Language[408].text.."", function(cb)
        local answer = cb
        if answer == true then
            api.getInput( ""..Config.Language[53].text.."", ""..Config.Language[409].text.." "..data.name.." "..Config.Language[410].text.."", function(cb)
                local count_item = tonumber(cb)
                if count_item ~= nil and count_item ~= 0 and count_item > 0 and count_item ~= 'close' then
                    TriggerServerEvent("gum_stables:maniAddon", data.itemId, count_item, data.max, data.id, 0, data.model, data.typeItem)
                end
            end)
        else
            api.getInput( ""..Config.Language[53].text.."", ""..Config.Language[409].text.." "..data.name.." "..Config.Language[411].text.."", function(cb)
                local count_item = tonumber(cb)
                if count_item ~= nil and count_item ~= 0 and count_item > 0 and count_item ~= 'close' then
                    TriggerServerEvent("gum_stables:maniAddon", data.itemId, count_item, data.max, data.id, 1, data.model, data.typeItem)
                end
            end)
        end
    end)
end)

RegisterNetEvent("gum_stables:eat_function")
AddEventHandler("gum_stables:eat_function", function(item, health, stamina, gold_stamina, gold_health, prop)
    local pCoords = GetEntityCoords(PlayerPedId())
    local eEntity = GetMount(PlayerPedId())
    if yourHorseBlockUse <= 0 then
        blockEatNow = false
    end
    if blockEatNow == false then
        blockEatNow = true
        if eEntity ~= 0 then
            TriggerServerEvent("gum_stables:rem_function", item)
            Citizen.InvokeNative(0xCD181A959CFDD7F4, PlayerPedId(), eEntity, GetHashKey("Interaction_Food"), GetHashKey(prop), 1)
            local valueHealth = Citizen.InvokeNative(0x36731AC041289BB1, eEntity, 0)
            local valueStamina = Citizen.InvokeNative(0x36731AC041289BB1, eEntity, 1)
            if not tonumber(valueHealth) then valueHealth = 0 end
            if not tonumber(valueStamina) then valueStamina = 0 end
            Citizen.Wait(3500)
            Citizen.InvokeNative(0xC6258F41D86676E0, eEntity, 0, valueHealth + health)
            Citizen.InvokeNative(0xC6258F41D86676E0, eEntity, 1, valueStamina + stamina)
            Citizen.InvokeNative(0xF6A7C08DF2E28B28, eEntity, 0, gold_health)
            Citizen.InvokeNative(0xF6A7C08DF2E28B28, eEntity, 1, gold_stamina)
            if (yourHorseEntity == eEntity) then
                gainHorseExp(Config.ExpTable.Feeding)
            end
            if Config.BlockSpamEat == true then
                yourHorseBlockUse = Config.BlockSpamEatTime
                while true do
                    yourHorseBlockUse = yourHorseBlockUse - 1
                    if yourHorseBlockUse <= 0 then
                        blockEatNow = false
                        break
                    end
                    Citizen.Wait(1000)
                end
            end
        else
            local hCoords = GetEntityCoords(yourHorseEntity)
            local distanc = GetDistanceBetweenCoords(pCoords, hCoords)
            if distanc < 2.0 then
                TriggerServerEvent("gum_stables:rem_function", item)
                Citizen.InvokeNative(0xCD181A959CFDD7F4, PlayerPedId(), yourHorseEntity, GetHashKey("Interaction_Food"), GetHashKey(prop), 1)
                local valueHealth = Citizen.InvokeNative(0x36731AC041289BB1, yourHorseEntity, 0)
                local valueStamina = Citizen.InvokeNative(0x36731AC041289BB1, yourHorseEntity, 1)
                if not tonumber(valueHealth) then valueHealth = 0 end
                if not tonumber(valueStamina) then valueStamina = 0 end
                Citizen.Wait(3500)
                Citizen.InvokeNative(0xC6258F41D86676E0, yourHorseEntity, 0, valueHealth + health)
                Citizen.InvokeNative(0xC6258F41D86676E0, yourHorseEntity, 1, valueStamina + stamina)
                Citizen.InvokeNative(0xF6A7C08DF2E28B28, yourHorseEntity, 0, gold_health)
                Citizen.InvokeNative(0xF6A7C08DF2E28B28, yourHorseEntity, 1, gold_stamina)
                gainHorseExp(Config.ExpTable.Feeding)
                if Config.BlockSpamEat == true then
                    yourHorseBlockUse = Config.BlockSpamEatTime
                    while true do
                        yourHorseBlockUse = yourHorseBlockUse - 1
                        if yourHorseBlockUse <= 0 then
                            blockEatNow = false
                            break
                        end
                        Citizen.Wait(1000)
                    end
                end
            else
                api.notify(""..Config.Language[15].text.."", ""..Config.Language[156].text.."", Config.Image, Config.Language[156].time)
            end
        end
    else
        api.notify(""..Config.Language[15].text.."", ""..Config.Language[423].text..yourHorseBlockUse.."s", Config.Image, Config.Language[156].time)
    end
end)

RegisterNetEvent("gum_stables:eatFunctionForFarming")
AddEventHandler("gum_stables:eatFunctionForFarming", function(herbSeed, herbItem, herbToSeed)
    local item = herbItem
    local health = 0
    local stamina = 0
    for k,v in pairs(Config.Eat_Items) do
        if item == v.item then
            health = v.health
            stamina = v.stamina
        end
    end
    local distanc = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(yourHorseEntity))
    if distanc < 2.0 then
        if yourHorseBlockUse <= 0 then
            blockEatNow = false
        end
        if blockEatNow == false then
            if Config.BlockSpamEat then
                blockEatNow = true
            end
            gainHorseExp(Config.ExpTable.Feeding)
            TriggerServerEvent("gum_stables:rem_function", item)
            Citizen.InvokeNative(0xCD181A959CFDD7F4, PlayerPedId(), yourHorseEntity, GetHashKey("Interaction_Food"), GetHashKey(prop), 1)
            local valueHealth = Citizen.InvokeNative(0x36731AC041289BB1, yourHorseEntity, 0)
            local valueStamina = Citizen.InvokeNative(0x36731AC041289BB1, yourHorseEntity, 1)
            if not tonumber(valueHealth) then valueHealth = 0 end
            if not tonumber(valueStamina) then valueStamina = 0 end
            Citizen.Wait(3500)
            Citizen.InvokeNative(0xC6258F41D86676E0, yourHorseEntity, 0, valueHealth + health)
            Citizen.InvokeNative(0xC6258F41D86676E0, yourHorseEntity, 1, valueStamina + stamina)
            if Config.BlockSpamEat == true then
                yourHorseBlockUse = Config.BlockSpamEatTime
                Citizen.CreateThread(function()
                    while true do
                        yourHorseBlockUse = yourHorseBlockUse - 1
                        if yourHorseBlockUse <= 0 then
                            blockEatNow = false
                            break
                        end
                        Citizen.Wait(1000)
                    end
                end)
            end
        else
            api.notify(""..Config.Language[15].text.."", ""..Config.Language[423].text..yourHorseBlockUse.."s", Config.Image, Config.Language[156].time)
        end
    else
        TriggerEvent("gum_metabolism:useMeFromStable", herbItem)
    end
end)

RegisterNetEvent("gum_stables:stimulant_function")
AddEventHandler("gum_stables:stimulant_function", function(item, health, stamina, gold_health, gold_stamina, healItem)
    local pCoords = GetEntityCoords(PlayerPedId())
    if not canHeal then
        return false
    end
    if healItem then
        local hCoords = getNearHorseCoords()
        if hCoords == nil then
            api.notify(""..Config.Language[15].text.."", ""..Config.Language[515].text.."", Config.Image, Config.Language[515].time)
            return false
        end

        api.playAnim(PlayerPedId(), "mini_games@story@mob4@heal_jules@bandage@arthur","trouniquet_intro", 1, 6000)
        Citizen.Wait(4000)
        local playerId = getPlayerIdFromServer(3.0)
        api.getAnswer(''..Config.Language[516].text..''..playerId..'?', ''..Config.Language[335].text..'', ''..Config.Language[336].text..'', function(cb)
            if cb == true then
                TriggerServerEvent("gum_stables:rem_function", item)
                TriggerServerEvent("gum_stables:reviveHorse", playerId)
            end
        end)
    else
        local pCoords = GetEntityCoords(PlayerPedId())
        local eEntity = GetMount(PlayerPedId())
        if eEntity ~= 0 then
            TriggerServerEvent("gum_stables:rem_function", item)
            TaskAnimalInteraction(PlayerPedId(), eEntity, -1355254781, GetHashKey("p_cs_syringe01x"), 0)
            local valueHealth = Citizen.InvokeNative(0x36731AC041289BB1, eEntity, 0)
            local valueStamina = Citizen.InvokeNative(0x36731AC041289BB1, eEntity, 1)   
            if not tonumber(valueHealth) then valueHealth = 0 end
            if not tonumber(valueStamina) then valueStamina = 0 end
            Citizen.Wait(3500)
            Citizen.InvokeNative(0xC6258F41D86676E0, eEntity, 0, valueHealth + health)
            Citizen.InvokeNative(0xC6258F41D86676E0, eEntity, 1, valueStamina + stamina)
            Citizen.InvokeNative(0xF6A7C08DF2E28B28, eEntity, 0, gold_health)
            Citizen.InvokeNative(0xF6A7C08DF2E28B28, eEntity, 1, gold_stamina)
            Citizen.InvokeNative(0x50C803A4CD5932C5, true) 
            Citizen.InvokeNative(0xD4EE21B7CC7FD350, true) 
        else
            local hCoords = GetEntityCoords(yourHorseEntity)
            local distanc = GetDistanceBetweenCoords(pCoords, hCoords)
            if distanc < 2.0 then
                TriggerServerEvent("gum_stables:rem_function", item)
                TaskAnimalInteraction(PlayerPedId(), yourHorseEntity, -1355254781, GetHashKey("p_cs_syringe01x"), 0)
                local valueHealth = Citizen.InvokeNative(0x36731AC041289BB1, yourHorseEntity, 0)
                local valueStamina = Citizen.InvokeNative(0x36731AC041289BB1, yourHorseEntity, 1)   
                if not tonumber(valueHealth) then valueHealth = 0 end
                if not tonumber(valueStamina) then valueStamina = 0 end
                Citizen.Wait(3500)
                Citizen.InvokeNative(0xC6258F41D86676E0, yourHorseEntity, 0, valueHealth + health)
                Citizen.InvokeNative(0xC6258F41D86676E0, yourHorseEntity, 1, valueStamina + stamina)
                Citizen.InvokeNative(0xF6A7C08DF2E28B28, yourHorseEntity, 0, gold_health)
                Citizen.InvokeNative(0xF6A7C08DF2E28B28, yourHorseEntity, 1, gold_stamina)
                Citizen.InvokeNative(0x50C803A4CD5932C5, true) 
                Citizen.InvokeNative(0xD4EE21B7CC7FD350, true) 
            else
                api.notify(""..Config.Language[15].text.."", ""..Config.Language[156].text.."", Config.Image, Config.Language[156].time)
            end
        end
    end
end)

function getNearHorseCoords()
    local hCoords = nil
    local pCoords = GetEntityCoords(PlayerPedId())
    for a,b in pairs(GetGamePool('CPed')) do
        local chCoords = GetEntityCoords(b)
        if GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, chCoords.x, chCoords.y, chCoords.z, false) < 2.0 and Citizen.InvokeNative(0x772A1969F649E902, GetEntityModel(b)) and GetEntityHealth(b) < 5 then
            hCoords = GetEntityCoords(b)
        end
    end
    return hCoords
end

function getNearHorseEntity()
    local pCoords = GetEntityCoords(PlayerPedId())
    local hEntity = nil
    for a,b in pairs(GetGamePool('CPed')) do
        local chCoords = GetEntityCoords(b)
        if GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, chCoords.x, chCoords.y, chCoords.z, false) < 2.0 and Citizen.InvokeNative(0x772A1969F649E902, GetEntityModel(b)) then
            hEntity = b
        end
    end
    return hEntity
end

function getPlayerIdFromServer(distance)
    local playerId = 0
    local pCoords = GetEntityCoords(PlayerPedId())
    for a,b in pairs(GetActivePlayers()) do
        if GetPlayerPed(b) ~= PlayerPedId() then 
            local tCoords = GetEntityCoords(GetPlayerPed(b))
            local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, tCoords.x, tCoords.y, tCoords.z, false)
            if dist < distance then
                playerId = GetPlayerServerId(b)
            end
        end
    end
    if playerId == 0 then
        for a,b in pairs(GetActivePlayers()) do
            if GetPlayerPed(b) == PlayerPedId() then
                playerId = GetPlayerServerId(b)
            end
        end
    end
    return playerId
end

RegisterNetEvent('gum_stables:reviveHorse')
AddEventHandler('gum_stables:reviveHorse', function()
    if not getMountAndVehicle() then
        return false
    end
    if yourHorseEntity ~= nil then
        for a,b in pairs(yourHorses) do
            if b.id == tonumber(yourHorseId) and tonumber(b.isdead) == 2 then
                api.notify(""..Config.Language[15].text.."", ""..Config.Language[427].text.."", Config.Image, Config.Language[427].time)
                return false
            end
        end
        local horseId = tonumber(yourHorseId)
        local hCoords = GetEntityCoords(yourHorseEntity)
        local heading = GetEntityHeading(yourHorseEntity)
        TriggerEvent('gum_stables:fleeHorse', true)
        if DoesEntityExist(yourHorseEntity) then
            Wait(100)
        end
        for k,v in pairs(yourHorses) do
            if tonumber(horseId) == v.id then
                local status = json.decode(v.status)
                if status.health == nil then
                    status.health = 100
                end
                v.status = json.encode(status)
                v.isdead = 0
                TriggerServerEvent('gum_stables:revivedHorse', v.id, v.status)
                initiateHorse(v["model"], v["id"], hCoords.x, hCoords.y, hCoords.z, heading, true)
            end
        end
    end
end)

RegisterNetEvent('gum_stables:brush')
AddEventHandler('gum_stables:brush', function()
    local pCoords = GetEntityCoords(PlayerPedId())
    if GetMount(PlayerPedId()) ~= 0 then
        TaskAnimalInteraction(PlayerPedId(), GetMount(PlayerPedId()), 554992710, GetHashKey("P_BRUSHHORSE02X"), 0)
        Citizen.Wait(3000)
        if (yourHorseEntity == GetMount(PlayerPedId())) then
            yourHorseDirtState = yourHorseDirtState - Config.DirtyDownWithBrush
            if yourHorseDirtState < 0 then
                yourHorseDirtState = 0
            end
            SetAttributePoints(yourHorseEntity, 16, math.floor(yourHorseDirtState))
            gainHorseExp(Config.ExpTable.Brushing)
        else
            SetAttributeBaseRank(GetMount(PlayerPedId()), 16, tonumber(0.0))
        end
    else
        local hCoords = GetEntityCoords(yourHorseEntity)
        local distanc = GetDistanceBetweenCoords(pCoords, hCoords)
        if distanc < 2.0 then
            TaskAnimalInteraction(PlayerPedId(), yourHorseEntity, 554992710, GetHashKey("P_BRUSHHORSE02X"), 0)
            Citizen.Wait(4000)
            SetAttributeBaseRank(yourHorseEntity, 16, tonumber(0.0))

            yourHorseDirtState = 0
            gainHorseExp(Config.ExpTable.Brushing)
        else
            api.notify(""..Config.Language[15].text.."", ""..Config.Language[156].text.."", Config.Image, Config.Language[156].time)
        end
    end

end)

RegisterNuiCallback('canRotate', function(data, cb)
    if data.rotate then
        canRotate = true
    else
        canRotate = false
    end
end)

RegisterNUICallback("rotate", function(data, cb)
    if canRotate then
        if data.direction == "left" then
            mouseX = mouseX - 2.0
        elseif data.direction == "right" then
            mouseX = mouseX + 2.0
        elseif data.direction == "up" then
            if (mouseY+1.0 >= -65 and mouseY+1.0 <= 105) then
                mouseY = mouseY + 1.0
            end
        elseif data.direction == "down" then
            if (mouseY-1.0 >= -65 and mouseY-1.0 <= 105) then
                mouseY = mouseY - 1.0
            end
        elseif data.direction == "zoom+" then
            if fov-2 >= 10 then
                fov = fov - 2.0
            end
        elseif data.direction == "zoom-" then
            if fov+2 <= 110 then
                fov = fov + 2.0
            end
        end
        ProcessCamControls()
    end
end)

RegisterNetEvent("gum_stables:saveWagonToHousing")
AddEventHandler("gum_stables:saveWagonToHousing", function(houseId, state)
    if state == "horse" then
        TriggerServerEvent("gum_stables:saveMeHouse", yourHorseId, houseId, "horse")
        TriggerEvent("gum_stables:fleeHorse", true)
    elseif state == "cart" then
        Citizen.InvokeNative(0xD3DBCE61A490BE02, PlayerPedId(), yourCartEntity, 16)
        Citizen.Wait(2500)
        TriggerServerEvent("gum_stables:saveMeHouse", yourCartId, houseId, "cart")
        TriggerEvent("gum_stables:fleeCart")
    end  
    Citizen.Wait(2000)
    TriggerServerEvent("gum_stables:check_all_info")
end)

RegisterNetEvent("gum_stables:saveWagonToInterior")
AddEventHandler("gum_stables:saveWagonToInterior", function(houseId, state)
    if state == "horse" then
        TriggerServerEvent("gum_stables:saveMeInterior", yourHorseId, houseId, "horse")
        TriggerEvent("gum_stables:fleeHorse", true)
    elseif state == "cart" then
        Citizen.InvokeNative(0xD3DBCE61A490BE02, PlayerPedId(), yourCartEntity, 16)
        Citizen.Wait(2500)
        TriggerServerEvent("gum_stables:saveMeInterior", yourCartId, houseId, "cart")
        TriggerEvent("gum_stables:fleeCart")
    end  
    Citizen.Wait(2000)
    TriggerServerEvent("gum_stables:check_all_info")
end)

RegisterNetEvent('gum_stables:trainingHorse')
AddEventHandler('gum_stables:trainingHorse', function()
    if not canTraining then
        return false
    end
    ClearPedTasks(PlayerPedId())
    yourHorseInTraining = true
    horsePromptEnable(false)
end)

RegisterNetEvent('gum_stables:wildHorse')
AddEventHandler('gum_stables:wildHorse', function()
    api.showPrompt('', promptWildHorse, false)

    local model = horseTableWithoutCat[GetEntityModel(interactHorse)].model
    local price = horseTableWithoutCat[GetEntityModel(interactHorse)].dollarPrice/horseTableWithoutCat[GetEntityModel(interactHorse)].sellPrice
    local gender = math.random(1,2)
    if tonumber(gender) == 1 then gender = ""..Config.Language[68].text.."" else gender = ""..Config.Language[67].text.."" end
    if SellWildHorse[GetEntityModel(interactHorse)] == nil then
        SellWildHorse[GetEntityModel(interactHorse)] = gender
    end
    if Config.SellWildButton and Config.SaveWildButton then
        api.getAnswer(''..Config.Language[494].text..'', ''..Config.Language[495].text..'', ''..Config.Language[496].text..'', function(cb)
            if cb == true then
                saveWildHorse(interactHorse, price, SellWildHorse[GetEntityModel(interactHorse)], model)
            else
                sellWildHorses(interactHorse, price, SellWildHorse[GetEntityModel(interactHorse)], model)
            end
        end)
    elseif Config.SaveWildButton and not Config.SellWildButton then
        saveWildHorse(interactHorse, price, SellWildHorse[GetEntityModel(interactHorse)], model)
    elseif Config.SellWildButton and not Config.SaveWildButton then
        sellWildHorses(interactHorse, price, SellWildHorse[GetEntityModel(interactHorse)], model)
    end
end)

RegisterNetEvent('gum_stables:rearHorse')
AddEventHandler('gum_stables:rearHorse', function()
    if yourHorsePlayAnim then
        return false
    end
    trainingButtonState(false)
    api.setPromptEnable(''..Config.Language[464].text..'', promptTraining, false)
    yourHorsePlayAnim = true
    local random = math.random(1, 2)
    if random == 1 then
        api.playAnim(yourHorseEntity, "creatures_mammal@horse@normal@idle@rearup","rear_large", 1, 2000)
    elseif random == 2 then
        api.playAnim(yourHorseEntity, "creatures_mammal@horse@normal@idle@rearup","rear_medium", 1, 2000)
    else
        api.playAnim(yourHorseEntity, "creatures_mammal@horse@normal@idle@rearup","rear_small", 1, 2000)
    end
    Citizen.Wait(2000)
    gainHorseExp(Config.ExpTable.RearUp)
    api.setPromptEnable(''..Config.Language[464].text..'', promptTraining, true)
    trainingButtonState(true)
    yourHorsePlayAnim = false
end)

RegisterNetEvent('gum_stables:footScratchHorse')
AddEventHandler('gum_stables:footScratchHorse', function()
    if yourHorsePlayAnim then
        return false
    end
    yourHorsePlayAnim = true
    trainingButtonState(false)
    if math.random(1,2) == 1 then
        api.playAnim(yourHorseEntity, "creatures_mammal@horse@normal@idle@variation@footscratch01","idle", 1, 2000)
    else
        api.playAnim(yourHorseEntity, "creatures_mammal@horse@normal@idle@variation@footscratch02","idle", 1, 2000)
    end
    Citizen.Wait(2000)
    gainHorseExp(Config.ExpTable.FootScrats)
    trainingButtonState(true)
    yourHorsePlayAnim = false
end)

RegisterNetEvent('gum_stables:danceHorse')
AddEventHandler('gum_stables:danceHorse', function()
    if yourHorsePlayAnim then
        return false
    end
    trainingButtonState(false)
    yourHorsePlayAnim = true
    api.playAnim(yourHorseEntity, "creatures_mammal@horse@agitated@trot@piaffe","move", 1, 10000)
    Citizen.Wait(10000)
    gainHorseExp(Config.ExpTable.Dancing)
    trainingButtonState(true)
    yourHorsePlayAnim = false
end)

RegisterNetEvent('gum_stables:jumpHorse')
AddEventHandler('gum_stables:jumpHorse', function()
    if yourHorsePlayAnim then
        return false
    end
    trainingButtonState(false)
    yourHorsePlayAnim = true
    api.playAnim(yourHorseEntity, "creatures_mammal@horse@agitated_high@idle@variation@jump01","idle", 1, 5000)
    Citizen.Wait(5000)
    gainHorseExp(Config.ExpTable.Jumping)
    trainingButtonState(true)
    yourHorsePlayAnim = false
end)

RegisterNetEvent('gum_stables:longingHorse')
AddEventHandler('gum_stables:longingHorse', function()
    yourHorseLonging = true
    MoveAroundPlayer(yourHorseEntity)
end)

RegisterNetEvent('gum_stables:cancelTraining')
AddEventHandler('gum_stables:cancelTraining', function()
    yourHorseInTraining = false
    yourHorseLonging = false
    Citizen.Wait(100)
    horsePromptEnable(true)
end)

function trainerPromptEnable(state)
    api.setPromptEnable(''..Config.Language[455].text..'', promptTrainer, state)
    api.setPromptEnable(''..Config.Language[473].text..'', promptTrainer, state)
    api.setPromptEnable(''..Config.Language[456].text..'', promptTrainer, state)
    api.setPromptEnable(''..Config.Language[457].text..'', promptTrainer, state)
    api.setPromptEnable(''..Config.Language[458].text..'', promptTrainer, state)
end

function horsePromptEnable(state)
    if state == true then
        local promptGroup = Citizen.InvokeNative(0xB796970BD125FCE8, yourHorseEntity)
        api.setPromptEnable(''..Config.Language[82].text..'', promptGroup, true)
        api.setPromptEnable(''..Config.Language[83].text..'', promptGroup, true)
        api.setPromptEnable(''..Config.Language[356].text..'', promptGroup, true)
        api.setPromptEnable(''..Config.Language[358].text..'', promptGroup, true)
        api.setPromptEnable(''..Config.Language[359].text..'', promptGroup, true)
        api.setPromptEnable(''..Config.Language[360].text..'', promptGroup, true)
        api.setPromptEnable(''..Config.Language[361].text..'', promptGroup, true)
        if Config.hoofHook == true then
            api.setPromptEnable(''..Config.Language[430].text..'', promptGroup, true)
        end
    else
        local promptGroup = Citizen.InvokeNative(0xB796970BD125FCE8, yourHorseEntity)
        api.setPromptEnable(''..Config.Language[356].text..'', promptGroup, false)
        api.setPromptEnable(''..Config.Language[358].text..'', promptGroup, false)
        api.setPromptEnable(''..Config.Language[359].text..'', promptGroup, false)
        api.setPromptEnable(''..Config.Language[360].text..'', promptGroup, false)
        api.setPromptEnable(''..Config.Language[361].text..'', promptGroup, false)
        if Config.hoofHook == true then
            api.setPromptEnable(''..Config.Language[430].text..'', promptGroup, false)
        end
    end
end

RegisterNetEvent('gum_stables:cancelLead')
AddEventHandler('gum_stables:cancelLead', function()
    ClearPedTasks(PlayerPedId())
end)

RegisterNetEvent('gum_stables:restHorse')
AddEventHandler('gum_stables:restHorse', function()
    if yourHorseEntity == nil then
        return false
    end
    ClearPedTasks(PlayerPedId())
    if yourHorsePlayAnim then
        return false
    end
    if not yourHorsePlayAnim then
        yourHorsePlayAnim = true
    end
    requestNetwork(yourHorseEntity)
    if not IsPedOnMount(PlayerPedId()) then
        if yourHorseLevel >= Config.Skills.horseRest[1] then 
            if yourHorsePlayAnim == true then
                api.playAnim(yourHorseEntity, "amb_creature_mammal@world_horse_resting@stand_enter","enter", 1, 4000)
                Citizen.Wait(4000)
                api.playAnim(yourHorseEntity, "amb_creature_mammal@world_horse_resting@base","base", 1, -1)
                while yourHorsePlayAnim == true do
                    if IsPedOnMount(PlayerPedId()) then
                        yourHorsePlayAnim = false
                    end
                    Citizen.Wait(0)
                    if IsEntityPlayingAnim(yourHorseEntity, "amb_creature_mammal@world_horse_resting@base", "base", 3) == false then
                        api.playAnim(yourHorseEntity, "amb_creature_mammal@world_horse_resting@base","base", 1, -1)
                    end
                end
                api.playAnim(yourHorseEntity, "amb_creature_mammal@world_horse_resting@stand_exit","exit", 1, 2500)
                Citizen.Wait(2500)
                ClearPedTasks(yourHorseEntity)
                if Config.ExpTable.ExpForCommandSkills then 
                    gainHorseExp(Config.ExpTable.Resting)
                end
            end
        else
            api.notify(""..Config.Language[15].text.."", ""..Config.Language[87].text, Config.Image, Config.Language[87].time)
        end
    end
end)

RegisterNetEvent('gum_stables:sleepHorse')
AddEventHandler('gum_stables:sleepHorse', function()
    if yourHorseEntity == nil then
        return false
    end
    ClearPedTasks(PlayerPedId())
    if yourHorsePlayAnim then
        return false
    end
    if not yourHorsePlayAnim then
        yourHorsePlayAnim = true
    end

    requestNetwork(yourHorseEntity)
    if not IsPedOnMount(PlayerPedId()) then
        if yourHorseLevel >= Config.Skills.horseSleep[1] then 
            if yourHorsePlayAnim == true then
                api.playAnim(yourHorseEntity, "amb_creature_mammal@world_horse_sleeping@stand_enter","enter", 1, 5900)
                Citizen.Wait(5800)
                api.playAnim(yourHorseEntity, "amb_creature_mammal@world_horse_sleeping@base","base", 1, -1)
                while yourHorsePlayAnim == true do
                    if IsPedOnMount(PlayerPedId()) then
                        yourHorsePlayAnim = false
                    end
                    Citizen.Wait(0)
                    if IsEntityPlayingAnim(yourHorseEntity, "amb_creature_mammal@world_horse_sleeping@base", "base", 3) == false then
                        api.playAnim(yourHorseEntity, "amb_creature_mammal@world_horse_sleeping@base", "base", 1, -1)
                    end
                end
                api.playAnim(yourHorseEntity, "amb_creature_mammal@world_horse_sleeping@stand_exit","exit", 1, 3500)
                Citizen.Wait(3500)
                ClearPedTasks(yourHorseEntity)
                if Config.ExpTable.ExpForCommandSkills then 
                    gainHorseExp(Config.ExpTable.Sleep)
                end
            end
        else
            api.notify(""..Config.Language[15].text.."", ""..Config.Language[87].text, Config.Image, Config.Language[87].time)
        end
    end
end)
if Config.EnableCommands then
    for k,v in pairs(Config.Skills) do
        RegisterCommand(k, function(source, args, rawCommand)
            TriggerEvent(v[2])
        end)
    end
end
RegisterNetEvent('gum_stables:wallowHorse')
AddEventHandler('gum_stables:wallowHorse', function()
    if yourHorseEntity == nil then
        return false
    end
    ClearPedTasks(PlayerPedId())
    if yourHorsePlayAnim then
        return false
    end
    if not yourHorsePlayAnim then
        yourHorsePlayAnim = true
    end
    requestNetwork(yourHorseEntity)
    if not IsPedOnMount(PlayerPedId()) then
        if yourHorseLevel >= Config.Skills.horseWallow[1] then 
            if yourHorsePlayAnim == true then
                api.playAnim(yourHorseEntity, "amb_creature_mammal@world_horse_wallow_shake@stand_enter","enter", 1, 2500)
                Citizen.Wait(2500)
                api.playAnim(yourHorseEntity, "amb_creature_mammal@world_horse_wallow_shake@base","base", 1, -1)
                while yourHorsePlayAnim == true do
                    if IsPedOnMount(PlayerPedId()) then
                        yourHorsePlayAnim = false
                    end
                    Citizen.Wait(0)
                    if IsEntityPlayingAnim(yourHorseEntity, "amb_creature_mammal@world_horse_wallow_shake@base", "base", 3) == false then
                        api.playAnim(yourHorseEntity, "amb_creature_mammal@world_horse_wallow_shake@base","base", 1, -1)
                    end
                end
                api.playAnim(yourHorseEntity, "amb_creature_mammal@world_horse_wallow_shake@stand_exit","exit", 1, 2000)
                Citizen.Wait(2000)
                ClearPedTasks(yourHorseEntity)
                if Config.ExpTable.ExpForCommandSkills then 
                    gainHorseExp(Config.ExpTable.Wallow)
                end
            end
        else
            api.notify(""..Config.Language[15].text.."", ""..Config.Language[87].text, Config.Image, Config.Language[87].time)
        end
    end
end)

RegisterNetEvent('gum_stables:drinkHorse')
AddEventHandler('gum_stables:drinkHorse', function()
    if yourHorseEntity == nil then
        return false
    end
    ClearPedTasks(PlayerPedId())
    if yourHorsePlayAnim then
        return false
    end
    if not yourHorsePlayAnim then
        yourHorsePlayAnim = true
    end
    if not IsEntityInWater(yourHorseEntity) then
        yourHorsePlayAnim = false
        api.notify(""..Config.Language[15].text.."", ""..Config.Language[89].text, Config.Image, Config.Language[89].time)
        return false
    end
    requestNetwork(yourHorseEntity)
    if not IsPedOnMount(PlayerPedId()) then
        if yourHorseLevel >= Config.Skills.horseDrink[1] then 
            if yourHorsePlayAnim == true then
                api.playAnim(yourHorseEntity, "amb_creature_mammal@world_horse_drink_ground@stand_enter","enter", 1, 1500)
                Citizen.Wait(1500)
                api.playAnim(yourHorseEntity, "amb_creature_mammal@world_horse_drink_ground@base","base", 1, -1)
                while yourHorsePlayAnim == true do
                    if IsPedOnMount(PlayerPedId()) then
                        yourHorsePlayAnim = false
                    end
                    Citizen.Wait(0)
                    if IsEntityPlayingAnim(yourHorseEntity, "amb_creature_mammal@world_horse_drink_ground@base","base", 3) == false then
                        api.playAnim(yourHorseEntity, "amb_creature_mammal@world_horse_drink_ground@base","base", 1, -1)
                    end
                end
                local valueStamina = Citizen.InvokeNative(0x36731AC041289BB1, yourHorseEntity, 1)
                if not tonumber(valueStamina) then valueStamina = 0 end
                api.playAnim(yourHorseEntity, "amb_creature_mammal@world_horse_drink_ground@stand_exit","exit", 1, 1000)
                Citizen.InvokeNative(0xC6258F41D86676E0, yourHorseEntity, 1, valueStamina + 30)
                Citizen.Wait(1000)
                ClearPedTasks(yourHorseEntity)
                if Config.ExpTable.ExpForCommandSkills then 
                    gainHorseExp(Config.ExpTable.Drink)
                end
            end
        else
            api.notify(""..Config.Language[15].text.."", ""..Config.Language[87].text, Config.Image, Config.Language[87].time)
        end
    end
end)

RegisterNetEvent('gum_stables:putPeltOnHorse')
AddEventHandler('gum_stables:putPeltOnHorse', function()
    if antiSpam == false then
        antiSpam = true
        local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
        api.setPromptEnable(""..Config.Language[84].text.."", promptPelts, false)

        if #yourHorsePelts >= horseTableWithoutCat[GetEntityModel(yourHorseEntity)].peltStorage then
            antiSpam = false
            api.setPromptEnable(""..Config.Language[84].text.."", promptPelts, true)
            return false
        end
        if Config.Pelts2[GetEntityModel(holding)] == nil then
            antiSpam = false
            api.setPromptEnable(""..Config.Language[84].text.."", promptPelts, true)
            return false
        end

        local peltHash = Citizen.InvokeNative(0x31FEF6A20F00B963, holding)
        table.insert(yourHorsePelts, {Config.Pelts2[GetEntityModel(holding)][1], peltHash})
        TaskPlaceCarriedEntityOnMount(PlayerPedId(), holding, yourHorseEntity, 1)
        Citizen.Wait(5000)
        antiSpam = false
    end
    api.setPromptEnable(""..Config.Language[84].text.."", promptPelts, true)
end)

RegisterNetEvent('gum_stables:takePeltFromHorse')
AddEventHandler('gum_stables:takePeltFromHorse', function()
    api.setPromptEnable(""..Config.Language[844].text.."", promptPelts, false)
    if antiSpam == false then
        antiSpam = true
        if #yourHorsePelts == 0 then
            api.setPromptEnable(""..Config.Language[844].text.."", promptPelts, true)
            return false
        end
        local pCoords = GetEntityCoords(PlayerPedId())
        turnToEntity(PlayerPedId(), pCoords.x, pCoords.y, pCoords.z)
        api.playAnim(PlayerPedId(), "mech_skin@pelt_ms@horse_satchel@stow@rt@toss","base", 1, 1500)
        Citizen.Wait(1500)
        local obj = CreateObject(yourHorsePelts[#yourHorsePelts][1], GetEntityCoords(PlayerPedId()), 1, 1, 1)
        if Config.Pelts2[GetHashKey(yourHorsePelts[#yourHorsePelts][1])][2] then
            Citizen.InvokeNative(0xF0B4F759F35CC7F5, obj, -1648601722, PlayerPedId(), 0, 512) -- Big
        else
            if yourHorsePelts[#yourHorsePelts][1] == "p_cs_pelt_medlarge" then
                Citizen.InvokeNative(0xF0B4F759F35CC7F5, obj, 1212186523, PlayerPedId(), 0, 512) -- Small
            else
                Citizen.InvokeNative(0xF0B4F759F35CC7F5, obj, -1161106381, PlayerPedId(), 0, 512) -- Small
            end  
        end

        Citizen.InvokeNative(0x399657ED871B3A6C, obj, tonumber(yourHorsePelts[#yourHorsePelts][2]))
        table.remove(yourHorsePelts, #yourHorsePelts)
        Citizen.InvokeNative(0x627F7F3A0C4C51FF, yourHorseEntity, Citizen.InvokeNative(0x0CEEB6F4780B1F2F, yourHorseEntity, #yourHorsePelts))
        Citizen.Wait(3000)
        antiSpam = false
    end
    api.setPromptEnable(""..Config.Language[844].text.."", promptPelts, true)
end)

RegisterNetEvent('gum_stables:hoofHorse')
AddEventHandler('gum_stables:hoofHorse', function()
    local promptGroup = Citizen.InvokeNative(0xB796970BD125FCE8, yourHorseEntity)
    api.setPromptEnable(""..Config.Language[430].text.."", promptGroup, false)
    FreezeEntityPosition(yourHorseEntity, true)
    SetEntityCollision(yourHorseEntity, false, false)
    local offset = GetOffsetFromEntityInWorldCoords(yourHorseEntity, -0.80, -0.75, -1.1)
    local offset2 = GetOffsetFromEntityInWorldCoords(yourHorseEntity, -1.5, -0.7, 0.1)
    SetEntityCoords(PlayerPedId(), offset.x, offset.y, offset.z)
    turnToEntity(PlayerPedId(), offset2.x, offset2.y, offset2.z)
    api.playAnim(PlayerPedId(), "script_re@stranded_rider","enter_line01_man", 1, 8000)
    api.playAnim(yourHorseEntity, "script_re@stranded_rider","enter_line01_horse", 1, 8000)
    Citizen.Wait(7000)
    api.playAnim(PlayerPedId(), "script_re@stranded_rider","horseshoe_idle_man", 1, 4000)
    api.playAnim(yourHorseEntity, "script_re@stranded_rider","horseshoe_idle_horse", 1, 4000)
    Citizen.Wait(4000)
    api.playAnim(PlayerPedId(), "script_re@stranded_rider","kick_l_man", 1, 500)
    api.playAnim(yourHorseEntity, "script_re@stranded_rider","kick_l_horse", 1, 500)
    Citizen.Wait(500)
    ClearPedTasks(PlayerPedId())
    FreezeEntityPosition(yourHorseEntity, false)
    SetEntityCollision(yourHorseEntity, true, true)
    api.setPromptEnable(""..Config.Language[430].text.."", promptGroup, true)
    api.notify(""..Config.Language[15].text.."", ""..Config.Language[429].text..math.floor(yourHorseHoofState).."%", Config.Image, Config.Language[86].time)
end)

RegisterNetEvent('gum_stables:componentHorse')
AddEventHandler('gum_stables:componentHorse', function()
    local promptGroup = Citizen.InvokeNative(0xB796970BD125FCE8, yourHorseEntity)
    api.setPromptEnable(""..Config.Language[356].text.."", promptGroup, false)
    SetNuiFocus(true, true)
    local horseComps = {}
    for k,v in pairs(yourHorses) do
        if v["id"] == yourHorseId then
            horseComps = json.decode(v["components"])
        end
    end
    SendNUIMessage({type = "openComponents", components=horseComps})
    Citizen.Wait(1000)
    api.setPromptEnable(""..Config.Language[356].text.."", promptGroup, true)
end)


RegisterNetEvent('gum_stables:transferHorse')
AddEventHandler('gum_stables:transferHorse', function()
    local promptGroup = Citizen.InvokeNative(0xB796970BD125FCE8, yourHorseEntity)
    api.setPromptEnable(""..Config.Language[361].text.."", promptGroup, false)
    Citizen.Wait(500)
    api.getInput( ""..Config.Language[53].text.."", ""..Config.Language[95].text.."", function(cb)
        local playerid = tonumber(cb)
        if playerid ~= nil and playerid ~= "close" then
            TriggerServerEvent("gum_stables:transfer_horse", playerid, yourHorseId)
            TriggerEvent("gum_stables:fleeHorse", true)
        end
    end)
    Citizen.Wait(1000)
    api.setPromptEnable(""..Config.Language[361].text.."", promptGroup, true)
end)

RegisterNetEvent('gum_stables:leadHorseShared')
AddEventHandler('gum_stables:leadHorseShared', function()
    local promptGroup = Citizen.InvokeNative(0xB796970BD125FCE8, someOneNearEntity)
    api.setPromptEnable(""..Config.Language[358].text.."", promptGroup, false)
    Citizen.InvokeNative(0x9A7A4A54596FE09D, PlayerPedId(), someOneNearEntity)
    Citizen.Wait(1000)
    api.setPromptEnable(""..Config.Language[358].text.."", promptGroup, true)
end)

RegisterNetEvent('gum_stables:calmHorseShared')
AddEventHandler('gum_stables:calmHorseShared', function()
    local promptGroup = Citizen.InvokeNative(0xB796970BD125FCE8, someOneNearEntity)
    api.setPromptEnable(""..Config.Language[359].text.."", promptGroup, false)
    TaskAnimalInteraction(PlayerPedId(), someOneNearEntity, 2042508059, 0, 0)
    Citizen.Wait(2000)
    api.setPromptEnable(""..Config.Language[359].text.."", promptGroup, true)
end)

RegisterNetEvent('gum_stables:bagsHorseShared')
AddEventHandler('gum_stables:bagsHorseShared', function()
    local promptGroup = Citizen.InvokeNative(0xB796970BD125FCE8, someOneNearEntity)
    api.setPromptEnable(""..Config.Language[360].text.."", promptGroup, false)
    Citizen.Wait(100)
    TriggerServerEvent('gum_stables:registerStorage', "horse_"..tonumber(someOneNearId), storageSizeTable[GetEntityModel(someOneNearEntity)][1])
    TriggerServerEvent("gum_stables:openStorage", "horse_"..tonumber(someOneNearId), storageSizeTable[GetEntityModel(someOneNearEntity)][1])
    Citizen.InvokeNative(0xCD181A959CFDD7F4, PlayerPedId(), someOneNearEntity, GetHashKey("Interaction_LootSaddleBags"), 0, 1)
    Citizen.Wait(1000)
    api.setPromptEnable(""..Config.Language[360].text.."", promptGroup, true)
end)


RegisterNetEvent('gum_stables:leadHorse')
AddEventHandler('gum_stables:leadHorse', function()
    yourHorseFollowYou = false
    local promptGroup = Citizen.InvokeNative(0xB796970BD125FCE8, yourHorseEntity)
    api.setPromptEnable(""..Config.Language[358].text.."", promptGroup, false)
    Citizen.InvokeNative(0x9A7A4A54596FE09D, PlayerPedId(), yourHorseEntity)
    Citizen.Wait(1000)
    api.setPromptEnable(""..Config.Language[358].text.."", promptGroup, true)
end)

RegisterNetEvent('gum_stables:calmHorse')
AddEventHandler('gum_stables:calmHorse', function()
    local promptGroup = Citizen.InvokeNative(0xB796970BD125FCE8, yourHorseEntity)
    api.setPromptEnable(""..Config.Language[359].text.."", promptGroup, false)
    TaskAnimalInteraction(PlayerPedId(), yourHorseEntity, 2042508059, 0, 0)
    Citizen.Wait(2000)
    api.setPromptEnable(""..Config.Language[359].text.."", promptGroup, true)
end)

RegisterNetEvent('gum_stables:bagsHorse')
AddEventHandler('gum_stables:bagsHorse', function()
    local promptGroup = Citizen.InvokeNative(0xB796970BD125FCE8, yourHorseEntity)
    api.setPromptEnable(""..Config.Language[360].text.."", promptGroup, false)
    SendNUIMessage({type="languageLoad", language=Config.Language})
    TriggerServerEvent("gum_stables:registerStorage", "horse_"..yourHorseId, storageSizeTable[GetEntityModel(yourHorseEntity)][1])
    Citizen.Wait(100)
    local haveBlanket = false
    if Citizen.InvokeNative(0xFB4891BD7578CDC1, yourHorseEntity, GetHashKey("horse_bedrolls")) then
        haveBlanket = true
    end
    if Config.Access_Only_Id or Config.Clothe1InBlanket then
        SetNuiFocus(true, true)
        SendNUIMessage({type = "openBagsManage", size=storageSizeTable[GetEntityModel(yourHorseEntity)][1], id=yourHorseId, cart=false, blanket=haveBlanket, shared=Config.Access_Other_Storage, byId=Config.Access_Only_Id, clothes=Config.Clothe1InBlanket, language=Config.Language})
    else
        TriggerServerEvent("gum_stables:openStorage", "horse_"..yourHorseId, storageSizeTable[GetEntityModel(yourHorseEntity)][1])
    end
    Citizen.InvokeNative(0xCD181A959CFDD7F4, PlayerPedId(), yourHorseEntity, GetHashKey("Interaction_LootSaddleBags"), 0, 1)
    Citizen.Wait(1000)
    api.setPromptEnable(""..Config.Language[360].text.."", promptGroup, true)
end)

Citizen.CreateThread(function()
    Citizen.Wait(1000)
    SendNUIMessage({type="languageLoad", language=Config.Language})
    if Config.Debug then
        Citizen.Wait(0)
        TriggerServerEvent("gum_stables:check_all_info")
        Citizen.Wait(500)
        TriggerServerEvent("gum_stables:check_all_data_horse")
    end

    while true do
        local pCoords = GetEntityCoords(PlayerPedId())
        if not Config.CallFromStableHorse then
            if Citizen.InvokeNative(0x91AEF906BCA88877, 0, Config.KeySetting.horseWhistle) then
                if yourHorseEntity ~= nil and GetEntityHealth(yourHorseEntity) < 1 then
                    TriggerEvent('gum_stables:fleeHorse', true)
                else
                    for k,v in pairs(yourHorses) do
                        if v["selected"] == 1 or yourHorseId == v.id then
                            if yourHorseEntity == nil then
                                if yourHorseCooldown <= 0 then
                                    initiateHorse(v["model"], v["id"], nil, nil, nil, nil)
                                else
                                    api.notify(""..Config.Language[15].text.."", ""..Config.Language[244].text..": "..yourHorseCooldown.."s", Config.Image, Config.Language[244].time)
                                    Citizen.Wait(3000)
                                end
                            else
                                if yourHorsePlayAnim then
                                    yourHorsePlayAnim = false
                                else
                                    local dist = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(yourHorseEntity), true)
                                    if Config.HorseFollowYou then
                                        if dist < Config.HorseFollowYouRange then
                                            if yourHorseFollowYou then
                                                yourHorseFollowYou = false
                                                api.notify(""..Config.Language[15].text.."", ""..Config.Language[513].text, Config.Image, Config.Language[513].time)
                                                Citizen.Wait(3000)
                                            else
                                                yourHorseFollowYou = true
                                                api.notify(""..Config.Language[15].text.."", ""..Config.Language[512].text, Config.Image, Config.Language[512].time)
                                                Citizen.Wait(3000)
                                            end
                                        else
                                            if dist < Config.RageForCallHorse then
                                                TaskGoToEntity(yourHorseEntity, PlayerPedId(), -1, 10.0, 1.5, 0, 0)
                                            else
                                                api.notify(""..Config.Language[15].text.."", ""..Config.Language[282].text, Config.Image, Config.Language[282].time)
                                                Citizen.Wait(3000)
                                            end
                                        end
                                    else
                                        if dist < Config.RageForCallHorse then
                                            TaskGoToEntity(yourHorseEntity, PlayerPedId(), -1, 10.0, 1.5, 0, 0)
                                        else
                                            api.notify(""..Config.Language[15].text.."", ""..Config.Language[282].text, Config.Image, Config.Language[282].time)
                                            Citizen.Wait(3000)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end     
        else
            if Config.CallFromStableHorse then
                if yourHorseEntity then
                    if yourHorsePlayAnim then
                        yourHorsePlayAnim = false
                    else
                        local dist = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(yourHorseEntity), true)
                        if Config.HorseFollowYou then
                            if dist < Config.HorseFollowYouRange then
                                if yourHorseFollowYou then
                                    yourHorseFollowYou = false
                                    api.notify(""..Config.Language[15].text.."", ""..Config.Language[513].text, Config.Image, Config.Language[513].time)
                                else
                                    yourHorseFollowYou = true
                                    api.notify(""..Config.Language[15].text.."", ""..Config.Language[512].text, Config.Image, Config.Language[512].time)
                                end
                            else
                                if dist < Config.RageForCallHorse then
                                    TaskGoToEntity(yourHorseEntity, PlayerPedId(), -1, 10.0, 1.5, 0, 0)
                                else
                                    api.notify(""..Config.Language[15].text.."", ""..Config.Language[282].text, Config.Image, Config.Language[282].time)
                                end
                            end
                        else
                            if dist < Config.RageForCallHorse then
                                TaskGoToEntity(yourHorseEntity, PlayerPedId(), -1, 10.0, 1.5, 0, 0)
                            else
                                api.notify(""..Config.Language[15].text.."", ""..Config.Language[282].text, Config.Image, Config.Language[282].time)
                            end
                        end
                    end
                end
            end
        end
        if yourHorseEntity then
            if Citizen.InvokeNative(0xCEDABC5900A0BF97, yourHorseEntity) then
                if gainExpBlock <= 0 then
                    gainExpBlock = Config.JumpingOnHorseSpamProtect
                    gainHorseExp(Config.ExpTable.NormalJump)
                end
                Citizen.Wait(2000)
            end
            Citizen.InvokeNative(0xEF5A3D2285D8924B, horseentity, Config.DrainStaminaByLevel[levels()])
        end
        if not Config.CallFromStableCart then
            if Citizen.InvokeNative(0x91AEF906BCA88877, 0, Config.KeySetting.cartWhistle) then
                if yourCartCooldown <= 0 then
                    for k,v in pairs(yourCarts) do
                        if v["selected"] == 1 or yourCartId == v.id then
                            if yourCartEntity == nil then
                                initiateCart(v.model, v.id, nil, nil, nil, nil, false)    
                            end
                        end
                    end
                else
                    api.notify(""..Config.Language[15].text.."", ""..Config.Language[2444].text..": "..yourCartCooldown.."s", Config.Image, Config.Language[2444].time)
                    Citizen.Wait(3000)
                end
            end
        end
        local inTarget, targetEntity = GetPlayerTargetEntity(PlayerId())
        if (targetEntity == yourHorseEntity or targetEntity == someOneNearEntity) and inTarget == 1 and GetEntityHealth(PlayerPedId()) ~= 0 then
            DisableControlAction(0, 0x17D3BFF5, true)
            DisableControlAction(0, 0x0D55A0F0, true)
            DisableControlAction(0, 0x5415BE48, true)
            DisableControlAction(0, 0x63A38F2C, true)
            DisableControlAction(0, 0x31219490, true)
            DisableControlAction(0, 0x5415BE48, true)
            DisableControlAction(0, 0x4216AF06, true)
            DisableControlAction(0, 0xB2F377E8, true)
            DisableControlAction(0, 0x4CC0E2FE, true)
            DisableControlAction(0, 0x17D3BFF5, true)
        end
        if yourHorseEntity ~= nil  then
            local hCoords = GetEntityCoords(yourHorseEntity)
            local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, hCoords.x, hCoords.y, hCoords.z, true)
            if dist < 2.0 then
                DisableControlAction(0, 0x5966D52A, true)
            end
        end
        if someOneNearEntity ~= nil then
            local eCoords = GetEntityCoords(someOneNearEntity)
            local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, eCoords.x, eCoords.y, eCoords.z, true)
            if dist < 2.0 then
                DisableControlAction(0, 0x5966D52A, true)
            end
        end

        local size = GetNumberOfEvents(0) 
        if size > 0 then 
            for i = 0, size - 1 do
                if GetEventAtIndex(0, i) == GetHashKey("EVENT_HORSE_BROKEN") then 
                    local eventDataSize = 3 
                    local eventDataStruct = DataView.ArrayBuffer(24) 
                    eventDataStruct:SetInt32(0 ,0)
                    eventDataStruct:SetInt32(8 ,0) 	
                    eventDataStruct:SetInt32(16 ,0)	
                    local is_data_exists = Citizen.InvokeNative(0x57EC5FA4D4D6AFCA,0,i,eventDataStruct:Buffer(),eventDataSize)
                    if is_data_exists then
                        if eventDataStruct:GetInt32(16) == 2 then
                            if PlayerPedId() == eventDataStruct:GetInt32(0) then
                                tamming = false
                                ClearPedTasks(PlayerPedId())
                                if Config.CooldownTame then
                                    TriggerServerEvent("gum_stables:sendTameProtect")
                                end
                            end
                        end
                    end
                end
            end
        end
        if Citizen.InvokeNative(0x3B005FF0538ED2A9, GetMount(PlayerPedId())) then
            brokenHorses[GetMount(PlayerPedId())] = true
        end
        if Config.enableMarkers then
            for a,b in pairs(Config.HorseCompany) do
                local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, b.baseSetting.enterCoords[1], b.baseSetting.enterCoords[2], b.baseSetting.enterCoords[3], true)
                if dist < 10.0 then
                    if not Config.enableInteractWithNpc then
                        Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, b.baseSetting.enterCoords[1], b.baseSetting.enterCoords[2], b.baseSetting.enterCoords[3]-1.0, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 0.5, Config.RGBAMarkes[1], Config.RGBAMarkes[2], Config.RGBAMarkes[3], Config.RGBAMarkes[4], 0, 0, 2, 0, 0, 0, 0)
                        break
                    end
                end
            end

            for a,b in pairs(Config.SpotsForStable) do
                local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, b.baseSetting.enterCoords[1], b.baseSetting.enterCoords[2], b.baseSetting.enterCoords[3], true)
                if dist < 10.0 then
                    if not Config.enableInteractWithNpc then
                        Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, b.baseSetting.enterCoords[1], b.baseSetting.enterCoords[2], b.baseSetting.enterCoords[3]-1.0, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 0.5, Config.RGBAMarkes[1], Config.RGBAMarkes[2], Config.RGBAMarkes[3], Config.RGBAMarkes[4], 0, 0, 2, 0, 0, 0, 0)
                        break
                    end
                end
            end

            if canTame then
                for k,v in pairs(Config.SpotsForStable) do
                    if not Citizen.InvokeNative(0x98082246107A6ACF, GetMount(PlayerPedId()), 0xC81D2897) and not Citizen.InvokeNative(0x8DE41E9902E85756, GetMount(PlayerPedId())) and not Citizen.InvokeNative(0xFB4891BD7578CDC1, GetMount(PlayerPedId()), GetHashKey("horse_saddles")) and canTame and brokenHorses[GetMount(PlayerPedId())] and GetMount(PlayerPedId()) ~= yourHorseEntity then
                        if (GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, v.baseSetting.wildCoords[1], v.baseSetting.wildCoords[2], v.baseSetting.wildCoords[3], true) < 20.0) then
                            if (GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, v.baseSetting.wildCoords[1], v.baseSetting.wildCoords[2], v.baseSetting.wildCoords[3], true) < 5.0) then
                                if GetMount(PlayerPedId()) ~= 0 and not Citizen.InvokeNative(0x98082246107A6ACF, interactHorse, 0xC81D2897) then
                                    Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, v.baseSetting.wildCoords[1], v.baseSetting.wildCoords[2], v.baseSetting.wildCoords[3]-1.0, 0, 0, 0, 0, 0, 0, 10.0, 10.0, 1.5, Config.RGBAMarkes[1], Config.RGBAMarkes[2], Config.RGBAMarkes[3], Config.RGBAMarkes[4], 0, 0, 2, 0, 0, 0, 0)
                                    break
                                end
                            end
                        end
                    end
                end
            end

            if Config.SpotForTake then
                for a,b in pairs(Config.SpotForTakeCd) do
                    if not Config.enableInteractWithNpc then
                        local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, b.baseSetting.enterCoords[1], b.baseSetting.enterCoords[2], b.baseSetting.enterCoords[3], true)
                        if dist < 10.0 then
                            Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, b.baseSetting.enterCoords[1], b.baseSetting.enterCoords[2], b.baseSetting.enterCoords[3]-1.0, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 0.5, Config.RGBAMarkes[1], Config.RGBAMarkes[2], Config.RGBAMarkes[3], Config.RGBAMarkes[4], 0, 0, 2, 0, 0, 0, 0)
                            break
                        end
                    end
                end
            end

            if Config.StoreForBreeder then
                for a,b in pairs(Config.BreederStore) do
                    if not Config.enableInteractWithNpc then
                        local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, b.coords[1], b.coords[2], b.coords[3], true)
                        if dist < 10.0 then
                            Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, b.coords[1], b.coords[2], b.coords[3]-1.0, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 0.5, Config.RGBAMarkes[1], Config.RGBAMarkes[2], Config.RGBAMarkes[3], Config.RGBAMarkes[4], 0, 0, 2, 0, 0, 0, 0)
                            break
                        end
                    end
                end
            end
        end
        Citizen.Wait(fpsTimer())
    end
end)

function getMountAndVehicle()
    local mount = GetMount(PlayerPedId())
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)

    if mount == 0 and vehicle == 0 then
        return true
    else
        return false
    end
end

if Config.Tamming_Mini_Game == true then
    Citizen.CreateThread(function()
        while true do
            if Citizen.InvokeNative(0x3B005FF0538ED2A9, GetMount(PlayerPedId())) ~= false then
                if canTame then
                    if tamming == false and miniGameRunning == false then
                        if Config.TriggerFixAnim then
                            api.playAnim(PlayerPedId(), "veh_horseback@seat_saddle@male@normal@trot@2h","move", 25, -1)
                        end
                        start_tame()
                        Citizen.Wait(5000)
                    end
                else
                    TaskHorseAction(GetMount(PlayerPedId()), 2,0,0)
                    Citizen.Wait(5000)
                end
            end
            Citizen.Wait(1000)
        end
    end)

    local timerCitizen = 0
    function start_tame()
        if Config.CooldownTame then
            TriggerServerEvent("gum_stables:checkTameProtect")
        end
        tamming = true
        time_tame = 0
        num = 1
        checked = false

        for i=1, 40 do
            local random_number = math.random(1,#Config.Tamming_Key_Table)
            table.insert(randomKeyTable, {key=random_number, pressed=false})
        end
        timerCitizen = Citizen.CreateThread(function()
            while tamming == true do
                if GetMount(PlayerPedId()) ~= 0 then
                    for k,v in pairs(randomKeyTable) do
                        if k == num then
                            drawTxt("~q~Press  [ ~e~"..Config.Tamming_Key_Table[v.key][2].." ~q~]", 0.5, 0.5, 0.1, 0.5, 255, 255, 255, 200, true, true)
                            if canTameHorse == true then
                                tamming = false
                                checked = false
                                time_tame = 0
                                num = 1
                                TaskHorseAction(GetMount(PlayerPedId()), 2,0,0)
                                Citizen.InvokeNative(0xAEB97D84CDF3C00B, GetMount(PlayerPedId()), true)
                                ClearPedTasks(PlayerPedId())
                                break
                            end
                            if Citizen.InvokeNative(0xE2587F8CBBD87B1D, 0, Config.Tamming_Key_Table[v.key][1]) then
                                checked = true
                            end
                            for a,b in pairs(Config.Tamming_Key_Table) do
                                if Config.Tamming_Key_Table[v.key][1] ~= b[1] then
                                    if Citizen.InvokeNative(0xE2587F8CBBD87B1D, 0, b[1]) then
                                        tamming = false
                                        checked = false
                                        time_tame = 0
                                        num = 1
                                        TaskHorseAction(GetMount(PlayerPedId()), 2,0,0)
                                        Citizen.InvokeNative(0xAEB97D84CDF3C00B, GetMount(PlayerPedId()), true)
                                        ClearPedTasks(PlayerPedId())
                                        break
                                    end
                                end
                            end
                            if time_tame <= Config.Time_To_Press and checked == true then
                                v.pressed = true
                                checked = false
                                num = num+1
                                time_tame = 0
                                Citizen.Wait(400)
                            end
                            if time_tame >= Config.Time_To_Press and checked == false then
                                tamming = false
                                checked = false
                                time_tame = 0
                                num = 1
                                TaskHorseAction(GetMount(PlayerPedId()), 2,0,0)
                                Citizen.InvokeNative(0xAEB97D84CDF3C00B, GetMount(PlayerPedId()), true)
                                Citizen.Wait(5000)
                                ClearPedTasks(PlayerPedId())
                                break
                            end
                            time_tame = time_tame+1
                        end
                    end
                    if tamming == false then
                        return false
                    end
                else
                    tamming = false
                    checked = false
                    num = 0
                    return false
                end
                Citizen.Wait(api.fpsTimer())
            end
        end)
    end
end

Citizen.CreateThread(function()
    while true do
        someOneNearEntity = nil
        someOneNearId = nil
        someOneNearAge = nil
        local pCoords = GetEntityCoords(PlayerPedId())
        for a,b in pairs(sharedHorseCartData) do
            if b ~= nil then
                if NetworkDoesNetworkIdExist(a) and a ~= 0 then
                    local sharedEntity = NetworkGetEntityFromNetworkId(a)
                    local eCoords = GetEntityCoords(sharedEntity)
                    local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, eCoords.x, eCoords.y, eCoords.z, true)
                    if dist < 1.2 and sharedEntity ~= yourHorseEntity and sharedEntity ~= yourCartEntity then
                        if Citizen.InvokeNative(0xF49F14462F0AE27C, PlayerId()) ~= someOneNearEntity and Citizen.InvokeNative(0x772A1969F649E902, GetEntityModel(sharedEntity)) and Citizen.InvokeNative(0xFB4891BD7578CDC1, sharedEntity, 0xAC106B30) and b.isHorse then
                            N_0xe6d4e435b56d5bd0(PlayerId(), sharedEntity)
                        end
                        someOneNearEntity = sharedEntity
                        if b.isHorse then
                            someOneNearAge = b.age
                        end
                        someOneNearId = b.id
                        break
                    end
                end
            end
        end
        if yourHorseEntity ~= nil then
            local horseShared = GetEntityCoords(yourHorseEntity)
            local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, horseShared.x, horseShared.y, horseShared.z, true)
            if dist < 1.5 and Citizen.InvokeNative(0x772A1969F649E902, GetEntityModel(yourHorseEntity)) and Citizen.InvokeNative(0xFB4891BD7578CDC1, yourHorseEntity, 0xAC106B30) and Citizen.InvokeNative(0xF49F14462F0AE27C, PlayerId()) ~= yourHorseEntity then
                N_0xe6d4e435b56d5bd0(PlayerId(), yourHorseEntity)  
            end
            if not DoesEntityExist(yourHorseEntity) then
                if NetworkGetEntityFromNetworkId(yourHorseEntity) ~= 0 then
                    clearPrompts()
                    yourHorseEntity = NetworkGetEntityFromNetworkId(yourHorseNetwork)
                    createHorsePrompt(yourHorseEntity)
                else
                    yourHorseEntity = nil
                end
            end
        end
        if yourCartEntity ~= nil then
            if not DoesEntityExist(yourCartEntity) then
                if NetworkGetEntityFromNetworkId(yourCartNetwork) ~= 0 then
                    yourCartEntity = NetworkGetEntityFromNetworkId(yourCartNetwork)
                else
                    yourCartEntity = nil
                end
            end
        end

        Citizen.Wait(1200)
    end
end)

Citizen.CreateThread(function()
    Citizen.Wait(1000)
    while true do
        local timer = 2000
        local pCoords = GetEntityCoords(PlayerPedId())
        local isCompany = false
        disableAllPrompts()
        saveToStable = 0
        saveToSpot = 0
        saveToCompany = 0
        if someOneNearEntity and GetEntityHealth(someOneNearEntity) > 2 then
            timer = 200
            local inTarget, targetEntity = GetPlayerTargetEntity(PlayerId())
            if targetEntity == someOneNearEntity and inTarget == 1 and GetEntityHealth(PlayerPedId()) ~= 0 then
                if someOneNearAge ~= nil then
                    local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, GetEntityCoords(someOneNearEntity), true)
                    if dist < 3.0 then
                        local promptGroup = Citizen.InvokeNative(0xB796970BD125FCE8, someOneNearEntity)
                        sharedPromptId = promptGroup
                        api.createPrompt(""..Config.Language[358].text.."", Config.KeySetting.horseLead, promptGroup, nil, "gum_stables:leadHorseShared")
                        api.createPrompt(""..Config.Language[359].text.."", Config.KeySetting.horseCalm, promptGroup, nil, "gum_stables:calmHorseShared")

                        if Config.Access_Other_Storage and not Config.Access_Only_Id then
                            api.createPrompt(""..Config.Language[360].text.."", Config.KeySetting.horseBags, promptGroup, nil, "gum_stables:bagsHorseShared")
                        end
                        if Config.Access_Other_Storage and Config.Access_Only_Id then
                            for a,b in pairs(sharedHorseCartData[NetworkGetNetworkIdFromEntity(someOneNearEntity)].access) do
                                if GetPlayerServerId(PlayerId()) == b then
                                    api.createPrompt(""..Config.Language[360].text.."", Config.KeySetting.horseBags, promptGroup, nil, "gum_stables:bagsHorseShared")
                                    break
                                end
                            end
                        end
                        if canAccess then
                            api.createPrompt(""..Config.Language[360].text.."", Config.KeySetting.horseBags, promptGroup, nil, "gum_stables:bagsHorseShared")
                        end
                        api.showPrompt(''..Config.Language[300].text..''..someOneNearAge, promptGroup, true)
                        SetPedPromptName(someOneNearEntity, ""..Config.Language[300].text..""..someOneNearAge.."")
                    end
                end
            else
                if someOneNearAge == nil then
                    local cCoords = GetEntityCoords(someOneNearEntity)
                    local offsetLeft = GetOffsetFromEntityInWorldCoords(someOneNearEntity, -1.0, 0.0, 0.0)
                    local offsetRight = GetOffsetFromEntityInWorldCoords(someOneNearEntity, 1.0, 0.0, 0.0)
                    local offsetBack = GetOffsetFromEntityInWorldCoords(someOneNearEntity, 0.0, -1.4, 0.0)
                    local dist1 = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, offsetLeft.x, offsetLeft.y, offsetLeft.z, true)
                    local dist2 = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, offsetRight.x, offsetRight.y, offsetRight.z, true)
                    local dist3 = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, offsetBack.x, offsetBack.y, offsetBack.z, true)
                    if Config.Access_Other_Storage and not Config.Access_Only_Id then
                        if (dist1 < 0.8 or dist2 < 0.8) and getMountAndVehicle() then
                            api.showPrompt(''..Config.Language[94].text..'', promptSharedCart, true)
                            if huntingCarts[GetEntityModel(someOneNearEntity)] then
                                api.setPromptVisible(''..Config.Language[85].text..'', promptSharedCart, true)
                                api.setPromptEnable(''..Config.Language[85].text..'', promptSharedCart, true)
                            else
                                api.setPromptVisible(''..Config.Language[85].text..'', promptSharedCart, false)
                                api.setPromptEnable(''..Config.Language[85].text..'', promptSharedCart, false)
                            end
                        end
                    end
                    if Config.Access_Other_Storage and Config.Access_Only_Id then
                        if (dist1 < 0.8 or dist2 < 0.8) and getMountAndVehicle() then
                            for a,b in pairs(sharedHorseCartData[NetworkGetNetworkIdFromEntity(someOneNearEntity)].access) do
                                if GetPlayerServerId(PlayerId()) == b then
                                    api.showPrompt(''..Config.Language[94].text..'', promptSharedCart, true)
                                    if huntingCarts[GetEntityModel(someOneNearEntity)] then
                                        api.setPromptVisible(''..Config.Language[85].text..'', promptSharedCart, true)
                                        api.setPromptEnable(''..Config.Language[85].text..'', promptSharedCart, true)
                                    else
                                        api.setPromptVisible(''..Config.Language[85].text..'', promptSharedCart, false)
                                        api.setPromptEnable(''..Config.Language[85].text..'', promptSharedCart, false)
                                    end
                                    break
                                end
                            end
                        end
                    end
                    if canAccess then
                        api.showPrompt(''..Config.Language[94].text..'', promptSharedCart, true)
                        if huntingCarts[GetEntityModel(someOneNearEntity)] then
                            api.setPromptVisible(''..Config.Language[85].text..'', promptSharedCart, true)
                            api.setPromptEnable(''..Config.Language[85].text..'', promptSharedCart, true)
                        else
                            api.setPromptVisible(''..Config.Language[85].text..'', promptSharedCart, false)
                            api.setPromptEnable(''..Config.Language[85].text..'', promptSharedCart, false)
                        end
                    end
                    local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
                    if (dist3 < 1.5) and getMountAndVehicle() and holding then
                        if huntingCarts[GetEntityModel(someOneNearEntity)] then
                            api.setPromptEnable(''..Config.Language[85].text..'', promptSharedCart, true)
                            api.showPrompt(''..Config.Language[85].text..'', promptSharedAnimal, true)
                        else
                            api.setPromptEnable(''..Config.Language[85].text..'', promptSharedCart, false)
                            api.showPrompt(''..Config.Language[85].text..'', promptSharedAnimal, false)
                        end
                    end
                end
                local promptGroup = Citizen.InvokeNative(0xB796970BD125FCE8, someOneNearEntity)
                api.showPrompt('', promptGroup, false)
            end
        end

        for a,b in pairs(Config.HorseCompany) do
            local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, b.baseSetting.enterCoords[1], b.baseSetting.enterCoords[2], b.baseSetting.enterCoords[3], true)
            if dist < 10.0 then
                timer = 200
                if not Config.enableInteractWithNpc then
                    if dist < 1.2 then
                        if not activeCamera then
                            api.showPrompt(''..Config.Language[50].text..'', promptCompanyStables, true)
                        else
                            api.showPrompt('', promptCompanyStables, false)
                        end
                        if activeInterCamera then
                            api.showPrompt(''..Config.Language[436].text..''..priceThisComp..'\n'..Config.Language[475].text..''..#allYourHorses..'/'..maxAllowedHorses..'\n'..Config.Language[474].text..''..#allYourCarts..'/'..maxAllowedCarts..'', promptCamera, true)
                            if canRotate then
                                api.setPromptEnable(''..Config.Language[444].text..'', promptCamera, true)
                                api.setPromptEnable(''..Config.Language[445].text..'', promptCamera, true)
                                api.setPromptEnable(''..Config.Language[447].text..'', promptCamera, true)
                            else
                                api.setPromptEnable(''..Config.Language[444].text..'', promptCamera, false)
                                api.setPromptEnable(''..Config.Language[445].text..'', promptCamera, false)
                                api.setPromptEnable(''..Config.Language[447].text..'', promptCamera, false)
                            end
                        else
                            api.showPrompt('', promptCamera, false)
                        end
                    end
                else
                    local coords, entity = api.getTarget()
                    if npcsMan["company"][a] == entity and npcsMan["company"][a] ~= nil then
                        if not activeCamera then
                            api.showPrompt(''..Config.Language[50].text..'', promptCompanyStables, true)
                        else
                            api.showPrompt('', promptCompanyStables, false)
                        end
                        if activeInterCamera then
                            api.showPrompt(''..Config.Language[436].text..''..priceThisComp..'\n'..Config.Language[475].text..''..#allYourHorses..'/'..maxAllowedHorses..'\n'..Config.Language[474].text..''..#allYourCarts..'/'..maxAllowedCarts..'', promptCamera, true)
                            if canRotate then
                                api.setPromptEnable(''..Config.Language[444].text..'', promptCamera, true)
                                api.setPromptEnable(''..Config.Language[445].text..'', promptCamera, true)
                                api.setPromptEnable(''..Config.Language[447].text..'', promptCamera, true)
                            else
                                api.setPromptEnable(''..Config.Language[444].text..'', promptCamera, false)
                                api.setPromptEnable(''..Config.Language[445].text..'', promptCamera, false)
                                api.setPromptEnable(''..Config.Language[447].text..'', promptCamera, false)
                            end
                        else
                            api.showPrompt('', promptCamera, false)
                        end
                    end
                end
            end

            local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, b.spawnSetting.spawnCalled[1], b.spawnSetting.spawnCalled[2], b.spawnSetting.spawnCalled[3], true)
            if dist < 5.0 then
                timer = 200
                if yourHorseEntity then
                    if GetMount(PlayerPedId()) == yourHorseEntity or Citizen.InvokeNative(0x693126B5D0457D0D, PlayerPedId()) == yourHorseEntity then
                        isCompany = true
                        saveToCompany = a
                        api.showPrompt(''..Config.Language[15].text..'', promptSaveToCompany, true)
                    end
                end
                break
            end
        end

        for a,b in pairs(Config.SpotsForStable) do
            local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, b.baseSetting.enterCoords[1], b.baseSetting.enterCoords[2], b.baseSetting.enterCoords[3], true)
            if dist < 10.0 then
                timer = 200
                if not Config.enableInteractWithNpc then
                    if dist < 1.2 then
                        if not b.npcSetting.useTime then
                            if not activeCamera then
                                api.showPrompt(''..Config.Language[50].text..'', promptNormalStables, true)
                            else
                                api.showPrompt('', promptNormalStables, false)
                            end
                            if activeInterCamera then
                                api.showPrompt(''..Config.Language[436].text..''..priceThisComp..'\n'..Config.Language[475].text..''..#allYourHorses..'/'..maxAllowedHorses..'\n'..Config.Language[474].text..''..#allYourCarts..'/'..maxAllowedCarts..'', promptCamera, true)
                                if canRotate then
                                    api.setPromptEnable(''..Config.Language[444].text..'', promptCamera, true)
                                    api.setPromptEnable(''..Config.Language[445].text..'', promptCamera, true)
                                    api.setPromptEnable(''..Config.Language[447].text..'', promptCamera, true)
                                else
                                    api.setPromptEnable(''..Config.Language[444].text..'', promptCamera, false)
                                    api.setPromptEnable(''..Config.Language[445].text..'', promptCamera, false)
                                    api.setPromptEnable(''..Config.Language[447].text..'', promptCamera, false)
                                end
                            else
                                api.showPrompt('', promptCamera, false)
                            end
                        else
                            if GetClockHours() >= b.npcSetting.timeOpen and GetClockHours() < b.npcSetting.timeClose then
                                if not activeCamera then
                                    api.showPrompt(''..Config.Language[50].text..'', promptNormalStables, true)
                                else
                                    api.showPrompt('', promptNormalStables, false)
                                end
                                if activeInterCamera then
                                    api.showPrompt(''..Config.Language[436].text..''..priceThisComp..'\n'..Config.Language[475].text..''..#allYourHorses..'/'..maxAllowedHorses..'\n'..Config.Language[474].text..''..#allYourCarts..'/'..maxAllowedCarts..'', promptCamera, true)
                                    if canRotate then
                                        api.setPromptEnable(''..Config.Language[444].text..'', promptCamera, true)
                                        api.setPromptEnable(''..Config.Language[445].text..'', promptCamera, true)
                                        api.setPromptEnable(''..Config.Language[447].text..'', promptCamera, true)
                                    else
                                        api.setPromptEnable(''..Config.Language[444].text..'', promptCamera, false)
                                        api.setPromptEnable(''..Config.Language[445].text..'', promptCamera, false)
                                        api.setPromptEnable(''..Config.Language[447].text..'', promptCamera, false)
                                    end
                                else
                                    api.showPrompt('', promptCamera, false)
                                end
                            else
                                api.showPrompt('', promptNormalStables, false)
                                api.showPrompt('', promptCamera, false)
                            end
                        end
                        break
                    end
                else
                    local coords, entity = api.getTarget()
                    if npcsMan["stable"][a] == entity and npcsMan["stable"][a] ~= nil then
                        if not activeCamera then
                            api.showPrompt(''..Config.Language[50].text..'', promptNormalStables, true)
                        else
                            api.showPrompt('', promptNormalStables, false)
                        end
                        if activeInterCamera then
                            api.showPrompt(''..Config.Language[436].text..''..priceThisComp..'\n'..Config.Language[475].text..''..#allYourHorses..'/'..maxAllowedHorses..'\n'..Config.Language[474].text..''..#allYourCarts..'/'..maxAllowedCarts..'', promptCamera, true)
                            if canRotate then
                                api.setPromptEnable(''..Config.Language[444].text..'', promptCamera, true)
                                api.setPromptEnable(''..Config.Language[445].text..'', promptCamera, true)
                                api.setPromptEnable(''..Config.Language[447].text..'', promptCamera, true)
                            else
                                api.setPromptEnable(''..Config.Language[444].text..'', promptCamera, false)
                                api.setPromptEnable(''..Config.Language[445].text..'', promptCamera, false)
                                api.setPromptEnable(''..Config.Language[447].text..'', promptCamera, false)
                            end
                        else
                            api.showPrompt('', promptCamera, false)
                        end
                    end
                    break
                end
            end
            for a,b in pairs(Config.SpotsForStable) do
                if Config.CallFromStableCart or Config.CallFromStableHorse or companyHorse then
                    local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, b.spawnSetting.spawnCalled[1], b.spawnSetting.spawnCalled[2], b.spawnSetting.spawnCalled[3], false)
                    if dist < 5.0 then
                        timer = 200
                        if Config.CallFromStableHorse or companyHorse then
                            if GetMount(PlayerPedId()) == yourHorseEntity or Citizen.InvokeNative(0x693126B5D0457D0D, PlayerPedId()) == yourHorseEntity then
                                saveToStable = a
                                api.showPrompt(''..Config.Language[15].text..'', promptSaveTo, true)
                            end
                        end
                        if Config.CallFromStableCart then
                            if GetVehiclePedIsIn(PlayerPedId()) == yourCartEntity then
                                saveToStable = a
                                api.showPrompt(''..Config.Language[15].text..'', promptSaveTo, true)
                            end
                        end
                        break
                    end
                end
                
                if Config.SpotForTake then
                    for a,b in pairs(Config.SpotForTakeCd) do
                        local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, b.baseSetting.spawnCalled[1], b.baseSetting.spawnCalled[2], b.baseSetting.spawnCalled[3], true)
                        if dist < 5.0 then
                            timer = 200
                            if b.horses then
                                if GetMount(PlayerPedId()) == yourHorseEntity or Citizen.InvokeNative(0x693126B5D0457D0D, PlayerPedId()) == yourHorseEntity then
                                    saveToSpot = a
                                    api.showPrompt('', promptSaveTo, true)
                                end
                            end
                            if b.carts then
                                if GetVehiclePedIsIn(PlayerPedId()) == yourCartEntity then
                                    saveToSpot = a
                                    api.showPrompt('', promptSaveTo, true)
                                end
                            end
                        end
                    end
                end
            end
        end

        if canTame then
            for k,v in pairs(Config.SpotsForStable) do
                if not Citizen.InvokeNative(0x98082246107A6ACF, GetMount(PlayerPedId()), 0xC81D2897) and not Citizen.InvokeNative(0x8DE41E9902E85756, GetMount(PlayerPedId())) and not Citizen.InvokeNative(0xFB4891BD7578CDC1, GetMount(PlayerPedId()), GetHashKey("horse_saddles")) and canTame and brokenHorses[GetMount(PlayerPedId())] and GetMount(PlayerPedId()) ~= yourHorseEntity then
                    if (GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, v.baseSetting.wildCoords[1],v.baseSetting.wildCoords[2], v.baseSetting.wildCoords[3], true) < 20.0) then
                        if (GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, v.baseSetting.wildCoords[1], v.baseSetting.wildCoords[2], v.baseSetting.wildCoords[3], true) < 5.0) then
                            if GetMount(PlayerPedId()) ~= 0 and not Citizen.InvokeNative(0x98082246107A6ACF, interactHorse, 0xC81D2897) then
                                interactHorse = GetMount(PlayerPedId())
                                timer = 200
                                api.showPrompt(''..Config.Language[195].text..'', promptWildHorse, true)
                            end
                        end
                    end
                end
            end
        end

        if Config.SpotForTake then
            for a,b in pairs(Config.SpotForTakeCd) do
                if not Config.enableInteractWithNpc then
                    local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, b.baseSetting.enterCoords[1], b.baseSetting.enterCoords[2], b.baseSetting.enterCoords[3], true)
                    if dist < 10.0 then
                        timer = 200
                        if dist < 1.2 then
                            timer = 200
                            api.showPrompt(''..Config.Language[50].text..'', promptSpotStables, true)
                        end
                        break
                    end
                else
                    local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, b.baseSetting.enterCoords[1], b.baseSetting.enterCoords[2], b.baseSetting.enterCoords[3], true)
                    if dist < 10.0 then
                        timer = 200
                        local coords, entity = api.getTarget()
                        if npcsMan["spot"][a] == entity and npcsMan["spot"][a] ~= nil then
                            if not activeCamera then
                                api.showPrompt(''..Config.Language[50].text..'', promptSpotStables, true)
                            else
                                api.showPrompt('', promptSpotStables, false)
                            end
                        end
                        break
                    end
                end
            end
        end

        if Config.StoreForBreeder then
            for a,b in pairs(Config.BreederStore) do
                if not Config.enableInteractWithNpc then
                    local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, b.coords[1], b.coords[2], b.coords[3], true)
                    if dist < 10.0 then
                        timer = 200
                        if dist < 1.2 then
                            timer = 200
                            api.showPrompt(''..Config.Language[50].text..'', promptBreederStore, true)
                        end
                        break
                    end
                else
                    local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, b.coords[1], b.coords[2], b.coords[3], true)
                    if dist < 10.0 then
                        timer = 200
                        local coords, entity = api.getTarget()
                        if npcsMan["breed"][a] == entity and npcsMan["breed"][a] ~= nil then
                            if not activeCamera then
                                api.showPrompt(''..Config.Language[50].text..'', promptBreederStore, true)
                            else
                                api.showPrompt('', promptBreederStore, false)
                            end
                        end
                    end
                end
            end
        end

        if yourCartEntity then
            timer = 200
            api.showPrompt('', promptYourCart, false)
            local cCoords = GetEntityCoords(yourCartEntity)
            local offsetLeft = GetOffsetFromEntityInWorldCoords(yourCartEntity, -1.0, 0.0, 0.0)
            local offsetRight = GetOffsetFromEntityInWorldCoords(yourCartEntity, 1.0, 0.0, 0.0)
            local offsetBack = GetOffsetFromEntityInWorldCoords(yourCartEntity, 0.0, -1.4, 0.0)
            local dist1 = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, offsetLeft.x, offsetLeft.y, offsetLeft.z, true)
            local dist2 = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, offsetRight.x, offsetRight.y, offsetRight.z, true)
            local dist3 = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, offsetBack.x, offsetBack.y, offsetBack.z, true)
            if Config.OutOfRangeDespawnCart then
                local despawnDist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, cCoords.x, cCoords.y, cCoords.z, false)
                if despawnDist > Config.RangeForDespawnWagon then
                    TriggerEvent("gum_stables:fleeCart")
                end
            end
            if (dist1 < 0.8 or dist2 < 0.8) and getMountAndVehicle() then
                api.showPrompt(''..Config.Language[94].text..' '..GetEntityHealth(yourCartEntity)..' HP / 1000 HP', promptYourCart, true)
                if huntingCarts[GetEntityModel(yourCartEntity)] then
                    api.setPromptEnable(''..Config.Language[382].text..'', promptYourCart, true)
                    api.setPromptVisible(''..Config.Language[382].text..'', promptYourCart, true)
                else
                    api.setPromptEnable(''..Config.Language[382].text..'', promptYourCart, false)
                    api.setPromptVisible(''..Config.Language[382].text..'', promptYourCart, false)
                end
            end
            local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
            if (dist3 < 1.5) and getMountAndVehicle() and holding then
                if huntingCarts[GetEntityModel(yourCartEntity)] then
                    api.showPrompt(''..Config.Language[85].text..'', promptAnimalOnCart, true)
                    api.setPromptVisible(''..Config.Language[85].text..'', promptAnimalOnCart, true)
                else
                    api.showPrompt(''..Config.Language[85].text..'', promptAnimalOnCart, false)
                    api.setPromptVisible(''..Config.Language[85].text..'', promptAnimalOnCart, false)
                end
            end

            if Config.AffectDirtyToCart then
                local healthCart = GetEntityHealth(yourCartEntity)
                if healthCart > 600 then
                    Citizen.InvokeNative(0x4D15E49764CB328A, yourCartEntity, 0.0)
                    Citizen.InvokeNative(0x758C3460EE915D0A, yourCartEntity, 0.0)
                    Citizen.InvokeNative(0xBAE0EEDF93F05EAA, yourCartEntity, 0.0)
                elseif healthCart >= 500 and healthCart <= 600 then
                    Citizen.InvokeNative(0x4D15E49764CB328A, yourCartEntity, 0.2)
                    Citizen.InvokeNative(0x758C3460EE915D0A, yourCartEntity, 0.2)
                    Citizen.InvokeNative(0xBAE0EEDF93F05EAA, yourCartEntity, 0.2)
                elseif healthCart >= 400 and healthCart <= 500 then
                    Citizen.InvokeNative(0x4D15E49764CB328A, yourCartEntity, 0.4)
                    Citizen.InvokeNative(0x758C3460EE915D0A, yourCartEntity, 0.4)
                    Citizen.InvokeNative(0xBAE0EEDF93F05EAA, yourCartEntity, 0.4)
                elseif healthCart >= 300 and healthCart <= 400 then
                    Citizen.InvokeNative(0x4D15E49764CB328A, yourCartEntity, 0.6)
                    Citizen.InvokeNative(0x758C3460EE915D0A, yourCartEntity, 0.6)
                    Citizen.InvokeNative(0xBAE0EEDF93F05EAA, yourCartEntity, 0.6)
                elseif healthCart >= 200 and healthCart <= 300 then
                    Citizen.InvokeNative(0x4D15E49764CB328A, yourCartEntity, 0.8)
                    Citizen.InvokeNative(0x758C3460EE915D0A, yourCartEntity, 0.8)
                    Citizen.InvokeNative(0xBAE0EEDF93F05EAA, yourCartEntity, 0.8)
                elseif healthCart >= 100 and healthCart <= 200 then
                    Citizen.InvokeNative(0x4D15E49764CB328A, yourCartEntity, 0.9)
                    Citizen.InvokeNative(0x758C3460EE915D0A, yourCartEntity, 0.9)
                    Citizen.InvokeNative(0xBAE0EEDF93F05EAA, yourCartEntity, 0.9)
                elseif healthCart >= 0 and healthCart <= 100 then
                    Citizen.InvokeNative(0x4D15E49764CB328A, yourCartEntity, 1.0)
                    Citizen.InvokeNative(0x758C3460EE915D0A, yourCartEntity, 1.0)
                    Citizen.InvokeNative(0xBAE0EEDF93F05EAA, yourCartEntity, 1.0)
                    if Config.AffectRidingToCart then
                        if Citizen.InvokeNative(0xA3EE4A07279BB9DB, PlayerPedId(), yourCartEntity, true) then
                            Citizen.InvokeNative(0xD3DBCE61A490BE02, PlayerPedId(), yourCartEntity, 1)
                            api.notify(""..Config.Language[15].text.."", ""..Config.Language[372].text.."", Config.Image, Config.Language[372].time)
                            Citizen.Wait(4000)
                        end
                    end
                end
            end

            if Config.Destroy_Wheel then
                if Citizen.InvokeNative(0xCB2CA620C48BC875, yourCartEntity, 0) then
                    local distanc = GetDistanceBetweenCoords(pCoords, GetOffsetFromEntityInWorldCoords(yourCartEntity, -1.5, 1.0, 0.0), false)
                    if distanc < 1.1 then
                        if not blockInteract then
                            api.showPrompt(Config.Language[449].text, promptFixWheel, true)
                        else
                            api.showPrompt(Config.Language[449].text, promptFixWheel, false)
                        end
                    end
                end
                if Citizen.InvokeNative(0xCB2CA620C48BC875, yourCartEntity, 1) then
                    local distanc = GetDistanceBetweenCoords(pCoords, GetOffsetFromEntityInWorldCoords(yourCartEntity, 1.5, 1.0, 0.0), false)
                    if distanc < 1.1 then
                        if not blockInteract then
                            api.showPrompt(Config.Language[450].text, promptFixWheel, true)
                        else
                            api.showPrompt(Config.Language[450].text, promptFixWheel, false)
                        end
                    end
                end
                if Citizen.InvokeNative(0xCB2CA620C48BC875, yourCartEntity, 2) then
                    local distanc = GetDistanceBetweenCoords(pCoords, GetOffsetFromEntityInWorldCoords(yourCartEntity, -1.5, -1.0, 0.0), false)
                    if distanc < 1.1 then
                        if not blockInteract then
                            api.showPrompt(Config.Language[451].text, promptFixWheel, true)
                        else
                            api.showPrompt(Config.Language[451].text, promptFixWheel, false)
                        end
                    end
                end
                if Citizen.InvokeNative(0xCB2CA620C48BC875, yourCartEntity, 3) then
                    local distanc = GetDistanceBetweenCoords(pCoords,  GetOffsetFromEntityInWorldCoords(yourCartEntity, 1.5, -1.0, false))
                    if distanc < 1.1 then
                        if not blockInteract then
                            api.showPrompt(Config.Language[452].text, promptFixWheel, true)
                        else
                            api.showPrompt(Config.Language[452].text, promptFixWheel, false)
                        end
                    end
                end
            end
        end
        if yourHorseEntity and not isCompany then
            timer = 200
            if yourHorseFollowYou then
                TaskGoToEntity(yourHorseEntity, PlayerPedId(), -1, 5.0, 1.5, 0, 0)
            end
            local promptGroup = Citizen.InvokeNative(0xB796970BD125FCE8, yourHorseEntity)
            local hCoords = GetEntityCoords(yourHorseEntity)
            if Config.OutOfRangeDespawnHorse then
                local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, hCoords.x, hCoords.y, hCoords.z, false)
                if dist > Config.RangeForDespawnHorse then
                    TriggerEvent("gum_stables:fleeHorse", true)
                end
            end
            if Config.OutOfRangeTask then
                local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, hCoords.x, hCoords.y, hCoords.z, false)
                if dist > Config.RangeForTaskHorse then
                    TaskGoToEntity(yourHorseEntity, PlayerPedId(), -1, 30.0, 3.0, 0, 0)
                end
            end
            if Citizen.InvokeNative(0xEFC4303DDC6E60D3, PlayerPedId()) then
                local maxExp = GetMaxAttributePoints(yourHorseEntity, 7)
                local promptText = ""
                if yourHorseExp+yourHorseGainExp >= maxExp then
                    if Config.CourageSystem and Config.FriendlySystem then
                        promptText = ""..Config.Language[385].text.." : "..maxExp.." / "..maxExp.." | "..Config.Language[425].text.." : "..yourHorseFriendly.." | "..Config.Language[426].text.." : "..yourHorseCourage..""
                    elseif Config.CourageSystem and not Config.FriendlySystem then
                        promptText = ""..Config.Language[385].text.." : "..maxExp.." / "..maxExp.." | "..Config.Language[426].text.." : "..yourHorseCourage..""
                    elseif Config.FriendlySystem and not Config.CourageSystem then
                        promptText = ""..Config.Language[385].text.." : "..maxExp.." / "..maxExp.." | "..Config.Language[425].text.." : "..yourHorseFriendly..""
                    else
                        promptText =""..Config.Language[385].text.." : "..maxExp.." / "..maxExp..""
                    end
                else
                    if Config.CourageSystem and Config.FriendlySystem then
                        promptText = ""..Config.Language[385].text.." : "..yourHorseExp+yourHorseGainExp.." / "..maxExp.." | "..Config.Language[425].text.." : "..yourHorseFriendly.." | "..Config.Language[426].text.." : "..yourHorseCourage..""
                    elseif Config.CourageSystem and not Config.FriendlySystem then
                        promptText = ""..Config.Language[385].text.." : "..yourHorseExp+yourHorseGainExp.." / "..maxExp.." | "..Config.Language[426].text.." : "..yourHorseCourage..""
                    elseif Config.FriendlySystem and not Config.CourageSystem then
                        promptText = ""..Config.Language[385].text.." : "..yourHorseExp+yourHorseGainExp.." / "..maxExp.." | "..Config.Language[425].text.." : "..yourHorseFriendly..""
                    else
                        promptText = ""..Config.Language[385].text.." : "..yourHorseExp+yourHorseGainExp.." / "..maxExp..""
                    end
                end
                api.showPrompt(''..promptText..'', promptTrainer, true)

                horsePromptEnable(false)
                if Config.hoofHook == true then
                    api.setPromptEnable(''..Config.Language[430].text..'', promptGroup, false)
                end

                trainerPromptEnable(true)
            end
            api.showPrompt('', promptGroup, false)

            if not yourHorseIsDead then 
                local inTarget, targetEntity = GetPlayerTargetEntity(PlayerId())
                if targetEntity == yourHorseEntity and inTarget == 1 and GetEntityHealth(PlayerPedId()) ~= 0 then
                    local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, hCoords.x, hCoords.y, hCoords.z, true)
                    if dist < 2.5 then
                        timer = 200
                        if not Citizen.InvokeNative(0xFB4891BD7578CDC1, yourHorseEntity, GetHashKey("HORSE_SADDLEBAGS")) then
                            api.setPromptEnable(""..Config.Language[360].text.."", promptGroup, false)
                        end
                        if Config.ShowNUIStatus then
                            SendNUIMessage({type = "showStatusTable", gender=GetHorseBall(yourHorseEntity), acc=GetAttributeBaseRank(yourHorseEntity, 6)+1, spp=GetAttributeBaseRank(yourHorseEntity, 5)+1, turn=GetAttributeBaseRank(yourHorseEntity, 4)+1})
                        end
                        api.showPrompt('', promptGroup, true)

                        horsePromptEnable(true)
                        trainerPromptEnable(false)
                    else
                        if Config.ShowNUIStatus then
                            SendNUIMessage({type = "hideStatusTable"})
                        end
                        api.showPrompt('', promptGroup, true)
                        horsePromptEnable(false)
                    end
                    setPromptName(yourHorseEntity)
                else
                    if Config.ShowNUIStatus then
                        SendNUIMessage({type = "hideStatusTable"})
                    end
                end
            else
                local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, hCoords.x, hCoords.y, hCoords.z, true)
                if dist < 2.5 then
                    timer = 200
                    local promptGroup = Citizen.InvokeNative(0xB796970BD125FCE8, yourHorseEntity)
                    if Config.ShowNUIStatus then
                        SendNUIMessage({type = "showStatusTable", gender=GetHorseBall(yourHorseEntity), acc=GetAttributeBaseRank(yourHorseEntity, 6)+1, spp=GetAttributeBaseRank(yourHorseEntity, 5)+1, turn=GetAttributeBaseRank(yourHorseEntity, 4)+1})
                    end
                    api.showPrompt(''..Config.Language[217].text..'', promptGroup, true)
                    horsePromptEnable(true)
                    trainerPromptEnable(false)
                else
                    if Config.ShowNUIStatus then
                        SendNUIMessage({type = "hideStatusTable"})
                    end
                    api.showPrompt('', promptGroup, false)
                    horsePromptEnable(false)
                end
            end
            local offset = GetOffsetFromEntityInWorldCoords(yourHorseEntity, -0.2, -0.7, 0.0)
            local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, offset.x, offset.y, offset.z, true)
            if dist < 0.8 and getMountAndVehicle() then
                timer = 200
                local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
                if #yourHorsePelts > 0 or Config.HorsePelts[GetEntityModel(holding)] then
                    api.showPrompt(''..Config.Language[354].text..' : '..#yourHorsePelts.."/"..horseTableWithoutCat[GetEntityModel(yourHorseEntity)].peltStorage, promptPelts, true)
                end
                if #yourHorsePelts == 0 then
                    api.setPromptEnable(""..Config.Language[844].text.."", promptPelts, false)
                else
                    api.setPromptEnable(""..Config.Language[844].text.."", promptPelts, true)
                end
                if Config.HorsePelts[GetEntityModel(holding)] then
                    if holding then
                        api.setPromptEnable(""..Config.Language[84].text.."", promptPelts, true)
                    else
                        api.setPromptEnable(""..Config.Language[84].text.."", promptPelts, false)
                    end
                else
                    api.setPromptEnable(""..Config.Language[84].text.."", promptPelts, false)
                end
            end
            if canTraining then
                api.setPromptEnable(""..Config.Language[458].text.."", promptTrainer, true)
            else
                api.setPromptEnable(""..Config.Language[458].text.."", promptTrainer, false)
            end
            if yourHorsePlayAnim then
                horsePromptEnable(false)
            end
            if not yourHorseInTraining then
                if Citizen.InvokeNative(0xCEDABC5900A0BF97, yourHorseEntity) then
                    gainHorseExp(Config.ExpTable.NormalJump)
                    Citizen.Wait(2000)
                end
            end
            if Config.hoofHook == true then
                local hoofCheck = GetOffsetFromEntityInWorldCoords(yourHorseEntity, -1.10, -0.75, -1.1)
                local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, offset.x, offset.y, offset.z, true)
                if dist < 0.8 then
                    api.setPromptEnable(''..Config.Language[430].text..'', promptGroup, true)
                else
                    api.setPromptEnable(''..Config.Language[430].text..'', promptGroup, false)
                end
            end
            if yourHorseInTraining then
                api.showPrompt(''..Config.Language[458].text..'', promptTraining, true)
            end
            if yourHorseLonging then
                api.showPrompt('', promptTraining, false)
                local maxExp = GetMaxAttributePoints(yourHorseEntity, 7)
                if tonumber(yourHorseExp) <= tonumber(maxExp) then
                    api.showPrompt(''..Config.Language[458].text..' | '..yourHorseExp..' | '..Config.Language[459].text..''..radiusLonging, promptLonging, true)
                else
                    api.showPrompt(''..Config.Language[458].text..' | '..maxExp..' | '..Config.Language[459].text..''..radiusLonging, promptLonging, true)
                end
            end
            if Config.SaveStatus and Config.hoofHook then
                if yourHorseEntity ~= nil and GetMount(PlayerPedId()) == yourHorseEntity then
                    local nerfHorse = false
                    for a,b in ipairs(Config.hoofDirtyAffectSpeed) do
                        if Config.hoofDirtyAffectSpeed[a+1] == nil then
                            if b[1] >= yourHorseHoofState and nerfHorse == false  then
                                nerfHorse = b[2]
                            end
                        else
                            if b[1] >= yourHorseHoofState and nerfHorse == false and Config.hoofDirtyAffectSpeed[a+1][1] <= yourHorseHoofState then
                                nerfHorse = b[2]
                            end
                        end
                    end
                    if nerfHorse == false then
                        nerfHorse = 0
                    end
                    if Citizen.InvokeNative(0x57E457CD2C0FC168, yourHorseEntity) then
                        if nerfHorse ~= 0.0 then
                            SetPedMaxMoveBlendRatio(yourHorseEntity, 2.9-nerfHorse)
                        end
                    end
                end
            end
        else
            if globalPromptGroup ~= nil then
                if Config.ShowNUIStatus then
                    SendNUIMessage({type = "hideStatusTable"})
                end
                api.showPrompt('', globalPromptGroup, false)
                globalPromptGroup = nil
            end
        end

        if Config.ShowWILDStatus then
            local isTargetting, targetEntity = GetPlayerTargetEntity(PlayerId())
            local _, wepHash = GetCurrentPedWeapon(PlayerPedId(), true, 0, true)
            if isTargetting and targetEntity and Citizen.InvokeNative(0x772A1969F649E902, GetEntityModel(targetEntity)) and Citizen.InvokeNative(0xC853230E76A152DF, wepHash) then
                timer = 200
                if canSeeStats then
                    SendNUIMessage({type = "showStatusWildTable", acc=GetAttributeBaseRank(targetEntity, 6)+1, spp=GetAttributeBaseRank(targetEntity, 5)+1, turn=GetAttributeBaseRank(targetEntity, 4)+1})
                end
            else
                SendNUIMessage({type = "hideStatusTableWild"})
            end
        end
        if yourHorseIsDead and yourHorseEntity then
            local promptGroup = Citizen.InvokeNative(0xB796970BD125FCE8, yourHorseEntity)
            if not Citizen.InvokeNative(0xFB4891BD7578CDC1, yourHorseEntity, GetHashKey("HORSE_SADDLEBAGS")) then
                api.setPromptEnable(""..Config.Language[360].text.."", promptGroup, false)
            else
                api.setPromptEnable(""..Config.Language[360].text.."", promptGroup, true)
            end
            api.setPromptEnable(""..Config.Language[358].text.."", promptGroup, false)
            api.setPromptEnable(""..Config.Language[359].text.."", promptGroup, false)
            api.setPromptEnable(""..Config.Language[361].text.."", promptGroup, false)
            api.setPromptEnable(""..Config.Language[430].text.."", promptGroup, false)
        else
            if yourHorseEntity then
                local promptGroup = Citizen.InvokeNative(0xB796970BD125FCE8, yourHorseEntity)
                if not Citizen.InvokeNative(0xFB4891BD7578CDC1, yourHorseEntity, GetHashKey("HORSE_SADDLEBAGS")) then
                    api.setPromptEnable(""..Config.Language[360].text.."", promptGroup, false)
                end
            end
        end
        Citizen.Wait(timer)
    end
end)

RegisterNetEvent('gum_stables:saveHere')
AddEventHandler('gum_stables:saveHere', function()
    api.setPromptEnable(""..Config.Language[421].text.."", promptSaveTo, false)
    local pCoords = GetEntityCoords(PlayerPedId())
   
    if saveToStable ~= 0 then
        for a,b in pairs(Config.SpotsForStable) do
            if Config.CallFromStableCart or Config.CallFromStableHorse then
                local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, b.spawnSetting.spawnCalled[1], b.spawnSetting.spawnCalled[2], b.spawnSetting.spawnCalled[3], true)
                if dist < 10.0 then
                    if Config.CallFromStableHorse or companyHorse then
                        if GetMount(PlayerPedId()) == yourHorseEntity or Citizen.InvokeNative(0x693126B5D0457D0D, PlayerPedId()) == yourHorseEntity then
                            TriggerServerEvent("gum_stables:saveMeCity", yourHorseId, a, "horse")
                            TriggerEvent("gum_stables:fleeHorse", true)
                        end
                    end
                    if Config.CallFromStableCart then
                        if GetVehiclePedIsIn(PlayerPedId()) == yourCartEntity then
                            Citizen.InvokeNative(0xD3DBCE61A490BE02, PlayerPedId(), yourCartEntity, 16)
                            Citizen.Wait(2500)
                            TriggerServerEvent("gum_stables:saveMeCity", yourCartId, a, "cart")
                            TriggerEvent("gum_stables:fleeCart")
                        end
                    end
                end
            end
        end
    elseif saveToSpot ~= 0 then
        if Config.SpotForTake then
            for a,b in pairs(Config.SpotForTakeCd) do
                local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, b.spawnSetting.spawnCalled[1], b.spawnSetting.spawnCalled[2], b.spawnSetting.spawnCalled[3], true)
                if dist < 10.0 then
                    if b.horses then
                        if GetMount(PlayerPedId()) == yourHorseEntity or Citizen.InvokeNative(0x693126B5D0457D0D, PlayerPedId()) == yourHorseEntity then
                            TriggerServerEvent("gum_stables:saveMeSpot", yourHorseId, a, "horse")
                            TriggerEvent("gum_stables:fleeHorse", true)
                        end
                    end
                    if b.carts then
                        if GetVehiclePedIsIn(PlayerPedId()) == yourCartEntity then
                            Citizen.InvokeNative(0xD3DBCE61A490BE02, PlayerPedId(), yourCartEntity, 16)
                            Citizen.Wait(2500)
                            TriggerServerEvent("gum_stables:saveMeSpot", yourCartId, a, "cart")
                            TriggerEvent("gum_stables:fleeCart")
                        end
                    end
                end
            end
        end
    end
    Citizen.Wait(500)
    api.setPromptEnable(""..Config.Language[421].text.."", promptSaveTo, true)
end)



RegisterNetEvent('gum_stables:saveCompanyHere')
AddEventHandler('gum_stables:saveCompanyHere', function()
    api.setPromptEnable(""..Config.Language[421].text.."", promptSaveToCompany, false)
    local pCoords = GetEntityCoords(PlayerPedId())
    if saveToCompany ~= 0 then
        for a,b in pairs(Config.HorseCompany) do
            local dist = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, b.spawnSetting.spawnCalled[1], b.spawnSetting.spawnCalled[2], b.spawnSetting.spawnCalled[3], true)
            if dist < 5.0 then
                if GetMount(PlayerPedId()) == yourHorseEntity or Citizen.InvokeNative(0x693126B5D0457D0D, PlayerPedId()) == yourHorseEntity then
                    TriggerServerEvent("gum_stables:saveMeCompany", yourHorseId, a, "horse")
                    TriggerEvent("gum_stables:fleeHorse", true)
                end
            end
        end
    end
    Citizen.Wait(500)
    api.setPromptEnable(""..Config.Language[421].text.."", promptSaveToCompany, true)
end)

function fpsTimer()
    local frameTime = GetFrameTime()
    local frame = 1.0 / frameTime

    local add = 1.0
    local fpsTable = {
        {upperLimit = 30, value = 15/2},
        {upperLimit = 40, value = 12.5/2},
        {upperLimit = 50, value = 10/2},
        {upperLimit = 60, value = 7.5/2},
        {upperLimit = 80, value = 5/2},
        {upperLimit = 100, value = 2.5/2},
        {upperLimit = math.huge, value = 0}
    }
    
    local tableSize = #fpsTable
    for i = 1, tableSize do
        local v = fpsTable[i]
        if frame < v.upperLimit then
            add = v.value
            break
        end
    end
    return add*2
end

RegisterNetEvent('gum_stables:fixWheelInteraction')
AddEventHandler('gum_stables:fixWheelInteraction', function()
    local pCoords = GetEntityCoords(PlayerPedId())
    if Citizen.InvokeNative(0xCB2CA620C48BC875, yourCartEntity, 0) then
        local distanc = GetDistanceBetweenCoords(pCoords, GetOffsetFromEntityInWorldCoords(yourCartEntity, -1.5, 1.0, 0.0), false)
        if distanc < 0.8 then
            TriggerServerEvent("gum_stables:fixWheel", 0)
        end
    end
    if Citizen.InvokeNative(0xCB2CA620C48BC875, yourCartEntity, 1) then
        local distanc = GetDistanceBetweenCoords(pCoords, GetOffsetFromEntityInWorldCoords(yourCartEntity, 1.5, 1.0, 0.0), false)
        if distanc < 0.8 then
            TriggerServerEvent("gum_stables:fixWheel", 1)
        end
    end
    if Citizen.InvokeNative(0xCB2CA620C48BC875, yourCartEntity, 2) then
        local distanc = GetDistanceBetweenCoords(pCoords, GetOffsetFromEntityInWorldCoords(yourCartEntity, -1.5, -1.0, 0.0), false)
        if distanc < 0.8 then
            TriggerServerEvent("gum_stables:fixWheel", 4)
        end
    end
    if Citizen.InvokeNative(0xCB2CA620C48BC875, yourCartEntity, 3) then
        local distanc = GetDistanceBetweenCoords(pCoords,  GetOffsetFromEntityInWorldCoords(yourCartEntity, 1.5, -1.0, false))
        if distanc < 0.8 then
            TriggerServerEvent("gum_stables:fixWheel", 5)
        end
    end
end)

RegisterNetEvent('gum_stables:saveCart')
AddEventHandler('gum_stables:saveCart', function(id, water)
    for k,v in pairs(yourCarts) do
        if yourCartId == v.id then
            v.addon_ability = water
        end
    end
end)

RegisterNetEvent('gum_stables:deleteWildHorse')
AddEventHandler('gum_stables:deleteWildHorse', function()
    api.deletePed(interactHorse, true)
end)

RegisterNetEvent('gum_stables:save_horse_nw')
AddEventHandler('gum_stables:save_horse_nw', function()
    for k,v in pairs(SellWildHorse) do
        for k2,v2 in pairs(Config.Horses) do
            for x,y in pairs(v2) do 
                if GetEntityModel(v.id) == GetHashKey(x) then
                    api.deletePed(v.id, true)
                end
            end
        end
    end
end)

function initiateHorse(model, id, cdx, cdy, cdz, cdh, fromHouse)
    expBreed = 0
    stopSave = true
    local playerPed = PlayerPedId()
    local match = string.match(model, "%w*01%w*")
    if not match then
        model = string.gsub(model, "%d+", "")
    end
    local modelHash = GetHashKey(model)
    loadModel(modelHash)
    local random = math.random(-20, 20)
    local randomY = math.random(-20, 20)
    local pCoords = GetEntityCoords(playerPed)
    local node, vec, head = GetClosestVehicleNodeWithHeading(pCoords.x, pCoords.y, pCoords.z, 1, true, true, true)
    local town_hash = Citizen.InvokeNative(0x43AD8FC02B429D33, pCoords, 10)
    if fromHouse then
        yourHorseEntity = CreatePed(modelHash, cdx, cdy, cdz, cdh, true, true)
    else
        if Config.SimulateNodesEnabled then
            local nodeExist = false
            local simulateX, simulateY, simulateZ, simulateH = 0, 0, 0, 0
            for a,b in pairs(Config.SimulateNodes) do
                local distanc = GetDistanceBetweenCoords(pCoords, b[1], b[2], b[3], true)
                if distanc < b[5] then
                    nodeExist = true
                    simulateX, simulateY, simulateZ, simulateH = b[1], b[2], b[3], b[4]
                end
            end
            if nodeExist then
                yourHorseEntity = CreatePed(modelHash, simulateX, simulateY, simulateZ, simulateH, true, true)
            else
                if vec.x ~= 0 and vec.y ~= 0 then
                    yourHorseEntity = CreatePed(modelHash, vec.x, vec.y, vec.z, head, true, true)
                else
                    if town_hash == -108848014 or town_hash == -2066240242 or town_hash == 1453836102 or town_hash == -2145992129 or town_hash == -512529193 then
                        yourHorseEntity = CreatePed(modelHash, pCoords.x+math.random(Config.SpawnRangeAfterCallHorse[1],Config.SpawnRangeAfterCallHorse[2]), pCoords.y+math.random(Config.SpawnRangeAfterCallHorse[1],Config.SpawnRangeAfterCallHorse[2]), pCoords.z, GetEntityHeading(ped), true, true)
                    else
                        yourHorseEntity = CreatePed(modelHash, pCoords.x+math.random(Config.SpawnRangeAfterCallHorse[1],Config.SpawnRangeAfterCallHorse[2]), pCoords.y+math.random(Config.SpawnRangeAfterCallHorse[1],Config.SpawnRangeAfterCallHorse[2]), ground_check(pCoords.x, pCoords.y), GetEntityHeading(ped), true, true)
                    end
                end
            end
        else
            if vec.x ~= 0 and vec.y ~= 0 then
                yourHorseEntity = CreatePed(modelHash, vec.x, vec.y, vec.z, head, true, true)
            else
                if town_hash == -108848014 or town_hash == -2066240242 or town_hash == 1453836102 or town_hash == -2145992129 or town_hash == -512529193 then
                    yourHorseEntity = CreatePed(modelHash, pCoords.x+math.random(Config.SpawnRangeAfterCallHorse[1],Config.SpawnRangeAfterCallHorse[2]), pCoords.y+math.random(Config.SpawnRangeAfterCallHorse[1],Config.SpawnRangeAfterCallHorse[2]), pCoords.z, GetEntityHeading(ped), true, true)
                else
                    yourHorseEntity = CreatePed(modelHash, pCoords.x+math.random(Config.SpawnRangeAfterCallHorse[1],Config.SpawnRangeAfterCallHorse[2]), pCoords.y+math.random(Config.SpawnRangeAfterCallHorse[1],Config.SpawnRangeAfterCallHorse[2]), ground_check(pCoords.x, pCoords.y), GetEntityHeading(ped), true, true)
                end
            end
        end
    end
    yourHorseId = id
    existEntity(yourHorseEntity)
    Citizen.Wait(100)
    yourHorseNetwork = NetworkGetNetworkIdFromEntity(yourHorseEntity)
    local x,y,z =  table.unpack(pCoords + vector3(0.0,0.0,0.0))
    Citizen.InvokeNative(0x9587913B9E772D29, yourHorseEntity, 0)
    Citizen.InvokeNative(0x4DB9D03AC4E1FA84, yourHorseEntity, -1, -1, 0)
    Citizen.InvokeNative(0xBCC76708E5677E1D9, yourHorseEntity, 0)
    Citizen.InvokeNative(0xB8B6430EAD2D2437, yourHorseEntity, GetHashKey("PLAYER_HORSE"))
    Citizen.InvokeNative(0x6BCF5F3D8FFE988D, yourHorseEntity, true)
    SetModelAsNoLongerNeeded(GetHashKey(model))
    SetPedConfigFlag(yourHorseEntity, 324, true)
    SetPedConfigFlag(yourHorseEntity, 211, true)
    SetPedConfigFlag(yourHorseEntity, 208, true)
    SetPedConfigFlag(yourHorseEntity, 209, true)
    SetPedConfigFlag(yourHorseEntity, 400, true)
    SetPedConfigFlag(yourHorseEntity, 297, true)
    SetPedConfigFlag(yourHorseEntity, 136, false)
    SetPedConfigFlag(yourHorseEntity, 312, false)
    SetPedConfigFlag(yourHorseEntity, 113, false)
    SetPedConfigFlag(yourHorseEntity, 301, false)  
    SetPedConfigFlag(yourHorseEntity, 277, true)
    SetPedConfigFlag(yourHorseEntity, 319, true)
    SetPedConfigFlag(yourHorseEntity, 122, true)
    SetPedConfigFlag(yourHorseEntity, 297, true)
    Citizen.InvokeNative(0x8DE41E9902E85756, yourHorseEntity)
    if Config.KickHorse == true then
        SetPedConfigFlag(yourHorseEntity, 26, true)
    end
    SetPedConfigFlag(yourHorseEntity, 6, true)
    SetAnimalTuningBoolParam(yourHorseEntity, 25, false)
    SetAnimalTuningBoolParam(yourHorseEntity, 24, false)
    SetAnimalTuningBoolParam(yourHorseEntity, 48, false)
    TaskAnimalUnalerted(yourHorseEntity, -1, false, 0, 0)
    local blipNew = Citizen.InvokeNative(0x23f74c2fda6e7c61, -1230993421, yourHorseEntity)
    Citizen.InvokeNative(0x283978A15512B2FE, yourHorseEntity, true)
    Citizen.InvokeNative(0xED1C764997A86D5A, playerPed, yourHorseEntity) 
    cleanHorseFromOld(yourHorseEntity)
    loadHorseComponent(yourHorseEntity, id)
    globalPromptGroup = setPromptName(yourHorseEntity, id)
    createHorsePrompt(yourHorseEntity)
    yourHorseLevel = levels()
    local age = 0
    for a,b in pairs(yourHorses) do
        if b.id == id then
            age = b.age
            yourHorseAge = b.age
            if tonumber(b.isdead) == 1 or tonumber(b.isdead) == 2 then
                yourHorseIsDead = true
            else
                yourHorseIsDead = false
            end
            Citizen.InvokeNative(0x9CB1A1623062F402, blipNew, b.name)
            break
        end
    end
    stopSave = false
    if tonumber(age) then
        TriggerServerEvent("gum_stables:sendShared", NetworkGetNetworkIdFromEntity(yourHorseEntity), yourHorseId, tonumber(math.floor(age*100 + 0.5)/100), true)
    else
        TriggerServerEvent("gum_stables:sendShared", NetworkGetNetworkIdFromEntity(yourHorseEntity), yourHorseId, age, true)
    end
    if Citizen.InvokeNative(0xFB4891BD7578CDC1, yourHorseEntity, 0xAC106B30) then
        N_0xe6d4e435b56d5bd0(PlayerId(), yourHorseEntity)
    end
end

-- local wheelEntity = nil
-- RegisterCommand("wheel", function(source, args, rawCommand)
--     if wheelEntity == nil and Citizen.InvokeNative(0xCB2CA620C48BC875, yourCartEntity, 4) then
--         return false
--     end
--     api.playAnim(PlayerPedId(), "mini_games@story@mud1@fix_wheel","wheelfix_pickup_intro", 1, 1500)
--     Citizen.Wait(1000)
--     AttachEntityToEntity(wheelEntity, PlayerPedId(), GetEntityBoneIndexByName(PlayerPedId(), "PH_R_Hand"), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true, false, false)
--     SetEntityCollision(wheelEntity, false, true)
--     api.playAnim(PlayerPedId(), "mini_games@story@mud1@fix_wheel","wheelfix_pickup_toroll", 1, 3000)
--     Citizen.Wait(2800)
--     api.playAnim(PlayerPedId(), "mini_games@story@mud1@fix_wheel","wheelfix_lift_idle", 27, -1)
-- end)

-- RegisterCommand("wheelFix", function(source, args, rawCommand)
--     local EntityCoords = GetEntityCoords(yourCartEntity)
--     local EntityHeading = GetEntityHeading(yourCartEntity)
--     ClearPedTasks(PlayerPedId())
--     api.playAnim(PlayerPedId(), "mini_games@story@mud1@fix_wheel","wheelfix_lift_topush", 1, 6000)
--     Citizen.Wait(6000)
--     for k,v in pairs(yourCarts) do
--         if tonumber(yourCartId) == v.id then
--             local wlDmg = json.decode(v.damage_wheel)
--             for c,d in pairs(wlDmg) do
--                 if d == 4 then
--                     table.remove(wlDmg, c)
--                     break
--                 end
--             end
--             v.damage_wheel = json.encode(wlDmg)
--             TriggerServerEvent("gum_stables:fix_wheel", v.id, v.damage_wheel)
--         end
--     end
--     local oldId = yourCartId
--     TriggerEvent('gum_stables:fleeCart')
--     api.playAnim(PlayerPedId(), "amb_work@prop_human_repair_wagon_wheel_on@front@male_a@stand_enter","enter_back_lf", 1, 3000)
--     if DoesEntityExist(yourCartEntity) then
--         Wait(0)
--     end
--     Citizen.Wait(100)
--     for k,v in pairs(yourCarts) do
--         if tonumber(oldId) == v.id then
--             initiateCart(v.model, v.id, EntityCoords.x, EntityCoords.y, EntityCoords.z, EntityHeading, true)
--         end
--     end
--     Citizen.Wait(2700)
--     api.playAnim(PlayerPedId(), "amb_work@prop_human_repair_wagon_wheel_on@front@male_a@idle_a","idle_a", 1, 3000)
--     Citizen.Wait(2900)
--     api.playAnim(PlayerPedId(), "amb_work@prop_human_repair_wagon_wheel_on@front@male_a@stand_exit","exit_front", 1, 3000)
-- end)

-- Citizen.CreateThread(function()
--     while true do
--         getWheel()
--         Citizen.Wait(1000)
--     end
-- end)
-- function getWheel()
--     local pCoords = GetEntityCoords(PlayerPedId())
--     for a,b in pairs(GetGamePool('CObject')) do
--         local coords = GetEntityCoords(b)
--         local distance = #(pCoords - coords)
--         if distance < 2.0 then
--             if wheelModelTable[GetEntityModel(b)] then
--                 wheelEntity = b
--             end
--         end
--     end
-- end


function initiateCart(model, id, cdx, cdy, cdz, cdh, fromHouse)
    local playerPed = PlayerPedId()
    local modelHash = GetHashKey(model)
    loadModel(modelHash)
    local random = math.random(-20, 20)
    local randomY = math.random(-20, 20)
    local pCoords = GetEntityCoords(playerPed)
    local node, vec, head = GetClosestVehicleNodeWithHeading(pCoords.x, pCoords.y, pCoords.z, 1, true, true, true)
    local town_hash = Citizen.InvokeNative(0x43AD8FC02B429D33, pCoords, 10)

    if fromHouse then
        yourCartEntity = Citizen.InvokeNative(0xAF35D0D2583051B0, modelHash, cdx, cdy, cdz, cdh, true, false, 0, 1)
    else
        if Config.SimulateNodesEnabled then
            local nodeExist = false
            local simulateX, simulateY, simulateZ, simulateH = 0, 0, 0, 0
            for a,b in pairs(Config.SimulateNodes) do
                local distanc = GetDistanceBetweenCoords(pCoords, b[1], b[2], b[3], true)
                if distanc < b[5] then
                    nodeExist = true
                    simulateX, simulateY, simulateZ, simulateH = b[1], b[2], b[3], b[4]
                end
            end
            if nodeExist then
                yourCartEntity = Citizen.InvokeNative(0xAF35D0D2583051B0, modelHash, simulateX, simulateY, simulateZ, simulateH, true, false, 0, 1)
            else
                if vec.x ~= 0 and vec.y ~= 0 then
                    yourCartEntity = Citizen.InvokeNative(0xAF35D0D2583051B0, modelHash, vec.x, vec.y, vec.z, head, true, false, 0, 1)
                else
                    if town_hash == -108848014 or town_hash == -2066240242 or town_hash == 1453836102 or town_hash == -2145992129 or town_hash == -512529193 then
                        yourCartEntity = Citizen.InvokeNative(0xAF35D0D2583051B0, modelHash, pCoords.x+math.random(2,10), pCoords.y+math.random(2,10), pCoords.z, GetEntityHeading(ped), true, false, 0, 1)
                    else
                        yourCartEntity = Citizen.InvokeNative(0xAF35D0D2583051B0, modelHash, pCoords.x+math.random(2,10), pCoords.y+math.random(2,10), ground_check(pCoords.x, pCoords.y), GetEntityHeading(ped), true, false, 0, 1)
                    end
                end
            end
        else
            if vec.x ~= 0 and vec.y ~= 0 then
                yourCartEntity = Citizen.InvokeNative(0xAF35D0D2583051B0, modelHash, vec.x, vec.y, vec.z, head, true, false, 0, 1)
            else
                if town_hash == -108848014 or town_hash == -2066240242 or town_hash == 1453836102 or town_hash == -2145992129 or town_hash == -512529193 then
                    yourCartEntity = Citizen.InvokeNative(0xAF35D0D2583051B0, modelHash, pCoords.x+math.random(2,10), pCoords.y+math.random(2,10), pCoords.z, GetEntityHeading(ped), true, false, 0, 1)
                else
                    yourCartEntity = Citizen.InvokeNative(0xAF35D0D2583051B0, modelHash, pCoords.x+math.random(2,10), pCoords.y+math.random(2,10), pCoords.z, GetEntityHeading(ped), true, false, 0, 1)
                end
            end
        end
    end
    for k,v in pairs(yourCarts) do
        if tonumber(id) == tonumber(v.id) then
            Citizen.InvokeNative(0x8C6D9A399126C194, yourCartEntity, tonumber(v.horses))
        end
    end
    existEntity(yourCartEntity)
    Citizen.Wait(100)
    SetVehicleHasBeenOwnedByPlayer(yourCartEntity, true)
    Citizen.InvokeNative(0x758C3460EE915D0A, yourCartEntity, 0.0)
    Citizen.InvokeNative(0xBAE0EEDF93F05EAA, yourCartEntity, 0.0)
    local blipNew = Citizen.InvokeNative(0x23f74c2fda6e7c61, -1230993421, yourCartEntity)
    SetBlipSprite(blipNew, -361388975)
    setHorseClean(yourCartEntity, true)
    yourCartId = id
    loadCartComponent(yourCartEntity, id, true)
    yourCartNetwork = NetworkGetNetworkIdFromEntity(yourCartEntity)
    Citizen.Wait(100)
    TriggerServerEvent("gum_stables:sendShared", NetworkGetNetworkIdFromEntity(yourCartEntity), id, nil, false)
    cartHorses = {}
    for a,b in pairs(yourCarts) do
        if b.id == id then
            Citizen.InvokeNative(0x9CB1A1623062F402, blipNew, b.name)
            TriggerEvent("gum_farming:checkCartEntity", yourCartEntity, b.model, b.addon_ability, b.id, PlayerPedId())
            break
        end
    end

    for i=1, 6 do
        if Citizen.InvokeNative(0xA8BA0BAE0173457B, yourCartEntity, (i-1)) ~= false then
            cartHorses[i] = Citizen.InvokeNative(0xA8BA0BAE0173457B, yourCartEntity, (i-1))
        end
    end
end

function levels()
    local max = GetMaxAttributePoints(yourHorseEntity, 7)
    local current = GetAttributePoints(yourHorseEntity, 7)
    local levelRange = max / Config.MaxLevel
    yourHorseLevel = math.floor(current / levelRange) + 1
    if yourHorseLevel > Config.MaxLevel then
        yourHorseLevel = Config.MaxLevel
    end
    return yourHorseLevel
end

function startCamera(state)
    DestroyAllCams(true)
    if openCompanyStablePosition == 0 then
        if state then
            for k,v in pairs(Config.SpotsForStable) do
                if k == openStablePosition then
                    camera = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", v.cameraSetting.breedCamera[1], v.cameraSetting.breedCamera[2], v.cameraSetting.breedCamera[3], -10.00, 00.00, v.cameraSetting.breedCamera[4], zoom, true, 0)
                end
            end
        else
            for k,v in pairs(Config.SpotsForStable) do
                if k == openStablePosition then
                    camera = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", v.cameraSetting.storeCamera[1], v.cameraSetting.storeCamera[2], v.cameraSetting.storeCamera[3], -10.00, 00.00, v.cameraSetting.storeCamera[4], zoom, true, 0)
                end
            end
        end
    else
        if state then
            for k,v in pairs(Config.HorseCompany) do
                if k == openCompanyStablePosition then
                    camera = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", v.cameraSetting.breedCamera[1], v.cameraSetting.breedCamera[2], v.cameraSetting.breedCamera[3], -10.00, 00.00, v.cameraSetting.breedCamera[4], zoom, true, 0)
                end
            end
        else
            for k,v in pairs(Config.HorseCompany) do
                if k == openCompanyStablePosition then
                    camera = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", v.cameraSetting.storeCamera[1], v.cameraSetting.storeCamera[2], v.cameraSetting.storeCamera[3], -10.00, 00.00, v.cameraSetting.storeCamera[4], zoom, true, 0)
                end
            end
        end
    end
    if cam ~= nil then
        SetCamActiveWithInterp(camera, cam, 500, 0, 0)
        RenderScriptCams(true, true, 500, true, true)
        activeInterCamera = true
        cam = nil
    else
        SetCamActive(camera,true)
        RenderScriptCams(true, true, 500, true, true)
    end
end

function promptDisableAll(state)
    api.setPromptEnable(''..Config.Language[464].text..'', promptTraining, state)
    api.setPromptEnable(''..Config.Language[465].text..'', promptTraining, state)
    api.setPromptEnable(''..Config.Language[466].text..'', promptTraining, state)
    api.setPromptEnable(''..Config.Language[467].text..'', promptTraining, state)
    api.setPromptEnable(''..Config.Language[468].text..'', promptTraining, state)
end

function MoveAroundPlayer(entity)
    yourHorseLonging = true
    local playerPed = PlayerPedId()

    local angle = 0
    local timer = 0
    local lastFrameTime = 0

    while yourHorseLonging do
        Citizen.Wait(0)
        local currentTime = GetGameTimer()
        local deltaTime = (currentTime - lastFrameTime) / 1000 -- Convert milliseconds to seconds
        lastFrameTime = currentTime

        timer = timer + deltaTime
        if timer > (radiusLonging / speed/ 5.8 / 5) then
            timer = 0
            angle = angle + (0.2 * direction)

            if angle >= 2 * math.pi then
                angle = angle - 2 * math.pi
            elseif angle <= 0 then
                angle = angle + 2 * math.pi
            end

            local playerCoords = GetEntityCoords(playerPed)
            local x = playerCoords.x + radiusLonging * math.cos(angle)
            local y = playerCoords.y + radiusLonging * math.sin(angle)
 
            TaskGoToCoordAnyMeans(entity, x, y, playerCoords.z, speed, 0, 0, 0, 0)
        end
        if Citizen.InvokeNative(0x580417101DDB492F, 0, 0xC97792B7) then
            api.setPromptEnable(''..Config.Language[470].text..'', promptLonging, false)
            if direction == 1 then
                direction = -1
            else
                direction = 1
            end
            if gainExpBlock <= 0 then
                gainExpBlock = Config.SwitchSideOnLongingSpamProtect
                gainHorseExp(Config.ExpTable.SwitchSide)
            end
            Citizen.Wait(1000)
            api.setPromptEnable(''..Config.Language[470].text..'', promptLonging, true)
        end
        if Citizen.InvokeNative(0x580417101DDB492F, 0, 0x156F7119) then
            yourHorseLonging = false
        end
        if speed < 1.5 then
            api.setPromptEnable(''..Config.Language[460].text..'', promptLonging, false)
        else
            api.setPromptEnable(''..Config.Language[460].text..'', promptLonging, true)
        end
        if Citizen.InvokeNative(0x580417101DDB492F, 0, 0x05CA7C52) then
            api.setPromptEnable(''..Config.Language[460].text..'', promptLonging, false)
            speed = speed - 0.05
            if speed < 1.4 then
                speed = 1.4
            end
            api.setPromptEnable(''..Config.Language[460].text..'', promptLonging, true)
        end
        if speed > 2.0 then
            api.setPromptEnable(''..Config.Language[461].text..'', promptLonging, false)
        else
            api.setPromptEnable(''..Config.Language[461].text..'', promptLonging, true)
        end
        if Citizen.InvokeNative(0x580417101DDB492F, 0, 0x6319DB71) then
            api.setPromptEnable(''..Config.Language[461].text..'', promptLonging, false)
            speed = speed + 0.05
            if speed > 2.1 then
                speed = 2.1
            end
            api.setPromptEnable(''..Config.Language[461].text..'', promptLonging, true)
        end
        if Citizen.InvokeNative(0x580417101DDB492F, 0, 0x20190AB4) then
            api.setPromptEnable(''..Config.Language[472].text..'', promptLonging, false)
            radiusLonging = radiusLonging + 2.0
            if radiusLonging > 30 then
                radiusLonging = 6
            end
            Citizen.Wait(10)
            api.setPromptEnable(''..Config.Language[472].text..'', promptLonging, true)
        end
        if Citizen.InvokeNative(0x580417101DDB492F, 0, 0x39336A4F) then
            api.setPromptEnable(''..Config.Language[462].text..'', promptLonging, false)
            Citizen.InvokeNative(0x0AE4086104E067B1, yourHorseEntity)
            if gainExpBlock <= 0 then
                gainExpBlock = Config.JumpingOnLongingSpamProtect
                gainHorseExp(Config.ExpTable.LongingJump)
            end
            Citizen.Wait(500)
            api.setPromptEnable(''..Config.Language[462].text..'', promptLonging, true)
        end

        if not yourHorseLonging then
            break
        end
    end
end

if Config.CourageSystem then
    Citizen.CreateThread(function()
        while true do
            if yourHorseEntity ~= nil then
                if Citizen.InvokeNative(0x625B774D75C87068, yourHorseEntity, GetHashKey("EVENT_ANIMAL_DETECTED_THREAT")) and canTrainCourage then
                    local randomCourage = math.random(0,100)
                    if randomCourage < Config.CourageUpgradeChance then
                        for k,v in pairs(yourHorses) do
                            if tonumber(yourHorseId) == tonumber(v.id) and v.courage < Config.MaxCourage and (GetMount(PlayerPedId()) == yourHorseEntity or tonumber(yourHorseAge) < 5.0) then
                                yourHorses[k].courage = yourHorses[k].courage+1
                                yourHorseCourage = yourHorses[k].courage
                                SetAttributeBaseRank(yourHorseEntity, 2, tonumber(v.courage))
                                SetAttributeBaseRank(yourHorseEntity, 3, tonumber(v.courage))
                                TriggerServerEvent("gum_stables:updateCourage", yourHorseId, tonumber(yourHorses[k].courage))
                            end
                        end
                    end
                    Citizen.Wait(10000)
                end
            end
            Citizen.Wait(1000)
        end
    end)
end

if Config.FriendlySystem then
    Citizen.CreateThread(function()
        while true do
            if canTrainFriendly then
                if Config.RandomBadSituation then
                    local random = math.random(Config.RandomBadSituationTimer[1], Config.RandomBadSituationTimer[2])
                    Citizen.Wait(random*1000)
                    if tonumber(yourHorseAge) ~= nil then
                        if yourHorseEntity ~= nil and (GetMount(PlayerPedId()) == yourHorseEntity or tonumber(yourHorseAge) < 5.0)  then
                            makeBadSituation()
                        end
                    end
                else
                    Citizen.Wait(Config.BadFriendlyActionTimer*1000)
                    if tonumber(yourHorseAge) ~= nil then
                        if yourHorseEntity ~= nil and (GetMount(PlayerPedId()) == yourHorseEntity or tonumber(yourHorseAge) < 5.0) then
                            makeBadSituation()
                        end
                    end
                end
            end
            Citizen.Wait(1000)
        end
    end)
end

function makeBadSituation()
    for a,b in pairs(yourHorses) do
        if tonumber(yourHorseId) == tonumber(b.id) then
            if tonumber(b.friendly) < (#Config.BadFriendlyAction) then
                local changeOnInteraction = math.random(1,100)
                if Config.BadFriendlyAction[tonumber(b.friendly)] < changeOnInteraction then
                    local randomUpgrade = math.random(1,2)
                    if randomUpgrade == 1 then
                        ClearPedTasks(PlayerPedId())
                        if math.random(1,2) == 1 then
                            Citizen.InvokeNative(0xA09CFD29100F06C3, yourHorseEntity, 2, 0, 0)
                        else
                            Citizen.InvokeNative(0xA09CFD29100F06C3, yourHorseEntity, 8, 0, 0)
                        end
                        if canTrain then
                            local chanceOnGain = math.random(1, 100)
                            if chanceOnGain < Config.ChanceToMakeFrendlyTrainer then
                                yourHorses[a].friendly = yourHorses[a].friendly+1
                                yourHorseFriendly = yourHorses[a].friendly
                                TriggerServerEvent("gum_stables:updateFriendly", b.id, yourHorses[a].friendly)
                            end
                        else
                            local chanceOnGain = math.random(1, 100)
                            if chanceOnGain < Config.ChanceToMakeFriendlyNoTrainer then
                                yourHorses[a].friendly = yourHorses[a].friendly+1
                                yourHorseFriendly = yourHorses[a].friendly
                                TriggerServerEvent("gum_stables:updateFriendly", b.id, yourHorses[a].friendly)
                            end
                        end
                        Citizen.Wait(1000)
                    end
                end
            end
        end
    end
end

function createAnimal(model, x,y,z,h, loot, quality)
    Citizen.CreateThread(function()
        local npcSpawn = GetHashKey(model)
        loadModel(npcSpawn)
        local animalNpc = CreatePed(npcSpawn, x, y, z, h, true, true, 0, 0)
        existEntity(animalNpc)
        Citizen.InvokeNative(0x283978A15512B2FE, animalNpc, true)
        SetEntityAsMissionEntity(animalNpc, true, true)
        SetModelAsNoLongerNeeded(GetHashKey(animalNpc))
        SetEntityHealth(animalNpc, 0)
        Citizen.InvokeNative(0x6BCF5F3D8FFE988D, animalNpc, loot)
        Citizen.InvokeNative(0xCE6B874286D640BB, animalNpc, quality)
        TaskPickupCarriableEntity(PlayerPedId(), animalNpc)
    end)
end

function disableAllPrompts()
    api.showPrompt('', promptSaveTo, false)
    api.showPrompt('', promptNormalStables, false)
    api.showPrompt('', promptCompanyStables, false)
    api.showPrompt('', promptSpotStables, false)
    api.showPrompt('', promptCamera, false)
    api.showPrompt('', promptAnimalOnCart, false)
    api.showPrompt('', promptYourCart, false)
    api.showPrompt('', promptPelts, false)
    api.showPrompt('', promptTrainer, false)
    api.showPrompt('', promptTraining, false)
    api.showPrompt('', promptLonging, false)
    api.showPrompt('', promptFixWheel, false)
    api.showPrompt('', promptBreederStore, false)
    api.showPrompt('', promptSharedCart, false)
    api.showPrompt('', promptSharedAnimal, false)
    api.showPrompt('', promptWildHorse, false)
    api.showPrompt('', promptSaveToCompany, false)
end

function trainingButtonState(state)
    if state == true then
        api.setPromptEnable(''..Config.Language[464].text..'', promptTraining, true)
        api.setPromptEnable(''..Config.Language[465].text..'', promptTraining, true)
        api.setPromptEnable(''..Config.Language[466].text..'', promptTraining, true)
        api.setPromptEnable(''..Config.Language[467].text..'', promptTraining, true)
        api.setPromptEnable(''..Config.Language[468].text..'', promptTraining, true)
        api.setPromptEnable(''..Config.Language[469].text..'', promptTraining, true)
    else
        api.setPromptEnable(''..Config.Language[464].text..'', promptTraining, false)
        api.setPromptEnable(''..Config.Language[465].text..'', promptTraining, false)
        api.setPromptEnable(''..Config.Language[466].text..'', promptTraining, false)
        api.setPromptEnable(''..Config.Language[467].text..'', promptTraining, false)
        api.setPromptEnable(''..Config.Language[468].text..'', promptTraining, false)
        api.setPromptEnable(''..Config.Language[469].text..'', promptTraining, false)
    end
end

function requestNetwork(entity)
    NetworkRequestControlOfEntity(entity)
    local timeout = 0
    while not NetworkHasControlOfEntity(entity) do
        timeout = timeout+1
        if timeout > 10 then
            break
        end
        if not DoesEntityExist(entity) then
            break
        end
        Wait(100)
    end
    if NetworkHasControlOfEntity(entity) then
    end
end

function createHorsePrompt(entity)
    local promptGroup = Citizen.InvokeNative(0xB796970BD125FCE8, entity)
    api.createPrompt(""..Config.Language[356].text.."", Config.KeySetting.horseComponents, promptGroup, nil, "gum_stables:componentHorse")
    api.createPrompt(""..Config.Language[357].text.."", Config.KeySetting.horseFlee, promptGroup, nil, "gum_stables:fleeHorse")
    api.createPrompt(""..Config.Language[358].text.."", Config.KeySetting.horseLead, promptGroup, nil, "gum_stables:leadHorse")
    api.createPrompt(""..Config.Language[359].text.."", Config.KeySetting.horseCalm, promptGroup, nil, "gum_stables:calmHorse")
    api.createPrompt(""..Config.Language[360].text.."", Config.KeySetting.horseBags, promptGroup, nil, "gum_stables:bagsHorse")
    api.createPrompt(""..Config.Language[361].text.."", Config.KeySetting.horseTransfer, promptGroup, nil, "gum_stables:transferHorse")
    if Config.hoofHook == true then
        api.createPrompt(""..Config.Language[430].text.."", Config.KeySetting.horseCheckHoof, promptGroup, nil, "gum_stables:hoofHorse")
    end
end

function setPromptName(entity)
    local promptGroup = PromptGetGroupIdForTargetEntity(entity)
    yourHorseLevel = levels()
    local maxExp = GetMaxAttributePoints(entity, 7)
    for k,v in pairs(yourHorses) do
        if v["selected"] == 1 or yourHorseId == v.id then
            if canTrain then
                if v["age"] == Config.Language[417].text then 
                    if tonumber(maxExp) >= tonumber(yourHorseExp) then
                        SetPedPromptName(entity, ""..Config.Language[47].text.." : "..Config.Language[417].text.."   "..Config.Language[99].text.." : "..yourHorseLevel.."   "..Config.Language[100].text.." : "..yourHorseExp+yourHorseGainExp.." / "..maxExp)
                    else
                        SetPedPromptName(entity, ""..Config.Language[47].text.." : "..Config.Language[417].text.."   "..Config.Language[99].text.." : "..yourHorseLevel.."   "..Config.Language[100].text.." : "..maxExp.." / "..maxExp)
                    end
                else
                    if tonumber(maxExp) >= tonumber(yourHorseExp) then
                        SetPedPromptName(entity, ""..Config.Language[47].text.." : "..tonumber(string.format("%.2f", v["age"])).."   "..Config.Language[99].text.." : "..yourHorseLevel.."   "..Config.Language[100].text.." : "..yourHorseExp+yourHorseGainExp.." / "..maxExp)
                    else
                        SetPedPromptName(entity, ""..Config.Language[47].text.." : "..tonumber(string.format("%.2f", v["age"])).."   "..Config.Language[99].text.." : "..yourHorseLevel.."   "..Config.Language[100].text.." : "..maxExp.." / "..maxExp)
                    end
                end
            else
                if v["age"] == Config.Language[417].text then
                    if tonumber(maxExp) >= tonumber(yourHorseExp) then
                        SetPedPromptName(entity, ""..Config.Language[47].text.." : "..Config.Language[417].text.."   "..Config.Language[99].text.." : "..yourHorseLevel.."   "..Config.Language[100].text.." : "..yourHorseExp+yourHorseGainExp.." / "..maxExp)
                    else
                        SetPedPromptName(entity, ""..Config.Language[47].text.." : "..Config.Language[417].text.."   "..Config.Language[99].text.." : "..yourHorseLevel.."   "..Config.Language[100].text.." : "..maxExp.." / "..maxExp)
                    end
                else
                    if tonumber(maxExp) >= tonumber(yourHorseExp) then
                        SetPedPromptName(entity, ""..Config.Language[47].text.." : "..tonumber(string.format("%.2f", v["age"])).."   "..Config.Language[99].text.." : "..yourHorseLevel.."   "..Config.Language[100].text.." : "..yourHorseExp+yourHorseGainExp.." / "..maxExp)
                    else
                        SetPedPromptName(entity, ""..Config.Language[47].text.." : "..tonumber(string.format("%.2f", v["age"])).."   "..Config.Language[99].text.." : "..yourHorseLevel.."   "..Config.Language[100].text.." : "..maxExp.." / "..maxExp)
                    end
                end
            end
            break
        end
    end
    return promptGroup
end

function loadModel(model)
	if IsModelInCdimage(model) then
		RequestModel(model)

		while not HasModelLoaded(model) do
			Wait(0)
		end

		return true
	else
		return false
	end
end

function existEntity(entity)
    while not DoesEntityExist(entity) do
        Wait(100)
    end
end

function saveWildHorse(entity, price, gender, model)
    if tonumber(maxAllowedHorses) < tonumber(#allYourCarts) then
        api.notify(""..Config.Language[15].text.."", ""..Config.Language[228].text.."", Config.Image, 2000)
        return false
    end
    local positionForBuy = 0
    for f,g in pairs(Config.SpotsForStable) do
        local coords = GetEntityCoords(PlayerPedId())
        if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, g.baseSetting.enterCoords[1], g.baseSetting.enterCoords[2], g.baseSetting.enterCoords[3], false) < Config.CoordAdjustForStablesId then
            positionForBuy = f
        end
    end
    api.getInput( ""..Config.Language[53].text.."", ""..Config.Language[197].text.." "..gender.."", function(cb)
        local nameHorse = tostring(cb)
        if nameHorse ~= nil and nameHorse ~= "close" then
            if Config.Pay_For_Save_Horse then
                TriggerServerEvent("gum_stables:save_horse", model, nameHorse, (price/100*Config.Pay_For_Save_Percent), gender, positionForBuy, NetworkGetNetworkIdFromEntity(entity))
            else
                TriggerServerEvent("gum_stables:save_horse", model, nameHorse, 0, gender, positionForBuy, NetworkGetNetworkIdFromEntity(entity))
            end
        end
    end)
end

function sellWildHorses(entity, price, gender, model)
    local wildCalculation = 0
    if wildCalculation == 0 then
        TriggerServerEvent("gum_horses:sell_horse", tonumber(price), model, NetworkGetNetworkIdFromEntity(entity))
    else
        TriggerServerEvent("gum_horses:sell_horse", tonumber(price), model, NetworkGetNetworkIdFromEntity(entity))
    end
end

function GetHorseBall(entity)
    return Citizen.InvokeNative(0xFD1BA1EEF7985BB8, entity, 41611, Citizen.ResultAsFloat())
end

function ProcessCamControls()
    Citizen.CreateThread(function()
        local playerCoords = GetEntityCoords(entityPreview[1])
        local newPos = ProcessNewPosition()
        SetCamCoord(cam, newPos.x, newPos.y, newPos.z)
        PointCamAtCoord(cam, playerCoords.x, playerCoords.y, playerCoords.z + 0.5)
        Citizen.InvokeNative(0x27666E5988D9D429, cam, fov)
    end)
end

function ProcessNewPosition()
    angleZ = mouseX
    angleY = mouseY
    if (angleY > 89.0) then angleY = 89.0 elseif (angleY < -89.0) then angleY = -89.0 end
    local pCoords = GetEntityCoords(entityPreview[1])
    local behindCam = {
        x = pCoords.x + ((Cos(angleZ) * Cos(angleY)) + (Cos(angleY) * Cos(angleZ))) / 2 * (3.0 + 0.5),
        y = pCoords.y + ((Sin(angleZ) * Cos(angleY)) + (Cos(angleY) * Sin(angleZ))) / 2 * (3.0 + 0.5),
        z = pCoords.z + ((Sin(angleY))) * (3.0 + 0.5)
    }
    local rayHandle = StartShapeTestRay(pCoords.x, pCoords.y, pCoords.z + 0.5, behindCam.x, behindCam.y, behindCam.z, -1, entityPreview[1], 0)
    local a, hitBool, hitCoords, surfaceNormal, entityHit = GetShapeTestResult(rayHandle)

    local maxRadius = 5.0
    if (hitBool and Vdist(pCoords.x, pCoords.y, pCoords.z + 0.5, hitCoords) < 3.0 + 0.5) then
        maxRadius = Vdist(pCoords.x, pCoords.y, pCoords.z + 0.5, hitCoords)
    end

    local offset = {
        x = ((Cos(angleZ) * Cos(angleY)) + (Cos(angleY) * Cos(angleZ))) / 2 * maxRadius,
        y = ((Sin(angleZ) * Cos(angleY)) + (Cos(angleY) * Sin(angleZ))) / 2 * maxRadius,
        z = ((Sin(angleY))) * maxRadius
    }

    local pos = {
        x = pCoords.x + offset.x,
        y = pCoords.y + offset.y,
        z = pCoords.z + offset.z
    }

    return pos
end

Citizen.CreateThread(function()
    if npcsMan["spot"] == nil then
        npcsMan["spot"] = {}
    end
    if npcsHorse["spot"] == nil then
        npcsHorse["spot"] = {}
    end
    if npcsMan["stable"] == nil then
        npcsMan["stable"] = {}
    end
    if npcsHorse["stable"] == nil then
        npcsHorse["stable"] = {}
    end
    if npcsHorse["company"] == nil then
        npcsHorse["company"] = {}
    end
    if npcsMan["breed"] == nil then
        npcsMan["breed"] = {}
    end
    if npcsMan["company"] == nil then
        npcsMan["company"] = {}
    end
    if npcsHorse["breed"] == nil then
        npcsHorse["breed"] = {}
    end
    for k,v in pairs(Config.Horses) do
        for x,y in pairs(v) do 
            storageSizeTable[GetHashKey(x)] = {y.storageSlot, y.storageAnimals}
        end                                 
    end
    for k,v in pairs(Config.Wagons) do
        for x,y in pairs(v) do 
            storageSizeTable[GetHashKey(x)] = {y.storageSlot, y.storageAnimals}
        end
    end
    editedHorseStoreTable = {}
    editedCartStoreTable = {}
    Citizen.Wait(100)
    for k,v in pairs(Config.Horses) do
        for k2,v2 in pairs(v) do
            if v2.dollarPrice < 50 then
                editedHorseStoreTable[k2..v2.colorName] = {state=1, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
            elseif v2.dollarPrice < 150 then
                editedHorseStoreTable[k2..v2.colorName] = {state=2, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
            elseif v2.dollarPrice < 250 then
                editedHorseStoreTable[k2..v2.colorName] = {state=3, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
            else
                editedHorseStoreTable[k2..v2.colorName] = {state=4, category=k, model=k2, colorName=v2.colorName, dollarPrice=v2.dollarPrice, goldPrice=v2.goldPrice, storageSlot=v2.storageSlot, jobForBuy=v2.jobForBuy, groupForBuy=v2.groupForBuy, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
            end    
        end
    end
    horseTableWithoutCat = {}
    for k,v in pairs(Config.Horses) do
        for k2,v2 in pairs(v) do
            horseTableWithoutCat[GetHashKey(k2)] = {model=k2, colorName=k.." "..v2.colorName, dollarPrice=v2.dollarPrice, storageSlot=v2.storageSlot, peltStorage=v2.peltStorage, sellPrice=v2.sellPrice, fireHooves=v2.fireHooves, horseStats=v2.horseStats}
        end
    end

    Citizen.Wait(0)
    for k,v in pairs(Config.Wagons) do
        for a,b in pairs(v) do
            editedCartStoreTable[a] = {category=k, model=a, name=b.name, dollarPrice=b.dollarPrice, goldPrice=b.goldPrice, storageSlot=b.storageSlot, jobForBuy=b.jobForBuy}
        end
    end

    Citizen.Wait(10)
    for k,v in pairs(Config.Accesories) do
        if v.category_hash == tonumber('0xEFB31921') then
            if v.price == nil then
                table.insert(allBedrols, {hash=v.hash_dec_signed, price=Config.Horse_Bedrolls})
            else
                table.insert(allBedrols, {hash=v.hash_dec_signed, price=v.price})
            end
        end
        if v.category_hash == tonumber('0x17CEB41A') then
            if v.price == nil then
                table.insert(allBlankets, {hash=v.hash_dec_signed, price=Config.Horse_Blankets})
            else
                table.insert(allBlankets, {hash=v.hash_dec_signed, price=v.price})
            end
        end
        if v.category_hash == tonumber('0xAA0217AB') then
            if v.price == nil then
                table.insert(allManes, {hash=v.hash_dec_signed, price=Config.Horse_Manes})
            else
                table.insert(allManes, {hash=v.hash_dec_signed, price=v.price})
            end
        end
        if v.category_hash == tonumber('0x80451C25') then
            if v.price == nil then
                table.insert(allBags, {hash=v.hash_dec_signed, price=Config.Horse_Bags})
            else
                table.insert(allBags, {hash=v.hash_dec_signed, price=v.price})
            end
        end
        if v.category_hash == tonumber('0xBAA7E618') then
            if v.price == nil then
                table.insert(allSaddles, {hash=v.hash_dec_signed, price=Config.Horse_Saddles})
            else
                table.insert(allSaddles, {hash=v.hash_dec_signed, price=v.price})
            end
        end
        if v.category_hash == tonumber('0xA63CAE10') then
            if v.price == nil then
                table.insert(allTails, {hash=v.hash_dec_signed, price=Config.Horse_Tails})
            else
                table.insert(allTails, {hash=v.hash_dec_signed, price=v.price})
            end
        end
        if v.category_hash == tonumber('0x05447332') then
            if v.price == nil then
                table.insert(allHorns, {hash=v.hash_dec_signed, price=Config.Horse_Horn})
            else
                table.insert(allHorns, {hash=v.hash_dec_signed, price=v.price})
            end
        end
        if v.category_hash == tonumber('0xDA6DADCA') then
            if v.price == nil then
                table.insert(allStirrups, {hash=v.hash_dec_signed, price=Config.Horse_Stirrups})
            else
                table.insert(allStirrups, {hash=v.hash_dec_signed, price=v.price})
            end
        end
        if v.category_hash == tonumber('0xD3500E5D') then
            if v.price == nil then
                table.insert(allMasks, {hash=v.hash_dec_signed, price=Config.Horse_Accesori})
            else
                table.insert(allMasks, {hash=v.hash_dec_signed, price=v.price})
            end
        end
        if v.category_hash == tonumber('0x30DEFDDF') then
            if v.price == nil then
                table.insert(allMustaches, {hash=v.hash_dec_signed, price=Config.Horse_Mustache})
            else
                table.insert(allMustaches, {hash=v.hash_dec_signed, price=v.price})
            end
        end
        if v.category_hash == tonumber('0xAC106B30') then
            if v.price == nil then
                table.insert(allHolsters, {hash=v.hash_dec_signed, price=Config.Horse_Holster})
            else
                table.insert(allHolsters, {hash=v.hash_dec_signed, price=v.price})
            end
        end   
        if v.category_hash == tonumber('0x1530BE1C') then
            if v.price == nil then
                table.insert(allLantern, {hash=v.hash_dec_signed, price=Config.Horse_Lantern})
            else
                table.insert(allLantern, {hash=v.hash_dec_signed, price=v.price})
            end
        end   
        if v.category_hash == tonumber('0x94B2E3AF') then
            if v.price == nil then
                table.insert(allBridles, {hash=v.hash_dec_signed, price=Config.Horse_Bridle})
            else
                table.insert(allBridles, {hash=v.hash_dec_signed, price=v.price})
            end
        end   
        if v.category_hash == tonumber('0xFACFC3C0') then
            if v.price == nil then
                table.insert(allBlankets, {hash=v.hash_dec_signed, price=Config.Horse_Shoe})
            else
                table.insert(allBlankets, {hash=v.hash_dec_signed, price=v.price})
            end
       end   
    end
    Citizen.Wait(10)
    for a,b in pairs(Config.Wagons) do
        if a == Config.Language[351].text then
            for c,d in pairs(b) do
                huntingCarts[GetHashKey(c)] = true
            end
        end
    end
    Citizen.Wait(10)
    for a,b in pairs(Config.Wagons) do
        if b[7] == Config.Language[352].text then
            workerCarts[GetHashKey(a)] = true
        end
    end
    Citizen.Wait(5000)
    SendNUIMessage({type="languageLoad", language=Config.Language})
    for k,v in pairs(Config.SpotsForStable) do
        if v.blipSetting.blipStablesEnabled then
            blipsStables[k] = N_0x554d9d53f696d002(1664425300, v.baseSetting.enterCoords[1], v.baseSetting.enterCoords[2], v.baseSetting.enterCoords[3])
            SetBlipSprite(blipsStables[k], -73168905, 1)
            SetBlipScale(blipsStables[k], 1.5)
            Citizen.InvokeNative(0x9CB1A1623062F402, blipsStables[k], v.blipSetting.blipStablesName)
        end
    end
    
    for k,v in pairs(Config.HorseCompany) do
        if v.blipSetting.blipEnabled then
            blipsStables[k] = N_0x554d9d53f696d002(1664425300, v.baseSetting.enterCoords[1], v.baseSetting.enterCoords[2], v.baseSetting.enterCoords[3])
            SetBlipSprite(blipsStables[k], -73168905, 1)
            SetBlipScale(blipsStables[k], 1.5)
            Citizen.InvokeNative(0x9CB1A1623062F402, blipsStables[k], v.blipSetting.blipName)
        end
    end

    for k,v in pairs(Config.SpotsForStable) do
        if v.blipSetting.blipWildEnabled then
            blipsSellSpot[k] = N_0x554d9d53f696d002(1664425300, v.baseSetting.wildCoords[1], v.baseSetting.wildCoords[2], v.baseSetting.wildCoords[3])
            SetBlipSprite(blipsSellSpot[k], -44909892, 1)
            SetBlipScale(blipsSellSpot[k], 1.5)
            Citizen.InvokeNative(0x9CB1A1623062F402, blipsSellSpot[k], ""..v.blipSetting.blipWildName.."")
        end
    end
    if Config.SpotForTake then
        for k,v in pairs(Config.SpotForTakeCd) do
            if v.blipSetting.enabled then
                blipsSpotTake[k] = N_0x554d9d53f696d002(1664425300, v.baseSetting.enterCoords[1], v.baseSetting.enterCoords[2], v.baseSetting.enterCoords[3])
                SetBlipSprite(blipsSpotTake[k], 1045919449, 1)
                SetBlipScale(blipsSpotTake[k], 1.5)
                Citizen.InvokeNative(0x9CB1A1623062F402, blipsSpotTake[k], v.blipSetting.blipName)
            end
        end
    end
    if Config.StoreForBreeder then
        for k,v in pairs(Config.BreederStore) do
            if v.blip then
                blipsBreederStore[k] = N_0x554d9d53f696d002(1664425300, v['coords'][1], v['coords'][2], v['coords'][3])
                SetBlipSprite(blipsBreederStore[k], -815685893, 1)
                SetBlipScale(blipsBreederStore[k], 1.5)
                Citizen.InvokeNative(0x9CB1A1623062F402, blipsBreederStore[k], v.storeName)
            end
        end
    end
end)

RegisterNetEvent('gum_stables:checkOldStables')
AddEventHandler('gum_stables:checkOldStables', function()
    api.notify('Stables', 'You reload your stables to your information', Config.Image, 2000)
    TriggerServerEvent("gum_stables:check_all_info")
end)

Citizen.CreateThread(function()
    api.showPrompt('Longing', promptLonging, false)
    api.showPrompt('Training', promptTraining, false)
    api.showPrompt('Breeder Store', promptBreederStore, false)
    api.showPrompt('Pelts', promptPelts, false)
    api.showPrompt('Trainer', promptTrainer, false)
    api.showPrompt('To Stables', promptSaveTo, false)
    api.showPrompt('To Company', promptSaveToCompany, false)
    api.showPrompt('Cart', promptYourCart, false)
    api.showPrompt('Stables', promptNormalStables, false)
    api.showPrompt('Spot Stables', promptSpotStables, false)
    api.showPrompt('Broken wheel', promptFixWheel, false)
    api.showPrompt('Wild horse', promptWildHorse, false)
    api.showPrompt('Camera', promptCamera, false)
    api.showPrompt('Animal on cart', promptAnimalOnCart, false)

    api.showPrompt('Shared animal', promptSharedAnimal, false)
    api.showPrompt('Shared animal open', promptSharedCart, false)
    api.showPrompt('Shared storage', promptSharedCart, false)

    api.createPrompt(""..Config.Language[453].text.."", Config.KeySetting.cartFixWheel, promptFixWheel, nil, 'gum_stables:fixWheelInteraction')
    api.createPrompt(""..Config.Language[421].text.."", Config.KeySetting.saveToSpotOrStables, promptSaveTo, nil, 'gum_stables:saveHere')
    api.createPrompt(""..Config.Language[421].text.."", Config.KeySetting.saveToSpotOrStables, promptSaveToCompany, nil, 'gum_stables:saveCompanyHere')

    api.createPrompt(""..Config.Language[486].text.."", Config.KeySetting.saveWildHorse, promptWildHorse, nil, 'gum_stables:wildHorse')

    api.createPrompt(""..Config.Language[81].text.."", Config.KeySetting.openStorage, promptSharedCart, nil, 'gum_stables:storageCartShared')
    api.createPrompt(""..Config.Language[382].text.."", Config.KeySetting.openAnimals, promptSharedCart, nil, 'gum_stables:openAnimalsShared')
    api.createPrompt(""..Config.Language[85].text.."", Config.KeySetting.putAnimalOnCart, promptSharedAnimal, nil, 'gum_stables:putAnimalToCartShared')

    api.createPrompt(""..Config.Language[77].text.."", Config.KeySetting.cameraRotateLeft, promptCamera, nil, nil)
    api.createPrompt(""..Config.Language[78].text.."", Config.KeySetting.cameraRotateRight, promptCamera, nil, nil)
    if not Config.InteractibleCamera then
        api.createPrompt(""..Config.Language[263].text.."", Config.KeySetting.cameraZoomIn, promptCamera, nil, nil)
        api.createPrompt(""..Config.Language[264].text.."", Config.KeySetting.cameraZoomOut, promptCamera, nil, nil)
    else
        api.createPrompt(""..Config.Language[446].text.."", Config.KeySetting.cameraInteraction, promptCamera, nil, nil)
        api.createPrompt(""..Config.Language[444].text.."", Config.KeySetting.cameraUpDown, promptCamera, nil, nil)
        api.createPrompt(""..Config.Language[445].text.."", Config.KeySetting.cameraLeftRight, promptCamera, nil, nil)
        api.createPrompt(""..Config.Language[447].text.."", Config.KeySetting.cameraZoomInOut, promptCamera, nil, nil)
    end
    api.createPrompt(""..Config.Language[81].text.."", Config.KeySetting.openSpot, promptSpotStables, nil, 'gum_stables:openSpot')
    api.createPrompt(""..Config.Language[79].text.."", Config.KeySetting.openStable, promptNormalStables, nil, 'gum_stables:openStable')
    api.createPrompt(""..Config.Language[79].text.."", Config.KeySetting.openStable, promptCompanyStables, nil, 'gum_stables:openCompanyStable')
    api.createPrompt("Load stables", 0xA1ABB953, promptCompanyStables, nil, 'gum_stables:checkOldStables')
    

    api.createPrompt(""..Config.Language[82].text.."", Config.KeySetting.cartTransfer, promptYourCart, nil, 'gum_stables:transferCart')
    if Config.FleeWagon then
        api.createPrompt(""..Config.Language[83].text.."", Config.KeySetting.cartFlee, promptYourCart, nil, 'gum_stables:fleeCart')
    end
    if Config.DebugWagon then
        api.createPrompt(""..Config.Language[435].text.."", Config.KeySetting.cartDebug, promptYourCart, nil, 'gum_stables:debugCart')
    end
    api.createPrompt(""..Config.Language[81].text.."", Config.KeySetting.openStorage, promptYourCart, nil, 'gum_stables:storageCart')
    api.createPrompt(""..Config.Language[382].text.."", Config.KeySetting.openAnimals, promptYourCart, nil, 'gum_stables:openAnimals')
    api.createPrompt(""..Config.Language[85].text.."", Config.KeySetting.putAnimalOnCart, promptAnimalOnCart, nil, 'gum_stables:putAnimalToCart')
    api.createPrompt(""..Config.Language[84].text.."", Config.KeySetting.horsePutPelt, promptPelts, nil, 'gum_stables:putPeltOnHorse')
    api.createPrompt(""..Config.Language[844].text.."", Config.KeySetting.horseTakePelt, promptPelts, nil, 'gum_stables:takePeltFromHorse')
    api.createPrompt(""..Config.Language[460].text.."", 0x05CA7C52, promptLonging, nil, '')
    api.createPrompt(""..Config.Language[461].text.."", 0x6319DB71, promptLonging, nil, '')
    api.createPrompt(""..Config.Language[462].text.."", 0x39336A4F, promptLonging, nil, '')
    api.createPrompt(''..Config.Language[463].text..'', 0x156F7119, promptLonging, nil, '')
    api.createPrompt(''..Config.Language[470].text..'', 0xC97792B7, promptLonging, nil, '')
    api.createPrompt(''..Config.Language[472].text..'', 0x20190AB4, promptLonging, nil, '')
    api.createPrompt(''..Config.Language[464].text..'', 0x20190AB4, promptTraining, nil, 'gum_stables:rearHorse')
    api.createPrompt(''..Config.Language[465].text..'', 0xC97792B7, promptTraining, nil, 'gum_stables:footScratchHorse')
    api.createPrompt(''..Config.Language[466].text..'', 0x6319DB71, promptTraining, nil, 'gum_stables:danceHorse')
    api.createPrompt(''..Config.Language[467].text..'', 0x05CA7C52, promptTraining, nil, 'gum_stables:jumpHorse')
    api.createPrompt(''..Config.Language[468].text..'', 0x43DBF61F, promptTraining, nil, 'gum_stables:longingHorse')
    api.createPrompt(''..Config.Language[469].text..'', 0x156F7119, promptTraining, nil, 'gum_stables:cancelTraining')
    api.createPrompt(""..Config.Language[484].text.."", Config.KeySetting.openBreederStore, promptBreederStore, nil, 'gum_stables:openBreederStoreServer')
    api.createPrompt(""..Config.Language[419].text.."", 0x07B8BEAF, promptTrainer, nil, 'gum_stables:cancelLead')
    api.createPrompt(""..Config.Language[455].text.."", 0x27D1C284, promptTrainer, nil, 'gum_stables:restHorse')
    api.createPrompt(""..Config.Language[473].text.."", 0x1ECA87D4, promptTrainer, nil, 'gum_stables:sleepHorse')
    api.createPrompt(""..Config.Language[456].text.."", 0x26A18F47, promptTrainer, nil, 'gum_stables:wallowHorse')
    api.createPrompt(""..Config.Language[457].text.."", 0xA1ABB953, promptTrainer, nil, 'gum_stables:drinkHorse')
    api.createPrompt(""..Config.Language[458].text.."", 0x43DBF61F, promptTrainer, nil, 'gum_stables:trainingHorse')
end)

----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
-------------------------------------DATAVIEW 
----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
local _strblob = string.blob or function(length)
    return string.rep("\0", math.max(40 + 1, length))
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

        LuaInt = { code = "j", size = 8 }, 
        UluaInt = { code = "J", size = 8 }, 
        LuaNum = { code = "n", size = 8}, 
        Float32 = { code = "f", size = 4 },
        Float64 = { code = "d", size = 8 }, 
        String = { code = "z", size = -1, }, 
    },

    FixedTypes = {
        String = { code = "c", size = -1, },
        Int = { code = "i", size = -1, },
        Uint = { code = "I", size = -1, },
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
        return nil
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

DataStream = { }
DataStream.__index = DataStream

function DataStream.New(view)
    return setmetatable({ view = view, offset = 0, }, DataStream)
end

for label,datatype in pairs(DataView.Types) do
    DataStream[label] = function(self, endian, align)
        local o = self.offset + self.view.offset
        if not _ib(o, self.view.length, datatype) then
            return nil
        end
        local v,no = string.unpack(_ef(endian) .. datatype.code, self.view:Buffer(), o)
        if align then
            self.offset = self.offset + math.max(no - o, align)
        else
            self.offset = no - self.view.offset
        end
        return v
    end
end       



AddEventHandler('onResourceStop', function(resourceName)
	if (GetCurrentResourceName() == resourceName) then
        api.deletePed(yourHorseEntity)
        api.deleteObj(yourCartEntity)
        api.deletePed(entityPreview[1], true)
        if npcsMan["spot"] ~= nil then
            for k,v in pairs(npcsMan["spot"]) do
                api.deletePed(v, true)
            end
        end
        if npcsMan["stable"] ~= nil then
            for k,v in pairs(npcsMan["stable"]) do
                api.deletePed(v, true)
            end
        end
        if npcsHorse["spot"] ~= nil then
            for k,v in pairs(npcsHorse["spot"]) do
                api.deletePed(v, true)
            end
        end
        if npcsHorse["stable"] ~= nil then
            for k,v in pairs(npcsHorse["stable"]) do
                api.deletePed(v, true)
            end
        end
        if npcsMan["breed"] ~= nil then
            for k,v in pairs(npcsMan["breed"]) do
                api.deletePed(v, true)
            end
        end
        if npcsMan["company"] ~= nil then
            for k,v in pairs(npcsMan["company"]) do
                api.deletePed(v, true)
            end
        end
        if propSaddle ~= nil then
            api.deleteObj(propSaddle)
        end
        DestroyAllCams(true)
	end
end)

function drawTxt(text, x, y, fontscale, fontsize, r, g, b, alpha, textcentred, shadow)
    local str = CreateVarString(10, "LITERAL_STRING", text)
    SetTextScale(fontscale, fontsize)
    SetTextColor(r, g, b, alpha)
    SetTextCentre(textcentred)
    if shadow then 
        SetTextDropshadow(1, 0, 0, 255)
    end
    SetTextFontForCurrentCommand(1)
    DisplayText(str, x, y)
end
