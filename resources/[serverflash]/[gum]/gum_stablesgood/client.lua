local propsData = {0xE0C338BD,	0xD28F9C56,	0x69F966C8,	0x5827C325,	0x94CE3C61,	0x830398CC,	0xAFFCF2BE,	0x9F275113,	0xDA9244A3,	0x460A74C6,	0x4514190C,	0xDCC33A7C,	0x2459E0BD,	0xEA0F04C9,	0x03CE3847,}
local horse_table_comp,horse_shoes,horse_bridle,horse_lantern,horse_holster,horse_mustache,horse_accessories,saddle_stirrups,horse_bedrolls,horse_blankets,horse_manes,horse_saddlebags,horse_saddles,horse_tails,saddle_horns = {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {},{}
local preview_type = "New"
local horseentity = nil
local showFix = false
local level = 0
local horsemax
local active = false
local active_2 = false
local active_3 = false
local active_4 = false
local MaskGear = false
local SaddGear = false
local StirGear = false
local BagsGear = false
local SadcGear = false
local LanGear = false
local AcsGear = false
local SaddlesBagss = false
local expBreed = 0
local startcam = false
local heading = -60.0
local zoom = 60.0
local price = 0
local exp_writed = 0
local breeding_table = {}
local WagonList = {}
local WagonTable = {}
local VehExtras = {}
local exp_horse = 0
local where_open_stable = 0
local Type_horse = 0
local Price_Horse = 0
local SellWildHorse = {}
local Broken = 2
local showedStatus1 = false
local showedStatus2 = false
local buttons_prompt_10 = GetRandomIntInRange(0, 0xffffff)
local buttons_prompt_5 = GetRandomIntInRange(0, 0xffffff)
local buttons_prompt_6 = GetRandomIntInRange(0, 0xffffff)
local buttons_prompt_other = GetRandomIntInRange(0, 0xffffff)
local buttons_prompt_expand = GetRandomIntInRange(0, 0xffffff)
local fixWheelPrompts = GetRandomIntInRange(0, 0xffffff)
local trainerprompt = GetRandomIntInRange(0, 0xffffff)
local getbackprompt = GetRandomIntInRange(0, 0xffffff)
local active_other = false
local active_10 = false
local active_6 = false
local optimalize = 1000
local holding = false
local holding2 = false
local addon_ability = 0
local hash = 0
local dh_on = false
local is_trainer = false
local count_horse = 0
local count_wagon = 0
local counting = 0
local set_sex = ""
local counting_wagon = 0
local image_acceleration = 1
local image_speed = 1
local image_agility = 1
local can_call_horse_time = 0
local can_call_cart_time = 0
local item_table = {}
local weapon_table = {}
local random_dead_id = 0 
local open_menu_wagon = false
local open_menu_horse = false
local horse_data_all = {}
local cant_spam = false
local horsenetwork = nil
local wagonnetwork = nil
local active_expand = false
local checked = false
local tamming = false
local time_tame = 0
local random_table = {}
local num = 0
local filtered_horses = {}
local filtered_wild_horses = {}
local filtered_carts = {}
local in_action = false
local extras = {}
local livery = {}
local lantern = {}
local pricing_cart = {}
local price_table = {}
local horse_breed_slots = {}
local buycompos = {}
local active_camera = true 
local GetJob = false
local active_5 = false
local block_spam = false
local canSaveDmg = false
local steamId = ""
local idForStorageHorse = 0
local idForStorageCart = 0
local canEnter = false
local hashProvision = {}
local blipsStables = {}
local blipsSellSpot = {}
local blipsSpotTake = {}
local new_filtered = {}
local animalsDataGlobal = {}
local buttons_prompt = GetRandomIntInRange(0, 0xffffff)
local buttons_prompt_2 = GetRandomIntInRange(0, 0xffffff)
local buttons_prompt_3 = GetRandomIntInRange(0, 0xffffff)
local buttons_prompt_4 = GetRandomIntInRange(0, 0xffffff)
local price_first_breed = 0
local price_second_breed = 0
local npcsMan = {}
local npcsHorse = {}
local blockLoopAnim = false
local blockSkillSpam = false
local horseIdForSave = 0
local cartIdForSave = 0
local transferCityId = 0
local transferSpotId = 0
local huntingCarts = {}
local workerCarts = {}
local checkDeadId = 0
local miniGameRunning = false
local fix_cart_value = nil
local fix_value_wait = 0
local needItem = false
local allowedJob = false
local putHorseShoe = false
local createdNpc = nil
local hoofState = 0
local peltzOnHorse = {}
local allmyhorses = {}
local allmywagons = {}
local is_breeder = false
local mouseX = 0.0
local mouseY = 20.0
local fov = 90.0
local canRotate = false
local cam = nil
local angleY = 0.0
local angleZ = 0.0
local previewPed = nil
local gum
local blockTime = 0

TriggerEvent("getApi",function(gumApi)
    gum = gumApi
end)


RegisterNUICallback('cambreed', function(data,cb)
    StartCamBreed()
end)
RegisterNUICallback('resetcam', function(data,cb)
    StartCam(0)
end)


Citizen.CreateThread(function()
    filtered_horses = {}
    filtered_carts = {}
    Citizen.Wait(500)
    for k,v in pairs(Config.Horses) do
        for k2,v2 in pairs(v) do
            if k2 ~= "name" then
                for a,b in pairs(v2[6]) do
                    if GetJob == b then
                        if v2[2] < 50 then
                            table.insert(filtered_horses, {category=v.name, data={k2, v2[1], 1, v2[2], v2[3], v2[4], v2[5], v2[6]}})
                        elseif v2[2] < 150 then
                            table.insert(filtered_horses, {category=v.name, data={k2, v2[1], 2, v2[2], v2[3], v2[4], v2[5], v2[6]}})
                        elseif v2[2] < 250 then
                            table.insert(filtered_horses, {category=v.name, data={k2, v2[1], 3, v2[2], v2[3], v2[4], v2[5], v2[6]}})
                        else
                            table.insert(filtered_horses, {category=v.name, data={k2, v2[1], 4, v2[2], v2[3], v2[4], v2[5], v2[6]}})
                        end
                    end
                    if "unemployed" == b then
                        if v2[2] < 50 then
                            table.insert(filtered_horses, {category=v.name, data={k2, v2[1], 1, v2[2], v2[3], v2[4], v2[5], v2[6]}})
                        elseif v2[2] < 150 then
                            table.insert(filtered_horses, {category=v.name, data={k2, v2[1], 2, v2[2], v2[3], v2[4], v2[5], v2[6]}})
                        elseif v2[2] < 250 then
                            table.insert(filtered_horses, {category=v.name, data={k2, v2[1], 3, v2[2], v2[3], v2[4], v2[5], v2[6]}})
                        else
                            table.insert(filtered_horses, {category=v.name, data={k2, v2[1], 4, v2[2], v2[3], v2[4], v2[5], v2[6]}})
                        end
                    end
                end
            end
        end
    end
    filtered_wild_horses = {}
    for k,v in pairs(Config.Horses) do
        for k2,v2 in pairs(v) do
            if k2 ~= "name" then
                for a,b in pairs(v2[6]) do
                    if v2[2] < 50 then
                        table.insert(filtered_wild_horses, {category=v.name, data={k2, v2[1], 1, v2[2], v2[3], v2[4], v2[5], v2[6]}})
                    elseif v2[2] < 150 then
                        table.insert(filtered_wild_horses, {category=v.name, data={k2, v2[1], 2, v2[2], v2[3], v2[4], v2[5], v2[6]}})
                    elseif v2[2] < 250 then
                        table.insert(filtered_wild_horses, {category=v.name, data={k2, v2[1], 3, v2[2], v2[3], v2[4], v2[5], v2[6]}})
                    else
                        table.insert(filtered_wild_horses, {category=v.name, data={k2, v2[1], 4, v2[2], v2[3], v2[4], v2[5], v2[6]}})
                    end
                end
            end
        end
    end

    
    Citizen.Wait(0)
    for k,v in pairs(Config.Wagons) do
        for a,b in pairs(v[6]) do
            if GetJob == b then
                table.insert(filtered_carts, {category=v[7], data={k, v[1], v[2], v[3], v[4], v[5], v[6]}})
            end
            if "unemployed" == b then
                table.insert(filtered_carts, {category=v[7], data={k, v[1], v[2], v[3], v[4], v[5], v[6]}})
            end
        end
    end
end)

function Open_Stable_Menu(openHere)
    active_4 = true
    filtered_horses = {}
    filtered_carts = {}
    allmyhorses = {}
    allmywagons = {}
    for a,b in pairs(horse_table) do
        table.insert(allmyhorses, b)
    end
    for a,b in pairs(WagonTable) do
        table.insert(allmywagons, b)
    end
    local newTableHorseFilter = horse_table
    local newTableCartFilter = WagonTable
    for k,v in pairs(Config.Horses) do
        for k2,v2 in pairs(v) do
            if k2 ~= "name" then
                for a,b in pairs(v2[6]) do
                    if GetJob == b then
                        if v2[2] < 50 then
                            table.insert(filtered_horses, {category=v.name, data={k2, v2[1], 1, v2[2], v2[3], v2[4], v2[5], v2[6]}})
                        elseif v2[2] < 150 then
                            table.insert(filtered_horses, {category=v.name, data={k2, v2[1], 2, v2[2], v2[3], v2[4], v2[5], v2[6]}})
                        elseif v2[2] < 250 then
                            table.insert(filtered_horses, {category=v.name, data={k2, v2[1], 3, v2[2], v2[3], v2[4], v2[5], v2[6]}})
                        else
                            table.insert(filtered_horses, {category=v.name, data={k2, v2[1], 4, v2[2], v2[3], v2[4], v2[5], v2[6]}})
                        end
                    end
                    if Config.UnemployedJob == b then
                        if v2[2] < 50 then
                            table.insert(filtered_horses, {category=v.name, data={k2, v2[1], 1, v2[2], v2[3], v2[4], v2[5], v2[6]}})
                        elseif v2[2] < 150 then
                            table.insert(filtered_horses, {category=v.name, data={k2, v2[1], 2, v2[2], v2[3], v2[4], v2[5], v2[6]}})
                        elseif v2[2] < 250 then
                            table.insert(filtered_horses, {category=v.name, data={k2, v2[1], 3, v2[2], v2[3], v2[4], v2[5], v2[6]}})
                        else
                            table.insert(filtered_horses, {category=v.name, data={k2, v2[1], 4, v2[2], v2[3], v2[4], v2[5], v2[6]}})
                        end
                    end
                end
            end
        end
    end
    filtered_wild_horses = {}
    for k,v in pairs(Config.Horses) do
        for k2,v2 in pairs(v) do
            if k2 ~= "name" then
                for a,b in pairs(v2[6]) do
                    if v2[2] < 50 then
                        table.insert(filtered_wild_horses, {category=v.name, data={k2, v2[1], 1, v2[2], v2[3], v2[4], v2[5], v2[6]}})
                    elseif v2[2] < 150 then
                        table.insert(filtered_wild_horses, {category=v.name, data={k2, v2[1], 2, v2[2], v2[3], v2[4], v2[5], v2[6]}})
                    elseif v2[2] < 250 then
                        table.insert(filtered_wild_horses, {category=v.name, data={k2, v2[1], 3, v2[2], v2[3], v2[4], v2[5], v2[6]}})
                    else
                        table.insert(filtered_wild_horses, {category=v.name, data={k2, v2[1], 4, v2[2], v2[3], v2[4], v2[5], v2[6]}})
                    end
                end
            end
        end
    end
    for k,v in pairs(Config.Wagons) do
        for a,b in pairs(v[6]) do
            if GetJob == b then
                table.insert(filtered_carts, {category=v[7], data={k, v[1], v[2], v[3], v[4], v[5], v[6]}})
            end
            if Config.UnemployedJob == b then
                table.insert(filtered_carts, {category=v[7], data={k, v[1], v[2], v[3], v[4], v[5], v[6]}})
            end
        end
    end

    if Config.CityStablesHorse then
        for i=1, #newTableHorseFilter do
            for k,v in pairs(newTableHorseFilter) do
                if tonumber(openHere) ~= tonumber(v.cityPosition) then
                    table.remove(newTableHorseFilter, k)
                end
            end
        end
    end
    if Config.CityStablesWagon then
        for i=1, #newTableCartFilter do
            for k,v in pairs(newTableCartFilter) do
                if tonumber(openHere) ~= tonumber(v.cityPosition) then
                    table.remove(newTableCartFilter, k)
                end
            end
        end
    end
    local newStableSystem = {}
    for k,v in pairs(Config.SpotsForStable) do
        newStableSystem[k] = v.Blip_Name
    end
    local newSpotsSystem = {}
    for k,v in pairs(Config.SpotForTakeCd) do
        newSpotsSystem[k] = v.blip
    end

    SendNUIMessage({type = "open_stable", allmywagons=allmywagons, allmyhorses=allmyhorses, canTransfer=Config.TransferEnable, stablesInfo=newStableSystem, spotsInfo=newSpotsSystem, status=true, horses = filtered_horses, carts=filtered_carts, myhorses=newTableHorseFilter, mywagon=newTableCartFilter, mybreed=breeding_table, gold_enable=Config.GoldRol, language=Config.Language, callHorse=Config.CallFromStableHorse, callCart=Config.CallFromStableCart, callMeFrom=Config.SpotForTake, callMeHorseStable=Config.CityStablesHorse, callMeCartStable=Config.CityStablesWagon, fixBreed=Config.FixBrainerItem, isTrainer=is_trainer, fixFemale=Config.FemaleFixToo, isBreeder=is_breeder})
    SendNUIMessage({type = "comp_preload", blankets=#horse_blankets,  saddles=#horse_saddles, horns=#saddle_horns, stirrups=#saddle_stirrups, bags=#horse_saddlebags, bedrolls=#horse_bedrolls, lantern=#horse_lantern, accessories=#horse_accessories, tails=#horse_tails, manes=#horse_manes, mustaches=#horse_mustache, holsters=#horse_holster, bridles=#horse_bridle, propsData=#propsData})    
end

RegisterNUICallback('close_menu', function(data,cb)
    CloseMenuData()
end)

RegisterNUICallback('transferNotify', function(data,cb)
    if Config.Gum_Notify_Old then
        exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[432].text, Config.FirstName, Config.SecondName, Config.Language[432].time)
    end
    if Config.Gum_Notify_NUI then
        exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[432].text, Config.Image, Config.Language[432].time)
    end
end)

RegisterNUICallback('thisHorseTransfer', function(data,cb)
    if transferCityId ~= 0 then
        TriggerServerEvent("gum_stables:transferToCity", tonumber(transferCityId), tonumber(data.id), "horse")
        CloseMenuData()
        if Config.Gum_Notify_Old then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[431].text.."</br>"..data.name, Config.FirstName, Config.SecondName, Config.Language[422].time)
        end
        if Config.Gum_Notify_NUI then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[431].text.."</br>"..data.name, Config.Image, Config.Language[422].time)
        end
    elseif transferSpotId ~= 0 then
        TriggerServerEvent("gum_stables:transferToSpot", tonumber(transferSpotId), tonumber(data.id), "horse")
        CloseMenuData()
        if Config.Gum_Notify_Old then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[431].text.."</br>"..data.name, Config.FirstName, Config.SecondName, Config.Language[422].time)
        end
        if Config.Gum_Notify_NUI then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[431].text.."</br>"..data.name, Config.Image, Config.Language[422].time)
        end
    else
        if Config.Gum_Notify_Old then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[422].text, Config.FirstName, Config.SecondName, Config.Language[422].time)
        end
        if Config.Gum_Notify_NUI then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[422].text, Config.Image, Config.Language[422].time)
        end
    end
end)

RegisterNUICallback('thisCartTransfer', function(data,cb)
    if transferCityId ~= 0 then
        TriggerServerEvent("gum_stables:transferToCity", tonumber(transferCityId), tonumber(data.id), "cart")
        CloseMenuData()
        if Config.Gum_Notify_Old then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[431].text.."</br>"..data.name, Config.FirstName, Config.SecondName, Config.Language[422].time)
        end
        if Config.Gum_Notify_NUI then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[431].text.."</br>"..data.name, Config.Image, Config.Language[422].time)
        end
    elseif transferSpotId ~= 0 then
        TriggerServerEvent("gum_stables:transferToSpot", tonumber(transferSpotId), tonumber(data.id), "cart")
        CloseMenuData()
        if Config.Gum_Notify_Old then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[431].text.."</br>"..data.name, Config.FirstName, Config.SecondName, Config.Language[422].time)
        end
        if Config.Gum_Notify_NUI then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[431].text.."</br>"..data.name, Config.Image, Config.Language[422].time)
        end
    else
        if Config.Gum_Notify_Old then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[422].text, Config.FirstName, Config.SecondName, Config.Language[422].time)
        end
        if Config.Gum_Notify_NUI then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[422].text, Config.Image, Config.Language[422].time)
        end
    end
end)

RegisterNUICallback('thisCityTransfer', function(data,cb)
    transferCityId = tonumber(data.pos)
    transferSpotId = 0
    if Config.Gum_Notify_Old then
        exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[433].text..data.name.."</br>"..Config.Language[434].text, Config.FirstName, Config.SecondName, Config.Language[433].time)
    end
    if Config.Gum_Notify_NUI then
        exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[433].text..data.name.."</br>"..Config.Language[434].text, Config.Image, Config.Language[433].time)
    end
end)

RegisterNUICallback('thisSpotTransfer', function(data,cb)
    transferSpotId = tonumber(data.pos)
    transferCityId = 0
    if Config.Gum_Notify_Old then
        exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text,Config.Language[433].text..data.name.."</br>"..Config.Language[434].text, Config.FirstName, Config.SecondName, Config.Language[433].time)
    end
    if Config.Gum_Notify_NUI then
        exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[433].text..data.name.."</br>"..Config.Language[434].text, Config.Image, Config.Language[433].time)
    end
end)


function CloseMenuData()
    transferCityId = 0
    transferSpotId = 0
    FreezeEntityPosition(PlayerPedId(), false)
    SetNuiFocus(false, false)
    SendNUIMessage({type = "open_stable", status=false})
    SendNUIMessage({type = "clear_stables"})
    horse_breed_slots[1] = nil
    horse_breed_slots[2] = nil
    Citizen.Wait(500)
    delete_obj(createdNpc, true)
    createdNpc = nil
    delete_obj(horse_preview, true)
    delete_obj(horse_preview_2, true)
    delete_obj(horse_preview_3, true)
    delete_obj(horse_preview_4, true)
    delete_obj(wagon_preview, true)
    previewPed = nil
    putHorseShoe = false
    preview_type = "New"
    preview_id = nil
    active_3 = false
    active_camera = true
    cam = nil
    Citizen.Wait(500)
    EndCam()

end

RegisterNUICallback('agilityupdate', function(data,cb)
    if Config.JobForShoe == true then
        local job_access = false
        for k,v in pairs(Config.JobSet) do
            if GetJob == v then
                job_access = true
            end
        end
        if job_access == false then
            if Config.Gum_Notify_Old then
                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[234].text, Config.FirstName, Config.SecondName, Config.Language[234].time)
            end
            if Config.Gum_Notify_NUI then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[234].text.."", Config.Image, Config.Language[234].time)
            end
            return false
        end
        local horseComponents = {}
        local newAgilityCheck = 0
        if Config.SpotForTake or Config.CallFromStableHorse then
            for k,v in pairs(horse_table) do
                if tonumber(idForStorageHorse) == tonumber(v.id) or tonumber(v["selected"]) == 1 then
                    horseComponents = json.decode(v.components)
                    for k2,v2 in pairs(json.decode(v.state)) do
                        for k3,v3 in pairs(v2) do
                            newAgilityCheck = v3
                        end
                    end
                end
            end
        else
            for k,v in pairs(horse_table) do
                if tonumber(v["selected"]) == 1 then
                    horseComponents = json.decode(v.components)
                    for k2,v2 in pairs(json.decode(v.state)) do
                        for k3,v3 in pairs(v2) do
                            newAgilityCheck = v3
                        end
                    end
                end
            end
        end
        if tonumber(newAgilityCheck) == tonumber(data.agility_new) then
            if Config.Gum_Notify_Old then
                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[405].text, Config.FirstName, Config.SecondName, Config.Language[405].time)
            end
            if Config.Gum_Notify_NUI then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[405].text.."", Config.Image, Config.Language[405].time)
            end
            return false
        end
        if (data.agility_new+data.sp <= Config.Max_Agility+1) and (data.agility_new+data.acc <= Config.Max_Agility+1) and (data.agility_new+data.agi <= Config.Max_Agility+1)  then
            horseComponents["Horse_Shoe"] = "0x0865A270"  
            local horse_agility = {}
            table.insert(horse_agility, {agility=data.agility_new , speed=data.agility_new , acceleration=data.agility_new })
            local newAgilityCheck = 0
            if Config.SpotForTake or Config.CallFromStableHorse then
                for k,v in pairs(horse_table) do
                    if tonumber(idForStorageHorse) == tonumber(v.id) or tonumber(v["selected"]) == 1 then
                        TriggerServerEvent("gum_stables:update_state", horse_agility, data.agility_new, horseComponents, tonumber(data.agility_new*Config.Horse_Shoe), v.id)
                        fleeHorse()
                    end
                end
            else
                local idHorse = 0
                for k,v in pairs(horse_table) do
                    if tonumber(v["selected"]) == 1 then
                        idHorse = v.id
                    end
                end
                TriggerServerEvent("gum_stables:update_state", horse_agility, data.agility_new, horseComponents, tonumber(data.agility_new*Config.Horse_Shoe), idHorse)
                fleeHorse()
            end
            CloseMenuData()
        else
            if Config.Gum_Notify_Old then
                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[362].text, Config.FirstName, Config.SecondName, Config.Language[362].time)
            end
            if Config.Gum_Notify_NUI then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[362].text.."", Config.Image, Config.Language[362].time)
            end
        end
    else
        local horseComponents = {}
        local newAgilityCheck = 0
        if Config.SpotForTake or Config.CallFromStableHorse then
            for k,v in pairs(horse_table) do
                if tonumber(idForStorageHorse) == tonumber(v.id) or tonumber(v["selected"]) == 1 then
                    horseComponents = json.decode(v.components)
                    for k2,v2 in pairs(json.decode(v.state)) do
                        for k3,v3 in pairs(v2) do
                            newAgilityCheck = v3
                        end
                    end
                end
            end
        else
            for k,v in pairs(horse_table) do
                if tonumber(v["selected"]) == 1 then
                    horseComponents = json.decode(v.components)
                    for k2,v2 in pairs(json.decode(v.state)) do
                        for k3,v3 in pairs(v2) do
                            newAgilityCheck = v3
                        end
                    end
                end
            end
        end
        local newAgilityCheck = 0
        if Config.SpotForTake or Config.CallFromStableHorse then
            for k,v in pairs(horse_table) do
                if tonumber(idForStorageHorse) == tonumber(v.id) or v.selected == 1 then
                    for k2,v2 in pairs(json.decode(v.state)) do
                        for k3,v3 in pairs(v2) do
                            newAgilityCheck = v3
                        end
                    end
                end
            end
        else
            for k,v in pairs(horse_table) do
                if tonumber(v["selected"]) == 1 then
                    for k2,v2 in pairs(json.decode(v.state)) do
                        for k3,v3 in pairs(v2) do
                            newAgilityCheck = v3
                        end
                    end
                end
            end
        end
        if tonumber(newAgilityCheck) == tonumber(data.agility_new) then
            if Config.Gum_Notify_Old then
                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[405].text, Config.FirstName, Config.SecondName, Config.Language[405].time)
            end
            if Config.Gum_Notify_NUI then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[405].text.."", Config.Image, Config.Language[405].time)
            end
            return false
        end
        if (data.agility_new+data.sp <= Config.Max_Agility+1) and (data.agility_new+data.acc <= Config.Max_Agility+1) and (data.agility_new+data.agi <= Config.Max_Agility+1)  then
            horseComponents["Horse_Shoe"] = "0x0865A270"
            local horse_agility = {}
            table.insert(horse_agility, {agility=data.agility_new , speed=data.agility_new , acceleration=data.agility_new })
            if Config.SpotForTake or Config.CallFromStableHorse then
                for k,v in pairs(horse_table) do
                    if tonumber(idForStorageHorse) == tonumber(v.id) or tonumber(v["selected"]) == 1 then
                        TriggerServerEvent("gum_stables:update_state", horse_agility, data.agility_new, horseComponents, tonumber(data.agility_new*Config.Horse_Shoe), v.id)
                        fleeHorse()
                    end
                end
            else
                local idHorse = 0
                for k,v in pairs(horse_table) do
                    if tonumber(v["selected"]) == 1 then
                        idHorse = v.id
                    end
                end
                TriggerServerEvent("gum_stables:update_state", horse_agility, data.agility_new, horseComponents, tonumber(data.agility_new*Config.Horse_Shoe), idHorse)
                fleeHorse()
            end
            CloseMenuData()
        else
            if Config.Gum_Notify_Old then
                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[362].text, Config.FirstName, Config.SecondName, Config.Language[362].time)
            end
            if Config.Gum_Notify_NUI then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[362].text.."", Config.Image, Config.Language[362].time)
            end
        end
    end
end)

RegisterNUICallback('select_horse', function(data,cb)
    TriggerEvent("guminputs:getAnswer", ""..Config.Language[363].text.."", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
        local answer = cb
        if answer == true then
            fleeHorse()
            can_call_horse_time = 0
            CloseMenuData()
            TriggerServerEvent("gum_stables:select_horse", tonumber(data.id), 1)
            if Config.Gum_Notify_Old then
                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[213].text, Config.FirstName, Config.SecondName, Config.Language[213].time)
            end
            if Config.Gum_Notify_NUI then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[213].text.."", Config.Image, Config.Language[213].time)
            end
        else
            return false
        end
    end)

end)

RegisterNUICallback('health_horse', function(data,cb)
    local id = tonumber(data.id)
    local defaultPrice = 0
    for k,v in pairs(horse_table) do
        if v.id == id then
            for key,value in pairs(Config.Horses) do
                for x,y in pairs(value) do
                    if x == v["model"] then
                        defaultPrice = y[2]
                    end
                end
            end
        end
    end
    for k,v in pairs(horse_table) do
        if v.id == id then
            if Config.HealHorse then
                TriggerEvent("guminputs:getAnswer", ""..Config.Language[54].text.." "..(defaultPrice/Config.HealCount).."$? "..Config.Language[55].text.."", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
                    local answer = cb
                    if answer == true then
                        checkDeadId = 0
                        fleeHorse()
                        CloseMenuData()
                        TriggerServerEvent("gum_stables:health_dead_horse", v["id"], (defaultPrice/Config.HealCount))
                        return true
                    else
                        return false
                    end
                end)
            else
                TriggerEvent("guminputs:getAnswer", ""..Config.Language[54].text.." "..Config.HealPrice.."$? "..Config.Language[55].text.."", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
                    local answer = cb
                    if answer == true then
                        checkDeadId = 0
                        fleeHorse()
                        CloseMenuData()
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
    for k,v in pairs(Config.Horses) do
        for key,value in pairs(v) do
            if key == data.model then
                for k,v in pairs(Config.Wild_Horses) do
                    if k == key then
                        can_sell_wild = true
                        price = value[2]/v
                    end
                end
                Citizen.Wait(0)
                if can_sell_wild == false then
                    price = value[2]/Config.Sell_My_Horse
                end
            end
        end
    end
    TriggerEvent("guminputs:getAnswer", ""..Config.Language[337].text..""..(math.round(price*100)/100).."$", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
        local answer = cb
        if answer == true then
            CloseMenuData()
            TriggerServerEvent("gum_stables:sell_horse_my", tonumber(id), price)
        else
            return false
        end
    end)
end)

RegisterNUICallback('selectcart', function(data,cb)
    local id = tonumber(data.id)
    TriggerEvent("guminputs:getAnswer", ""..Config.Language[364].text.."", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
        local answer = cb
        if answer == true then
            CloseMenuData()
            can_call_cart_time = 0
            TriggerServerEvent("gum_stables:select_wagons", id, 1)
            if Config.Gum_Notify_Old then
                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[2133].text, Config.FirstName, Config.SecondName, Config.Language[2133].time)
            end
            if Config.Gum_Notify_NUI then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[2133].text.."", Config.Image, Config.Language[2133].time)
            end
        else
            return false
        end
    end)
end)

RegisterNUICallback('sellcart', function(data,cb)
    TriggerEvent("guminputs:getAnswer", ""..Config.Language[278].text.."?", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
        local answer = cb
        if answer == true then
            CloseMenuData()
            for k,v in pairs(Config.Wagons) do
                if k == data.model then
                    TriggerServerEvent("gum_stables:sell_wagon_my", tonumber(data.id), (v[2]/4))
                end
            end
        end
        return false
    end)
end)

RegisterNUICallback('qkey', function(data,cb)
    if active_camera == false then
        heading = heading+4.5
        SetEntityHeading(horse_preview, heading)
        SetEntityHeading(horse_preview_2, heading)
        SetEntityHeading(wagon_preview, heading)
    end
end)

RegisterNUICallback('ekey', function(data,cb)
    if active_camera == false then
        heading = heading-4.5
        SetEntityHeading(horse_preview, heading)
        SetEntityHeading(horse_preview_2, heading)
        SetEntityHeading(wagon_preview, heading)
    end
end)

RegisterNUICallback('wkey', function(data,cb)
    if active_camera == false and not Config.InteractibleCamera then
        zoom = zoom+5.0
        StartCam(0)
    end
end)

RegisterNUICallback('skey', function(data,cb)
    if active_camera == false  and not Config.InteractibleCamera then
        zoom = zoom-5.0
        StartCam(0)
    end
end)

RegisterNUICallback('horseshoessss', function(data,cb)
    local selected = false
    if Config.CallFromStableHorse or Config.SpotForTake then
        for k,v in pairs(horse_table) do
            if tonumber(idForStorageHorse) == v.id or tonumber(v["selected"]) == 1 then
                show_my_horse(v["model"], v["sex"], 1, v["id"], v["age"], v["components"], v["isdead"], v["state"], v["breeding"])
                selected = true
            end
        end
    else
        for k,v in pairs(horse_table) do
            if tonumber(v["selected"]) == 1 then
                show_my_horse(v["model"], v["sex"], 1, v["id"], v["age"], v["components"], v["isdead"], v["state"], v["breeding"])
                selected = true
            end
        end
    end
    if selected == true then
        putHorseShoe = true
        SendNUIMessage({type = "open_shoes"})
        while not DoesEntityExist(horse_preview) do
            Wait(0)
        end
        local offset = GetOffsetFromEntityInWorldCoords(horse_preview, -0.6, -0.8, -1.1)
        local npcSpawn = "u_m_m_bwmstablehand_01"
        while not HasModelLoaded(GetHashKey(npcSpawn)) do
            Wait(0)
            modelrequest( GetHashKey(npcSpawn) )
        end
        createdNpc = CreatePed(GetHashKey(npcSpawn), offset.x, offset.y, offset.z, 0.0, false, false, 0, 0)
        while not DoesEntityExist(createdNpc) do
            Wait(0)
        end
        Citizen.InvokeNative(0x283978A15512B2FE, createdNpc, true)
        SetPedAsGroupMember(createdNpc, GetPedGroupIndex(horse_preview))
        SetPedAsGroupMember(horse_preview, GetPedGroupIndex(createdNpc))
        SetEntityAsMissionEntity(npcSpawnCode, true, true)
        SetModelAsNoLongerNeeded(GetHashKey(npcSpawnCode))
        SetBlockingOfNonTemporaryEvents(createdNpc,true)
        FreezeEntityPosition(createdNpc, true)
        SetEntityInvincible(createdNpc, true)
        turnToEntity(createdNpc, offset.x, offset.y, offset.z)
    else
        if Config.Gum_Notify_Old then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, ""..Config.Language[289].text.."", Config.FirstName, Config.SecondName, Config.Language[289].time)
        end
        if Config.Gum_Notify_NUI then
            exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[289].text.."", Config.Image, Config.Language[289].time)
        end
    end
end)

function turnToEntity(entity, _x, _y, _z)
	local positionToFace = vector3(_x, _y, _z)
	local pedPos = GetEntityCoords(entity)	
	local x = positionToFace.x - pedPos.x
	local y = positionToFace.y - pedPos.y
	local heading = GetHeadingFromVector_2d(x, y)	
	SetEntityHeading(entity, heading-150.0)
end

Citizen.CreateThread(function()
    while true do
        if putHorseShoe == true then
            if IsEntityPlayingAnim(createdNpc, "script_re@stranded_rider","horseshoe_idle_man", 3) == false then
                playAnimEntity(createdNpc, "script_re@stranded_rider","horseshoe_idle_man")
            end
            if IsEntityPlayingAnim(horse_preview, "script_re@stranded_rider","horseshoe_idle_horse", 3) == false then
                playAnimEntity(horse_preview, "script_re@stranded_rider","horseshoe_idle_horse")
            end
        end
        Citizen.Wait(100)
    end
end)

RegisterNUICallback('horsecomponent', function(data,cb)
    local selected = false
    if Config.CallFromStableHorse or Config.SpotForTake then
        for k,v in pairs(horse_table) do
            if tonumber(idForStorageHorse) == tonumber(v.id) or tonumber(v["selected"]) == 1 then
                selected = true
            end
        end
    else
        for k,v in pairs(horse_table) do
            if tonumber(v["selected"]) == 1 then
                selected = true
            end
        end
    end
    if selected == false then
        if Config.Gum_Notify_Old then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, ""..Config.Language[289].text.."", Config.FirstName, Config.SecondName, Config.Language[289].time)
        end
        if Config.Gum_Notify_NUI then
            exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[289].text.."", Config.Image, Config.Language[289].time)
        end
        return false
    end
    active_camera = false

    if Config.CallFromStableHorse or Config.SpotForTake then
        for k,v in pairs(horse_table) do
            if tonumber(idForStorageHorse) == tonumber(v.id) or tonumber(v.selected) == 1 then
                local saddlecloths = nil
                local bridle = nil
                local holster = nil
                local mustache = nil
                local acshorn = nil
                local bags = nil
                local tails = nil
                local manes = nil
                local saddles = nil
                local stirrups = nil
                local lantern = nil
                local Mask = nil
                local acsluggage = nil
                local s_saddlecloths = 0
                local s_bridle = 0
                local s_holster = 0
                local s_mustache = 0
                local s_acshorn = 0
                local s_bags = 0
                local s_tails = 0
                local s_manes = 0 
                local s_saddles = 0
                local s_stirrups = 0
                local s_lantern = 0
                local s_Mask = 0
                local s_acsluggage = 0
                local s_propsData = 0
                for k2, v2 in pairs(json.decode(v.components)) do
                    if k2 == "saddlecloths" then     saddlecloths = v2        end
                    if k2 == "bridle" then           bridle = v2              end
                    if k2 == "holster" then          holster = v2             end
                    if k2 == "mustache" then         mustache = v2            end
                    if k2 == "acshorn" then          acshorn = v2             end
                    if k2 == "bags" then             bags = v2                end
                    if k2 == "tails" then            tails = v2               end
                    if k2 == "manes" then            manes = v2               end
                    if k2 == "saddles" then          saddles = v2             end
                    if k2 == "stirrups" then         stirrups = v2            end
                    if k2 == "lantern" then          lantern = v2             end
                    if k2 == "Mask" then             Mask = v2                end
                    if k2 == "acsluggage" then       acsluggage = v2          end
                    if k2 == "propsData" then       s_propsData = v2          end
                end
                for k2, v2 in pairs(horse_blankets) do
                    if v2.hash == tonumber(saddlecloths) then
                        s_saddlecloths = k2
                    end
                end

                for k2, v2 in pairs(propsData) do
                    if v == tonumber(spropsData) then
                        s_propsData = k2
                    end
                end
                
                for k2, v2 in pairs(horse_manes) do
                    if v2.hash == tonumber(manes) then
                        s_manes = k2
                    end
                end
                for k2, v2 in pairs(horse_saddlebags) do
                    if v2.hash == tonumber(bags) then
                        s_bags = k2
                    end
                end
                for k2, v2 in pairs(horse_saddles) do
                    if v2.hash == tonumber(saddles) then
                        s_saddles = k2
                    end
                end
                for k2, v2 in pairs(horse_tails) do
                    if v2.hash == tonumber(tails) then
                        s_tails = k2
                    end
                end
                for k2, v2 in pairs(saddle_horns) do
                    if v2.hash == tonumber(acshorn) then
                        s_acshorn = k2
                    end
                end
                for k2, v2 in pairs(saddle_stirrups) do
                    if v2.hash == tonumber(stirrups) then
                        s_stirrups = k2
                    end
                end
                for k2, v2 in pairs(horse_accessories) do
                    if v2.hash == tonumber(Mask) then
                        s_Mask = k2
                    end
                end
                for k2, v2 in pairs(horse_mustache) do
                    if v2.hash == tonumber(mustache) then
                        s_mustache = k2
                    end
                end
                for k2, v2 in pairs(horse_holster) do
                    if v2.hash == tonumber(holster) then
                        s_holster = k2
                    end
                end
                for k2, v2 in pairs(horse_lantern) do
                    if v2.hash == tonumber(lantern) then
                        s_lantern = k2
                    end
                end
                for k2, v2 in pairs(horse_bridle) do
                    if v2.hash == tonumber(bridle) then
                        s_bridle = k2
                    end
                end
                selected = true
                SendNUIMessage({type = "horse_components", saddle_cloths=s_saddlecloths, bridle=s_bridle, holster=s_holster, mustache=s_mustache, acshorn=s_acshorn, bags=s_bags, tails=s_tails, manes=s_manes,saddles=s_saddles, stirrups=s_stirrups, lantern=s_lantern, Mask=s_Mask, acsluggage=s_acsluggage,propsData=s_propsData})
                show_my_horse(v["model"], v["sex"], 1, v["id"], v["age"], v["components"], v["isdead"], v["state"], v["breeding"])
                while not DoesEntityExist(horse_preview) do
                    Citizen.Wait(0)
                end
                if Config.InteractibleCamera then
                    ClearFocus()
                    if cam == nil then
                        local playerCoords = GetEntityCoords(previewPed)
                        local newPos = ProcessNewPosition()
                        cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", newPos.x, newPos.y, newPos.z, 0.0, 0.0, 100.0, fov)
                        PointCamAtCoord(cam, playerCoords.x, playerCoords.y, playerCoords.z + 0.5)
                        SetCamActiveWithInterp(cam, camera, 300, 0, 0)
                        RenderScriptCams(true, true, 300, true, true)
                    end
                    Citizen.Wait(300)
                    ProcessCamControls()
                end
            end
        end
    else
        for k,v in pairs(horse_table) do
            if tonumber(v["selected"]) == 1 then
                local saddlecloths = nil
                local bridle = nil
                local holster = nil
                local mustache = nil
                local acshorn = nil
                local bags = nil
                local tails = nil
                local manes = nil
                local saddles = nil
                local stirrups = nil
                local lantern = nil
                local Mask = nil
                local acsluggage = nil
                local s_saddlecloths = 0
                local s_bridle = 0
                local s_holster = 0
                local s_mustache = 0
                local s_acshorn = 0
                local s_bags = 0
                local s_tails = 0
                local s_manes = 0 
                local s_saddles = 0
                local s_stirrups = 0
                local s_lantern = 0
                local s_Mask = 0
                local s_acsluggage = 0
                local s_propsData = 0
                for k2, v2 in pairs(json.decode(v.components)) do
                    if k2 == "saddlecloths" then     saddlecloths = v2        end
                    if k2 == "bridle" then           bridle = v2              end
                    if k2 == "holster" then          holster = v2             end
                    if k2 == "mustache" then         mustache = v2            end
                    if k2 == "acshorn" then          acshorn = v2             end
                    if k2 == "bags" then             bags = v2                end
                    if k2 == "tails" then            tails = v2               end
                    if k2 == "manes" then            manes = v2               end
                    if k2 == "saddles" then          saddles = v2             end
                    if k2 == "stirrups" then         stirrups = v2            end
                    if k2 == "lantern" then          lantern = v2             end
                    if k2 == "Mask" then             Mask = v2                end
                    if k2 == "acsluggage" then       acsluggage = v2          end
                    if k2 == "propsData" then       s_propsData = v2          end
                end
                for k2, v2 in pairs(propsData) do
                    if v == tonumber(s_propsData) then
                        s_propsData = k2
                    end
                end
                
                for k2, v2 in pairs(horse_blankets) do
                    if v2.hash == tonumber(saddlecloths) then
                        s_saddlecloths = k2
                    end
                end
                for k2, v2 in pairs(horse_bedrolls) do
                    if v2.hash == tonumber(acsluggage) then
                        s_acsluggage = k2
                    end
                end
                for k2, v2 in pairs(horse_manes) do
                    if v2.hash == tonumber(manes) then
                        s_manes = k2
                    end
                end
                for k2, v2 in pairs(horse_saddlebags) do
                    if v2.hash == tonumber(bags) then
                        s_bags = k2
                    end
                end
                for k2, v2 in pairs(horse_saddles) do
                    if v2.hash == tonumber(saddles) then
                        s_saddles = k2
                    end
                end
                for k2, v2 in pairs(horse_tails) do
                    if v2.hash == tonumber(tails) then
                        s_tails = k2
                    end
                end
                for k2, v2 in pairs(saddle_horns) do
                    if v2.hash == tonumber(acshorn) then
                        s_acshorn = k2
                    end
                end
                for k2, v2 in pairs(saddle_stirrups) do
                    if v2.hash == tonumber(stirrups) then
                        s_stirrups = k2
                    end
                end
                for k2, v2 in pairs(horse_accessories) do
                    if v2.hash == tonumber(Mask) then
                        s_Mask = k2
                    end
                end
                for k2, v2 in pairs(horse_mustache) do
                    if v2.hash == tonumber(mustache) then
                        s_mustache = k2
                    end
                end
                for k2, v2 in pairs(horse_holster) do
                    if v2.hash == tonumber(holster) then
                        s_holster = k2
                    end
                end
                for k2, v2 in pairs(horse_lantern) do
                    if v2.hash == tonumber(lantern) then
                        s_lantern = k2
                    end
                end
                for k2, v2 in pairs(horse_bridle) do
                    if v2.hash == tonumber(bridle) then
                        s_bridle = k2
                    end
                end
                selected = true
                SendNUIMessage({type = "horse_components", saddle_cloths=s_saddlecloths, bridle=s_bridle, holster=s_holster, mustache=s_mustache, acshorn=s_acshorn, bags=s_bags, tails=s_tails, manes=s_manes,saddles=s_saddles, stirrups=s_stirrups, lantern=s_lantern, Mask=s_Mask, acsluggage=s_acsluggage, propsData=s_propsData})
                show_my_horse(v["model"], v["sex"], 1, v["id"], v["age"], v["components"], v["isdead"], v["state"], v["breeding"])
                while not DoesEntityExist(horse_preview) do
                    Citizen.Wait(0)
                end
                if Config.InteractibleCamera then
                    ClearFocus()
                    if cam == nil then
                        local playerCoords = GetEntityCoords(previewPed)
                        local newPos = ProcessNewPosition()
                        cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", newPos.x, newPos.y, newPos.z, 0.0, 0.0, 100.0, fov)
                        PointCamAtCoord(cam, playerCoords.x, playerCoords.y, playerCoords.z + 0.5)
                        SetCamActiveWithInterp(cam, camera, 300, 0, 0)
                        RenderScriptCams(true, true, 300, true, true)
                    end
                    Citizen.Wait(300)
                    ProcessCamControls()
                end
            end
        end
    end
end)

RegisterNUICallback('buy_cart', function(data,cb)
    local PositionForBuy = 0
    if is_trainer == true then
        if Config.Max_Wagon_With_Job <= #WagonTable then
            CloseMenuData()
            if Config.Gum_Notify_Old then
                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, ""..Config.Language[229].text.."", Config.FirstName, Config.SecondName, Config.Language[229].time)
            end
            if Config.Gum_Notify_NUI then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[229].text.."", Config.Image, Config.Language[229].time)
            end
            return false
        end
    else
        if Config.Max_Wagon_Without_Job <= #WagonTable then
            CloseMenuData()
            if Config.Gum_Notify_Old then
                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, ""..Config.Language[229].text.."", Config.FirstName, Config.SecondName, Config.Language[229].time)
            end
            if Config.Gum_Notify_NUI then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[229].text.."", Config.Image, Config.Language[229].time)
            end
            return false
        end
    end
    for f,g in pairs(Config.SpotsForStable) do
        local coords = GetEntityCoords(PlayerPedId())
        if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, g["BasicCoord"][1], g["BasicCoord"][2], g["BasicCoord"][3], false) < 20.0 then
            positionForBuy = f
        end
    end
    for k,v in pairs(WagonList) do
        if v[7] == data.category and data.type == v[1] then
            if Config.GoldRol then
                TriggerEvent("guminputs:getInput", ""..Config.Language[53].text.."", ""..Config.Language[191].text.."", function(cb)
                    local wagon_name = tostring(cb)
                    if wagon_name ~= nil and wagon_name ~= 'close' then
                        Citizen.Wait(1000)
                        TriggerEvent("guminputs:getAnswer", ""..Config.Language[267].text.."", "$", "G", function(cb)
                            local pay_with = cb
                            if pay_with == true then
                                TriggerServerEvent("gum_stables:save_wagon_s", k, wagon_name, v[2], 0, positionForBuy)
                                CloseMenuData()
                            elseif pay_with == false then
                                TriggerServerEvent("gum_stables:save_wagon_s", k, wagon_name, v[3], 1, positionForBuy)
                                CloseMenuData()
                            end
                        end)
                    end
                end)
            else
                TriggerEvent("guminputs:getInput", ""..Config.Language[53].text.."", ""..Config.Language[191].text.."", function(cb)
                    local wagon_name = tostring(cb)
                    if wagon_name ~= nil and wagon_name ~= 'close' then
                        CloseMenuData()
                        TriggerServerEvent("gum_stables:save_wagon_s", k, wagon_name, v[2], 0, positionForBuy)
                    end
                end)
            end
        end
    end
end)

Citizen.CreateThread(function()
    Citizen.Wait(2000)
    SendNUIMessage({type="languageLoad", language=Config.Language})
end)

RegisterNUICallback('buy_horse', function(data,cb)
    if is_trainer == true then
        if tonumber(Config.Max_Horse_With_Job) <= tonumber(#horse_table) then
            CloseMenuData()
            if Config.Gum_Notify_Old then
                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, ""..Config.Language[228].text.."", Config.FirstName, Config.SecondName, 2500)
            end
            if Config.Gum_Notify_NUI then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[228].text.."", Config.Image, 2000)
            end
            return false
        end
    else
        if tonumber(Config.Max_Horse_Without_Job) <= tonumber(#horse_table) then
            CloseMenuData()
            if Config.Gum_Notify_Old then
                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, ""..Config.Language[228].text.."", Config.FirstName, Config.SecondName, 2500)
            end
            if Config.Gum_Notify_NUI then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[228].text.."", Config.Image, 2000)
            end
            return false
        end
    end
    local horse_model = ""
    local price = 0
    local gold = 0
    for k2,v2 in pairs(Config.Horses) do
        if v2.name == data.category then
            for x,y in pairs(v2) do 
                if y[1] == data.horse then
                    horse_model = x
                    price = y[2]
                    gold = y[3]
                end
            end
        end
    end
    local positionForBuy = 0
    for f,g in pairs(Config.SpotsForStable) do
        local coords = GetEntityCoords(PlayerPedId())
        if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, g["BasicCoord"][1], g["BasicCoord"][2], g["BasicCoord"][3], false) < 15.0 then
            positionForBuy = f
        end
    end
    if Config.GoldRol then
        if horse_model ~= "" and price ~= 0 then
            TriggerEvent("guminputs:getAnswer", ""..Config.Language[339].text.."", ""..Config.Language[340].text.."", ""..Config.Language[341].text.."", function(cb)
                local cub = cb
                if cub == true or cub == false then
                    TriggerEvent("guminputs:getAnswer", ""..Config.Language[342].text.."", ""..Config.Language[343].text.."", ""..Config.Language[344].text.."", function(cb)
                        local male = cb
                        if male == true or male == false then
                            TriggerEvent("guminputs:getInput", ""..Config.Language[345].text.."", ""..Config.Language[346].text.."", function(cb)
                                local name_horse = cb
                                if name_horse ~= 'close' and name_horse ~= nil then
                                    TriggerEvent("guminputs:getAnswer", ""..Config.Language[347].text.."", "$", "G", function(cb)
                                        local pay_with = cb
                                        if pay_with == true then
                                            TriggerServerEvent("gum_stables:save_horse_s", horse_model, name_horse, male, cub, price, pay_with, positionForBuy)
                                            CloseMenuData()
                                        elseif pay_with == false then
                                            TriggerServerEvent("gum_stables:save_horse_s", horse_model, name_horse, male, cub, gold, pay_with, positionForBuy)
                                            CloseMenuData()
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
            TriggerEvent("guminputs:getAnswer", ""..Config.Language[339].text.."", ""..Config.Language[340].text.."", ""..Config.Language[341].text.."", function(cb)
                local cub = cb
                if cub == true or cub == false then
                    TriggerEvent("guminputs:getAnswer", ""..Config.Language[342].text.."", ""..Config.Language[343].text.."", ""..Config.Language[344].text.."", function(cb)
                        local male = cb
                        if male == true or male == false then
                            TriggerEvent("guminputs:getInput", ""..Config.Language[345].text.."", ""..Config.Language[346].text.."", function(cb)
                                local name_horse = cb
                                if name_horse ~= 'close' and name_horse ~= nil then
                                    TriggerServerEvent("gum_stables:save_horse_s", horse_model, name_horse, male, cub, price, true, positionForBuy)
                                    CloseMenuData()
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
    if Config.CallFromStableCart then
        for k,v in pairs(WagonTable) do
            if tonumber(idForStorageCart) == tonumber(v.id) then
                selected = true
            end
        end
    else
        for k,v in pairs(WagonTable) do
            if v["selected"] == 1 then
                selected = true
            end
        end
    end
    if selected == false then
        return false
    end
    active_camera = false
    local max_tints = 0
    local max_lantern = 0
    local max_livery = 0
    local max_extras = 0
    local max_propset = 0
    local model = ""
    local id = ""
    local old_extras = {}
    local old_lantern = {}
    local old_liveries = {}
    local old_tints = {}
    local old_propset = {}
    extras = {}
    livery = {}
    lantern = {}
    propsets = {}
    if Config.CallFromStableCart then
        for k,v in pairs(WagonTable) do
            if tonumber(idForStorageCart) == tonumber(v.id) then
                id = v.id
                model = v.model
                old_extras = v.comp_extras
                old_lantern = v.comp_lantern
                old_liveries = v.comp_liveries
                old_tints = v.comp_tints
            end
        end
    else
        for k,v in pairs(WagonTable) do
            if v["selected"] == 1 then
                id = v.id
                model = v.model
                old_extras = v.comp_extras
                old_lantern = v.comp_lantern
                old_liveries = v.comp_liveries
                old_tints = v.comp_tints
            end
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
        spawn_wagon_my(model, id)
        while not DoesEntityExist(wagon_preview) do
            Citizen.Wait(0)
        end
        if Config.InteractibleCamera then
            ClearFocus()
            if cam == nil then
                local playerCoords = GetEntityCoords(previewPed)
                local newPos = ProcessNewPosition()
                cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", newPos.x, newPos.y, newPos.z, 0.0, 0.0, 100.0, fov)
                PointCamAtCoord(cam, playerCoords.x, playerCoords.y, playerCoords.z + 0.5)
                SetCamActiveWithInterp(cam, camera, 300, 0, 0)
                RenderScriptCams(true, true, 300, true, true)
            end
            Citizen.Wait(300)
            ProcessCamControls()
        end
    else
        return false
    end
    SendNUIMessage({type = "comp_cart_load", lantern=lantern, max_lantern=max_lantern, livery=livery, max_livery=max_livery, max_tints=max_tints, max_extras=max_extras, extras=extras, max_propset=max_propset, id=id})
end)
local backupMeComp = {}
RegisterNUICallback('BuyComponents', function(data,cb)
    local id = nil
    backupMeComp = {}
    if Config.CallFromStableHorse or Config.SpotForTake then
        for k,v in pairs(horse_table) do
            if tonumber(idForStorageHorse) == tonumber(v.id) or v.selected == 1 then
                backupMeComp = json.decode(v.components)
                horse_table_comp = json.decode(v.components)
                id = v.id
                if tonumber(data.blanket) ~= 0 then
                    if tonumber(horse_table_comp["saddlecloths"]) ~= horse_blankets[tonumber(data.blanket)].hash then
                        horse_table_comp["saddlecloths"] = horse_blankets[tonumber(data.blanket)].hash
                        price_table["saddlecloths"] = horse_blankets[tonumber(data.blanket)].price
                    else
                        horse_table_comp["saddlecloths"] = horse_blankets[tonumber(data.blanket)].hash
                        price_table["saddlecloths"] = 0
                    end
                else
                    price_table["saddlecloths"] = 0
                    horse_table_comp["saddlecloths"] = nil
                end
                if tonumber(data.bridle) ~= 0 then
                    if tonumber(horse_table_comp["bridle"]) ~= horse_bridle[tonumber(data.bridle)].hash then
                        horse_table_comp["bridle"] = horse_bridle[tonumber(data.bridle)].hash
                        price_table["bridle"] = horse_bridle[tonumber(data.bridle)].price
                    else
                        horse_table_comp["bridle"] = horse_bridle[tonumber(data.bridle)].hash
                        price_table["bridle"] = 0
                    end
                else
                    price_table["bridle"] = 0
                    horse_table_comp["bridle"] = nil
                end
                if tonumber(data.holster) ~= 0 then
                    if tonumber(horse_table_comp["holster"]) ~= horse_holster[tonumber(data.holster)].hash then
                        horse_table_comp["holster"] = horse_holster[tonumber(data.holster)].hash
                        price_table["holster"] = horse_holster[tonumber(data.holster)].price
                    else
                        horse_table_comp["holster"] = horse_holster[tonumber(data.holster)].hash
                        price_table["holster"] = 0
                    end
                else
                    price_table["holster"] = 0
                    horse_table_comp["holster"] = nil
                end
                if tonumber(data.mustache) ~= 0 then
                    if tonumber(horse_table_comp["mustache"]) ~= horse_mustache[tonumber(data.mustache)].hash then
                        horse_table_comp["mustache"] = horse_mustache[tonumber(data.mustache)].hash
                        price_table["mustache"] = horse_mustache[tonumber(data.mustache)].price
                    else
                        horse_table_comp["mustache"] = horse_mustache[tonumber(data.mustache)].hash
                        price_table["mustache"] = 0
                    end
                else
                    price_table["mustache"] = 0
                    horse_table_comp["mustache"] = nil
                end
                if tonumber(data.horns) ~= 0 then
                    if tonumber(horse_table_comp["acshorn"]) ~= saddle_horns[tonumber(data.horns)].hash then
                        horse_table_comp["acshorn"] = saddle_horns[tonumber(data.horns)].hash
                        price_table["acshorn"] = saddle_horns[tonumber(data.horns)].price
                    else
                        horse_table_comp["acshorn"] = saddle_horns[tonumber(data.horns)].hash
                        price_table["acshorn"] = 0
                    end
                else
                    price_table["acshorn"] = 0
                    horse_table_comp["acshorn"] = nil
                end
                if tonumber(data.bags) ~= 0 then
                    if tonumber(horse_table_comp["bags"]) ~= horse_saddlebags[tonumber(data.bags)].hash then
                        horse_table_comp["bags"] = horse_saddlebags[tonumber(data.bags)].hash
                        price_table["bags"] = horse_saddlebags[tonumber(data.bags)].price
                    else
                        horse_table_comp["bags"] = horse_saddlebags[tonumber(data.bags)].hash
                        price_table["bags"] = 0
                    end
                else
                    price_table["bags"] = 0
                    horse_table_comp["bags"] = nil
                end
                if tonumber(data.tails) ~= 0 then
                    if tonumber(horse_table_comp["tails"]) ~= horse_tails[tonumber(data.tails)].hash then
                        horse_table_comp["tails"] = horse_tails[tonumber(data.tails)].hash
                        price_table["tails"] = horse_tails[tonumber(data.tails)].price
                    else
                        horse_table_comp["tails"] = horse_tails[tonumber(data.tails)].hash
                        price_table["tails"] = 0
                    end
                else
                    price_table["tails"] = 0
                    horse_table_comp["tails"] = nil
                end
                if tonumber(data.manes) ~= 0 then
                    if tonumber(horse_table_comp["manes"]) ~= horse_manes[tonumber(data.manes)].hash then
                        horse_table_comp["manes"] = horse_manes[tonumber(data.manes)].hash
                        price_table["manes"] = horse_manes[tonumber(data.manes)].price
                    else
                        horse_table_comp["manes"] = horse_manes[tonumber(data.manes)].hash
                        price_table["manes"] = 0
                    end
                else
                    price_table["manes"] = 0
                    horse_table_comp["manes"] = nil
                end
                if tonumber(data.saddle) ~= 0 then
                    if tonumber(horse_table_comp["saddles"]) ~= horse_saddles[tonumber(data.saddle)].hash then
                        horse_table_comp["saddles"] = horse_saddles[tonumber(data.saddle)].hash
                        price_table["saddles"] = horse_saddles[tonumber(data.saddle)].price
                    else
                        horse_table_comp["saddles"] = horse_saddles[tonumber(data.saddle)].hash
                        price_table["saddles"] = 0
                    end
                else
                    price_table["saddles"] = 0
                    horse_table_comp["saddles"] = nil
                end
                if tonumber(data.stirrup) ~= 0 then
                    if tonumber(horse_table_comp["stirrups"]) ~= saddle_stirrups[tonumber(data.stirrup)].hash then
                        horse_table_comp["stirrups"] = saddle_stirrups[tonumber(data.stirrup)].hash
                        price_table["stirrups"] = saddle_stirrups[tonumber(data.stirrup)].price
                    else
                        horse_table_comp["stirrups"] = saddle_stirrups[tonumber(data.stirrup)].hash
                        price_table["stirrups"] = 0
                    end
                else
                    price_table["stirrups"] = 0
                    horse_table_comp["stirrups"] = nil
                end
                if tonumber(data.lantern) ~= 0 then
                    if tonumber(horse_table_comp["lantern"]) ~= horse_lantern[tonumber(data.lantern)].hash then
                        horse_table_comp["lantern"] = horse_lantern[tonumber(data.lantern)].hash
                        price_table["lantern"] = horse_lantern[tonumber(data.lantern)].price
                    else
                        horse_table_comp["lantern"] = horse_lantern[tonumber(data.lantern)].hash
                        price_table["lantern"] = 0
                    end
                else
                    price_table["lantern"] = 0
                    horse_table_comp["lantern"] = nil
                end
                if tonumber(data.accessorie) ~= 0 then
                    if tonumber(horse_table_comp["Mask"]) ~= horse_accessories[tonumber(data.accessorie)].hash then
                        horse_table_comp["Mask"] = horse_accessories[tonumber(data.accessorie)].hash
                        price_table["Mask"] = horse_accessories[tonumber(data.accessorie)].price
                    else
                        horse_table_comp["Mask"] = horse_accessories[tonumber(data.accessorie)].hash
                        price_table["Mask"] = 0
                    end
                else
                    price_table["Mask"] = 0
                    horse_table_comp["Mask"] = nil
                end
                if tonumber(data.bedroll) ~= 0 then
                    if tonumber(horse_table_comp["acsluggage"]) ~= horse_bedrolls[tonumber(data.bedroll)].hash then
                        horse_table_comp["acsluggage"] = horse_bedrolls[tonumber(data.bedroll)].hash
                        price_table["acsluggage"] = horse_bedrolls[tonumber(data.bedroll)].price
                    else
                        horse_table_comp["acsluggage"] = horse_bedrolls[tonumber(data.bedroll)].hash
                        price_table["acsluggage"] = 0
                    end
                else
                    price_table["acsluggage"] = 0
                    horse_table_comp["acsluggage"] = nil
                end
                if tonumber(data.propsData) ~= 0 then
                    if tonumber(horse_table_comp["propsData"]) ~= tonumber(data.propsData) then
                        horse_table_comp["propsData"] = tonumber(data.propsData)
                        price_table["propsData"] = Config.Horse_Props
                    else
                        horse_table_comp["propsData"] = tonumber(data.propsData)
                        price_table["propsData"] = 0
                    end
                else
                    price_table["propsData"] = 0
                    horse_table_comp["propsData"] = nil
                end
            end
        end
    else
        for k,v in pairs(horse_table) do
            if tonumber(v["selected"]) == 1 then
                backupMeComp = horse_table_comp
                id = v.id
                if tonumber(data.blanket) ~= 0 then
                    if tonumber(horse_table_comp["saddlecloths"]) ~= horse_blankets[tonumber(data.blanket)].hash then
                        horse_table_comp["saddlecloths"] = horse_blankets[tonumber(data.blanket)].hash
                        price_table["saddlecloths"] = horse_blankets[tonumber(data.blanket)].price
                    else
                        horse_table_comp["saddlecloths"] = horse_blankets[tonumber(data.blanket)].hash
                        price_table["saddlecloths"] = 0
                    end
                else
                    price_table["saddlecloths"] = 0
                    horse_table_comp["saddlecloths"] = nil
                end
                if tonumber(data.bridle) ~= 0 then
                    if tonumber(horse_table_comp["bridle"]) ~= horse_bridle[tonumber(data.bridle)].hash then
                        horse_table_comp["bridle"] = horse_bridle[tonumber(data.bridle)].hash
                        price_table["bridle"] = horse_bridle[tonumber(data.bridle)].price
                    else
                        horse_table_comp["bridle"] = horse_bridle[tonumber(data.bridle)].hash
                        price_table["bridle"] = 0
                    end
                else
                    price_table["bridle"] = 0
                    horse_table_comp["bridle"] = nil
                end
                if tonumber(data.holster) ~= 0 then
                    if tonumber(horse_table_comp["holster"]) ~= horse_holster[tonumber(data.holster)].hash then
                        horse_table_comp["holster"] = horse_holster[tonumber(data.holster)].hash
                        price_table["holster"] = horse_holster[tonumber(data.holster)].price
                    else
                        horse_table_comp["holster"] = horse_holster[tonumber(data.holster)].hash
                        price_table["holster"] = 0
                    end
                else
                    price_table["holster"] = 0
                    horse_table_comp["holster"] = nil
                end
                if tonumber(data.mustache) ~= 0 then
                    if tonumber(horse_table_comp["mustache"]) ~= horse_mustache[tonumber(data.mustache)].hash then
                        horse_table_comp["mustache"] = horse_mustache[tonumber(data.mustache)].hash
                        price_table["mustache"] = horse_mustache[tonumber(data.mustache)].price
                    else
                        horse_table_comp["mustache"] = horse_mustache[tonumber(data.mustache)].hash
                        price_table["mustache"] = 0
                    end
                else
                    price_table["mustache"] = 0
                    horse_table_comp["mustache"] = nil
                end
                if tonumber(data.horns) ~= 0 then
                    if tonumber(horse_table_comp["acshorn"]) ~= saddle_horns[tonumber(data.horns)].hash then
                        horse_table_comp["acshorn"] = saddle_horns[tonumber(data.horns)].hash
                        price_table["acshorn"] = saddle_horns[tonumber(data.horns)].price
                    else
                        horse_table_comp["acshorn"] = saddle_horns[tonumber(data.horns)].hash
                        price_table["acshorn"] = 0
                    end
                else
                    price_table["acshorn"] = 0
                    horse_table_comp["acshorn"] = nil
                end
                if tonumber(data.bags) ~= 0 then
                    if tonumber(horse_table_comp["bags"]) ~= horse_saddlebags[tonumber(data.bags)].hash then
                        horse_table_comp["bags"] = horse_saddlebags[tonumber(data.bags)].hash
                        price_table["bags"] = horse_saddlebags[tonumber(data.bags)].price
                    else
                        horse_table_comp["bags"] = horse_saddlebags[tonumber(data.bags)].hash
                        price_table["bags"] = 0
                    end
                else
                    price_table["bags"] = 0
                    horse_table_comp["bags"] = nil
                end
                if tonumber(data.tails) ~= 0 then
                    if tonumber(horse_table_comp["tails"]) ~= horse_tails[tonumber(data.tails)].hash then
                        horse_table_comp["tails"] = horse_tails[tonumber(data.tails)].hash
                        price_table["tails"] = horse_tails[tonumber(data.tails)].price
                    else
                        horse_table_comp["tails"] = horse_tails[tonumber(data.tails)].hash
                        price_table["tails"] = 0
                    end
                else
                    price_table["tails"] = 0
                    horse_table_comp["tails"] = nil
                end
                if tonumber(data.manes) ~= 0 then
                    if tonumber(horse_table_comp["manes"]) ~= horse_manes[tonumber(data.manes)].hash then
                        horse_table_comp["manes"] = horse_manes[tonumber(data.manes)].hash
                        price_table["manes"] = horse_manes[tonumber(data.manes)].price
                    else
                        horse_table_comp["manes"] = horse_manes[tonumber(data.manes)].hash
                        price_table["manes"] = 0
                    end
                else
                    price_table["manes"] = 0
                    horse_table_comp["manes"] = nil
                end
                if tonumber(data.saddle) ~= 0 then
                    if tonumber(horse_table_comp["saddles"]) ~= horse_saddles[tonumber(data.saddle)].hash then
                        horse_table_comp["saddles"] = horse_saddles[tonumber(data.saddle)].hash
                        price_table["saddles"] = horse_saddles[tonumber(data.saddle)].price
                    else
                        horse_table_comp["saddles"] = horse_saddles[tonumber(data.saddle)].hash
                        price_table["saddles"] = 0
                    end
                else
                    price_table["saddles"] = 0
                    horse_table_comp["saddles"] = nil
                end
                if tonumber(data.stirrup) ~= 0 then
                    if tonumber(horse_table_comp["stirrups"]) ~= saddle_stirrups[tonumber(data.stirrup)].hash then
                        horse_table_comp["stirrups"] = saddle_stirrups[tonumber(data.stirrup)].hash
                        price_table["stirrups"] = saddle_stirrups[tonumber(data.stirrup)].price
                    else
                        horse_table_comp["stirrups"] = saddle_stirrups[tonumber(data.stirrup)].hash
                        price_table["stirrups"] = 0
                    end
                else
                    price_table["stirrups"] = 0
                    horse_table_comp["stirrups"] = nil
                end
                if tonumber(data.lantern) ~= 0 then
                    if tonumber(horse_table_comp["lantern"]) ~= horse_lantern[tonumber(data.lantern)].hash then
                        horse_table_comp["lantern"] = horse_lantern[tonumber(data.lantern)].hash
                        price_table["lantern"] = horse_lantern[tonumber(data.lantern)].price
                    else
                        horse_table_comp["lantern"] = horse_lantern[tonumber(data.lantern)].hash
                        price_table["lantern"] = 0
                    end
                else
                    price_table["lantern"] = 0
                    horse_table_comp["lantern"] = nil
                end
                if tonumber(data.accessorie) ~= 0 then
                    if tonumber(horse_table_comp["Mask"]) ~= horse_accessories[tonumber(data.accessorie)].hash then
                        horse_table_comp["Mask"] = horse_accessories[tonumber(data.accessorie)].hash
                        price_table["Mask"] = horse_accessories[tonumber(data.accessorie)].price
                    else
                        horse_table_comp["Mask"] = horse_accessories[tonumber(data.accessorie)].hash
                        price_table["Mask"] = 0
                    end
                else
                    price_table["Mask"] = 0
                    horse_table_comp["Mask"] = nil
                end
                if tonumber(data.bedroll) ~= 0 then
                    if tonumber(horse_table_comp["acsluggage"]) ~= horse_bedrolls[tonumber(data.bedroll)].hash then
                        horse_table_comp["acsluggage"] = horse_bedrolls[tonumber(data.bedroll)].hash
                        price_table["acsluggage"] = horse_bedrolls[tonumber(data.bedroll)].price
                    else
                        horse_table_comp["acsluggage"] = horse_bedrolls[tonumber(data.bedroll)].hash
                        price_table["acsluggage"] = 0
                    end
                else
                    price_table["acsluggage"] = 0
                    horse_table_comp["acsluggage"] = nil
                end
                if tonumber(data.propsData) ~= 0 then
                    if tonumber(horse_table_comp["propsData"]) ~= tonumber(data.propsData) then
                        horse_table_comp["propsData"] = tonumber(data.propsData)
                        price_table["propsData"] = Config.Horse_Props
                    else
                        horse_table_comp["propsData"] = tonumber(data.propsData)
                        price_table["propsData"] = 0
                    end
                else
                    price_table["propsData"] = 0
                    horse_table_comp["propsData"] = nil
                end
            end
        end
    end

    local price = 0
    for k,v in pairs(price_table) do
        price = price+v
    end
    TriggerEvent("guminputs:getAnswer", ""..Config.Language[348].text.." "..price.."$ ?", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
		local input = cb
		if input == true then
            CloseMenuData()
            TriggerServerEvent("gum_stables:buy_components", horse_table_comp, id, price)
            fleeHorse()
			return true
		else
            horse_table_comp = backupMeComp
            CloseMenuData()
            return false
		end
	end)
end)

RegisterNetEvent('gum_stables:resetComponents')
AddEventHandler('gum_stables:resetComponents', function()
    horse_table_comp = backupMeComp
end)
RegisterNUICallback('selectcartcomponent', function(data,cb)
    if data.comp == "horseCars" then
        for k,v in pairs(WagonTable) do
            if Config.SpotForTake or Config.CallFromStableCart then
                if tonumber(idForStorageCart) == tonumber(v["id"]) then
                    if tonumber(data.value) ~= 0 then
                        local value = tonumber(data.value)
                        spawn_wagon_my(v["model"], v["id"], value)
                        pricing_cart["horses"] = {Config.HorsesDraft, value}
                    else
                        pricing_cart["horses"] = {0, 0}
                    end
                end
            else
                if tonumber(v.selected) == 1 then
                    if tonumber(data.value) ~= 0 then
                        local value = tonumber(data.value)
                        spawn_wagon_my(v["model"], v["id"], value)
                        pricing_cart["horses"] = {Config.HorsesDraft, value}
                    else
                        pricing_cart["horses"] = {0, 0}
                    end
                end
            end
        end
        while not DoesEntityExist(wagon_preview) do
            Citizen.Wait(0)
        end
        if Config.InteractibleCamera then
            ClearFocus()
            if cam == nil then
                local playerCoords = GetEntityCoords(previewPed)
                local newPos = ProcessNewPosition()
                cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", newPos.x, newPos.y, newPos.z, 0.0, 0.0, 100.0, fov)
                PointCamAtCoord(cam, playerCoords.x, playerCoords.y, playerCoords.z + 0.5)
                SetCamActiveWithInterp(cam, camera, 300, 0, 0)
                RenderScriptCams(true, true, 300, true, true)
            end
            Citizen.Wait(300)
            ProcessCamControls()
        end
    end
    if data.comp == "propset" then
        local getEntityCoords = GetEntityCoords(wagon_preview)
        for k,v in pairs(propsets) do
            if k == tonumber(data.value) then
                if entity2 ~= nil then
                    local playerCoords = GetEntityCoords(PlayerPedId())
                    local getEntityCoords = GetOffsetFromEntityInWorldCoords(entity2, 0.0, -0.9, 0.0)
                    for a,b in pairs(GetGamePool('CObject')) do
                        local coords = GetEntityCoords(b)
                        if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, getEntityCoords.x, getEntityCoords.y, getEntityCoords.z, false) < 1.2 and GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, coords.x, coords.y, coords.z, false) > 1.00 then
                            DeleteEntity(b)
                        end
                    end
                    delete_obj(entity2)
                end
                Citizen.InvokeNative(0x75F90E4051CC084C, wagon_preview, 0)
                Citizen.Wait(50)
                Citizen.InvokeNative(0x75F90E4051CC084C, wagon_preview, GetHashKey(v))
                Citizen.InvokeNative(0x31F343383F19C987, wagon_preview, 1.0, 1)

                Citizen.InvokeNative(0x7264F9CA87A9830B, wagon_preview)
                Citizen.InvokeNative(0xD798DF5DB67B1659, wagon_preview)
                pricing_cart["propset"] = {Config.Propset, v}
                Citizen.Wait(100)
                for a,b in pairs(GetGamePool('CObject')) do
                    local coords = GetEntityCoords(b)
                    if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, getEntityCoords.x, getEntityCoords.y, getEntityCoords.z, false) < 3.0 then
                        SetEntityCollision(b, false, false)
                    end
                end
            end
            if tonumber(data.value) == 0 then
                pricing_cart["propset"] = {0, "none"}
                for a,b in pairs(GetGamePool('CObject')) do
                    local coords = GetEntityCoords(b)
                    if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, getEntityCoords.x, getEntityCoords.y, getEntityCoords.z, false) < 2.0 then
                        DeleteEntity(b)
                    end
                end
                Citizen.InvokeNative(0x75F90E4051CC084C, wagon_preview, 0)  -- _REMOVE_ALL_VEHICLE_PROPSETS
            end
        end
    end
    if data.comp == "lanternss" then
        for k,v in pairs(lantern) do
            if k == tonumber(data.value) then
                pricing_cart["lantern"] = {Config.Lantern, v}
                Citizen.InvokeNative(0xC0F0417A90402742, wagon_preview, GetHashKey(v))
            end
        end
        if tonumber(data.value) == 0 then
            Citizen.InvokeNative(0xE31C0CB1C3186D40, wagon_preview)
            pricing_cart["lantern"] = {0, "none"}
        end
    end
    if data.comp == "tint" then
        if tonumber(data.value) == 0 then
            Citizen.InvokeNative(0x758C3460EE915D0A, wagon_preview, 0.0)
            Citizen.InvokeNative(0xBAE0EEDF93F05EAA, wagon_preview, 0.0)
            Citizen.InvokeNative(0x8268B098F6FCA4E2, wagon_preview, -1)
            pricing_cart["tint"] = {0, 0}
        else
            Citizen.InvokeNative(0x758C3460EE915D0A, wagon_preview, 0.0)
            Citizen.InvokeNative(0xBAE0EEDF93F05EAA, wagon_preview, 0.0)
            Citizen.InvokeNative(0x8268B098F6FCA4E2, wagon_preview, tonumber(data.value))
            pricing_cart["tint"] = {Config.Tint, tonumber(data.value)}
        end
    end
    if data.comp == "livery" then
        for k,v in pairs(livery) do
            if k == tonumber(data.value) then
                pricing_cart["livery"] = {Config.Livery, v}
                Citizen.InvokeNative(0xF89D82A0582E46ED, wagon_preview, v)
            end
        end
        if tonumber(data.value) == 0 then
            pricing_cart["livery"] = {0, -1}
        end
    end
    local exr_number = string.match(data.comp,"%d+")
    local is_extras = string.find(data.comp, "Extra")
    if is_extras == 1 then
        for k,v in pairs(extras) do
            if k == exr_number+1 then
                if tonumber(data.value) == 0 then
                    pricing_cart["extra_"..v] = {Config.Extras, v, 1}
                    Citizen.InvokeNative(0xBB6F89150BC9D16B, wagon_preview, v, 1)
                else
                    pricing_cart["extra_"..v] = {Config.Extras, v, 0}
                    Citizen.InvokeNative(0xBB6F89150BC9D16B, wagon_preview, v, 0)
                end
            end
        end
    end
end)

RegisterNUICallback('buycartcomponents', function(data,cb)
    local price = 0
    local new_extras = {}
    local sendextras = {}
    local lantern = nil
    local tint = nil
    local livery = nil
    local propset = nil
    local horses = nil
    for k,v in pairs(pricing_cart) do
        price = price+v[1]
    end

    for k,v in pairs(WagonTable) do
        if v.id == tonumber(data.id) then
            new_extras = json.decode(v.comp_extras)
        end
    end
    for a,b in pairs(pricing_cart) do
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
    for k,v in pairs(pricing_cart) do
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
        if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, g["BasicCoord"][1], g["BasicCoord"][2], g["BasicCoord"][3], false) < 2.0 then
            positionForBuy = f
        end
    end
    TriggerEvent("guminputs:getAnswer", ""..Config.Language[348].text.." "..price.."$ ?", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
		local input = cb
		if input == true then
            if price == 0 then
                if Config.Gum_Notify_Old then
                    exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, ""..Config.Language[349].text.."", Config.FirstName, Config.SecondName, Config.Language[349].time)
                end
                if Config.Gum_Notify_NUI then
                    exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[349].text.."", Config.Image, Config.Language[349].time)
                end
            else
                if Config.CallFromStableCart then
                    fleeWagon()
                end
                CloseMenuData()
                TriggerServerEvent("gum_stables:save_comp_wagon", data.id, sendextras, livery, tint, price, positionForBuy, propset, horses, lantern)
                pricing_cart = {}
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
    if data.comp == "blankets" then
        for k,v in pairs(horse_blankets) do
            if k == tonumber(data.value) then
                hash = (horse_blankets[k].hash)
                buycompos["saddlecloths"] = hash
                setcloth(hash, true)
            end
        end
        Citizen.Wait(250)
        if tonumber(data.value) == 0 then
            buycompos["saddlecloths"] = nil
            setcloth(0x17CEB41A, false)
        end
    end
    if data.comp == "saddles" then
        for k,v in pairs(horse_saddles) do
            if k == tonumber(data.value) then
                hash = (horse_saddles[k].hash)
                buycompos["saddles"] = hash
                setcloth(hash, true)
            end
        end
        Citizen.Wait(250)
        if tonumber(data.value) == 0 then
            buycompos["saddles"] = nil
            setcloth(0xBAA7E618, false)
        end
    end
    if data.comp == "horns" then
        for k,v in pairs(saddle_horns) do
            if k == tonumber(data.value) then
                hash = (saddle_horns[k].hash)
                buycompos["acshorn"] = hash
                setcloth(hash, true)
            end
        end
        Citizen.Wait(250)
        if tonumber(data.value) == 0 then
            buycompos["acshorn"] = nil
            setcloth(0x5447332, false)
        end
    end
    if data.comp == "stirrups" then
        for k,v in pairs(saddle_stirrups) do
            if k == tonumber(data.value) then
                hash = (saddle_stirrups[k].hash)
                buycompos["stirrups"] = hash
                setcloth(hash, true)
            end
        end
        Citizen.Wait(250)
        if tonumber(data.value) == 0 then
            buycompos["stirrups"] = nil
            setcloth(0xDA6DADCA, false)
        end
    end
    if data.comp == "bags" then
        for k,v in pairs(horse_saddlebags) do
            if k == tonumber(data.value) then
                hash = (horse_saddlebags[k].hash)
                buycompos["bags"] = hash
                setcloth(hash, true)
            end
        end
        Citizen.Wait(250)
        if tonumber(data.value) == 0 then
            setcloth(0x80451C25, false)
            buycompos["bags"] = nil
        end
    end
    if data.comp == "bedrolls" then
        for k,v in pairs(horse_bedrolls) do
            if k == tonumber(data.value) then
                hash = (horse_bedrolls[k].hash)
                buycompos["acsluggage"] = hash
                setcloth(hash, true)
            end
        end
        Citizen.Wait(250)
        if tonumber(data.value) == 0 then
            buycompos["acsluggage"] = nil
            setcloth(0xEFB31921, false)
        end
    end
    if data.comp == "lantern" then
        for k,v in pairs(horse_lantern) do
            if k == tonumber(data.value) then
                hash = (horse_lantern[k].hash)
                buycompos["lantern"] = hash
                setcloth(hash, true)
            end
        end
        Citizen.Wait(250)
        if tonumber(data.value) == 0 then
            buycompos["lantern"] = nil
            setcloth(0x1530BE1C, false)
        end
    end
    if data.comp == "accessories" then
        for k,v in pairs(horse_accessories) do
            if k == tonumber(data.value) then
                hash = (horse_accessories[k].hash)
                buycompos["Mask"] = hash
                setcloth(hash, true)
            end
        end
        Citizen.Wait(250)
        if tonumber(data.value) == 0 then
            buycompos["Mask"] = nil
            setcloth(0xD3500E5D, false)
        end
    end
    if data.comp == "tails" then
        for k,v in pairs(horse_tails) do
            if k == tonumber(data.value) then
                hash = (horse_tails[k].hash)
                buycompos["tails"] = hash
                setcloth(hash, true)
            end
        end
        Citizen.Wait(250)
        if tonumber(data.value) == 0 then
            buycompos["tails"] = nil
            setcloth(0xA63CAE10, false)
        end
    end
    if data.comp == "manes" then
        for k,v in pairs(horse_manes) do
            if k == tonumber(data.value) then
                hash = (horse_manes[k].hash)
                buycompos["manes"] = hash
                setcloth(hash, true)
            end
        end
        Citizen.Wait(250)
        if tonumber(data.value) == 0 then
            buycompos["manes"] = nil
            setcloth(0xAA0217AB, false)
        end
    end
    if data.comp == "mustaches" then
        for k,v in pairs(horse_mustache) do
            if k == tonumber(data.value) then
                hash = (horse_mustache[k].hash)
                buycompos["mustache"] = hash
                setcloth(hash, true)
            end
        end
        Citizen.Wait(250)
        if tonumber(data.value) == 0 then
            buycompos["mustache"] = nil
            setcloth(0x30DEFDDF, false)
        end
    end
    if data.comp == "holsters" then
        for k,v in pairs(horse_holster) do
            if k == tonumber(data.value) then
                hash = (horse_holster[k].hash)
                buycompos["holster"] = hash
                setcloth(hash, true)
            end
        end
        Citizen.Wait(250)
        if tonumber(data.value) == 0 then
            buycompos["holster"] = nil
            setcloth(0xAC106B30, false)
        end
    end
    if data.comp == "bridles" then
        for k,v in pairs(horse_bridle) do
            if k == tonumber(data.value) then
                hash = (horse_bridle[k].hash)
                buycompos["bridle"] = hash
                setcloth(hash, true)
            end
        end
        Citizen.Wait(250)
        if tonumber(data.value) == 0 then
            buycompos["bridle"] = nil
            setcloth(0x94B2E3AF, false)
        end
    end
    if data.comp == "propsData" then
        for k,v in pairs(horse_table) do
            if tonumber(v["selected"]) == 1 then
                if tonumber(data.value) == 0 then
                    show_my_horse(v["model"], v["sex"], 1, v["id"], v["age"], v["components"], v["isdead"], v["state"], v["breeding"], true)
                    buycompos["propsData"] = nil
                else
                    show_my_horse(v["model"], v["sex"], 1, v["id"], v["age"], v["components"], v["isdead"], v["state"], v["breeding"], true)
                    Citizen.Wait(200)
                    Citizen.InvokeNative(0x1902C4CFCC5BE57C,horse_preview, tonumber(propsData[tonumber(data.value)])) 
                    Citizen.InvokeNative(0xCC8CA3E88256E58F,horse_preview, false, true, true, true, false)
                    buycompos["propsData"] = tonumber(data.value)
                end
            end
        end
    end
end)
RegisterNUICallback('show_breed_horse', function(data,cb)
    if in_action == false then
        horse_breed_slots[1] = nil
        horse_breed_slots[2] = nil
        in_action = true
        show_horse_breed_first(data.model1, data.name1, true)
        show_horse_breed_second(data.model2, data.name2, true)
        if data.reward ~= "none" then
            if data.model1 == data.reward then
                show_horse_breed_third(data.reward)
            elseif data.model2 == data.reward then
                show_horse_breed_fourth(data.reward)
            end
        end
        Citizen.Wait(350)
        in_action = false
    end
end)
RegisterNUICallback('save_breed', function(data,cb)
    if data.time == Config.Language[104].text then
        if Config.Gum_Notify_Old then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[371].text, Config.FirstName, Config.SecondName, Config.Language[96].time)
        end
        if Config.Gum_Notify_NUI then
            exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[371].text, Config.Image, Config.Language[96].time)
        end
        return false
    end
    CloseMenuData()
    local positionForBuy = 0
    for f,g in pairs(Config.SpotsForStable) do
        local coords = GetEntityCoords(PlayerPedId())
        if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, g["BasicCoord"][1], g["BasicCoord"][2], g["BasicCoord"][3], false) < 2.0 then
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
        TriggerEvent("guminputs:getInput", ""..Config.Language[53].text.."", ""..Config.Language[167].text.." "..set_sex.."", function(cb)
            local name_horse = tostring(cb)
            if name_horse ~= "close" and name_horse ~= nil then
                TriggerServerEvent("gum_stables:save_adult_horse", data.model, data.sex, name_horse, tonumber(data.id1), tonumber(data.id2), positionForBuy, set_sex, tonumber(data.exp))
            end
        end)
    end
end)

RegisterNUICallback('show_horse', function(data, cb)
    active_camera = false
    if in_action == false then
        in_action = true
        for k,v in pairs(horse_table) do
            if v.id == tonumber(data.id) and tonumber(data.id) ~= showId then
                show_my_horse(v["model"], v["sex"], 1, v["id"], v["age"], v["components"], v["isdead"], v["state"], v.breeding)
                while not DoesEntityExist(horse_preview) do
                    Citizen.Wait(0)
                end
                if Config.InteractibleCamera then
                    ClearFocus()
                    if cam == nil then
                        local playerCoords = GetEntityCoords(previewPed)
                        local newPos = ProcessNewPosition()
                        cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", newPos.x, newPos.y, newPos.z, 0.0, 0.0, 100.0, fov)
                        PointCamAtCoord(cam, playerCoords.x, playerCoords.y, playerCoords.z + 0.5)
                        SetCamActiveWithInterp(cam, camera, 300, 0, 0)
                        RenderScriptCams(true, true, 300, true, true)
                    end
                    Citizen.Wait(300)
                    ProcessCamControls()
                end
                in_action = false
            end
        end
    end
end)

RegisterNUICallback('show_cart', function(data,cb)
    active_camera = false
    for k,v in pairs(WagonTable) do
        if tonumber(data.id) == v["id"] then
            spawn_wagon_my(v["model"], v["id"])
            while not DoesEntityExist(wagon_preview) do
                Citizen.Wait(0)
            end
            if Config.InteractibleCamera then
                ClearFocus()
                if cam == nil then
                    local playerCoords = GetEntityCoords(previewPed)
                    local newPos = ProcessNewPosition()
                    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", newPos.x, newPos.y, newPos.z, 0.0, 0.0, 100.0, fov)
                    PointCamAtCoord(cam, playerCoords.x, playerCoords.y, playerCoords.z + 0.5)
                    SetCamActiveWithInterp(cam, camera, 300, 0, 0)
                    RenderScriptCams(true, true, 300, true, true)
                end
                Citizen.Wait(300)
                ProcessCamControls()
            end
        end
    end
end)

RegisterNUICallback('clear_preview', function(data, cb)
    TriggerEvent("gum_stables:deleteShowMarker")
    active_camera = true
    putHorseShoe = false
    if createdNpc then
        delete_obj(createdNpc, true)
        createdNpc = nil
    end
    if horse_preview ~= nil then
        delete_obj(horse_preview, true)
        delete_obj(horse_preview_2, true)
        delete_obj(horse_preview_3, true)
    end
    if wagon_preview ~= nil then
        DeleteVehicle(wagon_preview)
    end
end)



RegisterNUICallback('left_cart', function(data, cb)
    active_camera = false
    if in_action == false then
        in_action = true
        local shopTable = {}
        for a,b in pairs(filtered_carts) do
            if b.category == data.category then
                table.insert(shopTable, b)
            end
        end
        local doesChange = false
        for k,v in pairs(shopTable) do
            if v.data[2] == data.cart and doesChange == false then
                doesChange = true
                new_cart = k-1
                if new_cart == 0 then
                    new_cart = #shopTable
                end
            end
        end

        for k,v in pairs(shopTable) do
            if k == new_cart then
                SendNUIMessage({type = "change_cart", cart=v.data[2], category=v.category, money=v.data[3], gold=v.data[4], storage=v.data[5]})
                spawn_wagon(v.data[1])
                Citizen.Wait(100)
                if Config.InteractibleCamera then
                    ClearFocus()
                    if cam == nil then
                        local playerCoords = GetEntityCoords(previewPed)
                        local newPos = ProcessNewPosition()
                        cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", newPos.x, newPos.y, newPos.z, 0.0, 0.0, 100.0, fov)
                        PointCamAtCoord(cam, playerCoords.x, playerCoords.y, playerCoords.z + 0.5)
                        SetCamActiveWithInterp(cam, camera, 300, 0, 0)
                        RenderScriptCams(true, true, 300, true, true)
                    end
                    Citizen.Wait(300)
                    ProcessCamControls()
                end
                in_action = false
                break
            end
        end
    end
end)


RegisterNUICallback('right_cart', function(data, cb)
    active_camera = false
    if in_action == false then
        in_action = true
        local category = ""
        local shopTable = {}
        for a,b in pairs(filtered_carts) do
            if b.category == data.category then
                table.insert(shopTable, b)
            end
        end
  
        for k,v in pairs(shopTable) do
            if v.data[2] == data.cart then
                new_cart = next(shopTable, k)
                if next(shopTable, k) == nil then
                    new_cart = 1
                end
            end
        end

        for k,v in pairs(shopTable) do
            if k == new_cart then
                SendNUIMessage({type = "change_cart", cart=v.data[2], category=v.category, money=v.data[3], gold=v.data[4], storage=v.data[5]})
                spawn_wagon(v.data[1])
                Citizen.Wait(100)
                if Config.InteractibleCamera then
                    ClearFocus()
                    if cam == nil then
                        local playerCoords = GetEntityCoords(previewPed)
                        local newPos = ProcessNewPosition()
                        cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", newPos.x, newPos.y, newPos.z, 0.0, 0.0, 100.0, fov)
                        PointCamAtCoord(cam, playerCoords.x, playerCoords.y, playerCoords.z + 0.5)
                        SetCamActiveWithInterp(cam, camera, 300, 0, 0)
                        RenderScriptCams(true, true, 300, true, true)
                    end
                    Citizen.Wait(300)
                    ProcessCamControls()
                end
                in_action = false
                break
            end
        end
    end
end)

RegisterNUICallback('shwo_prepare_breed', function(data, cb)
    if horse_preview_2 ~= nil then
        delete_obj(horse_preview_2, true)
    end
    local id = tonumber(data.id)
    local model = ""
    local name = ""
    for k,v in pairs(horse_table) do
        if v.id == id then
            model = v.model
            name = v.name
        end
    end
    if horse_breed_slots[1] == nil then
        show_horse_breed_first(model, name, false)
    elseif horse_breed_slots[2] == nil then
        show_horse_breed_second(model, name, false)
    end
end)
RegisterNUICallback('clear_breed', function(data, cb)
    horse_breed_slots[1] = nil
    horse_breed_slots[2] = nil
end)

RegisterNUICallback('add_to_breed', function(data, cb)
    if Config.Only_Breeder_Can_Breed == true then
        local job_access = false
        for k,v in pairs(Config.JobSetB) do
            if GetJob == v then
                job_access = true
            end
        end
        if job_access == false then
            if Config.Gum_Notify_Old then
                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, ""..Config.Language[2622].text.."", Config.FirstName, Config.SecondName, Config.Language[2622].time)
            end
            if Config.Gum_Notify_NUI then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[2622].text.."", Config.Image, Config.Language[2622].time)
            end
            return false
        end
        for a,b in pairs(Config.BlockBreedHorse) do
            for k,v in pairs(horse_table) do
                if v.id == tonumber(data.id) then
                    if GetHashKey(v.model) == a then
                        return false
                    end
                end
            end
        end
        local id = tonumber(data.id)
        local model = ""
        if horse_breed_slots[1] == nil then
            needItem = false
            TriggerEvent("guminputs:getAnswer", ""..Config.Language[334].text.."", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
                local answer6 = cb
                if answer6 == true then
                    for k,v in pairs(horse_table) do
                        if v.id == id then
                            horse_breed_slots[1] = {id=v.id, model=v.model, name=v.name, sex=v.sex}
                            show_horse_breed_first(v.model, v.name)
                            for k2,v2 in pairs(Config.Horses) do
                                for x,y in pairs(v2) do 
                                    if y[1] ~= nil then
                                        if x == v.model then
                                            price_first_breed = y[2]
                                        end
                                    end
                                end
                            end
                        end
                    end
                    if Config.FixBrainerItem then
                        if Config.Language[1640].text == data.breeding then
                            needItem = true
                        end
                    end
                else
                    return false
                end
            end)
        elseif horse_breed_slots[2] == nil then
            TriggerEvent("guminputs:getAnswer", ""..Config.Language[334].text.."", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
                local answer5 = cb
                if answer5 == false then
                    return false
                else
                    if Config.FixBrainerItem then
                        if Config.Language[1640].text == data.breeding then
                            needItem = true
                        end
                    end
                    for k,v in pairs(horse_table) do
                        if v.id == id then
                            horse_breed_slots[2] = {id=v.id, model=v.model, name=v.name, sex=v.sex}
                            show_horse_breed_second(v.model, v.name)
                            if Config.PayForBreed then
                                for k2,v2 in pairs(Config.Horses) do
                                    for x,y in pairs(v2) do 
                                        if y[1] ~= nil then
                                            if x == v.model then
                                                price_second_breed = y[2]
                                            end
                                        end
                                    end
                                end
                                if Config.BreedPriceEnable then
                                    if price_first_breed >= price_second_breed then
                                        range = price_first_breed-price_second_breed
                                        if tonumber(range) >= Config.BreedPriceDistance then
                                            if Config.Gum_Notify_Old then
                                                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, ""..Config.Language[388].text.."", Config.FirstName, Config.SecondName, Config.Language[388].time)
                                            end
                                            if Config.Gum_Notify_NUI then
                                                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[388].text.."", Config.Image, Config.Language[388].time)
                                            end
                                            return false
                                        end
                                    else
                                        range = price_second_breed-price_first_breed
                                        if range >= Config.BreedPriceDistance then
                                            if Config.Gum_Notify_Old then
                                                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, ""..Config.Language[388].text.."", Config.FirstName, Config.SecondName, Config.Language[388].time)
                                            end
                                            if Config.Gum_Notify_NUI then
                                                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[388].text.."", Config.Image, Config.Language[388].time)
                                            end
                                            return false
                                        end
                                    end
                                end
                                TriggerEvent("guminputs:getAnswer", ""..Config.Language[257].text.." "..(((price_first_breed+price_second_breed)/2)/100*Config.BreedPricePercent)..""..Config.Language[258].text.."", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
                                    local answer2 = cb
                                    if answer2 == true then
                                        if horse_breed_slots[1].sex == horse_breed_slots[2].sex then
                                            CloseMenuData()
                                            if Config.Gum_Notify_Old then
                                                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, ""..Config.Language[171].text.."", Config.FirstName, Config.SecondName, Config.Language[171].time)
                                            end
                                            if Config.Gum_Notify_NUI then
                                                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[171].text.."", Config.Image, Config.Language[171].time)
                                            end
                                            return false
                                        else
                                            TriggerServerEvent("gum_stables:horse_start_breed", horse_breed_slots[1].model, horse_breed_slots[1].id, horse_breed_slots[1].name, horse_breed_slots[2].model, horse_breed_slots[2].id, horse_breed_slots[2].name, (((price_first_breed+price_second_breed)/2)/100*Config.BreedPricePercent))
                                            CloseMenuData()
                                        end
                                    else
                                        return false
                                    end
                                end)
                            else
                                if Config.BreedPriceEnable then
                                    if price_first_breed >= price_second_breed then
                                        range = price_first_breed-price_second_breed
                                        if tonumber(range) >= Config.BreedPriceDistance then
                                            if Config.Gum_Notify_Old then
                                                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, ""..Config.Language[388].text.."", Config.FirstName, Config.SecondName, Config.Language[388].time)
                                            end
                                            if Config.Gum_Notify_NUI then
                                                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[388].text.."", Config.Image, Config.Language[388].time)
                                            end
                                            return false
                                        end
                                    else
                                        range = price_second_breed-price_first_breed
                                        if range >= Config.BreedPriceDistance then
                                            if Config.Gum_Notify_Old then
                                                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, ""..Config.Language[388].text.."", Config.FirstName, Config.SecondName, Config.Language[388].time)
                                            end
                                            if Config.Gum_Notify_NUI then
                                                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[388].text.."", Config.Image, Config.Language[388].time)
                                            end
                                            return false
                                        end
                                    end
                                end
                                TriggerEvent("guminputs:getAnswer", ""..Config.Language[365].text.."", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
                                    local answer3 = cb
                                    if answer3 == true then
                                        if horse_breed_slots[1].sex == horse_breed_slots[2].sex then
                                            CloseMenuData()
                                            if Config.Gum_Notify_Old then
                                                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, ""..Config.Language[171].text.."", Config.FirstName, Config.SecondName, Config.Language[171].time)
                                            end
                                            if Config.Gum_Notify_NUI then
                                                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[171].text.."", Config.Image, Config.Language[171].time)
                                            end
                                            return false
                                        else
                                            TriggerServerEvent("gum_stables:horse_start_breed", horse_breed_slots[1].model, horse_breed_slots[1].id, horse_breed_slots[1].name, horse_breed_slots[2].model, horse_breed_slots[2].id, horse_breed_slots[2].name, 1)
                                            CloseMenuData()
                                        end
                                    else
                                        return false
                                    end
                                end)
                            end
                        end
                    end
                end
            end)
        end
    else
        local id = tonumber(data.id)
        local model = ""
        for a,b in pairs(Config.BlockBreedHorse) do
            for k,v in pairs(horse_table) do
                if v.id == tonumber(data.id) then
                    if GetHashKey(v.model) == a then
                        return false
                    end
                end
            end
        end
        if horse_breed_slots[1] == nil then
            needItem = false
            TriggerEvent("guminputs:getAnswer", ""..Config.Language[334].text.."", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
                local answer6 = cb
                if answer6 == true then
                    for k,v in pairs(horse_table) do
                        if v.id == id then
                            horse_breed_slots[1] = {id=v.id, model=v.model, name=v.name, sex=v.sex}
                            show_horse_breed_first(v.model, v.name)
                            for k2,v2 in pairs(Config.Horses) do
                                for x,y in pairs(v2) do 
                                    if y[1] ~= nil then
                                        if x == v.model then
                                            price_first_breed = y[2]
                                        end
                                    end
                                end
                            end
                        end
                    end
                    if Config.FixBrainerItem then
                        if Config.Language[1640].text == data.breeding then
                            needItem = true
                        end
                    end
                else
                    return false
                end
            end)
        elseif horse_breed_slots[2] == nil then
            TriggerEvent("guminputs:getAnswer", ""..Config.Language[334].text.."", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
                local answer5 = cb
                if answer5 == false then
                    return false
                else
                    if Config.FixBrainerItem then
                        if Config.Language[1640].text == data.breeding then
                            needItem = true
                        end
                    end
                    for k,v in pairs(horse_table) do
                        if v.id == id then
                            horse_breed_slots[2] = {id=v.id, model=v.model, name=v.name, sex=v.sex}
                            show_horse_breed_second(v.model, v.name)
                            if Config.PayForBreed then
                                for k2,v2 in pairs(Config.Horses) do
                                    for x,y in pairs(v2) do 
                                        if y[1] ~= nil then
                                            if x == v.model then
                                                price_second_breed = y[2]
                                            end
                                        end
                                    end
                                end
                                TriggerEvent("guminputs:getAnswer", ""..Config.Language[257].text.." "..(((price_first_breed+price_second_breed)/2)/100*Config.BreedPricePercent)..""..Config.Language[258].text.."", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
                                    local answer2 = cb
                                    if answer2 == true then
                                        if horse_breed_slots[1].sex == horse_breed_slots[2].sex then
                                            CloseMenuData()
                                            if Config.Gum_Notify_Old then
                                                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, ""..Config.Language[171].text.."", Config.FirstName, Config.SecondName, Config.Language[171].time)
                                            end
                                            if Config.Gum_Notify_NUI then
                                                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[171].text.."", Config.Image, Config.Language[171].time)
                                            end
                                            return false
                                        else
                                            TriggerServerEvent("gum_stables:horse_start_breed", horse_breed_slots[1].model, horse_breed_slots[1].id, horse_breed_slots[1].name, horse_breed_slots[2].model, horse_breed_slots[2].id, horse_breed_slots[2].name, (((price_first_breed+price_second_breed)/2)/100*Config.BreedPricePercent), needItem)
                                            CloseMenuData()
                                        end
                                    else
                                        return false
                                    end
                                end)
                            else
                                TriggerEvent("guminputs:getAnswer", ""..Config.Language[365].text.."", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
                                    local answer3 = cb
                                    if answer3 == true then
                                        if horse_breed_slots[1].sex == horse_breed_slots[2].sex then
                                            CloseMenuData()
                                            if Config.Gum_Notify_Old then
                                                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, ""..Config.Language[171].text.."", Config.FirstName, Config.SecondName, Config.Language[171].time)
                                            end
                                            if Config.Gum_Notify_NUI then
                                                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[171].text.."", Config.Image, Config.Language[171].time)
                                            end
                                            return false
                                        else
                                            TriggerServerEvent("gum_stables:horse_start_breed", horse_breed_slots[1].model, horse_breed_slots[1].id, horse_breed_slots[1].name, horse_breed_slots[2].model, horse_breed_slots[2].id, horse_breed_slots[2].name, 1, needItem)
                                            CloseMenuData()
                                        end
                                    else
                                        return false
                                    end
                                end)
                            end
                        end
                    end
                end
            end)
        end
    end
end)

RegisterNUICallback('openStorage', function(data, cb)
    SetNuiFocus(false, false)
    local itsWagon = data.cart
    if itsWagon == "true" then
        TriggerServerEvent("gum_stables:LoadInventory", "wagon_"..tonumber(data.id), max_capacity)
    else
        TriggerServerEvent("gum_stables:LoadInventory", "horse_"..tonumber(data.id), max_capacity)
    end
    SendNUIMessage({type = "clearManage"})
end)

RegisterNetEvent('gum_stables:wearClothe')
AddEventHandler('gum_stables:wearClothe', function(comps)
    FreezeEntityPosition(PlayerPedId(), true)
    wearClotheAnimation('mech_loco_m@character@arthur@fidgets@hat@normal@unarmed@normal@left_hand', 'hat_lhand_a', 2000, 25)
    Citizen.Wait(2000)
    wearClotheAnimation('mech_loco_m@character@arthur@fancy@unarmed@idle@_variations', 'idle_b', 5000, 25)
    Citizen.Wait(5000)
    wearClotheAnimation('script_re@burning_bodies', 'push_two_bodies_undertaker', 3000, 25)
    Citizen.Wait(3000)
    wearClotheAnimation('mech_loco_m@character@arthur@fidgets@insects@crouch@unarmed@idle', 'idle', 2000, 1)
    Citizen.Wait(2000)
    FreezeEntityPosition(PlayerPedId(), false)
    ExecuteCommand("rc")
end)

function wearClotheAnimation(dict, name, time, flag)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(100)
    end
    TaskPlayAnim(PlayerPedId(), dict, name, 1.0, 1.0, time, flag, 0, true, 0, false, 0, false)  
end

RegisterNUICallback('manageAccess', function(data, cb)
    TriggerEvent("guminputs:getAnswer", ""..Config.Language[390].text.."", ""..Config.Language[391].text.."", ""..Config.Language[392].text.."", function(cb)
        local answer = cb
        if answer == true then
            TriggerEvent("guminputs:getInput", ""..Config.Language[53].text.."", ""..Config.Language[276].text.."", function(cb)
                local access_idd = tonumber(cb)
                if access_idd ~= 0 and access_idd ~= 'close' and access_idd ~= nil then
                    if data.cart == "true" then
                        TriggerServerEvent("gum_stables:update_access", NetworkGetNetworkIdFromEntity(entity2), access_idd, 0)
                    else
                        TriggerServerEvent("gum_stables:update_access", NetworkGetNetworkIdFromEntity(horseentity), access_idd, 0)
                    end
                end
            end)                
        else
            TriggerEvent("guminputs:getInput", ""..Config.Language[53].text.."", ""..Config.Language[276].text.."", function(cb)
                local access_idd = tonumber(cb)
                if access_idd ~= 0 and access_idd ~= 'close' and access_idd ~= nil then
                    if data.cart == "true" then
                        TriggerServerEvent("gum_stables:update_access", NetworkGetNetworkIdFromEntity(entity2), access_idd, 1)
                    else
                        TriggerServerEvent("gum_stables:update_access", NetworkGetNetworkIdFromEntity(horseentity), access_idd, 1)
                    end
                end
            end)
        end
    end)
end)

RegisterNUICallback('manageClothe', function(data, cb)
    TriggerEvent("guminputs:getAnswer", ""..Config.Language[393].text.."", ""..Config.Language[394].text.."", ""..Config.Language[395].text.."", function(cb)
        local answer = cb
        if answer == true then
            TriggerEvent("guminputs:getAnswer", ""..Config.Language[396].text.."", ""..Config.Language[397].text.."", ""..Config.Language[398].text.."", function(cb)
                local answer = cb
                if answer == true then
                    TriggerServerEvent("gum_stables:useClothe", data.id, 1)
                else
                    TriggerEvent("guminputs:getInput", ""..Config.Language[398].text.."", ""..Config.Language[399].text.."", function(cb)
                        local clotheId = tonumber(cb)
                        if clotheId ~= 0 and clotheId ~= 'close' and clotheId ~= nil then
                            TriggerServerEvent("gum_stables:changeClothe", data.id, 1, clotheId)
                        end
                    end)
                end
            end)
        else
            TriggerEvent("guminputs:getAnswer", ""..Config.Language[396].text.."", ""..Config.Language[397].text.."", ""..Config.Language[398].text.."", function(cb)
                local answer = cb
                if answer == true then
                    TriggerServerEvent("gum_stables:useClothe", data.id, 2)
                else
                    TriggerEvent("guminputs:getInput", ""..Config.Language[398].text.."", ""..Config.Language[399].text.."", function(cb)
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
    local old_horse = 0
    for k,v in pairs(filtered_horses) do
        if v.data[2] == data.horse and v.category == data.category then
            category = v.category
            horse = k
        end
    end
    for k,v in pairs(filtered_horses) do
        if category == v.category then
            if horse == k then
                old_horse = k
            end
        end
    end
    local is_in_table = false
    for k,v in pairs(filtered_horses) do
        if category == v.category then
            if k == old_horse then
                is_in_table = true
                SendNUIMessage({type = "change_horse", horse=v.data[2], category=category, money=v.data[4], gold=v.data[5],storage=v.data[6]})
                if GetEntityModel(horse_preview) ~= GetHashKey(v.data[1]) then
                    show_horse(v.data[1], v.data[3])
                end
                Citizen.Wait(500)
                in_action = false
            end
        end
    end
end)

RegisterNUICallback('right_horse', function(data, cb)
    active_camera = false
    if in_action == false then
        in_action = true
        local new_horse = 0
        local shopTable = {}
        for k,v in pairs(filtered_horses) do
            if v.category == data.category then
                table.insert(shopTable, v)
            end
        end
        for k,v in pairs(shopTable) do
            if v.data[2] == data.horse then
                new_horse = next(shopTable, k)
                if next(shopTable, k) == nil then
                    new_horse = 1
                end
            end
        end
        for k,v in pairs(shopTable) do
            if k == new_horse then
                SendNUIMessage({type = "change_horse", horse=v.data[2], category=v.category, money=v.data[4], gold=v.data[5],storage=v.data[6]})
                show_horse(v.data[1], v.data[3])
                Citizen.Wait(100)
                if Config.InteractibleCamera then
                    ClearFocus()
                    if cam == nil then
                        local playerCoords = GetEntityCoords(previewPed)
                        local newPos = ProcessNewPosition()
                        cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", newPos.x, newPos.y, newPos.z, 0.0, 0.0, 100.0, fov)
                        PointCamAtCoord(cam, playerCoords.x, playerCoords.y, playerCoords.z + 0.5)
                        SetCamActiveWithInterp(cam, camera, 300, 0, 0)
                        RenderScriptCams(true, true, 300, true, true)
                    end
                    Citizen.Wait(300)
                    ProcessCamControls()
                end
                in_action = false
            end
        end
    end
end)

RegisterNUICallback('left_horse', function(data, cb)
    active_camera = false
    if in_action == false then
        in_action = true
        local new_horse = 0
        local shopTable = {}
        for k,v in pairs(filtered_horses) do
            if v.category == data.category then
                table.insert(shopTable, v)
            end
        end
        for k,v in pairs(shopTable) do
            if v.data[2] == data.horse then
                new_horse = k-1
                if new_horse == 0 then
                    new_horse = #shopTable
                end
            end
        end
        for k,v in pairs(shopTable) do
            if k == new_horse then
                SendNUIMessage({type = "change_horse", horse=v.data[2], category=v.category, money=v.data[4], gold=v.data[5],storage=v.data[6]})
                show_horse(v.data[1], v.data[3])
                Citizen.Wait(100)
                if Config.InteractibleCamera then
                    ClearFocus()
                    if cam == nil then
                        local playerCoords = GetEntityCoords(previewPed)
                        local newPos = ProcessNewPosition()
                        cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", newPos.x, newPos.y, newPos.z, 0.0, 0.0, 100.0, fov)
                        PointCamAtCoord(cam, playerCoords.x, playerCoords.y, playerCoords.z + 0.5)
                        SetCamActiveWithInterp(cam, camera, 300, 0, 0)
                        RenderScriptCams(true, true, 300, true, true)
                    end
                    Citizen.Wait(300)
                    ProcessCamControls()
                end
                in_action = false
            end
        end
    end
end)

exports('getStables', function()
    return Config.CityStablesHorse, Config.CityStablesWagon, allmyhorses, allmywagons
end)


RegisterNetEvent("gum_stables:check_all_horses")
AddEventHandler("gum_stables:check_all_horses", function()
    TriggerServerEvent("gum_stables:check_all_info")
end)

RegisterNetEvent("gum_stables:send_items")
AddEventHandler("gum_stables:send_items", function(it_tbl,wp_tbl,rcd_tbl,rcdw_tbl)
	item_table = it_tbl
	weapon_table = wp_tbl
	RECORDS = rcd_tbl
	RECORDSW = rcdw_tbl
end)


function drawTxt(text, x, y, fontscale, fontsize, r, g, b, alpha, textcentred, shadow) -- Text function
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

RegisterNetEvent('gum_stables:send_horses_data')
AddEventHandler('gum_stables:send_horses_data', function(table_hs, job)
	horse_table = table_hs
    allowedJob = false
    if Config.jobAccess then
        for k,v in pairs(Config.jobAccessInventory) do
            if GetJob == k then
                allowedJob = true
            end
        end
    end
    for k,v in pairs(Config.JobSet) do
        if GetJob == v then
            is_trainer = true
        end
    end
    for k,v in pairs(Config.JobSetB) do
        if GetJob == v then
            is_breeder = true
        end
    end
    
    if Config.CallFromStableHorse or Config.SpotForTake then
    else
        for k,v in pairs(horse_table) do
            count_horse = k
        end
    end
    if Config.JobForTamming then
        if is_trainer then
            for k,v in pairs(Config.SellGetWildHorse) do
                if v["Blip_Enable"] then
                    if blipsSellSpot[k] == nil then
                        blipsSellSpot[k] = N_0x554d9d53f696d002(1664425300, v["WildCoords"][1], v["WildCoords"][2], v["WildCoords"][3])
                        SetBlipSprite(blipsSellSpot[k], -44909892, 1)
                        SetBlipScale(blipsSellSpot[k], 1.5)
                        Citizen.InvokeNative(0x9CB1A1623062F402, blipsSellSpot[k], ""..Config.Language[90].text.."")
                    end
                end
            end
        else
            for k,v in pairs(Config.SellGetWildHorse) do
                if v["Blip_Enable"] then
                    RemoveBlip(blipsSellSpot[k])
                end
            end
        end
    end
end)


RegisterNetEvent('gum_stables:send_horses_data_nw')
AddEventHandler('gum_stables:send_horses_data_nw', function(table_horse, table_comp, table_wagon, table_breed, job, identifier, createAfterLogin)
	horse_table = table_horse
    GetJob = job
    steamId = identifier
    allowedJob = false

    if Config.jobAccess then
        for k,v in pairs(Config.jobAccessInventory) do
            if GetJob == k then
                allowedJob = true
            end
        end
    end
    for k,v in pairs(Config.JobSet) do
        if GetJob == v then
            is_trainer = true
        end
    end
    for k,v in pairs(Config.JobSetB) do
        if GetJob == v then
            is_breeder = true
        end
    end
    for k,v in pairs(horse_table) do
        count_horse = k
    end
    WagonTable = table_wagon
    for k,v in pairs(WagonTable) do
        count_wagon = k
    end
    breeding_table = table_breed
    allmyhorses = {}
    allmywagons = {}
    for a,b in pairs(horse_table) do
        table.insert(allmyhorses, b)
    end
    for a,b in pairs(WagonTable) do
        table.insert(allmywagons, b)
    end
    for a,b in pairs(createAfterLogin) do
        if b[5] == true then
            if Config.RespawnAfterLoginHorse then
                for c,d in pairs(allmyhorses) do
                    if tonumber(d.id) == tonumber(a) then
                        if b[1] ~= nil and b[1] ~= 0.0 and b[1] ~= 0 and b[1] ~= "0.0" then
                            initiateHorse(d.model, d.id, b[1], b[2], b[3], b[4], true)
                        end
                    end
                end
            end
        else
            if Config.RespawnAfterLoginCart then
                for c,d in pairs(allmywagons) do
                    if tonumber(d.id) == tonumber(a) then
                        if b[1] ~= nil and b[1] ~= 0.0 and b[1] ~= 0 and b[1] ~= "0.0" then
                            initiateWagon(d.model, d.id, b[1], b[2], b[3], b[4], true)
                        end
                    end
                end
            end
        end
    end
end)

RegisterNetEvent('gum_stables:send_comp_data')
AddEventHandler('gum_stables:send_comp_data', function(table_cp)
    horse_table_comp = {}
	horse_table_comp = table_cp
end)

RegisterNetEvent('gum_stables:check_ability')
AddEventHandler('gum_stables:check_ability', function(id_info)
	addon_ability = id_info
    for k,v in pairs(WagonTable) do
        if v["selected"] == 1 then
            if v["model"] == "logwagon" then
                if addon_ability >= 1 then
                    Citizen.InvokeNative(0x75F90E4051CC084C, entity2, 0)
                    Citizen.Wait(5)
                    Citizen.InvokeNative(0x75F90E4051CC084C, entity2, GetHashKey("pg_veh_logwagon_1"))
                    Citizen.InvokeNative(0x31F343383F19C987, entity2, 1.0, 1)
                else
                    Citizen.InvokeNative(0x75F90E4051CC084C, entity2, 0)
                end
            end
            if v["model"] == "coal_wagon" then
                if addon_ability >= 1 then
                    Citizen.InvokeNative(0x75F90E4051CC084C, entity2, 0)
                    Citizen.Wait(5)
                    Citizen.InvokeNative(0x75F90E4051CC084C, entity2, GetHashKey("pg_delivery_Coal01x"))
                    Citizen.InvokeNative(0x31F343383F19C987, entity2, 1.0, 1)
                else
                    Citizen.InvokeNative(0x75F90E4051CC084C, entity2, 0)
                end
            end
        end
    end
end)

RegisterNetEvent('gum_stables:send_horse_breed_list')
AddEventHandler('gum_stables:send_horse_breed_list', function(tablesss)
	breeding_table = tablesss
end)

function Components_Manipulation()
    Citizen.Wait(500)
    SetNuiFocus(true, true)
    SendNUIMessage({type = "openComponents", components=horse_table_comp})
end

RegisterNUICallback('manicomponents', function(data, cb)
    if (data.comp == "Mask")  then
        if not Citizen.InvokeNative(0xFB4891BD7578CDC1, horseentity, GetHashKey("horse_accessories")) then
            gear_cloth(k, data.hash)
        else
            ungear_cloth(k, 0xD3500E5D)
        end
    elseif (data.comp == "acshorn")  then
        if not Citizen.InvokeNative(0xFB4891BD7578CDC1, horseentity, GetHashKey("saddle_horns")) then
            gear_cloth(k, data.hash)
        else
            ungear_cloth(k, 0x05447332)
        end
    elseif (data.comp == "saddles")  then
        if not Citizen.InvokeNative(0xFB4891BD7578CDC1, horseentity, GetHashKey("horse_saddles")) then
            gear_cloth(k, data.hash)
        else
            ungear_cloth(k, 0xBAA7E618)
        end
    elseif (data.comp == "acshorn")  then
        if not Citizen.InvokeNative(0xFB4891BD7578CDC1, horseentity, GetHashKey("saddle_horns")) then
            gear_cloth(k, data.hash)
        else
            ungear_cloth(k, 0x05447332)
        end
    elseif (data.comp == "stirrups")  then
        if not Citizen.InvokeNative(0xFB4891BD7578CDC1, horseentity, GetHashKey("saddle_stirrups")) then
            gear_cloth(k, data.hash)
        else
            ungear_cloth(k, 0xDA6DADCA)
        end
    elseif (data.comp == "bags")  then
        if not Citizen.InvokeNative(0xFB4891BD7578CDC1, horseentity, GetHashKey("HORSE_SADDLEBAGS")) then
            gear_cloth(k, data.hash)
        else
            ungear_cloth(k, 0x80451C25)
        end
    elseif (data.comp == "saddlecloths")  then
        if not Citizen.InvokeNative(0xFB4891BD7578CDC1, horseentity, GetHashKey("horse_blankets")) then
            gear_cloth(k, data.hash)
        else
            ungear_cloth(k, 0x17CEB41A)
        end
    elseif (data.comp == "lantern")  then
        if not Citizen.InvokeNative(0xFB4891BD7578CDC1, horseentity, GetHashKey("saddle_lanterns")) then
            gear_cloth(k, data.hash)
        else
            ungear_cloth(k, 0x1530BE1C)
        end
    elseif (data.comp == "acsluggage")  then
        if not Citizen.InvokeNative(0xFB4891BD7578CDC1, horseentity, GetHashKey("horse_bedrolls")) then
            gear_cloth(k, data.hash)
        else
            ungear_cloth(k, 0xEFB31921)
        end
    elseif (data.comp == "bridle")  then
        if not Citizen.InvokeNative(0xFB4891BD7578CDC1, horseentity, GetHashKey("horse_bridles")) then
            gear_cloth(k, data.hash)
        else
            ungear_cloth(k, 0x94B2E3AF)
        end
    elseif (data.comp == "holster") then
        if not Citizen.InvokeNative(0xFB4891BD7578CDC1, horseentity, GetHashKey("horse_holsters")) then
            gear_cloth(k, data.hash)
        else
            ungear_cloth(k, 0xAC106B30)
        end
    end
end)

function gear_cloth(what, hash)
    local readyLoad = false
    local model2 = GetHashKey(tonumber(hash))
    if not HasModelLoaded(model2) then
        Citizen.InvokeNative(0xFA28FE3A6246FC30, model2)
    end
    while readyLoad == false do
        readyLoad = Citizen.InvokeNative(0xA0BC8FAED8CFEB3C, horseentity)
        if not DoesEntityExist(horse_preview) then
            break
        end
        Wait(0)
    end
    Citizen.InvokeNative(0xD3A7B003ED343FD9, horseentity, tonumber(hash), true, true, true)
end

function ungear_cloth(what, hash)
    Citizen.InvokeNative(0xD710A5007C2AC539, horseentity, tonumber(hash), 0)
    Citizen.InvokeNative(0xCC8CA3E88256E58F, horseentity, 0, 1, 1, 1, 0) -- Actually remove the component
end

function setcloth(hash, gearded)
    local readyLoad = false
    if gearded then
        local model2 = tonumber(hash)
        Citizen.InvokeNative(0xFA28FE3A6246FC30, model2)
        if not HasModelLoaded(model2) then
            Citizen.Wait(0)
        end
        while readyLoad == false do
            readyLoad = Citizen.InvokeNative(0xA0BC8FAED8CFEB3C, horse_preview)
            if not DoesEntityExist(horse_preview) then
                break
            end
            Wait(0)
        end
        Citizen.InvokeNative(0xD3A7B003ED343FD9, horse_preview, tonumber(hash), true, true, true)
    else
        Citizen.InvokeNative(0xD710A5007C2AC539, horse_preview, tonumber(hash), 0)
        Citizen.InvokeNative(0xCC8CA3E88256E58F, horse_preview, 0, 1, 1, 1, 0) -- Actually remove the component
    end
end


function setclothcalled(ped, hash_for_load)
    local readyLoad = false

    local model2 = GetHashKey(tonumber(v))
    if not HasModelLoaded(model2) then
        Citizen.InvokeNative(0xFA28FE3A6246FC30, model2)
    end

    Citizen.InvokeNative(0xD3A7B003ED343FD9, ped, hash_for_load, true, true, true)
    while readyLoad == false do
        readyLoad = Citizen.InvokeNative(0xA0BC8FAED8CFEB3C, ped)
        if not DoesEntityExist(ped) then
            break
        end
        Wait(0)
    end
    Citizen.InvokeNative(0x704C908E9C405136, ped)
    Citizen.InvokeNative(0xCC8CA3E88256E58F, ped, 0, 1, 1, 1, 0)
    return true
end

function show_my_horse(model,sex, ct, id, age, compos, isdead, state, breed, updateProps)
    if ct == 1 then
        delete_obj(horse_preview, true)
        while DoesEntityExist(horse_preview) do
            Wait(0)
        end
        preview_type = model
        preview_id = id
        Citizen.CreateThread(function()
            local npc_spawn_id = model
            while not HasModelLoaded(GetHashKey(npc_spawn_id)) do
                Wait(0)
                modelrequest( GetHashKey(npc_spawn_id) )
            end
            for k,v in pairs(Config.SpotsForStable) do
                if k == where_open_stable then
                    horse_preview = CreatePed(GetHashKey(npc_spawn_id), v["1SpawnHorse"][1], v["1SpawnHorse"][2], v["1SpawnHorse"][3], heading, false, false, 0, 0)
                end
            end
            while not DoesEntityExist(horse_preview) do
                Wait(0)
            end
            Citizen.InvokeNative(0x283978A15512B2FE, horse_preview, true)
            previewPed = horse_preview
            SetPedAsGroupMember(horse_preview, GetPedGroupIndex(PlayerPedId()))
            FreezeEntityPosition(horse_preview, true)
            TaskStandStill(horse_preview, -1)
            SetEntityAsMissionEntity(horse_preview, true, true)
            SetModelAsNoLongerNeeded(GetHashKey(npc_spawn_id))
            if age ~= Config.Language[417].text then
                if 1 >= tonumber(age) then
                    SetPedScale(horse_preview, 0.600)
                elseif 2 >= tonumber(age) then
                    SetPedScale(horse_preview, 0.650)
                elseif 3 >= tonumber(age) then
                    SetPedScale(horse_preview, 0.700)
                elseif 4 >= tonumber(age) then
                    SetPedScale(horse_preview, 0.800)
                elseif 5 >= tonumber(age) then
                    SetPedScale(horse_preview, 0.900)
                end
            end

            if tostring(sex) == ""..Config.Language[68].text.."" then
                Citizen.InvokeNative(0x5653AB26C82938CF, horse_preview, 41611, 1.0)
                UpdatePedVariation(horse_preview)
            else
                Citizen.InvokeNative(0x5653AB26C82938CF, horse_preview, 41611, 0.0)
                UpdatePedVariation(horse_preview)
            end
            Citizen.Wait(0)
            if tostring(sex) == ""..Config.Language[68].text.."" then
                if breed == ""..Config.Language[216].text.."" then
                    Citizen.InvokeNative(0x1902C4CFCC5BE57C, horse_preview, tonumber(0xEB76D635))
                    Citizen.InvokeNative(0xCC8CA3E88256E58F, horse_preview, false, true, true, true, false)
                end
            end
            local ag_update = 0
            local sp_update = 0
            local ac_update = 0
            for k,v in pairs(horse_table) do
                if v["id"] == id then
                    local state_table = json.decode(v.state)
                    for k,v in pairs(state_table) do
                        ag_update = v.agility
                        sp_update = v.speed
                        ac_update = v.acceleration
                    end
                end
            end
            if isdead ~= nil then
                if tonumber(isdead) >= 1 then
                    SetEntityHealth(horse_preview, 0)
                end
            end
            SetAttributePoints(horse_preview, 7, 0)
            image_agility = GetAttributeBaseRank(horse_preview, 4)
            image_speed = GetAttributeBaseRank(horse_preview, 5)
            image_acceleration = GetAttributeBaseRank(horse_preview, 6)
            SendNUIMessage({type = "send_default_state", agi=image_agility, acc=image_acceleration, sp=image_speed})
            image_agility = image_agility+ag_update
            image_speed = image_speed+sp_update
            image_acceleration = image_acceleration+ac_update
            if state ~= nil then
                SendNUIMessage({type = "change_state", agi=image_agility, acc=image_acceleration, sp=image_speed})
            end
            Citizen.Wait(100)
            for k,v in pairs(horse_table) do
                if v["id"] == id then
                    for k2,v2 in pairs(json.decode(v["components"])) do
                        setclothcalled(horse_preview, v2)
                    end
                end
            end
            for k,v in pairs(horse_table) do
                if v["id"] == id then
                    for k2,v2 in pairs(json.decode(v["components"])) do
                        if k2 == "bridle" then
                            setclothcalled(horse_preview, v2)
                        end
                    end
                end
            end
            ClearPedEnvDirt(horse_preview)
            ClearPedDamageDecalByZone(horse_preview ,10 ,"ALL")
            ClearPedBloodDamage(horse_preview)
            Citizen.Wait(100)
            if updateProps == nil then
                for k,v in pairs(horse_table) do
                    if v["id"] == id then
                        for k2,v2 in pairs(json.decode(v["components"])) do
                            if k2 == 'propsData' then
                                Citizen.InvokeNative(0x1902C4CFCC5BE57C,horse_preview, tonumber(propsData[tonumber(v2)])) 
                                Citizen.InvokeNative(0xCC8CA3E88256E58F,horse_preview, false, true, true, true, false)
                            end
                        end
                    end
                end
            end
        end)
    else
        delete_obj(horse_preview, true)
        while DoesEntityExist(horse_preview) do
            Wait(0)
        end
        preview_type = model
        Citizen.CreateThread(function()
            local npc_spawn_id = model
            while not HasModelLoaded(GetHashKey(npc_spawn_id)) do
                Wait(0)
                modelrequest( GetHashKey(npc_spawn_id) )
            end
            for k,v in pairs(Config.SpotsForStable) do
                if k == where_open_stable then
                    horse_preview = CreatePed(GetHashKey(npc_spawn_id), v["1SpawnHorse"][1], v["1SpawnHorse"][2], v["1SpawnHorse"][3], heading, false, false, 0, 0)
                end
            end
            while not DoesEntityExist(horse_preview) do
                Wait(0)
            end
            Citizen.InvokeNative(0x283978A15512B2FE, horse_preview, true)
            SetPedAsGroupMember(horse_preview, GetPedGroupIndex(PlayerPedId()))
            FreezeEntityPosition(horse_preview, true)
            TaskStandStill(horse_preview, -1)
            SetEntityAsMissionEntity(horse_preview, true, true)
            SetModelAsNoLongerNeeded(GetHashKey(npc_spawn_id))
            previewPed = horse_preview
            if age ~= Config.Language[417].text then
                if 1 >= tonumber(age) then
                    SetPedScale(horse_preview, 0.600)
                elseif 2 >= tonumber(age) then
                    SetPedScale(horse_preview, 0.650)
                elseif 3 >= tonumber(age) then
                    SetPedScale(horse_preview, 0.700)
                elseif 4 >= tonumber(age) then
                    SetPedScale(horse_preview, 0.800)
                elseif 5 >= tonumber(age) then
                    SetPedScale(horse_preview, 0.900)
                end
            end
            if tostring(sex) == ""..Config.Language[68].text.."" then
                Citizen.InvokeNative(0x5653AB26C82938CF, horse_preview, 41611, 1.0)
                UpdatePedVariation(horse_preview)
            else
                Citizen.InvokeNative(0x5653AB26C82938CF, horse_preview, 41611, 0.0)
                UpdatePedVariation(horse_preview)
            end
            if isdead ~= nil then
                if tonumber(isdead) >= 1 then
                    SetEntityHealth(horse_preview, 0)
                end
            end
            SetAttributePoints(horse_preview, 7, 0)
            image_agility = GetAttributeBaseRank(horse_preview, 4)
            image_speed = GetAttributeBaseRank(horse_preview, 5)
            image_acceleration = GetAttributeBaseRank(horse_preview, 6)
            if state ~= nil then
                SendNUIMessage({type = "change_state", agi=image_agility, acc=image_acceleration, sp=image_speed, max=true})
            end
            Citizen.Wait(50)
            for k,v in pairs(horse_table) do
                if v["id"] == id then
                    local compos = json.decode(v["components"])
                    if compos.horsetails ~= nil then
                        setclothcalled(horse_preview, compos.horsetails)
                    end
                    if compos.manes ~= nil then
                        setclothcalled(horse_preview, compos.manes)
                    end
                end
            end
            Citizen.Wait(50)
            ClearPedEnvDirt(horse_preview)
            ClearPedDamageDecalByZone(horse_preview ,10 ,"ALL")
            ClearPedBloodDamage(horse_preview)
            for k,v in pairs(horse_table) do
                if v["id"] == id then
                    for k2,v2 in pairs(json.decode(v["components"])) do
                        if k2 == 'propsData' then
                            Citizen.InvokeNative(0x1902C4CFCC5BE57C,horse_preview, tonumber(propsData[tonumber(v2)])) 
                            Citizen.InvokeNative(0xCC8CA3E88256E58F,horse_preview, false, true, true, true, false)
                        end
                    end
                end
            end
        end)
    end
end

function show_horse(model, state)
    delete_obj(horse_preview, true)
    delete_obj(horse_preview_2, true)
    preview_type = model
    Citizen.CreateThread(function()
        local npc_spawn_id = model
        while not HasModelLoaded(GetHashKey(npc_spawn_id)) do
            Wait(0)
            modelrequest( GetHashKey(npc_spawn_id) )
        end
        for k,v in pairs(Config.SpotsForStable) do
            if k == where_open_stable then
                horse_preview = CreatePed(GetHashKey(npc_spawn_id), v["1SpawnHorse"][1], v["1SpawnHorse"][2], v["1SpawnHorse"][3], heading, false, false, 0, 0)
            end
        end
        while not DoesEntityExist(horse_preview) do
            Wait(0)
        end
        previewPed = horse_preview
        Citizen.InvokeNative(0x283978A15512B2FE, horse_preview, true)
        SetPedAsGroupMember(horse_preview, GetPedGroupIndex(PlayerPedId()))
        SetBlockingOfNonTemporaryEvents(horse_preview,true)
        FreezeEntityPosition(horse_preview, true)
        SetEntityInvincible(horse_preview, true)
        TaskStandStill(horse_preview, -1)
        SetEntityAsMissionEntity(horse_preview, true, true)
        SetModelAsNoLongerNeeded(GetHashKey(npc_spawn_id))
        ClearPedEnvDirt(horse_preview)
        ClearPedDamageDecalByZone(horse_preview ,10 ,"ALL")
        ClearPedBloodDamage(horse_preview)
        
        SetAttributePoints(horse_preview, 7, 0)
        image_agility = GetAttributeBaseRank(horse_preview, 4)
        image_speed = GetAttributeBaseRank(horse_preview, 5)
        image_acceleration = GetAttributeBaseRank(horse_preview, 6)
        if state ~= nil then
            SendNUIMessage({type = "change_state", agi=image_agility, acc=image_acceleration, sp=image_speed, st=state})
        end

        local npc_spawn_id2 = model
        while not HasModelLoaded(GetHashKey(npc_spawn_id2)) do
            Wait(5)
            modelrequest( GetHashKey(npc_spawn_id2) )
        end
        for k,v in pairs(Config.SpotsForStable) do
            if k == where_open_stable then
                horse_preview_2 = CreatePed(GetHashKey(npc_spawn_id2), v["2SpawnHorse"][1], v["2SpawnHorse"][2], v["2SpawnHorse"][3], heading, false, false, 0, 0)
            end
        end
        while not DoesEntityExist(horse_preview_2) do
            Wait(0)
        end
        Citizen.InvokeNative(0x283978A15512B2FE, horse_preview_2, true)
        SetPedAsGroupMember(horse_preview_2, GetPedGroupIndex(PlayerPedId()))
        SetBlockingOfNonTemporaryEvents(horse_preview_2,true)
        SetPedScale(horse_preview_2,0.600)
        FreezeEntityPosition(horse_preview_2, true)
        SetEntityInvincible(horse_preview_2, true)
        TaskStandStill(horse_preview_2, -1)
        SetEntityAsMissionEntity(horse_preview_2, true, true)
        SetModelAsNoLongerNeeded(GetHashKey(npc_spawn_id2))
        ClearPedEnvDirt(horse_preview_2)
        ClearPedDamageDecalByZone(horse_preview_2 ,10 ,"ALL")
        ClearPedBloodDamage(horse_preview_2)
    end)
end

function UpdatePedVariation(mount)
    return Citizen.InvokeNative(0xCC8CA3E88256E58F, mount , false, true, true, true, false)
end

if Config.useNPC then
    Citizen.CreateThread(function()
        while true do
            local coords = GetEntityCoords(PlayerPedId())
            if Config.useTimeLogic then
                for k,v in pairs(Config.StableNPC) do
                    if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, v.coords[1], v.coords[2], v.coords[3], false) < 20.0  then
                        if GetClockHours() >= v.timeStart and GetClockHours() < v.timeEnd then
                            canEnter = true
                            if npcsHorse[k] ~= nil then
                                TaskStandStill(npcsHorse[k], -1)
                            end
                            createNpc(k, v.npc, v.coords[1], v.coords[2], v.coords[3], v.coords[4])
                        else
                            canEnter = false
                            despawnNpc(k) 
                        end
                    else
                        despawnNpc(k) 
                    end
                end
            else
                for k,v in pairs(Config.StableNPC) do
                    if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, v.coords[1], v.coords[2], v.coords[3], false) < 20.0  then
                        if npcsHorse[k] ~= nil then
                            TaskStandStill(npcsHorse[k], -1)
                        end
                        createNpc(k, v.npc, v.coords[1], v.coords[2], v.coords[3], v.coords[4])
                    else
                        despawnNpc(k) 
                    end
                end
            end
            Citizen.Wait(2000)
        end
    end)
end

function createNpc(count, model, x,y,z,h)
    if npcsMan[count] == nil then
        Citizen.CreateThread(function()
            npcsMan[count] = false
            local npcSpawn = model
            while not HasModelLoaded(GetHashKey(npcSpawn)) do
                Wait(0)
                modelrequest( GetHashKey(npcSpawn) )
            end
            local npcSpawnCode = CreatePed(GetHashKey(npcSpawn), x, y, z, h, false, false, 0, 0)
            while not DoesEntityExist(npcSpawnCode) do
                Wait(0)
            end
            Citizen.InvokeNative(0x283978A15512B2FE, npcSpawnCode, true)
            SetPedAsGroupMember(npcSpawnCode, GetPedGroupIndex(PlayerPedId()))
            SetBlockingOfNonTemporaryEvents(npcSpawnCode,true)
            FreezeEntityPosition(npcSpawnCode, true)
            SetEntityInvincible(npcSpawnCode, true)
            TaskStandStill(npcSpawnCode, -1)
            SetEntityAsMissionEntity(npcSpawnCode, true, true)
            SetModelAsNoLongerNeeded(GetHashKey(npcSpawnCode))
            ClearPedEnvDirt(npcSpawnCode)
            ClearPedDamageDecalByZone(npcSpawnCode ,10 ,"ALL")
            ClearPedBloodDamage(npcSpawnCode)
            npcsMan[count] = npcSpawnCode
            if Config.enableInteractWithNpc then
                TaskStartScenarioInPlace(npcSpawnCode, GetHashKey("WORLD_HUMAN_HORSE_TEND_BRUSH_LINK"), -1, true, false, false, false)
            end
        end)
    end
    Citizen.Wait(1000)
    if Config.enableInteractWithNpc then
        if npcsHorse[count] == nil then
            local randomHorseAnim = math.random(1, #filtered_horses)
            for a,b in pairs(filtered_horses) do
                if a == randomHorseAnim then
                    Citizen.CreateThread(function()
                        npcsHorse[count] = false
                        local npcSpawn = b.data[1]
                        while not HasModelLoaded(GetHashKey(npcSpawn)) do
                            Wait(0)
                            modelrequest( GetHashKey(npcSpawn) )
                        end
            			local entityWorld = GetOffsetFromEntityInWorldCoords(npcsMan[count], 0.0, 0.8, 0.0-1.0)
                        local npcSpawnCode = CreatePed(GetHashKey(npcSpawn), entityWorld.x, entityWorld.y, entityWorld.z, h+90.0, false, false, 0, 0)
                        while not DoesEntityExist(npcSpawnCode) do
                            Wait(0)
                        end
                        Citizen.InvokeNative(0x283978A15512B2FE, npcSpawnCode, true)
                        SetPedAsGroupMember(npcSpawnCode, GetPedGroupIndex(PlayerPedId()))
                        SetBlockingOfNonTemporaryEvents(npcSpawnCode,true)
                        FreezeEntityPosition(npcSpawnCode, true)
                        SetEntityInvincible(npcSpawnCode, true)
                        TaskStandStill(npcSpawnCode, -1)
                        SetEntityAsMissionEntity(npcSpawnCode, true, true)
                        SetModelAsNoLongerNeeded(GetHashKey(npcSpawnCode))
                        ClearPedEnvDirt(npcSpawnCode)
                        ClearPedDamageDecalByZone(npcSpawnCode ,10 ,"ALL")
                        ClearPedBloodDamage(npcSpawnCode)
                        SetEntityCollision(npcSpawnCode, false, false)
                        npcsHorse[count] = npcSpawnCode
                        SetPedConfigFlag(npcSpawnCode, 136, true)
                        SetPedConfigFlag(npcSpawnCode, 26, true)
                    end)
                end
            end
        end

    end
    if npcsHorse[count] ~= nil and npcsHorse[count] ~= false then
        TaskStandStill(npcsHorse[count], -1)
    end
end

function despawnNpc(count) 
    if npcsMan[count] ~= nil and npcsMan[count] ~= false then
        delete_obj(npcsMan[count], true)
        npcsMan[count] = nil
    end
    if npcsHorse[count] ~= nil and npcsMan[count] ~= false then
        delete_obj(npcsHorse[count], true)
        npcsHorse[count] = nil
    end
end

Citizen.CreateThread(function()
    while true do
        if tonumber(can_call_horse_time) > 0 then
            can_call_horse_time = tonumber(can_call_horse_time-1)
        end
        if tonumber(can_call_cart_time) > 0 then
            can_call_cart_time = tonumber(can_call_cart_time-1)
        end
        
        if entity2 ~= nil then
            local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
            if GetEntityHealth(PlayerPedId()) <= 0 and vehicle ~= 0 then
                Citizen.InvokeNative(0xD3DBCE61A490BE02, PlayerPedId(), entity2, 16)
                Citizen.InvokeNative(0x71BC8E838B9C6035, PlayerPedId())
                Citizen.Wait(500)
                SetEntityHealth(PlayerPedId(), 0)
            end
        end
        if entity2 ~= nil and DoesEntityExist(entity2) and canSaveDmg == true then
            local damageCart = GetEntityHealth(entity2)
                 if damageCart >= 600 then
                    if Config.AffectDirtyToCart then
                        Citizen.InvokeNative(0x4D15E49764CB328A, entity2, 0.0)
                        Citizen.InvokeNative(0x758C3460EE915D0A, entity2, 0.0)
                        Citizen.InvokeNative(0xBAE0EEDF93F05EAA, entity2, 0.0)
                    end
                elseif damageCart >= 500 and damageCart <= 600 then
                    if Config.AffectDirtyToCart then
                        Citizen.InvokeNative(0x4D15E49764CB328A, entity2, 0.2)
                        Citizen.InvokeNative(0x758C3460EE915D0A, entity2, 0.2)
                        Citizen.InvokeNative(0xBAE0EEDF93F05EAA, entity2, 0.2)
                    end
                elseif damageCart >= 400 and damageCart <= 500 then
                    if Config.AffectDirtyToCart then
                        Citizen.InvokeNative(0x4D15E49764CB328A, entity2, 0.4)
                        Citizen.InvokeNative(0x758C3460EE915D0A, entity2, 0.4)
                        Citizen.InvokeNative(0xBAE0EEDF93F05EAA, entity2, 0.4)
                    end
                elseif damageCart >= 300 and damageCart <= 400 then
                    if Config.AffectDirtyToCart then
                        Citizen.InvokeNative(0x4D15E49764CB328A, entity2, 0.6)
                        Citizen.InvokeNative(0x758C3460EE915D0A, entity2, 0.6)
                        Citizen.InvokeNative(0xBAE0EEDF93F05EAA, entity2, 0.6)
                    end
                elseif damageCart >= 200 and damageCart <= 300 then
                    if Config.AffectDirtyToCart then
                        Citizen.InvokeNative(0x4D15E49764CB328A, entity2, 0.8)
                        Citizen.InvokeNative(0x758C3460EE915D0A, entity2, 0.8)
                        Citizen.InvokeNative(0xBAE0EEDF93F05EAA, entity2, 0.8)
                    end
                elseif damageCart >= 100 and damageCart <= 200 then
                    if Config.AffectDirtyToCart then
                        Citizen.InvokeNative(0x4D15E49764CB328A, entity2, 0.9)
                        Citizen.InvokeNative(0x758C3460EE915D0A, entity2, 0.9)
                        Citizen.InvokeNative(0xBAE0EEDF93F05EAA, entity2, 0.9)
                    end
                elseif damageCart >= 0 and damageCart <= 100 then
                    if Config.AffectDirtyToCart then
                        Citizen.InvokeNative(0x4D15E49764CB328A, entity2, 1.0)
                        Citizen.InvokeNative(0x758C3460EE915D0A, entity2, 1.0)
                        Citizen.InvokeNative(0xBAE0EEDF93F05EAA, entity2, 1.0)
                    end
                    if Config.AffectRidingToCart then
                        if Citizen.InvokeNative(0xA3EE4A07279BB9DB, PlayerPedId(), entity2, true) then
                            Citizen.InvokeNative(0xD3DBCE61A490BE02, PlayerPedId(), entity2, 1)
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text,""..Config.Language[372].text.."", Config.FirstName, Config.SecondName, Config.Language[372].time)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[372].text.."", Config.Image, Config.Language[372].time)
                            end
                            Citizen.Wait(4000)
                        end
                    end
                else
                end
         end
        Citizen.Wait(1000)
    end
end)
Citizen.CreateThread(function()
    WagonList = filter(Config.Wagons)
    for k,v in pairs(Config_2.Horse) do
        if v.category_hashname == "horse_bedrolls" then
            table.insert(horse_bedrolls, {hash=v.hash_dec_signed, save_hash=""..v.hash.."", price=Config.Horse_Bedrolls})
        end
        if v.category_hashname == "horse_blankets" then
            table.insert(horse_blankets, {hash=v.hash_dec_signed, save_hash=""..v.hash.."", price=Config.Horse_Blankets})
        end
        if v.category_hashname == "horse_manes" then
            table.insert(horse_manes, {hash=v.hash_dec_signed, save_hash=""..v.hash.."", price=Config.Horse_Manes})
        end
        if v.category_hashname == "HORSE_SADDLEBAGS" then
            table.insert(horse_saddlebags, {hash=v.hash_dec_signed, save_hash=""..v.hash.."", price=Config.Horse_Bags})
        end
        if v.category_hashname == "horse_saddles" then
            table.insert(horse_saddles, {hash=v.hash_dec_signed, save_hash=""..v.hash.."", price=Config.Horse_Saddles})
        end
        if v.category_hashname == "HORSE_TAILS" then
            table.insert(horse_tails, {hash=v.hash_dec_signed, save_hash=""..v.hash.."", price=Config.Horse_Tails})
        end
        if v.category_hashname == "saddle_horns" then
            table.insert(saddle_horns, {hash=v.hash_dec_signed, save_hash=""..v.hash.."", price=Config.Horse_Horn})
        end
        if v.category_hashname == "saddle_stirrups" then
            table.insert(saddle_stirrups, {hash=v.hash_dec_signed, save_hash=""..v.hash.."", price=Config.Horse_Stirrups})
        end
        if v.category_hashname == "horse_accessories" then
            table.insert(horse_accessories, {hash=v.hash_dec_signed, save_hash=""..v.hash.."", price=Config.Horse_Accesori})
        end
        if v.category_hashname == "horse_mustache" then
            table.insert(horse_mustache, {hash=v.hash_dec_signed, save_hash=""..v.hash.."", price=Config.Horse_Mustache})
        end
        if v.category_hash == tonumber('0xAC106B30') then
            table.insert(horse_holster, {hash=v.hash_dec_signed, save_hash=""..v.hash.."", price=Config.Horse_Holster})
        end   
        if v.category_hash == tonumber('0x1530BE1C') then
            table.insert(horse_lantern, {hash=v.hash_dec_signed, save_hash=""..v.hash.."", price=Config.Horse_Lantern})
        end   
        if v.category_hash == tonumber('0x94B2E3AF') then
            table.insert(horse_bridle, {hash=v.hash_dec_signed, save_hash=""..v.hash.."", price=Config.Horse_Bridle})
        end   
        if v.category_hash == tonumber('0xFACFC3C0') then
            table.insert(horse_shoes, {hash=v.hash_dec_signed, save_hash=""..v.hash.."", price=Config.Horse_Shoe})
       end   
    end
    while true do
        local coords = GetEntityCoords(PlayerPedId())
        local horseCoords = GetEntityCoords(horseentity)
        if horseentity ~= nil then
            if Config.PeltOnHorses then
                local offset = GetOffsetFromEntityInWorldCoords(horseentity, -0.9, -0.8, 0.0)
                if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, offset.x, offset.y, offset.z, false) < 0.5  then
                    levels()
                    local isTargetting, targetEntity = GetPlayerTargetEntity(PlayerId())
                    local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
                    local holding2 = Citizen.InvokeNative(0xD806CD2A4F2C2996, horseentity)
                    local holding_pelt = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
                    local quality_pelt = Citizen.InvokeNative(0x31FEF6A20F00B963, holding_pelt)
                    if targetEntity ~= horseentity and (holding ~= false and Config.Pelts2[GetEntityModel(holding)] ~= nil) or (holding ~= false and Config.Pelts2[GetEntityModel(holding)] ~= nil) or holding == false then
                        if quality_pelt ~= false or Citizen.InvokeNative(0x0CEEB6F4780B1F2F, horseentity, 0) or Citizen.InvokeNative(0x0CEEB6F4780B1F2F, horseentity, 1) or Citizen.InvokeNative(0x0CEEB6F4780B1F2F, horseentity, 2) then
                            if active_5 == false then
                                local item_name = CreateVarString(10, 'LITERAL_STRING', Config.Language[354].text)
                                PromptSetActiveGroupThisFrame(buttons_prompt_5, item_name)
                            end
                            if holding ~= false and #peltzOnHorse < Config.MaxPelts then
                                PromptSetVisible(EntityOnPrompt, true)
                                if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, 0x27D1C284) then
                                    if Citizen.InvokeNative(0x0CEEB6F4780B1F2F, horseentity, (Config.MaxPelts-1)) == false and #peltzOnHorse <= Config.MaxPelts and holding ~= false then
                                        local provision_hash = Citizen.InvokeNative(0x31FEF6A20F00B963, holding)
                                        table.insert(peltzOnHorse, {Config.Pelts2[GetEntityModel(holding)][1], provision_hash})
                                        TaskPlaceCarriedEntityOnMount(PlayerPedId(), holding, horseentity, 1)
                                        TriggerEvent("gum_stores:get_entity", horseentity)
                                        Citizen.Wait(3000)
                                    else
                                        if Config.Gum_Notify_Old then
                                            exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text,""..Config.Language[98].text.."", Config.FirstName, Config.SecondName, Config.Language[98].time)
                                        end
                                        if Config.Gum_Notify_NUI then
                                            exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[98].text.."", Config.Image, Config.Language[98].time)
                                        end
                                    end
                                end
                            else
                                PromptSetVisible(EntityOnPrompt, false)
                            end
                            if holding == false then
                                PromptSetVisible(EntityTakePrompt, true)
                                if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, 0xA1ABB953) then
                                    for a,b in pairs(peltzOnHorse) do
                                        if #peltzOnHorse == a and holding == false then
                                            wearClotheAnimation("mech_skin@pelt_ms@horse_satchel@stow@rt@toss","base", 1500, 1)
                                            Citizen.Wait(1000)
                                            if Config.Pelts2[GetHashKey(b[1])][2] == false then
                                                if a == 5 then
                                                    local obj = CreateObject(GetHashKey(b[1]), GetEntityCoords(PlayerPedId()), 1, 1, 1)
                                                    if b[1] == "p_cs_pelt_medlarge" then
                                                        Citizen.InvokeNative(0xF0B4F759F35CC7F5, obj, 1212186523, PlayerPedId(), 0, 512) -- Small
                                                    else
                                                        Citizen.InvokeNative(0xF0B4F759F35CC7F5, obj, -1161106381, PlayerPedId(), 0, 512) -- Small
                                                    end                                       
                                                    Citizen.InvokeNative(0x399657ED871B3A6C, obj, tonumber(b[2]))
                                                    Citizen.InvokeNative(0x627F7F3A0C4C51FF, horseentity, Citizen.InvokeNative(0x0CEEB6F4780B1F2F, horseentity, 2))
                                                    peltzOnHorse[a] = nil
                                                    ClearPedTasks(PlayerPedId())
                                                elseif a == 4 then
                                                    local obj = CreateObject(GetHashKey(b[1]), GetEntityCoords(PlayerPedId()), 1, 1, 1)
                                                    if b[1] == "p_cs_pelt_medlarge" then
                                                        Citizen.InvokeNative(0xF0B4F759F35CC7F5, obj, 1212186523, PlayerPedId(), 0, 512) -- Small
                                                    else
                                                        Citizen.InvokeNative(0xF0B4F759F35CC7F5, obj, -1161106381, PlayerPedId(), 0, 512) -- Small
                                                    end                                       
                                                    Citizen.InvokeNative(0x399657ED871B3A6C, obj, tonumber(b[2]))
                                                    Citizen.InvokeNative(0x627F7F3A0C4C51FF, horseentity, Citizen.InvokeNative(0x0CEEB6F4780B1F2F, horseentity, 2))
                                                    peltzOnHorse[a] = nil
                                                    ClearPedTasks(PlayerPedId())
                                                elseif a == 3 then
                                                    local obj = CreateObject(GetHashKey(b[1]), GetEntityCoords(PlayerPedId()), 1, 1, 1)
                                                    if b[1] == "p_cs_pelt_medlarge" then
                                                        Citizen.InvokeNative(0xF0B4F759F35CC7F5, obj, 1212186523, PlayerPedId(), 0, 512) -- Small
                                                    else
                                                        Citizen.InvokeNative(0xF0B4F759F35CC7F5, obj, -1161106381, PlayerPedId(), 0, 512) -- Small
                                                    end                                       
                                                    Citizen.InvokeNative(0x399657ED871B3A6C, obj, tonumber(b[2]))
                                                    Citizen.InvokeNative(0x627F7F3A0C4C51FF, horseentity, Citizen.InvokeNative(0x0CEEB6F4780B1F2F, horseentity, 2))
                                                    peltzOnHorse[a] = nil
                                                    ClearPedTasks(PlayerPedId())
                                                elseif a == 2 then
                                                    local obj = CreateObject(GetHashKey(b[1]), GetEntityCoords(PlayerPedId()), 1, 1, 1)
                                                    if b[1] == "p_cs_pelt_medlarge" then
                                                        Citizen.InvokeNative(0xF0B4F759F35CC7F5, obj, 1212186523, PlayerPedId(), 0, 512) -- Small
                                                    else
                                                        Citizen.InvokeNative(0xF0B4F759F35CC7F5, obj, -1161106381, PlayerPedId(), 0, 512) -- Small
                                                    end  
                                                    Citizen.InvokeNative(0x399657ED871B3A6C, obj, tonumber(b[2]))
                                                    Citizen.InvokeNative(0x627F7F3A0C4C51FF, horseentity, Citizen.InvokeNative(0x0CEEB6F4780B1F2F, horseentity, 1))
                                                    peltzOnHorse[a] = nil
                                                    ClearPedTasks(PlayerPedId())
                                                elseif a == 1 then
                                                    local obj = CreateObject(GetHashKey(b[1]), GetEntityCoords(PlayerPedId()), 1, 1, 1)
                                                    if b[1] == "p_cs_pelt_medlarge" then
                                                        Citizen.InvokeNative(0xF0B4F759F35CC7F5, obj, 1212186523, PlayerPedId(), 0, 512) -- Small
                                                    else
                                                        Citizen.InvokeNative(0xF0B4F759F35CC7F5, obj, -1161106381, PlayerPedId(), 0, 512) -- Small
                                                    end  
                                                    Citizen.InvokeNative(0x399657ED871B3A6C, obj, tonumber(b[2]))
                                                    Citizen.InvokeNative(0x627F7F3A0C4C51FF, horseentity, Citizen.InvokeNative(0x0CEEB6F4780B1F2F, horseentity, 0))
                                                    peltzOnHorse[a] = nil
                                                    ClearPedTasks(PlayerPedId())
                                                end
                                            end
                                        end
                                    end
                                    Citizen.Wait(2000)
                                end
                            else
                                PromptSetVisible(EntityTakePrompt, false)
                            end
 
                        end
                    end
                end
            end
        end
        if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, Config.Keysconfig[13].key) then
            if Config.CallFromStableHorse and Config.SpotForTake then
                if horseentity ~= nil then
                    local pcoords = GetEntityCoords(PlayerPedId())
                    local hcoords = GetEntityCoords(horseentity)
                    local caldist = Vdist(pcoords.x, pcoords.y, pcoords.z, hcoords.x, hcoords.y, hcoords.z)
                    if caldist <= Config.RageForCallHorse then
                        TaskGoToEntity(horseentity, PlayerPedId(), -1, 7.2, 2.0, 0, 0)
                    end
                end
            else
                for k,v in pairs(horse_table) do
                    if v["selected"] == 1 then
                        if not cant_spam then
                            if tonumber(v["isdead"]) == 0 then
                                if (not Config.SpotForTake or not Config.CallFromStableHorse) then
                                    if tonumber(can_call_horse_time) <= 0 then
                                        cant_spam = true
                                        if horseentity == nil then
                                            WhistleHorse(v["model"], v["id"], nil, nil, nil, nil)
                                        else
                                            local pcoords = GetEntityCoords(PlayerPedId())
                                            local hcoords = GetEntityCoords(horseentity)
                                            local caldist = Vdist(pcoords.x, pcoords.y, pcoords.z, hcoords.x, hcoords.y, hcoords.z)
                                            if caldist <= Config.RageForCallHorse then
                                                if GetEntityModel(horseentity) == GetHashKey(v["model"]) then
                                                    TaskGoToEntity(horseentity, PlayerPedId(), -1, 7.2, 2.0, 0, 0)
                                                end
                                            else
                                                if hcoords.x == 0.0 then
                                                    Citizen.Wait(200)
                                                    fleeHorse()
                                                    if Config.Gum_Notify_Old then
                                                        exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[379].text, Config.FirstName, Config.SecondName, Config.Language[379].time)
                                                    end
                                                    if Config.Gum_Notify_NUI then
                                                        exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", Config.Language[379].text, Config.Image, Config.Language[379].time)
                                                    end
                                                else
                                                    if Config.Gum_Notify_Old then
                                                        exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[282].text, Config.FirstName, Config.SecondName, Config.Language[282].time)
                                                    end
                                                    if Config.Gum_Notify_NUI then
                                                        exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", Config.Language[282].text, Config.Image, Config.Language[282].time)
                                                    end
                                                end
                                            end   
                                        end
                                        Citizen.Wait(2000)
                                        cant_spam = false
                                    else
                                        if Config.Gum_Notify_Old then
                                            exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[220].text.." : "..can_call_horse_time.."s", Config.FirstName, Config.SecondName, Config.Language[244].time)
                                        end
                                        if Config.Gum_Notify_NUI then
                                            exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[244].text..": "..can_call_horse_time.."s", Config.Image, Config.Language[244].time)
                                        end
                                    end
                                else
                                    local pcoords = GetEntityCoords(PlayerPedId())
                                    local hcoords = GetEntityCoords(horseentity)
                                    local caldist = Vdist(pcoords.x, pcoords.y, pcoords.z, hcoords.x, hcoords.y, hcoords.z)
                                    if caldist <= Config.RageForCallHorse then
                                        if GetEntityModel(horseentity) == GetHashKey(v["model"]) then
                                            TaskGoToEntity(horseentity, PlayerPedId(), -1, 7.2, 2.0, 0, 0)
                                        end
                                    else
                                        if Config.Gum_Notify_Old then
                                            exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[288].text, Config.FirstName, Config.SecondName, Config.Language[288].time)
                                        end
                                        if Config.Gum_Notify_NUI then
                                            exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[288].text, Config.Image, Config.Language[288].time)
                                        end
                                    end
                                end
                            elseif tonumber(v["isdead"]) >= 1 then
                                if tonumber(can_call_horse_time) <= 0 then
                                    cant_spam = true
                                    if Config.SpotForTake == false then
                                        if horseentity == nil then
                                            WhistleHorse(v["model"], v["id"], nil, nil, nil, nil)
                                            Citizen.Wait(500)
                                            SetEntityHealth(horseentity, 0)
                                        else
                                            if GetEntityHealth(horseentity) == 0 then 
                                                fleeHorse(horseentity)
                                            else
                                                local pcoords = GetEntityCoords(PlayerPedId())
                                                local hcoords = GetEntityCoords(horseentity)
                                                local caldist = Vdist(pcoords.x, pcoords.y, pcoords.z, hcoords.x, hcoords.y, hcoords.z)
                                                if caldist <= Config.RageForCallHorse then
                                                    if GetEntityModel(horseentity) == GetHashKey(v["model"]) then
                                                        TaskGoToEntity(horseentity, PlayerPedId(), -1, 7.2, 2.0, 0, 0)
                                                    end
                                                else
                                                    if Config.Gum_Notify_Old then
                                                        exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[282].text, Config.FirstName, Config.SecondName, Config.Language[282].time)
                                                    end
                                                    if Config.Gum_Notify_NUI then
                                                        exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", Config.Language[282].text, Config.Image, Config.Language[282].time)
                                                    end
                                                end   
                                            end
                                        end
                                    else
                                        if horseentity == nil then
                                            local pcoords = GetEntityCoords(PlayerPedId())
                                            local hcoords = GetEntityCoords(horseentity)
                                            local caldist = Vdist(pcoords.x, pcoords.y, pcoords.z, hcoords.x, hcoords.y, hcoords.z)
                                            if caldist <= Config.RageForCallHorse then
                                                if GetEntityModel(horseentity) == GetHashKey(v["model"]) then
                                                    TaskGoToEntity(horseentity, PlayerPedId(), -1, 7.2, 2.0, 0, 0)
                                                end
                                            else
                                                if Config.Gum_Notify_Old then
                                                    exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[282].text, Config.FirstName, Config.SecondName, Config.Language[282].time)
                                                end
                                                if Config.Gum_Notify_NUI then
                                                    exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", Config.Language[282].text, Config.Image, Config.Language[282].time)
                                                end
                                            end
                                        end
                                    end
                                    Citizen.Wait(2000)
                                    cant_spam = false
                                else
                                    if Config.Gum_Notify_Old then
                                        exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[244].text.." : "..can_call_horse_time.."s", Config.FirstName, Config.SecondName, Config.Language[244].time)
                                    end
                                    if Config.Gum_Notify_NUI then
                                        exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[244].text..": "..can_call_horse_time.."s", Config.Image, Config.Language[244].time)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        if (not Config.CallFromStableCart and not Config.spotForTake) or (Config.CallFromStableCart and not Config.spotForTake) or (not Config.CallFromStableCart and Config.spotForTake) then
            if Citizen.InvokeNative(0x580417101DDB492F, 0, Config.Keysconfig[14].key) then
                for k,v in pairs(WagonTable) do
                    if v["selected"] == 1 then
                        if can_call_cart_time <= 0 then
                            if not cant_spam then
                                cant_spam = true
                                TriggerServerEvent("gum_stables:check_ability", v["id"])
                                if entity2 == nil then
                                    initiateWagon(v.model, v.id, nil, nil, nil, nil, false)
                                else
                                    fleeWagon()
                                end
                                Citizen.Wait(1000)
                                cant_spam = false
                            end
                        else
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[2444].text.." "..can_call_cart_time.."s", Config.FirstName, Config.SecondName, Config.Language[2444].time)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[2444].text.." "..can_call_cart_time.."s", Config.Image, Config.Language[2444].time)
                            end
                            Citizen.Wait(1000)
                        end
                    end
                end
            end
        end
        if Citizen.InvokeNative(0xF3A21BCD95725A4A, 0, Config.keys.four) and IsPedOnMount(PlayerPedId()) then
            if Citizen.InvokeNative(0x580417101DDB492F, 0, Config.keys.five) then
                if horseentity ~= nil then
                    if GetMount(PlayerPedId()) == horseentity then 
                        levels()
                        if level >= 2 then
                            TaskHorseAction(GetMount(PlayerPedId()), 1,0,0)
                        else
                            TaskHorseAction(GetMount(PlayerPedId()), 2,0,0)
                        end
                    else
                        TaskHorseAction(GetMount(PlayerPedId()), 2,0,0)
                    end
                else
                    TaskHorseAction(GetMount(PlayerPedId()), 2,0,0) 
                end
                Citizen.Wait(1000)
            end
        end
        if Config.SaveStatus and Config.hoofHook then
            if horseentity ~= nil and GetMount(PlayerPedId()) == horseentity then
                local nerfHorse = false
                for a,b in ipairs(Config.hoofDirtyAffectSpeed) do
                    if Config.hoofDirtyAffectSpeed[a+1] == nil then
                        if b[1] >= hoofState and nerfHorse == false  then
                            nerfHorse = b[2]
                        end
                    else
                        if b[1] >= hoofState and nerfHorse == false and Config.hoofDirtyAffectSpeed[a+1][1] <= hoofState then
                            nerfHorse = b[2]
                        end
                    end
                end
                if nerfHorse == false then
                    nerfHorse = 0
                end
                if Citizen.InvokeNative(0x57E457CD2C0FC168, horseentity) then
                    SetPedMaxMoveBlendRatio(horseentity, 2.9-nerfHorse)
                end
            end
        end
        Citizen.Wait(5)
    end
end)

RegisterNetEvent("gum_stables:cleanPeltz")
AddEventHandler("gum_stables:cleanPeltz", function()
    peltzOnHorse = {}
end)

function GetBlend()
    return Citizen.InvokeNative(0x8517D4A6CA8513ED, horseentity, Citizen.ResultAsFloat())
end

RegisterNUICallback('callCarts', function(data,cb)
    for k,v in pairs(WagonTable) do
        if v["id"] == tonumber(data.id) then
            if not cant_spam then
                if not NetworkDoesNetworkIdExist(wagonnetwork) then
                    CloseMenuData()
                    cant_spam = true
                    local x,y,z,h = 0,0,0,0
                    for k,v in pairs(Config.SpotsForStable) do
                        if k == where_open_stable then
                            x,y,z,h = v.CallHorseCart[1], v.CallHorseCart[2], v.CallHorseCart[3], v.CallHorseCart[4]
                        end
                    end
                    TriggerServerEvent("gum_stables:check_ability", v["id"])
                    initiateWagon(v.model, v.id, x, y, z, h, true)

                    Citizen.Wait(1000)
                    cant_spam = false
                end
            end
        end
    end
end)

RegisterNUICallback('callHorses', function(data,cb)
    for k,v in pairs(horse_table) do
        if v.id == tonumber(data.id) then
            if not cant_spam then
                if tonumber(v["isdead"]) == 0 then
                    if tonumber(can_call_horse_time) <= 0 then
                        fleeHorse(horseentity)
                        horse_table_comp = json.decode(v.components)
                        CloseMenuData()
                        cant_spam = true
                        local x,y,z,h = 0,0,0,0
                        for k,v in pairs(Config.SpotsForStable) do
                            if k == where_open_stable then
                                x,y,z,h = v.CallHorseCart[1], v.CallHorseCart[2], v.CallHorseCart[3], v.CallHorseCart[4]
                            end
                        end
                        if horseentity == nil then
                            horseIdForSave = v.id
                            idForStorageHorse = v.id
                            idForModel = v.model
                            initiateHorse(v.model, v.id, x, y, z, h, false)
                        else
                            CloseMenuData()
                        end
                        cant_spam = false
                    end
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
            if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, b['coords'][1], b['coords'][2], b['coords'][3], false) < 3.0 then
                for k,v in pairs(horse_table) do
                    if v.id == tonumber(data.id) then
                        if not cant_spam then
                            if tonumber(v["isdead"]) == 0 then
                                if tonumber(can_call_horse_time) <= 0 then
                                    fleeHorse(horseentity)
                                    horse_table_comp = json.decode(v.components)
                                    CloseMenuData()
                                    cant_spam = true
                                    local x,y,z,h = 0,0,0,0
                                    x,y,z,h = b.scoords[1], b.scoords[2], b.scoords[3], b.scoords[4]
                               
                                    if horseentity == nil then
                                        horseIdForSave = v.id
                                        idForStorageHorse = v.id
                                        idForModel = v.model
                                        if Config.Gum_Notify_Old then
                                            exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[284].text, Config.FirstName, Config.SecondName, Config.Language[284].time)
                                        end
                                        if Config.Gum_Notify_NUI then
                                            exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[284].text, Config.Image, Config.Language[284].time)
                                        end
                                        Citizen.Wait(Config.TimeForSpawn*1000)
                                        initiateHorse(v.model, v.id, x, y, z, h, true)
                                    else
                                        CloseMenuData()
                                    end
                                    cant_spam = false
                                end
                            end
                        end
                    end
                end
            end
        end
    else
        local coords = GetEntityCoords(PlayerPedId())
        for a,b in pairs(Config.SpotForTakeCd) do
            if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, b['coords'][1], b['coords'][2], b['coords'][3], false) < 3.0 then
                for k,v in pairs(WagonTable) do
                    if v["id"] == tonumber(data.id) then
                        if not cant_spam then
                            if not NetworkDoesNetworkIdExist(wagonnetwork) then
                                CloseMenuData()
                                cant_spam = true
                                local x,y,z,h = 0,0,0,0
                                x,y,z,h = b.scoords[1], b.scoords[2], b.scoords[3], b.scoords[4]
                                TriggerServerEvent("gum_stables:check_ability", v["id"])
                                if Config.Gum_Notify_Old then
                                    exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[285].text, Config.FirstName, Config.SecondName, Config.Language[285].time)
                                end
                                if Config.Gum_Notify_NUI then
                                    exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[285].text, Config.Image, Config.Language[285].time)
                                end
                                Citizen.Wait(Config.TimeForSpawn*1000)
                                initiateWagon(v.model, v.id, x,y,z,h, true)
                                Citizen.Wait(1000)
                                cant_spam = false
                            end
                        end
                    end
                end
            end
        end
    end
end)

function fleeHorse(withFleeAnim)
    if withFleeAnim then
        TaskAnimalFlee(horseentity, PlayerPedId(), -1)
    end
    if NetworkDoesNetworkIdExist(NetworkGetNetworkIdFromEntity(horseentity)) then
        TriggerServerEvent("gum_stables:fix_this", NetworkGetNetworkIdFromEntity(horseentity), idForStorageHorse)
    end
    if DoesEntityExist(horseentity) then
        saveHorseStatusExp()
        Citizen.Wait(50)
        exp_writed = 0
    end
    peltzOnHorse = {}
    idForStorageHorse = 0
    horseIdForSave = 0
    if withFleeAnim then
        Wait(2000)
    end
    delete_obj(horseentity)
    SaddlesBagss = false
end

RegisterNetEvent('gum_stables:fleeHorse')
AddEventHandler('gum_stables:fleeHorse', function()
    if NetworkDoesNetworkIdExist(NetworkGetNetworkIdFromEntity(horseentity)) then
        TriggerServerEvent("gum_stables:fix_this", NetworkGetNetworkIdFromEntity(horseentity), idForStorageHorse)
    end
    if DoesEntityExist(horseentity) then
        saveHorseStatusExp()
        Citizen.Wait(50)
        exp_writed = 0
    end
    peltzOnHorse = {}
    idForStorageHorse = 0
    horseIdForSave = 0
    delete_obj(horseentity)
    SaddlesBagss = false
end)

function saveHorseStatusExp()
    local table = horse_table
    for k,v in pairs(table) do
        if v.id == tonumber(idForStorageHorse) then
            if Config.SaveStatus then
                if v.status ~= nil then
                    local statusTable = json.decode(v.status)
                    local stamina = Citizen.InvokeNative(0x36731AC041289BB1, horseentity, 1) 
                    local health = Citizen.InvokeNative(0x36731AC041289BB1, horseentity, 0)
                    if statusTable["hoof"] == nil then
                        statusTable["hoof"] = 100
                    else
                        statusTable["hoof"] = hoofState
                    end
                    if stamina == false then stamina = 0 end
                    if health == false then health = 0 end
                    statusTable["stamina"] = stamina
                    statusTable["health"] = health
                    v.status = json.encode(statusTable)
                    TriggerServerEvent("gum_stables:saveStatus", v.id, v.status)
                end
            end
            if tonumber(idForStorageHorse) ~= 0 and DoesEntityExist(horseentity) then
                TriggerServerEvent("gum_stables:exp_update_id", idForStorageHorse, exp_horse+(exp_writed), expBreed)
                v["exp"] = exp_horse+(exp_writed)
            end
            expBreed = 0
        end
        horse_table = table
    end
end

function fleeWagon(clean)
    if canSaveDmg == true then
        TriggerEvent("gum_farming:deleteFromFarm", entity2)
        TriggerServerEvent("gum_stables:fix_this", NetworkGetNetworkIdFromEntity(entity2), idForStorageCart)
        if DoesEntityExist(entity2) and canSaveDmg == true then
            for k,v in pairs(WagonTable) do
                if tonumber(idForStorageCart) == tonumber(v.id) then
                    TriggerServerEvent("gum_stables:save_health_wagon", v.id, GetEntityHealth(entity2))
                end
            end
        end
        if entity2 ~= nil then
            local playerCoords = GetEntityCoords(PlayerPedId())
            local getEntityCoords = GetOffsetFromEntityInWorldCoords(entity2, 0.0, -0.9, 0.0)
            for a,b in pairs(GetGamePool('CObject')) do
                local coords = GetEntityCoords(b)
                if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, getEntityCoords.x, getEntityCoords.y, getEntityCoords.z, false) < 1.2 and GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, coords.x, coords.y, coords.z, false) > 0.90 then
                    DeleteEntity(b)
                end
            end
            delete_obj(entity2)
        end
        entity2 = nil
        canSaveDmg = false
        if not clean then
            idForStorageCart = 0
            cartIdForSave = 0
        end
    else
        if Config.Gum_Notify_Old then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[380].text, Config.FirstName, Config.SecondName, Config.Language[86].time)
        end
        if Config.Gum_Notify_NUI then
            exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[380].text, Config.Image, Config.Language[86].time)
        end
        Citizen.Wait(2000)
    end
end

function WhistleHorse(model, id, cdx,cdy,cdz,cdh)
    if horseentity ~= nil then
        local pcoords = GetEntityCoords(PlayerPedId())
        local hcoords = GetEntityCoords(horseentity)
        local caldist = Vdist(pcoords.x, pcoords.y, pcoords.z, hcoords.x, hcoords.y, hcoords.z)
        if caldist >= 200.0 then
            if GetEntityModel(horseentity) == GetHashKey(model) then
                TaskGoToEntity(horseentity, ped, -1, 7.2, 2.0, 0, 0)
            end
        end   
    else
        if Config.CallFromStableHorse == false then
            initiateHorse(model, id, cdx,cdy,cdz,cdh)
        end
    end
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

function initiateHorse(model, id, cdx, cdy, cdz, cdh, fromHouse)
    SaddlesBagss = false
    expBreed = 0
    local ped = PlayerPedId()
    local pCoords = GetEntityCoords(ped)
    local modelHash = GetHashKey(model)

    if not HasModelLoaded(modelHash) then
        RequestModel(modelHash)
        while not HasModelLoaded(modelHash) do
            Citizen.Wait(0)
        end
    end
    local random = math.random(-20, 20)
    local randomY = math.random(-20, 20)
    local spawnPosition
    local spawnPosition = GetOffsetFromEntityInWorldCoords(PlayerPedId(), tonumber(random..".0"), tonumber(randomY..".0"), 0)

    local pcoords = GetEntityCoords(PlayerPedId())
    local node, vec, head = GetClosestVehicleNodeWithHeading(pcoords.x, pcoords.y, pcoords.z, 1, true, true, true)
    local math_x = math.random(1,10)
    local math_y = math.random(1,10)
    local player_coord = GetEntityCoords(PlayerPedId())
    local town_hash = Citizen.InvokeNative(0x43AD8FC02B429D33, player_coord, 10)
    if fromHouse then
        horseentity = CreatePed(modelHash, cdx, cdy, cdz, cdh, true, true)
    else
        if Config.SimulateNodesEnabled then
            local nodeExist = false
            local simulateX, simulateY, simulateZ, simulateH = 0, 0, 0, 0
            for a,b in pairs(Config.SimulateNodes) do
                local distanc = GetDistanceBetweenCoords(pcoords, b[1], b[2], b[3], true)
                if distanc < b[5] then
                    nodeExist = true
                    simulateX, simulateY, simulateZ, simulateH = b[1], b[2], b[3], b[4]
                end
            end
            if nodeExist then
                horseentity = CreatePed(modelHash, simulateX, simulateY, simulateZ, simulateH, true, true)
            else
                if cdx == nil then
                    if town_hash == -108848014 or town_hash == -2066240242 or town_hash == 1453836102 or town_hash == -2145992129 or town_hash == -512529193 then
                        if vec[1] == 0 then
                            horseentity = CreatePed(modelHash, player_coord.x+math_x, player_coord.y+math_y, player_coord.z, GetEntityHeading(ped), true, true)
                        else
                            horseentity = CreatePed(modelHash, player_coord.x+math_x, player_coord.y+math_y, player_coord.z, GetEntityHeading(ped), true, true)
                        end
                    else
                        if vec.x == 0.0 then
                            horseentity = CreatePed(modelHash, spawnPosition.x, spawnPosition.y, ground_check(spawnPosition.x, spawnPosition.y), GetEntityHeading(ped), true, true)
                        else
                            horseentity = CreatePed(modelHash, vec.x, vec.y, vec.z, head, true, true)
                        end
                    end
                else
                    horseentity = CreatePed(modelHash, cdx, cdy, cdz, cdh, true, true)
                end
            end
        else
            if cdx == nil then
                if town_hash == -108848014 or town_hash == -2066240242 or town_hash == 1453836102 or town_hash == -2145992129 or town_hash == -512529193 then
                    if vec[1] == 0 then
                        horseentity = CreatePed(modelHash, player_coord.x+math_x, player_coord.y+math_y, player_coord.z, GetEntityHeading(ped), true, true)
                    else
                        horseentity = CreatePed(modelHash, player_coord.x+math_x, player_coord.y+math_y, player_coord.z, GetEntityHeading(ped), true, true)
                    end
                else
                    if vec.x == 0.0 then
                        horseentity = CreatePed(modelHash, spawnPosition.x, spawnPosition.y, ground_check(spawnPosition.x, spawnPosition.y), GetEntityHeading(ped), true, true)
                    else
                        horseentity = CreatePed(modelHash, vec.x, vec.y, vec.z, head, true, true)
                    end
                end
            else
                horseentity = CreatePed(modelHash, cdx, cdy, cdz, cdh, true, true)
            end
        end
    end
    horseIdForSave = id
    idForStorageHorse = id
    while not DoesEntityExist(horseentity) do
        Citizen.Wait(0)
    end
    horsenetwork = NetworkGetNetworkIdFromEntity(horseentity)

    local x,y,z =  table.unpack(pCoords + vector3(0.0,0.0,0.0))
    Citizen.InvokeNative(0x9587913B9E772D29, horseentity, 0)
    Citizen.InvokeNative(0x4DB9D03AC4E1FA84, horseentity, -1, -1, 0)
    Citizen.InvokeNative(0xBCC76708E5677E1D9, horseentity, 0)
    Citizen.InvokeNative(0xB8B6430EAD2D2437, horseentity, GetHashKey("PLAYER_HORSE"))
    Citizen.InvokeNative(0xFD6943B6DF77E449, horseentity, false)
    SetModelAsNoLongerNeeded(GetHashKey(model))
    SetPedConfigFlag(horseentity, 324, true)
    SetPedConfigFlag(horseentity, 211, true)
    SetPedConfigFlag(horseentity, 208, true)
    SetPedConfigFlag(horseentity, 209, true)
    SetPedConfigFlag(horseentity, 400, true)
    SetPedConfigFlag(horseentity, 297, true)
    SetPedConfigFlag(horseentity, 136, false)
    SetPedConfigFlag(horseentity, 312, false)
    SetPedConfigFlag(horseentity, 113, false)
    SetPedConfigFlag(horseentity, 301, false)  
    SetPedConfigFlag(horseentity, 277, true)
    SetPedConfigFlag(horseentity, 319, true)
    SetPedConfigFlag(horseentity, 122, true)
    SetPedConfigFlag(horseentity, 297, true)
    if Config.KickHorse == true then
        SetPedConfigFlag(horseentity, 26, true)
    end
    SetPedConfigFlag(horseentity, 6, true)
    SetAnimalTuningBoolParam(horseentity, 25, false)
    SetAnimalTuningBoolParam(horseentity, 24, false)
    SetAnimalTuningBoolParam(horseentity, 48, false)
    TaskAnimalUnalerted(horseentity, -1, false, 0, 0)
    Citizen.InvokeNative(0x23f74c2fda6e7c61, -1230993421, horseentity)
    Citizen.InvokeNative(0x283978A15512B2FE, horseentity, true)
    Citizen.InvokeNative(0xED1C764997A86D5A, PlayerPedId(), horseentity) 
    cleanHorseFromOld()

    for k,v in pairs(horse_table) do
        if tonumber(idForStorageHorse) == tonumber(v.id) then
            horse_table_comp = json.decode(v.components)
            SetAttributePoints(horseentity, 7, v.exp)
            local hoofTable = {}
            if Config.hoofHook == true then
                if v.status ~= nil then
                    hoofTable = v.status
                end
            end
            exp_horse = v.exp
            TriggerServerEvent("gum_stables:saveHorseForExp", v.id, v.exp, hoofTable)

            if v.age ~= Config.Language[417].text then
                if tonumber(v.age) <= 4.75 then
                    SetPedConfigFlag(horseentity, 136, true)
                end
                if 1 >= tonumber(v.age) then
                    SetPedScale(horseentity, 0.600)
                elseif 2 >= tonumber(v.age) then
                    SetPedScale(horseentity, 0.650)
                elseif 3 >= tonumber(v.age) then
                    SetPedScale(horseentity, 0.700)
                elseif 4 >= tonumber(v.age) then
                    SetPedScale(horseentity, 0.800)
                elseif 5 >= tonumber(v.age) then
                    SetPedScale(horseentity, 0.900)
                end
            end

            if tostring(v.sex) == ""..Config.Language[68].text.."" then
                Citizen.InvokeNative(0x5653AB26C82938CF, horseentity, 41611, 1.0)
                UpdatePedVariation(horseentity)
            else
                Citizen.InvokeNative(0x5653AB26C82938CF, horseentity, 41611, 0.0)
                UpdatePedVariation(horseentity)
            end

            local canShowStomach = false
            for a,b in pairs(breeding_table) do
                if tonumber(b.breeding_id_horse_1) == tonumber(id) and b.breeding_time ~= ""..Config.Language[216].text.."" then
                    canShowStomach = true
                elseif tonumber(b.breeding_id_horse_2) == tonumber(id) and b.breeding_time ~= ""..Config.Language[216].text.."" then
                    canShowStomach = true
                end
            end
            if canShowStomach then
                if tostring(v.sex) == ""..Config.Language[68].text.."" then
                    if v.breeding == ""..Config.Language[216].text.."" then
                        Citizen.InvokeNative(0x1902C4CFCC5BE57C, horseentity, tonumber(0xEB76D635))
                        Citizen.InvokeNative(0xCC8CA3E88256E58F, horseentity, false, true, true, true, false)
                        SetPedConfigFlag(horseentity, 136, true)
                    end
                end
            end

            for a,b in pairs(json.decode(v.state)) do
                if b.agility ~= nil then
                    SetAttributeBaseRank(horseentity, 4, GetAttributeBaseRank(horseentity, 4)+b.agility)
                end
                if b.speed ~= nil then
                    SetAttributeBaseRank(horseentity, 5, GetAttributeBaseRank(horseentity, 5)+b.speed)
                end
                if b.acceleration ~= nil then
                    SetAttributeBaseRank(horseentity, 6, GetAttributeBaseRank(horseentity, 6)+b.acceleration)
                end
            end
            if v.courage ~= nil then
                SetAttributeBaseRank(horseentity, 3, tonumber(v.courage))
            end

            if breed ~= ""..Config.Language[216].text.."" then
                for a,b in pairs(json.decode(v.components)) do
                    setclothcalled(horseentity, b)
                    if a == 'bags' then
                        SaddlesBagss = true
                    end
                end
                for a,b in pairs(json.decode(v.components)) do
                    if a == 'bridle' then
                        setclothcalled(horseentity, b)
                    end
                    if a == 'propsData' then
                        Citizen.InvokeNative(0x1902C4CFCC5BE57C,horseentity, tonumber(propsData[tonumber(b)])) 
                        Citizen.InvokeNative(0xCC8CA3E88256E58F,horseentity, false, true, true, true, false)
                    end
                end
            end


            if Config.SaveStatus then
                if v.status ~= nil then
                    local statusTable = json.decode(v.status)
                    local countValue = 0
                    for a,b in pairs(statusTable) do
                        countValue = countValue + 1
                    end
                    if countValue == 0 then
                        statusTable["stamina"] = 100
                        statusTable["health"] = 100
                        statusTable["hoof"] = 100
                        v.status = json.encode(statusTable)
                    else
                        if statusTable["hoof"] == nil then
                            statusTable["hoof"] = 100
                            hoofState = 100
                        else
                            hoofState = statusTable["hoof"]
                        end
                        setStatus(tonumber(statusTable["stamina"]), tonumber(statusTable["health"]), tonumber(statusTable["hoof"]))
                    end
                end
            end
            TriggerServerEvent("gum_stables:send_data_all_horse", NetworkGetNetworkIdFromEntity(horseentity), v.id, GetPlayerServerId(PlayerId()), true)
        end
        ClearPedEnvDirt(horseentity)
        ClearPedDamageDecalByZone(horseentity ,10 ,"ALL")
        ClearPedBloodDamage(horseentity)
    
        if Config.CallFromStableHorse or Config.SpotForTake then
            active_3 = false
            active_camera = true
        end
    end
end

if Config.SaveStatus and Config.hoofHook then
    Citizen.CreateThread(function()
        while true do
            if hoofState >= 0 then
                if Citizen.InvokeNative(0x57E457CD2C0FC168, horseentity) then
                    hoofState = hoofState - Config.HoofDownIfSprint
                end
                if IsPedRunning(horseentity) then
                    hoofState = hoofState - Config.HoofDownIfRun
                end
                if IsPedWalking(horseentity) then
                    hoofState = hoofState - Config.HoofDownIfWalk
                end
            end
            if hoofState < 0 then
                hoofState = 0
            end 
            Citizen.Wait(Config.timerForHook*1000)
        end
    end)
end



function setStatus(stamina, health, hoof)
    if stamina == false then stamina = 1 end
    if health == false then health = 1 end
    if stamina == 0 then
        stamina = 1
    end
    if health == 0 then
        health = 1
    end
    Citizen.InvokeNative(0xC6258F41D86676E0, horseentity, 1, stamina)
    Citizen.InvokeNative(0xC6258F41D86676E0, horseentity, 0, health)
    if hoof == nil then
        hoofState = 0
    else
        hoofState = hoof
    end
end

function cleanHorseFromOld()
    ungear_cloth(k, 0xD3500E5D)
    ungear_cloth(k, 0xBAA7E618)
    ungear_cloth(k, 0x05447332)
    ungear_cloth(k, 0xDA6DADCA)
    ungear_cloth(k, 0x80451C25)
    ungear_cloth(k, 0x17CEB41A)
    ungear_cloth(k, 0x1530BE1C)
    ungear_cloth(k, 0xEFB31921)
    ungear_cloth(k, 0x94B2E3AF)
    ungear_cloth(k, 0xAC106B30)
end
Citizen.CreateThread(function()
    for k,v in pairs(Config.Horses) do
        for x,y in pairs(v) do 
            if x ~= "name" then
                table.insert(new_filtered, x)
            end
        end
    end
    for k,v in pairs(Config.Wagons) do
        table.insert(new_filtered, k)
    end
end)

local entityEnumerator = {
    __gc = function(enum)
      if enum.destructor and enum.handle then
        enum.destructor(enum.handle)
      end
      enum.destructor = nil
      enum.handle = nil
end}

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
  
function EnumeratePeds()
    return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end
  
function EnumerateVehicles()
    return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end

    Citizen.CreateThread(function()
        while true do
            local searched = false
            checkHorse = 0
            checkCart = 0
            local playerPed = GetEntityCoords(PlayerPedId())
            for cartEntity in EnumerateVehicles() do
                if cartEntity ~= -1 and NetworkGetEntityIsNetworked(cartEntity) then
                    local localPed = GetEntityCoords(cartEntity)
                    if GetDistanceBetweenCoords(playerPed.x, playerPed.y, playerPed.z, localPed.x, localPed.y, localPed.z, false) < 3.0 then
                        if Citizen.InvokeNative(0xC3D96AF45FCCEC4C, cartEntity) then
                            checkCart = cartEntity
                        end
                    end
                    if entity2 == nil then
                        if NetworkDoesNetworkIdExist(NetworkGetNetworkIdFromEntity(cartEntity)) then
                            if horse_data_all[NetworkGetNetworkIdFromEntity(cartEntity)] ~= nil  and horse_data_all[NetworkGetNetworkIdFromEntity(cartEntity)] ~= 0 then
                                if horse_data_all[NetworkGetNetworkIdFromEntity(cartEntity)].identifier == steamId then
                                    if GetEntityType(cartEntity) == 2 then
                                        canSaveDmg = true
                                        entity2 = cartEntity
                                        NetworkRequestControlOfEntity(cartEntity)
                                    end
                                end
                            end
                        end
                    end
                end
            end
            for horsEntity in EnumeratePeds() do
                if horsEntity ~= -1 and NetworkGetEntityIsNetworked(horsEntity) then
                    local localPed = GetEntityCoords(horsEntity)
                    if GetDistanceBetweenCoords(playerPed.x, playerPed.y, playerPed.z, localPed.x, localPed.y, localPed.z, false) < 1.5 then
                        if Citizen.InvokeNative(0x772A1969F649E902, GetEntityModel(horsEntity)) then
                            if Citizen.InvokeNative(0xFB4891BD7578CDC1, horsEntity, -1408210128) then
                                checkHorse = horsEntity
                                N_0xe6d4e435b56d5bd0(PlayerId(), horsEntity)
                            else
                                checkHorse = horsEntity
                            end
                        end
                    end
                    if horseentity == nil then
                        if Citizen.InvokeNative(0x772A1969F649E902, GetEntityModel(horsEntity)) then
                            if NetworkDoesNetworkIdExist(NetworkGetNetworkIdFromEntity(horsEntity)) then
                                if horse_data_all[NetworkGetNetworkIdFromEntity(horsEntity)] ~= nil and horse_data_all[NetworkGetNetworkIdFromEntity(horsEntity)] ~= 0 then
                                    if horse_data_all[NetworkGetNetworkIdFromEntity(horsEntity)].identifier == steamId then
                                        if GetEntityType(horsEntity) == 1 then
                                            if horse_data_all[NetworkGetNetworkIdFromEntity(horsEntity)].saddle then
                                                SaddlesBagss = true
                                            end
                                            horseentity = horsEntity
                                            NetworkRequestControlOfEntity(horsEntity)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
            if NetworkDoesNetworkIdExist(horsenetwork) then
                if horseentity ~= nil and not DoesEntityExist(horseentity) then
                    horseentity = NetworkGetEntityFromNetworkId(horsenetwork)
                end
            end
            if NetworkDoesNetworkIdExist(wagonnetwork) then
                if entity2 ~= nil and not DoesEntityExist(entity2) then
                    entity2 = NetworkGetEntityFromNetworkId(wagonnetwork)
                end
            end

            Citizen.Wait(200)
        end
    end)


RegisterNetEvent("gum_stables:send_back_all_horse")
AddEventHandler("gum_stables:send_back_all_horse", function(all_infos)
    horse_data_all = {}
    horse_data_all = all_infos
end)

RegisterNetEvent("gum_stables:callFromHousing")
AddEventHandler("gum_stables:callFromHousing", function(id, what, x, y, z, h)
    if what == "horse" then
        for a,b in pairs(horse_table) do
            if tonumber(id) == tonumber(b.id) then
                initiateHorse(b.model, b.id, x, y, z, h, true)
            end
        end
    elseif what == "wagon" then
        for a,b in pairs(WagonTable) do
            if tonumber(id) == tonumber(b.id) then
                initiateWagon(b.model, b.id, x, y, z, h, true)
            end
        end
    end
end)

RegisterNetEvent("gum_stables:cleanShoes")
AddEventHandler("gum_stables:cleanShoes", function()
    local table = horse_table
    for a,b in pairs(table) do
        if b.id == tonumber(idForStorageHorse) then
            if b.status ~= nil then
                local statusTable = json.decode(b.status)
                statusTable["hoof"] = 100
                hoofState = 100
                b.status = json.encode(statusTable)
            end
        end
    end
    horse_table = table
end)

RegisterNetEvent("gum_stables:cleanShoe")
AddEventHandler("gum_stables:cleanShoe", function(item)
    local peds = {}
    local pCoords = GetEntityCoords(PlayerPedId())
    for a,b in pairs(GetGamePool('CPed')) do
        local coordsHorse = GetEntityCoords(b)
        if b ~= PlayerPedId() and GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, coordsHorse.x, coordsHorse.y, coordsHorse.z, false) < 1.5 and Citizen.InvokeNative(0x772A1969F649E902, GetEntityModel(b)) and b ~= horseentity then
            NetworkRequestControlOfEntity(b)
            local timeout = 0
            while not NetworkHasControlOfEntity(b) do
                timeout = timeout+1
                if timeout > 10 then
                    break
                end
                if not DoesEntityExist(b) then
                    break
                end
                Wait(100)
            end       

            local offset = GetOffsetFromEntityInWorldCoords(b, -1.0, -0.9, -1.1)
            local offset2 = GetOffsetFromEntityInWorldCoords(b, -1.5, -0.7, 0.1)
            SetEntityCoords(PlayerPedId(), offset.x, offset.y, offset.z)
            turnToEntity(PlayerPedId(), offset2.x, offset2.y, offset2.z)
            if GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, coordsHorse.x, coordsHorse.y, coordsHorse.z, false) > 1.5 then
                return false
            end
            playAnim("script_re@stranded_rider","enter_line01_man")
            playNearHorse(b,"script_re@stranded_rider","enter_line01_horse", 9000)
            Citizen.Wait(7000)
            if GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, coordsHorse.x, coordsHorse.y, coordsHorse.z, false) > 1.5 then
                ClearPedTasks(PlayerPedId())
                ClearPedTasks(b)
                return false
            end
            playAnim("script_re@stranded_rider","horseshoe_idle_man")
            playNearHorse(b, "script_re@stranded_rider","horseshoe_idle_horse", 4000)
            local cleaNer = CreateObject("p_clothinghook01x", pCoords.x, pCoords.y, pCoords.x, false, false, false)
            AttachEntityToEntity(cleaNer, PlayerPedId(), GetEntityBoneIndexByName(PlayerPedId(), "PH_R_Hand"), 0.0, -0.12, 0.07, 209.0, 52.0, -35.0, false, false, true, false, 0, true, false, false)
            Citizen.Wait(4000)
            playAnim("script_re@stranded_rider","kick_l_man")
            playNearHorse(b, "script_re@stranded_rider","kick_l_horse", 500)
            Citizen.Wait(500)
            DeleteEntity(cleaNer)
            ClearPedTasks(PlayerPedId())
            for a,b in pairs(GetActivePlayers()) do
                if GetPlayerPed(b) ~= PlayerPedId() then 
                    local coords = GetEntityCoords(GetPlayerPed(b))
                    local distance = GetDistanceBetweenCoords(coords.x, coords.y, coords.z, pCoords.x, pCoords.y, pCoords.z, false)
                    if distance < 2.0 then
                        if Config.removeAfterUse then
                            TriggerServerEvent("gum_stables:rem_function", item)
                        end
                        TriggerServerEvent("gum_stables:cleanShoes", GetPlayerServerId(b))
                        return false
                    end
                end
            end
        elseif b ~= PlayerPedId() and GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, coordsHorse.x, coordsHorse.y, coordsHorse.z, false) < 1.5 and Citizen.InvokeNative(0x772A1969F649E902, GetEntityModel(b)) and b == horseentity then
            NetworkRequestControlOfEntity(b)
            local timeout = 0
            while not NetworkHasControlOfEntity(b) do
                timeout = timeout+1
                if timeout > 10 then
                    break
                end
                if not DoesEntityExist(b) then
                    break
                end
                Wait(100)
            end

            local offset = GetOffsetFromEntityInWorldCoords(b, -1.0, -0.9, -1.1)
            local offset2 = GetOffsetFromEntityInWorldCoords(b, -1.5, -0.7, 0.1)
            SetEntityCoords(PlayerPedId(), offset.x, offset.y, offset.z)
            turnToEntity(PlayerPedId(), offset2.x, offset2.y, offset2.z)
            playAnim("script_re@stranded_rider","enter_line01_man")
            playNearHorse(b,"script_re@stranded_rider","enter_line01_horse", 9000)
            Citizen.Wait(8000)
            if GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, coordsHorse.x, coordsHorse.y, coordsHorse.z, false) > 1.5 then
                ClearPedTasks(PlayerPedId())
                ClearPedTasks(b)
                return false
            end
            playAnim("script_re@stranded_rider","horseshoe_idle_man")
            playNearHorse(b, "script_re@stranded_rider","horseshoe_idle_horse", 4000)
            local cleaNer = CreateObject("p_clothinghook01x", pCoords.x, pCoords.y, pCoords.x, false, false, false)
            AttachEntityToEntity(cleaNer, PlayerPedId(), GetEntityBoneIndexByName(PlayerPedId(), "PH_R_Hand"), 0.0, -0.12, 0.07, 209.0, 52.0, -35.0, false, false, true, false, 0, true, false, false)
            Citizen.Wait(4000)
            playAnim("script_re@stranded_rider","kick_l_man")
            playNearHorse(b, "script_re@stranded_rider","kick_l_horse", 500)
            Citizen.Wait(500)
            DeleteEntity(cleaNer)
            ClearPedTasks(PlayerPedId())
            for a,b in pairs(GetActivePlayers()) do
                if GetPlayerPed(b) == PlayerPedId() then 
                    local coords = GetEntityCoords(GetPlayerPed(b))
                    local distance = GetDistanceBetweenCoords(coords.x, coords.y, coords.z, pCoords.x, pCoords.y, pCoords.z, false)
                    if distance < 2.0 then
                        if Config.removeAfterUse then
                            TriggerServerEvent("gum_stables:rem_function", item)
                        end
                        TriggerServerEvent("gum_stables:cleanShoes", GetPlayerServerId(b))
                        return false
                    end
                end
            end
        end
    end
end)
function checkHoofState()
    local offset = GetOffsetFromEntityInWorldCoords(horseentity, -1.0, -0.9, -1.1)
    local offset2 = GetOffsetFromEntityInWorldCoords(horseentity, -1.5, -0.7, 0.1)
    SetEntityCoords(PlayerPedId(), offset.x, offset.y, offset.z)
    turnToEntity(PlayerPedId(), offset2.x, offset2.y, offset2.z)
    playAnim("script_re@stranded_rider","enter_line01_man")
    playNearHorse(horseentity,"script_re@stranded_rider","enter_line01_horse", 8000)
    Citizen.Wait(7000)
    playAnim("script_re@stranded_rider","horseshoe_idle_man")
    playNearHorse(horseentity, "script_re@stranded_rider","horseshoe_idle_horse", 4000)
    Citizen.Wait(4000)
    playAnim("script_re@stranded_rider","kick_l_man")
    playNearHorse(horseentity, "script_re@stranded_rider","kick_l_horse", 500)
    Citizen.Wait(500)
    ClearPedTasks(PlayerPedId())
    if Config.Gum_Notify_Old then
        exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[429].text..math.floor(hoofState).."%", Config.FirstName, Config.SecondName, Config.Language[86].time)
    end
    if Config.Gum_Notify_NUI then
        exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[429].text..math.floor(hoofState).."%", Config.Image, Config.Language[86].time)
    end
end
function playNearHorse(entity, dict,name, time)
	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(0)
	end
	TaskPlayAnim(entity, dict, name, 1.0, 1.0, time, 1, 0, true, 0, false, 0, false)  
end



function levels()
    local max = GetMaxAttributePoints(horseentity, 7)
    local current = GetAttributePoints(horseentity, 7)
    local third = max / 3
    if current >= max then 
        level = 4
    elseif current >= third and third * 2 > current then
        level = 2
    elseif current >= third * 2 and max > current  then 
        level = 3
    elseif third > current then 
        level = 1
    end
end

function modelrequest(model)
    Citizen.CreateThread(function()
        RequestModel(model)
    end)
end

function StartCam(num)
    Citizen.InvokeNative(0x17E0198B3882C2CB, PlayerPedId())
    for k,v in pairs(Config.SpotsForStable) do
        if k == where_open_stable then
            camera = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", v["CamPosHorse"][1], v["CamPosHorse"][2], v["CamPosHorse"][3], -10.00, 00.00, v["CamPosHorse"][4], zoom, true, 0)
         end
    end
    if cam ~= nil then
        SetCamActiveWithInterp(camera, cam, 500, 0, 0)
        RenderScriptCams(true, true, 500, true, true)
        cam = nil
    else
        SetCamActive(camera,true)
        RenderScriptCams(true, true, 500, true, true)
    end
end

function EndCam()
    cam = nil
    zoom = 60.0
    RenderScriptCams(false, true, 500, true, false)
    DestroyCam(camera, false)
    camera = nil
    DestroyAllCams(true)
    Citizen.InvokeNative(0xD0AFAFF5A51D72F7, PlayerPedId())
end

AddEventHandler('onResourceStop', function(resourceName)
	if (GetCurrentResourceName() == resourceName) then
        delete_obj(horse_preview, true)
        delete_obj(horse_preview_2, true)
        delete_obj(horse_preview_3, true)
        delete_obj(horse_preview_4, true)
        delete_obj(horseentity)
        delete_obj(entity2)
        for k,v in pairs(npcsMan) do
            delete_obj(v, true)
        end
        for k,v in pairs(npcsHorse) do
            delete_obj(v, true)
        end
	end
end)

function Button_Prompt_2()
	Citizen.CreateThread(function()
        local str = Config.Language[77].text
        RotateLeftPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
        PromptSetControlAction(RotateLeftPrompt, Config.Keysconfig[17].key)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(RotateLeftPrompt, str)
        PromptSetEnabled(RotateLeftPrompt, true)
        PromptSetVisible(RotateLeftPrompt, true)
        PromptSetGroup(RotateLeftPrompt, buttons_prompt_2)
        PromptRegisterEnd(RotateLeftPrompt)
	end)
	Citizen.CreateThread(function()
		local str = Config.Language[78].text
		RotateRightPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
		PromptSetControlAction(RotateRightPrompt, Config.Keysconfig[18].key)
		str = CreateVarString(10, 'LITERAL_STRING', str)
		PromptSetText(RotateRightPrompt, str)
		PromptSetEnabled(RotateRightPrompt, true)
		PromptSetVisible(RotateRightPrompt, true)
		PromptSetGroup(RotateRightPrompt, buttons_prompt_2)
		PromptRegisterEnd(RotateRightPrompt)
	end)
    if not Config.InteractibleCamera then
        Citizen.CreateThread(function()
            local str = Config.Language[263].text
            Zoom1Prompt = PromptRegisterBegin()
            PromptSetControlAction(Zoom1Prompt, Config.Keysconfig[19].key)
            str = CreateVarString(10, 'LITERAL_STRING', str)
            PromptSetText(Zoom1Prompt, str)
            PromptSetEnabled(Zoom1Prompt, true)
            PromptSetVisible(Zoom1Prompt, true)
            PromptSetGroup(Zoom1Prompt, buttons_prompt_2)
            PromptRegisterEnd(Zoom1Prompt)
        end)
        Citizen.CreateThread(function()
            local str = Config.Language[264].text
            Zoom2Prompt = PromptRegisterBegin()
            PromptSetControlAction(Zoom2Prompt, Config.Keysconfig[20].key)
            str = CreateVarString(10, 'LITERAL_STRING', str)
            PromptSetText(Zoom2Prompt, str)
            PromptSetEnabled(Zoom2Prompt, true)
            PromptSetVisible(Zoom2Prompt, true)
            PromptSetGroup(Zoom2Prompt, buttons_prompt_2)
            PromptRegisterEnd(Zoom2Prompt)
        end)
    else
        Citizen.CreateThread(function()
            local str = Config.Language[444].text
            UpCameraDownPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
            PromptSetControlAction(UpCameraDownPrompt, 0x84574AE8)
            str = CreateVarString(10, 'LITERAL_STRING', str)
            PromptSetText(UpCameraDownPrompt, str)
            PromptSetEnabled(UpCameraDownPrompt, true)
            PromptSetVisible(UpCameraDownPrompt, true)
            PromptSetGroup(UpCameraDownPrompt, buttons_prompt_2)
            PromptRegisterEnd(UpCameraDownPrompt)
        end)
        Citizen.CreateThread(function()
            local str = Config.Language[445].text
            LeftCameraRightPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
            PromptSetControlAction(LeftCameraRightPrompt, 0x390948DC)
            str = CreateVarString(10, 'LITERAL_STRING', str)
            PromptSetText(LeftCameraRightPrompt, str)
            PromptSetEnabled(LeftCameraRightPrompt, true)
            PromptSetVisible(LeftCameraRightPrompt, true)
            PromptSetGroup(LeftCameraRightPrompt, buttons_prompt_2)
            PromptRegisterEnd(LeftCameraRightPrompt)
        end)
        Citizen.CreateThread(function()
            local str = Config.Language[446].text
            InteractionPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
            PromptSetControlAction(InteractionPrompt, 0x53296B75)
            str = CreateVarString(10, 'LITERAL_STRING', str)
            PromptSetText(InteractionPrompt, str)
            PromptSetEnabled(InteractionPrompt, true)
            PromptSetVisible(InteractionPrompt, true)
            PromptSetGroup(InteractionPrompt, buttons_prompt_2)
            PromptRegisterEnd(InteractionPrompt)
        end)
        Citizen.CreateThread(function()
            local str = Config.Language[447].text
            ZoomInOutPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
            PromptSetControlAction(ZoomInOutPrompt, 0x430593AA)
            str = CreateVarString(10, 'LITERAL_STRING', str)
            PromptSetText(ZoomInOutPrompt, str)
            PromptSetEnabled(ZoomInOutPrompt, true)
            PromptSetVisible(ZoomInOutPrompt, true)
            PromptSetGroup(ZoomInOutPrompt, buttons_prompt_2)
            PromptRegisterEnd(ZoomInOutPrompt)
        end)
        
    end

end

function Button_Prompt_Expand()
    Citizen.CreateThread(function()
        local str = "Open call menu"
        OpenExpandPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
        PromptSetControlAction(OpenExpandPrompt, Config.Keysconfig[1].key)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(OpenExpandPrompt, str)
        PromptSetStandardizedHoldMode(OpenExpandPrompt, GetHashKey("MEDIUM_TIMED_EVENT"))
        PromptSetEnabled(OpenExpandPrompt, true)
        PromptSetVisible(OpenExpandPrompt, true)
        PromptSetGroup(OpenExpandPrompt, buttons_prompt_expand)
        PromptRegisterEnd(OpenExpandPrompt)
    end)
end

function Button_Prompt_3()
    Citizen.CreateThread(function()
        local str = Config.Language[79].text
        OpenStablePrompt = Citizen.InvokeNative(0x04F97DE45A519419)
        PromptSetControlAction(OpenStablePrompt, Config.Keysconfig[1].key)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(OpenStablePrompt, str)
        PromptSetStandardizedHoldMode(OpenStablePrompt, GetHashKey("MEDIUM_TIMED_EVENT"))
        PromptSetEnabled(OpenStablePrompt, true)
        PromptSetVisible(OpenStablePrompt, true)
        PromptSetGroup(OpenStablePrompt, buttons_prompt_3)
        PromptRegisterEnd(OpenStablePrompt)
    end)
end

function Button_Prompt_4()
	Citizen.CreateThread(function()
		local str = Config.Language[81].text
		OpenWagonPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
		PromptSetControlAction(OpenWagonPrompt, Config.Keysconfig[5].key)
		str = CreateVarString(10, 'LITERAL_STRING', str)
		PromptSetText(OpenWagonPrompt, str)
		PromptSetEnabled(OpenWagonPrompt, true)
        PromptSetStandardizedHoldMode(OpenWagonPrompt, GetHashKey("MEDIUM_TIMED_EVENT"))
        PromptSetVisible(OpenWagonPrompt, true)
		PromptSetGroup(OpenWagonPrompt, buttons_prompt_4)
		PromptRegisterEnd(OpenWagonPrompt)
	end)
	Citizen.CreateThread(function()
		local str = Config.Language[82].text
		SellWagonPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
		PromptSetControlAction(SellWagonPrompt, Config.Keysconfig[6].key)
		str = CreateVarString(10, 'LITERAL_STRING', str)
		PromptSetText(SellWagonPrompt, str)
		PromptSetEnabled(SellWagonPrompt, true)
		PromptSetVisible(SellWagonPrompt, true)
        PromptSetStandardizedHoldMode(SellWagonPrompt, GetHashKey("MEDIUM_TIMED_EVENT"))
        PromptSetGroup(SellWagonPrompt, buttons_prompt_4)
		PromptRegisterEnd(SellWagonPrompt)
	end)
    if Config.FleeWagon then
        Citizen.CreateThread(function()
            local str = Config.Language[83].text
            UnsummonPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
            PromptSetControlAction(UnsummonPrompt, 0x0522B243)
            str = CreateVarString(10, 'LITERAL_STRING', str)
            PromptSetText(UnsummonPrompt, str)
            PromptSetEnabled(UnsummonPrompt, true)
            PromptSetHoldMode(UnsummonPrompt, true)
            PromptSetStandardizedHoldMode(UnsummonPrompt, GetHashKey("MEDIUM_TIMED_EVENT"))
            PromptSetVisible(UnsummonPrompt, true)
            PromptSetGroup(UnsummonPrompt, buttons_prompt_4)
            PromptRegisterEnd(UnsummonPrompt)
        end)
    end
    if Config.DebugWagon then
        Citizen.CreateThread(function()
            local str = Config.Language[435].text
            debugPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
            PromptSetControlAction(debugPrompt, 0x156F7119)
            str = CreateVarString(10, 'LITERAL_STRING', str)
            PromptSetText(debugPrompt, str)
            PromptSetEnabled(debugPrompt, true)
            PromptSetHoldMode(debugPrompt, true)
            PromptSetStandardizedHoldMode(debugPrompt, GetHashKey("MEDIUM_TIMED_EVENT"))
            PromptSetVisible(debugPrompt, true)
            PromptSetGroup(debugPrompt, buttons_prompt_4)
            PromptRegisterEnd(debugPrompt)
        end)
    end
    Citizen.CreateThread(function()
		local str = Config.Language[382].text
		animalPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
		PromptSetControlAction(animalPrompt, 0x8CF90A9D)
		str = CreateVarString(10, 'LITERAL_STRING', str)
		PromptSetText(animalPrompt, str)
		PromptSetEnabled(animalPrompt, true)
        PromptSetStandardizedHoldMode(animalPrompt, GetHashKey("MEDIUM_TIMED_EVENT"))
		PromptSetVisible(animalPrompt, true)
		PromptSetGroup(animalPrompt, buttons_prompt_4)
		PromptRegisterEnd(animalPrompt)
	end)
end
 
function Button_Prompt_5()
	Citizen.CreateThread(function()
		local str = Config.Language[84].text
		EntityOnPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
		PromptSetControlAction(EntityOnPrompt, 0x27D1C284)
		str = CreateVarString(10, 'LITERAL_STRING', str)
		PromptSetText(EntityOnPrompt, str)
        PromptSetEnabled(EntityOnPrompt, true)
		PromptSetVisible(EntityOnPrompt, true)
		PromptSetGroup(EntityOnPrompt, buttons_prompt_5)
		PromptRegisterEnd(EntityOnPrompt)
	end)
    Citizen.CreateThread(function()
		local str = Config.Language[844].text
		EntityTakePrompt = Citizen.InvokeNative(0x04F97DE45A519419)
		PromptSetControlAction(EntityTakePrompt, 0xA1ABB953)
		str = CreateVarString(10, 'LITERAL_STRING', str)
		PromptSetText(EntityTakePrompt, str)
        PromptSetEnabled(EntityTakePrompt, true)
		PromptSetVisible(EntityTakePrompt, true)
		PromptSetGroup(EntityTakePrompt, buttons_prompt_5)
		PromptRegisterEnd(EntityTakePrompt)
	end)
end

function math.percent(percent,maxvalue)
    if tonumber(percent) and tonumber(maxvalue) then
        return (maxvalue*percent)/100
    end
    return false
end

function Button_Prompt_6()
	Citizen.CreateThread(function()
		local str = Config.Language[85].text
		AddCartPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
		PromptSetControlAction(AddCartPrompt, Config.Keysconfig[8].key)
		str = CreateVarString(10, 'LITERAL_STRING', str)
		PromptSetText(AddCartPrompt, str)
        PromptSetStandardizedHoldMode(AddCartPrompt, GetHashKey("MEDIUM_TIMED_EVENT"))
        PromptSetEnabled(AddCartPrompt, true)
		PromptSetVisible(AddCartPrompt, true)
		PromptSetGroup(AddCartPrompt, buttons_prompt_6)
		PromptRegisterEnd(AddCartPrompt)
	end)
end
function Button_Prompt_Other()
	Citizen.CreateThread(function()
		local str = ""..Config.Language[420].text..""
		OtherPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
		PromptSetControlAction(OtherPrompt, Config.Keysconfig[7].key)
		str = CreateVarString(10, 'LITERAL_STRING', str)
		PromptSetText(OtherPrompt, str)
	    PromptSetStandardizedHoldMode(OtherPrompt, GetHashKey("MEDIUM_TIMED_EVENT"))
    	PromptSetEnabled(OtherPrompt, true)
		PromptSetVisible(OtherPrompt, true)
		PromptSetGroup(OtherPrompt, buttons_prompt_other)
		PromptRegisterEnd(OtherPrompt)
	end)
end

function Button_Prompt_Trainer()
	Citizen.CreateThread(function()
		local str = ""..Config.Language[419].text..""
		TrainerPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
		PromptSetControlAction(TrainerPrompt, 0x07B8BEAF)
		str = CreateVarString(10, 'LITERAL_STRING', str)
		PromptSetText(TrainerPrompt, str)
		PromptSetEnabled(TrainerPrompt, true)
		PromptSetVisible(TrainerPrompt, true)
		PromptSetGroup(TrainerPrompt, trainerprompt)
		PromptRegisterEnd(TrainerPrompt)
	end)
end


function Button_Prompt_GetBackCartHorse()
	Citizen.CreateThread(function()
		local str = ""..Config.Language[421].text..""
		GetBackPromptButton = Citizen.InvokeNative(0x04F97DE45A519419)
		PromptSetControlAction(GetBackPromptButton, 0x27D1C284)
		str = CreateVarString(10, 'LITERAL_STRING', str)
		PromptSetText(GetBackPromptButton, str)
		PromptSetEnabled(GetBackPromptButton, true)
		PromptSetVisible(GetBackPromptButton, true)
		PromptSetGroup(GetBackPromptButton, getbackprompt)
		PromptRegisterEnd(GetBackPromptButton)
	end)
end

function playAnimEntity(entity, dict,name)
	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(0)
	end
	TaskPlayAnim(entity, dict, name, 1.0, 1.0, 9999999, 1, 0, true, 0, false, 0, false)  
end


RegisterCommand(""..Config.Language[400].text.."", function(source, args, rawCommand)
    if horseentity ~= nil then
        NetworkRequestControlOfEntity(horseentity)
        local timeout = 0
        while not NetworkHasControlOfEntity(horseentity) do
            timeout = timeout+1
            if timeout > 10 then
                break
            end
            if not DoesEntityExist(horseentity) then
                break
            end
            Wait(100)
        end
        if NetworkHasControlOfEntity(horseentity) then
        end
        if blockLoopAnim == false then
            blockLoopAnim = true
        else
            blockLoopAnim = false
        end 
        if not IsPedOnMount(PlayerPedId()) then
            levels()
            if level >= 2 then 
                if blockLoopAnim == true then
                    playAnimHorse("amb_creature_mammal@world_horse_resting@stand_enter","enter", 4000)
                    Citizen.Wait(4000)
                    playAnimHorse("amb_creature_mammal@world_horse_resting@base","base", -1)
                    Citizen.CreateThread(function()
                        while blockLoopAnim == true do
                            if IsPedOnMount(PlayerPedId()) then
                                blockLoopAnim = false
                            end
                            Citizen.Wait(2000)
                            playAnimHorse("amb_creature_mammal@world_horse_resting@base","base", -1)
                        end
                        playAnimHorse("amb_creature_mammal@world_horse_resting@stand_exit","exit", 4000)  
                        Citizen.Wait(4000)
                        ClearPedTasks(horseentity)
                    end)
                end
            else
                if Config.Gum_Notify_Old then
                    exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[87].text, Config.FirstName, Config.SecondName, Config.Language[87].time)
                end
                if Config.Gum_Notify_NUI then
                    exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[87].text, Config.Image, Config.Language[87].time)
                end
            end
        end
    end
end, false)

RegisterCommand(""..Config.Language[401].text.."", function(source, args, rawCommand)
    if horseentity ~= nil then 
        NetworkRequestControlOfEntity(horseentity)
        local timeout = 0
        while not NetworkHasControlOfEntity(horseentity) do
            timeout = timeout+1
            if timeout > 10 then
                break
            end
            if not DoesEntityExist(horseentity) then
                break
            end
            Wait(100)
        end
        if NetworkHasControlOfEntity(horseentity) then
        end
        if blockLoopAnim == false then
            blockLoopAnim = true
        else
            blockLoopAnim = false
        end
        if not IsPedOnMount(PlayerPedId()) then
            levels()
            if not blockSkillSpam then
                if level >= 4 then 
                    blockSkillSpam = true
                    TaskStartScenarioInPlace(horseentity, GetHashKey('WORLD_ANIMAL_HORSE_WALLOW'), 10000, true, true, 100, false)
                    if Config.ExpTable.ExpForCommandSkills then 
                        if Config.Only_Job_Exp then
                            if is_trainer then
                                exp_writed = exp_writed+Config.ExpTable.Wallow
                            end
                        else
                            exp_writed = exp_writed+Config.ExpTable.Wallow
                        end
                    end
                    Citizen.Wait(10000)
                    blockSkillSpam = false
                else
                    if Config.Gum_Notify_Old then
                        exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[87].text, Config.FirstName, Config.SecondName, Config.Language[87].time)
                    end
                    if Config.Gum_Notify_NUI then
                        exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[87].text, Config.Image, Config.Language[87].time)
                    end
                end
            end
        end
    end
end, false)

RegisterCommand(""..Config.Language[402].text.."", function(source, args, rawCommand)
    if horseentity ~= nil then 
        NetworkRequestControlOfEntity(horseentity)
        local timeout = 0
        while not NetworkHasControlOfEntity(horseentity) do
            timeout = timeout+1
            if timeout > 10 then
                break
            end
            if not DoesEntityExist(horseentity) then
                break
            end
            Wait(100)
        end
        if NetworkHasControlOfEntity(horseentity) then
        end
        if blockLoopAnim == false then
            blockLoopAnim = true
        else
            blockLoopAnim = false
        end
        if not IsPedOnMount(PlayerPedId()) then
            levels()
            if level >= 2 then 
                if blockLoopAnim == true then
                    playAnimHorse("amb_creature_mammal@world_horse_sleeping@stand_enter","enter", 6000)
                    Citizen.Wait(5900)
                    playAnimHorse("amb_creature_mammal@world_horse_sleeping@base","base", -1)
                    Citizen.CreateThread(function()
                        while blockLoopAnim == true do
                            if IsPedOnMount(PlayerPedId()) then
                                blockLoopAnim = false
                            end
                            Citizen.Wait(2000)
                            playAnimHorse("amb_creature_mammal@world_horse_sleeping@base","base", -1)
                        end
                        playAnimHorse("amb_creature_mammal@world_horse_sleeping@stand_exit","exit", 4000)
                        Citizen.Wait(4000)
                        ClearPedTasks(horseentity)
                    end)
                    -- TaskStartScenarioInPlace(horseentity, GetHashKey('WORLD_ANIMAL_HORSE_SLEEPING_DOMESTIC'), 300000, true, true, 100, false)
                    if Config.ExpTable.ExpForCommandSkills then 
                        if Config.Only_Job_Exp then
                            if is_trainer then
                                exp_writed = exp_writed+Config.ExpTable.Sleep
                            end
                        else
                            exp_writed = exp_writed+Config.ExpTable.Sleep
                        end
                    end
                end
            else
                if Config.Gum_Notify_Old then
                    exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[86].text, Config.FirstName, Config.SecondName, Config.Language[86].time)
                end
                if Config.Gum_Notify_NUI then
                    exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[86].text, Config.Image, Config.Language[86].time)
                end
            end
        end
    end
end, false)

RegisterCommand(""..Config.Language[403].text.."", function(source, args, rawCommand)
    if horseentity ~= nil then 
        if not IsPedOnMount(PlayerPedId()) then
            levels()
            if not blockSkillSpam then
                if level >= 3 then 
                    if IsEntityInWater(horseentity) then
                        blockSkillSpam = true
                        if Config.ExpTable.ExpForCommandSkills then 
                            if Config.Only_Job_Exp then
                                if is_trainer then
                                    exp_writed = exp_writed+Config.ExpTable.Drink
                                end
                            else
                                exp_writed = exp_writed+Config.ExpTable.Drink
                            end
                        end
                        TaskStartScenarioInPlace(horseentity, GetHashKey('WORLD_ANIMAL_HORSE_DRINK_GROUND_DOMESTIC'), 300000, true, true, 100, false)
                        local valueStamina = Citizen.InvokeNative(0x36731AC041289BB1, horseentity, 1)
                        if not tonumber(valueStamina) then valueStamina = 0 end
                        Citizen.Wait(3500)
                        Citizen.InvokeNative(0xC6258F41D86676E0, horseentity, 1, valueStamina + 30)
                        Citizen.Wait(10000)
                        blockSkillSpam = false
                    else
                        if Config.Gum_Notify_Old then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[88].text, Config.FirstName, Config.SecondName, Config.Language[88].time)
                        end
                        if Config.Gum_Notify_NUI then
                            exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[88].text, Config.Image, Config.Language[88].time)
                        end
                    end
                else
                    if Config.Gum_Notify_Old then
                        exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[89].text, Config.FirstName, Config.SecondName, Config.Language[89].time)
                    end
                    if Config.Gum_Notify_NUI then
                        exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[89].text, Config.Image, Config.Language[89].time)
                    end
                end
            end
        end
    end
end, false)


RegisterNetEvent("vorp:SelectedCharacter")
AddEventHandler("vorp:SelectedCharacter", function(charid)
    Citizen.CreateThread(function()
        Citizen.Wait(5000)
        SendNUIMessage({type="languageLoad", language=Config.Language})
        Citizen.Wait(0)
        TriggerServerEvent("gum_stables:check_all_info")
        Citizen.Wait(500)
        TriggerServerEvent("gum_stables:check_all_data_horse")
    end)
end)

-- RegisterCommand("simCon", function(source, args, rawCommand)
--     SendNUIMessage({type="languageLoad", language=Config.Language})
--     Citizen.Wait(0)
--     TriggerServerEvent("gum_stables:check_all_info")
--     Citizen.Wait(500)
--     TriggerServerEvent("gum_stables:check_all_data_horse")
-- end)
function GetPlayers()
	local players = {}
	for i = 0, 32 do
		if NetworkIsPlayerActive(i) then
			table.insert(players, i)
		end
	end
	return players
end

function GetClosestPlayer()
    local players, closestDistance, closestPlayer = GetActivePlayers(), -1, -1
    local playerPed, playerId = PlayerPedId(), PlayerId()
    local coords, usePlayerPed = coords, false
    
    if coords then
        coords = vector3(coords.x, coords.y, coords.z)
    else
        usePlayerPed = true
        coords = GetEntityCoords(playerPed)
    end
    
    for i=1, #players, 1 do
        local tgt = GetPlayerPed(players[i])
        if not usePlayerPed or (usePlayerPed and players[i] ~= playerId) then

            local targetCoords = GetEntityCoords(tgt)
            local distance = #(coords - targetCoords)

            if closestDistance == -1 or closestDistance > distance then
                closestPlayer = players[i]
                closestDistance = distance
                playerid = GetPlayerServerId(players[i])
                tgt1 = GetPlayerPed(players[i])
            end
        end
    end
    return closestPlayer, closestDistance,  playerid, tgt1
end


Citizen.CreateThread(function()
    if Config.Debug then
        Citizen.Wait(5000)
        SendNUIMessage({type="languageLoad", language=Config.Language})
    end
    for k,v in pairs(Config.SpotsForStable) do
        if v["Blip_Enable"] then
            blipsStables[k] = N_0x554d9d53f696d002(1664425300, v["BasicCoord"][1], v["BasicCoord"][2], v["BasicCoord"][3])
            SetBlipSprite(blipsStables[k], -73168905, 1)
            SetBlipScale(blipsStables[k], 1.5)
            Citizen.InvokeNative(0x9CB1A1623062F402, blipsStables[k], v["Blip_Name"])
        end
    end
    for k,v in pairs(Config.SellGetWildHorse) do
        if v["Blip_Enable"] then
            blipsSellSpot[k] = N_0x554d9d53f696d002(1664425300, v["WildCoords"][1], v["WildCoords"][2], v["WildCoords"][3])
            SetBlipSprite(blipsSellSpot[k], -44909892, 1)
            SetBlipScale(blipsSellSpot[k], 1.5)
            Citizen.InvokeNative(0x9CB1A1623062F402, blipsSellSpot[k], ""..Config.Language[90].text.."")
        end
    end
    if Config.SpotForTake == true then
        for k,v in pairs(Config.SpotForTakeCd) do
            if v.blip_e then
                blipsSpotTake[k] = N_0x554d9d53f696d002(1664425300, v['coords'][1], v['coords'][2], v['coords'][3])
                SetBlipSprite(blipsSpotTake[k], 1045919449, 1)
                SetBlipScale(blipsSpotTake[k], 1.5)
                Citizen.InvokeNative(0x9CB1A1623062F402, blipsSpotTake[k], v.blip)
            end
        end
    end
end)

Citizen.CreateThread(function()
    Button_Prompt_2()
    Button_Prompt_3()
    Button_Prompt_4()
    Button_Prompt_5()
    Button_Prompt_6()
    Button_Prompt_Other()
    Button_Prompt_Expand()
    Button_Prompt_Trainer()
    Button_Prompt_GetBackCartHorse()
    while true do
        Citizen.Wait(5)
        if active_camera == false then
            PromptSetActiveGroupThisFrame(buttons_prompt_2, CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[436].text..""))
        end
        if canRotate then
            PromptSetVisible(LeftCameraRightPrompt, true)
            PromptSetVisible(UpCameraDownPrompt, true)
            PromptSetVisible(ZoomInOutPrompt, true)
            PromptSetVisible(InteractionPrompt, false)
        else
            PromptSetVisible(LeftCameraRightPrompt, false)
            PromptSetVisible(UpCameraDownPrompt, false)
            PromptSetVisible(ZoomInOutPrompt, false)
            PromptSetVisible(InteractionPrompt, true)
        end

        if Config.SpotForTake == true then
            for k,v in pairs(Config.SpotForTakeCd) do
                local coords = GetEntityCoords(PlayerPedId())
                if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, v['coords'][1], v['coords'][2], v['coords'][3], false) < 1.5 then
                    if active_expand == false then
                        local tim_nm = CreateVarString(10, 'LITERAL_STRING', "Stables")
                        PromptSetActiveGroupThisFrame(buttons_prompt_expand, tim_nm)
                    end
                    if Citizen.InvokeNative(0xE0F65F0640EF0617, OpenExpandPrompt) then
                        TriggerServerEvent("gum_stables:check_all_info")
                        Citizen.Wait(1000)
                        Open_List_Menu(v['scoords'][1], v['scoords'][2], v['scoords'][3],v['scoords'][4], k, v.horses, v.carts)
                    end
                end
            end
            for k,v in pairs(Config.SpotForTakeCd) do
                local coords = GetEntityCoords(PlayerPedId())
                if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, v['scoords'][1], v['scoords'][2], v['scoords'][3], false) < Config.CoordAdjustForStablesId then
                    if Config.CityStablesHorse then
                        if GetMount(PlayerPedId()) == horseentity then
                            PromptSetActiveGroupThisFrame(getbackprompt, CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[15].text..""))
                            if Citizen.InvokeNative(0x580417101DDB492F, 0, 0x27D1C284) then
                                TriggerServerEvent("gum_stables:saveMeSpot", horseIdForSave, k, "horse")
                                fleeHorse(horseentity)
                            end
                        end
                    end
                    if Config.CityStablesWagon then
                        if GetVehiclePedIsIn(PlayerPedId(), false) == entity2 then
                            PromptSetActiveGroupThisFrame(getbackprompt, CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[15].text..""))
                            if Citizen.InvokeNative(0x580417101DDB492F, 0, 0x27D1C284) then
                                Citizen.InvokeNative(0xD3DBCE61A490BE02, PlayerPedId(), entity2, 16)
                                Citizen.Wait(2500)
                                TriggerServerEvent("gum_stables:saveMeSpot", cartIdForSave, k, "cart")
                                fleeWagon()
                            end
                        end
                    end
                end
            end

        end
        if Config.CityStablesHorse or Config.CityStablesWagon then
            for k,v in pairs(Config.SpotsForStable) do
                local coords = GetEntityCoords(PlayerPedId())
                if v['CallHorseCart']~= nil then
                    if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, v['CallHorseCart'][1], v['CallHorseCart'][2], v['CallHorseCart'][3], false) < Config.CoordAdjustForStablesId then
                        if GetMount(PlayerPedId()) == horseentity and Config.CityStablesHorse then
                            PromptSetActiveGroupThisFrame(getbackprompt, CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[15].text..""))
                            if Citizen.InvokeNative(0x580417101DDB492F, 0, 0x27D1C284) then
                                TriggerServerEvent("gum_stables:saveMeCity", horseIdForSave, k, "horse")
                                fleeHorse(horseentity)
                            end
                        end
                        if GetVehiclePedIsIn(PlayerPedId(), false) == entity2 and Config.CityStablesWagon then
                            PromptSetActiveGroupThisFrame(getbackprompt, CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[15].text..""))
                            if Citizen.InvokeNative(0x580417101DDB492F, 0, 0x27D1C284) then
                                Citizen.InvokeNative(0xD3DBCE61A490BE02, PlayerPedId(), entity2, 16)
                                Citizen.Wait(2500)
                                TriggerServerEvent("gum_stables:saveMeCity", cartIdForSave, k, "cart")
                                fleeWagon()
                            end
                        end
                    end
                end
            end
        end
        local player = PlayerPedId()
        local coords = GetEntityCoords(player)
        for k,v in pairs(Config.SpotsForStable) do
            if not Config.enableInteractWithNpc then
                if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, v["BasicCoord"][1], v["BasicCoord"][2], v["BasicCoord"][3], false) < 1.5 then
                    Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, v["BasicCoord"][1], v["BasicCoord"][2], v["BasicCoord"][3]-1.1, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 0.4, 179, 166, 122, 155, 0, 0, 2, 0, 0, 0, 0)
                    where_open_stable = k
                    if active_3 == false then
                        local item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[92].text.."")
                        PromptSetActiveGroupThisFrame(buttons_prompt_3, item_name)
                    end
                    if Citizen.InvokeNative(0xE0F65F0640EF0617, OpenStablePrompt) then
                        if active_3 == false then
                            if Config.useTimeLogic then
                                if canEnter then
                                    TriggerServerEvent("gum_stables:check_all_info")
                                    Citizen.Wait(1500)
                                    SetNuiFocus(true, true)
                                    StartCam(0)
                                    Open_Stable_Menu(k)
                                    active_3 = true
                                else
                                    if Config.Gum_Notify_Old then
                                        exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[381].text, Config.FirstName, Config.SecondName, Config.Language[234].time)
                                    end
                                    if Config.Gum_Notify_NUI then
                                        exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[381].text.."", Config.Image, Config.Language[234].time)
                                    end
                                end
                            else
                                TriggerServerEvent("gum_stables:check_all_info")
                                Citizen.Wait(1500)
                                SetNuiFocus(true, true)
                                StartCam(0)
                                Open_Stable_Menu(k)
                                active_3 = true
                            end
                        end
                    end
                end
            else
                if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, v["BasicCoord"][1], v["BasicCoord"][2], v["BasicCoord"][3], false) < 10.0 then
                    where_open_stable = k
                    local coords, entity = gum.getTarget()
                    local entityCoords = GetEntityCoords(entity)
                    local timer = 200
                    if (entity ~= PlayerPedId()) and npcsMan[k] == entity and gum.playerNearCoords(entityCoords.x, entityCoords.y, entityCoords.z, 2.0) then
                        if active_3 == false then
                            local item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[92].text.."")
                            PromptSetActiveGroupThisFrame(buttons_prompt_3, item_name)
                        end
                        if Citizen.InvokeNative(0xE0F65F0640EF0617, OpenStablePrompt) then
                            if active_3 == false then
                                TriggerServerEvent("gum_stables:check_all_info")
                                Citizen.Wait(1500)
                                SetNuiFocus(true, true)
                                StartCam(0)
                                Open_Stable_Menu(k)
                                active_3 = true
                            end
                        end
                    end
                end
            end
        end
    end    
end)

Citizen.CreateThread(function()
    for a,b in pairs(Config.Wagons) do
        if b[7] == Config.Language[351].text then
            huntingCarts[GetHashKey(a)] = true
        end
    end
    for a,b in pairs(Config.Wagons) do
        if b[7] == Config.Language[352].text then
            workerCarts[GetHashKey(a)] = true
        end
    end
    while true do
        if entity2 ~= nil then
            local coords = GetEntityCoords(PlayerPedId())
            local wagonCoords = GetEntityCoords(entity2)
            if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, wagonCoords.x, wagonCoords.y, coords.z, false) < 2.5 then
                if huntingCarts[GetEntityModel(entity2)] then
                    local animal = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
                    if animal ~= false then
                        opti2 = 5
                        if active_6 == false then
                            local item_name_6 = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[91].text.."")
                            PromptSetActiveGroupThisFrame(buttons_prompt_6, item_name_6)
                        end
                        if Citizen.InvokeNative(0xE0F65F0640EF0617, AddCartPrompt) then
                            local storageForAnimals = 0
                            if Config.CallFromStableCart or Config.SpotForTake then
                                for k,v in pairs(WagonTable) do
                                    if tonumber(idForStorageCart) == tonumber(v.id) then
                                        WagonList = filter(Config.Wagons)
                                        for k2,v2 in pairs(WagonList) do
                                            if k2 == v["model"] then
                                                storageForAnimals = v2[4]/Config.HuntingCartCalculate
                                            end
                                        end
                                    end
                                end
                            else
                                for k,v in pairs(WagonTable) do
                                    if v["selected"] == 1 then
                                        WagonList = filter(Config.Wagons)
                                        for k2,v2 in pairs(WagonList) do
                                            if k2 == v["model"] then
                                                storageForAnimals = v2[4]/Config.HuntingCartCalculate
                                            end
                                        end
                                    end
                                end
                            end
                            local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
                            local eCarcassQuality = Citizen.InvokeNative(0x88EFFED5FE8B0B4A, holding)
                            if not eCarcassQuality then
                                eCarcassQuality = 0
                            end
                            local quality = {'Poor','Good','Perfect'}
                            local pedQuality = Citizen.InvokeNative(0x7BCC6087D130312A, holding) -- Set with 0xCE6B874286D640BB
                            local provision_hash = Citizen.InvokeNative(0x31FEF6A20F00B963, holding)
                            local animalTable = {}
                            local id = 0
                            if Config.CallFromStableCart or Config.SpotForTake then
                                for a,b in pairs(WagonTable) do
                                    if tonumber(idForStorageCart) == tonumber(b.id) then
                                        id = b.id
                                        animalTable = json.decode(b.animals)
                                    end
                                end
                            else
                                for a,b in pairs(WagonTable) do
                                    if b.selected == 1 then
                                        id = b.id
                                        animalTable = json.decode(b.animals)
                                    end
                                end
                            end
                            local count = 0
                            if animalTable == nil then
                                animalTable = {}
                            end
                            for k,v in pairs(animalTable) do
                                count = count+1
                            end
                            local cannContionue = false
                            if storageForAnimals <= count then
                                if Config.Gum_Notify_Old then
                                    exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, ""..Config.Language[383].text.."", Config.FirstName, Config.SecondName, 2000)
                                end
                                if Config.Gum_Notify_NUI then
                                    exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[383].text.."", Config.Image, 2000)
                                end
                                cannContionue = true
                            end
                            if cannContionue == false then
                                if animalTable == nil then
                                    animalTable = {}
                                end
                                if Config.Animals[GetEntityModel(holding)] ~= nil then
                                    if pedQuality == false then
                                        table.insert(animalTable, {type="animal", model=Config.Animals2[GetEntityModel(holding)], quality=0, name=Config.Animals[GetEntityModel(holding)], textQuality="Poor", loot=Citizen.InvokeNative(0x8DE41E9902E85756, holding)})
                                        TriggerServerEvent("gum_stables:updateAnimals", id, animalTable)
                                        if Config.CallFromStableCart or Config.SpotForTake then
                                            for a,b in pairs(WagonTable) do
                                                if tonumber(idForStorageCart) == tonumber(b.id) then
                                                    b.animals = json.encode(animalTable)
                                                end
                                            end
                                        else
                                            for a,b in pairs(WagonTable) do
                                                if b.selected == 1 then
                                                    b.animals = json.encode(animalTable)
                                                end
                                            end
                                        end
                                        delete_obj(holding, true)
                                        for z,x in pairs(animalTable) do
                                            count = count+1
                                        end
                                        local recalculation = count/2/100
                                        Citizen.InvokeNative(0x31F343383F19C987, entity2, tonumber(recalculation), 1) 
                                        Citizen.Wait(500)
                                    else
                                        table.insert(animalTable, {type="animal", model=Config.Animals2[GetEntityModel(holding)], quality=pedQuality, name=Config.Animals[GetEntityModel(holding)], textQuality=quality[pedQuality +1], loot=Citizen.InvokeNative(0x8DE41E9902E85756, holding)})
                                        TriggerServerEvent("gum_stables:updateAnimals", id, animalTable)
                                        if Config.CallFromStableCart or Config.SpotForTake then
                                            for a,b in pairs(WagonTable) do
                                                if tonumber(idForStorageCart) == tonumber(b.id) then
                                                    b.animals = json.encode(animalTable)
                                                end
                                            end
                                        else
                                            for a,b in pairs(WagonTable) do
                                                if b.selected == 1 then
                                                    b.animals = json.encode(animalTable)
                                                end
                                            end
                                        end
                                        delete_obj(holding, true)
                                        for z,x in pairs(animalTable) do
                                            count = count+1
                                        end
                                        local recalculation = count/2/100
                                        Citizen.InvokeNative(0x31F343383F19C987, entity2, tonumber(recalculation), 1) 
                                        Citizen.Wait(500)
                                    end
                                end
                                if Config.Pelts[GetEntityModel(holding)] ~= nil then
                                    table.insert(animalTable, {type="pelt", model=Config.Pelts2[GetEntityModel(holding)][1], name=Config.Pelts[GetEntityModel(holding)], provisionHash=provision_hash})
                                    TriggerServerEvent("gum_stables:updateAnimals", id, animalTable)
                                    if Config.CallFromStableCart or Config.SpotForTake then
                                        for a,b in pairs(WagonTable) do
                                            if tonumber(idForStorageCart) == tonumber(b.id) then
                                                b.animals = json.encode(animalTable)
                                            end
                                        end
                                    else
                                        for a,b in pairs(WagonTable) do
                                            if b.selected == 1 then
                                                b.animals = json.encode(animalTable)
                                            end
                                        end
                                    end
                                    for z,x in pairs(animalTable) do
                                        count = count+1
                                    end
                                    local recalculation = count/2/100
                                    Citizen.InvokeNative(0x31F343383F19C987, entity2, tonumber(recalculation), 1) 
                                    delete_obj(holding, true)
                                    Citizen.Wait(500)
                                end      
                            end
                        end
                    end
                end

                opti2 = 5
                local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                if vehicle ~= 0 then
                    if IsPedInAnyVehicle(PlayerPedId(), true) then
                        vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                    end
                    SetVehicleDoorsShut(vehicle, true)

                    local WagonList = filter(Config.Wagons)
                    for k,v in pairs(WagonList) do
                        for key,value in pairs(WagonTable) do
                            if value["selected"] == 1 then
                                if addon_ability > 0 then
                                    if value["model"] == k then
                                        local calculate_speed = (14.0-math.percent(addon_ability, 100)/10)
                                        if calculate_speed <= 3.0 then
                                            Citizen.InvokeNative(0x0C3F0F7F92CA847C, vehicle, 4.0)
                                        else
                                            Citizen.InvokeNative(0x0C3F0F7F92CA847C, vehicle, calculate_speed)
                                        end
                                    end
                                end
                                if counting_wagon > 0 then
                                    if value["model"] == k then
                                        local calculate_speed = (14.0-math.percent(counting_wagon, 100)/10)
                                        if calculate_speed <= 3.0 then
                                            Citizen.InvokeNative(0x0C3F0F7F92CA847C, vehicle, 4.0)
                                        else
                                            Citizen.InvokeNative(0x0C3F0F7F92CA847C, vehicle, calculate_speed)
                                        end
                                    end
                                end 
                            end
                        end
                    end
                end
            end

            local coords = GetEntityCoords(PlayerPedId())
            local wagonCoords = GetEntityCoords(entity2)
            if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, wagonCoords.x, wagonCoords.y, coords.z, false) < 2.5 then
                if huntingCarts[GetEntityModel(entity2)] then
                    PromptSetVisible(animalPrompt, true)
                else
                    PromptSetVisible(animalPrompt, false)
                end
                if GetEntityModel(entity2) == GetHashKey("oilWagon01x")  then
                    PromptSetVisible(OpenWagonPrompt, false)
                else
                    PromptSetVisible(OpenWagonPrompt, true)
                end
                if not dh_on then
                    local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
                    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                    if vehicle == 0 and holding == false then
                        active = false
                        if active == false then
                            if showFix == false then
                                if canSaveDmg == true then
                                    local item_name_4 = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[94].text.." "..GetEntityHealth(entity2).." HP / 1000 HP")
                                    PromptSetActiveGroupThisFrame(buttons_prompt_4, item_name_4)
                                else
                                    local item_name_4 = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[94].text.." "..Config.Language[384].text.."...")
                                    PromptSetActiveGroupThisFrame(buttons_prompt_4, item_name_4)
                                end
                            end
                        end
                        if Citizen.InvokeNative(0xE0F65F0640EF0617, debugPrompt) then
                            local EntityCoords, EntityHeading = GetEntityCoords(entity2), GetEntityHeading(entity2)
                            Citizen.Wait(10)
                            fleeWagon(true)
                            Citizen.Wait(200)
                            for k,v in pairs(WagonTable) do
                                if tonumber(idForStorageCart) == v.id then
                                    initiateWagon(v.model, v.id, EntityCoords.x, EntityCoords.y, EntityCoords.z, EntityHeading, true)
                                end
                            end
                        end
                        if Citizen.InvokeNative(0xE0F65F0640EF0617, OpenWagonPrompt) then
                            local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
                            if holding == false then
                                if Config.CallFromStableCart or Config.SpotForTake then
                                    for k,v in pairs(WagonTable) do
                                        if tonumber(idForStorageCart) == tonumber(v.id) then
                                            if v["model"] == "logwagon" then
                                                WagonList = filter(Config.Wagons)
                                                for k2,v2 in pairs(WagonList) do
                                                    if k2 == v["model"] then
                                                        TriggerServerEvent("gum_stables:getAbility", v2[4], v["id"], v["model"], "wood")
                                                        Citizen.Wait(1000)
                                                    end
                                                end
                                            elseif v["model"] == "coal_wagon" then
                                                WagonList = filter(Config.Wagons)
                                                for k2,v2 in pairs(WagonList) do
                                                    if k2 == v["model"] then
                                                        TriggerServerEvent("gum_stables:getAbility", v2[4], v["id"], v["model"], "stone")
                                                        Citizen.Wait(1000)
                                                    end
                                                end
                                            elseif v["model"] == "oilWagon01x" then
                                            else
                                                WagonList = filter(Config.Wagons)
                                                for k2,v2 in pairs(WagonList) do
                                                    if k2 == v["model"] then
                                                        TriggerServerEvent("gumCore:registerstorage", GetPlayerServerId(PlayerId()), "wagon_"..v["id"], v2[4])
                                                        SetNuiFocus(true, true)
                                                        SendNUIMessage({type = "openBagsManage", size=v2[4], id=v["id"], cart=true, shared=Config.Access_Other_Storage, byId=Config.Access_Only_Id, clothes=Config.Clothe1InBlanket})
                                                        Citizen.Wait(1000)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                else
                                    for k,v in pairs(WagonTable) do
                                        if tonumber(v.selected) == tonumber(1) then
                                            if v["model"] == "logwagon" then
                                                WagonList = filter(Config.Wagons)
                                                for k2,v2 in pairs(WagonList) do
                                                    if k2 == v["model"] then
                                                        TriggerServerEvent("gum_stables:getAbility", v2[4], v["id"], v["model"], "wood")
                                                        Citizen.Wait(1000)
                                                    end
                                                end
                                            elseif v["model"] == "coal_wagon" then
                                                WagonList = filter(Config.Wagons)
                                                for k2,v2 in pairs(WagonList) do
                                                    if k2 == v["model"] then
                                                        TriggerServerEvent("gum_stables:getAbility", v2[4], v["id"], v["model"], "stone")
                                                        Citizen.Wait(1000)
                                                    end
                                                end
                                            elseif v["model"] == "oilWagon01x" then
                                            else
                                                WagonList = filter(Config.Wagons)
                                                for k2,v2 in pairs(WagonList) do
                                                    if k2 == v["model"] then
                                                        TriggerServerEvent("gumCore:registerstorage", GetPlayerServerId(PlayerId()), "wagon_"..v["id"], v2[4])
                                                        SetNuiFocus(true, true)
                                                        SendNUIMessage({type = "openBagsManage", size=v2[4], id=v["id"], cart=true, shared=Config.Access_Other_Storage, byId=Config.Access_Only_Id, clothes=Config.Clothe1InBlanket})
                                                        Citizen.Wait(1000)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            else
                                if Config.CallFromStableCart or Config.SpotForTake then
                                    for k,v in pairs(WagonTable) do
                                        if tonumber(idForStorageCart) == tonumber(v.id) then
                                            if v["model"] == "logwagon" then
                                                WagonList = filter(Config.Wagons)
                                                for k2,v2 in pairs(WagonList) do
                                                    if k2 == v["model"] then
                                                        TriggerServerEvent("gum_stables:getAbility", v2[4], v["id"], v["model"], "wood")
                                                        Citizen.Wait(1000)
                                                    end
                                                end
                                            elseif v["model"] == "coal_wagon" then
                                                WagonList = filter(Config.Wagons)
                                                for k2,v2 in pairs(WagonList) do
                                                    if k2 == v["model"] then
                                                        TriggerServerEvent("gum_stables:getAbility", v2[4], v["id"], v["model"], "stone")
                                                        Citizen.Wait(1000)
                                                    end
                                                end
                                            elseif v["model"] == "oilWagon01x" then
                                            else
                                                WagonList = filter(Config.Wagons)
                                                for k2,v2 in pairs(WagonList) do
                                                    if k2 == v["model"] then
                                                        TriggerServerEvent("gumCore:registerstorage", GetPlayerServerId(PlayerId()), "wagon_"..v["id"], v2[4])
                                                        SetNuiFocus(true, true)
                                                        SendNUIMessage({type = "openBagsManage", size=v2[4], id=v["id"], cart=true, shared=Config.Access_Other_Storage, byId=Config.Access_Only_Id, clothes=Config.Clothe1InBlanket})
                                                        Citizen.Wait(1000)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                else
                                    for k,v in pairs(WagonTable) do
                                        if tonumber(v.selected) == tonumber(v.id) then
                                            if v["model"] == "logwagon" then
                                                WagonList = filter(Config.Wagons)
                                                for k2,v2 in pairs(WagonList) do
                                                    if k2 == v["model"] then
                                                        TriggerServerEvent("gum_stables:getAbility", v2[4], v["id"], v["model"], "wood")
                                                        Citizen.Wait(1000)
                                                    end
                                                end
                                            elseif v["model"] == "coal_wagon" then
                                                WagonList = filter(Config.Wagons)
                                                for k2,v2 in pairs(WagonList) do
                                                    if k2 == v["model"] then
                                                        TriggerServerEvent("gum_stables:getAbility", v2[4], v["id"], v["model"], "stone")
                                                        Citizen.Wait(1000)
                                                    end
                                                end
                                            elseif v["model"] == "oilWagon01x" then
                                            else
                                                WagonList = filter(Config.Wagons)
                                                for k2,v2 in pairs(WagonList) do
                                                    if k2 == v["model"] then
                                                        TriggerServerEvent("gumCore:registerstorage", GetPlayerServerId(PlayerId()), "wagon_"..v["id"], v2[4])
                                                        SetNuiFocus(true, true)
                                                        SendNUIMessage({type = "openBagsManage", size=v2[4], id=v["id"], cart=true, shared=Config.Access_Other_Storage, byId=Config.Access_Only_Id, clothes=Config.Clothe1InBlanket})
                                                        Citizen.Wait(1000)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end     
                        if Citizen.InvokeNative(0xE0F65F0640EF0617, animalPrompt) then
                            Citizen.Wait(100)
                            if Config.CallFromStableCart or Config.SpotForTake then
                                local storageForAnimals = 0
                                for k,v in pairs(WagonTable) do
                                    if tonumber(idForStorageCart) == tonumber(v.id) then
                                        WagonList = filter(Config.Wagons)
                                        for k2,v2 in pairs(WagonList) do
                                            if k2 == v["model"] then
                                                storageForAnimals = v2[4]/Config.HuntingCartCalculate
                                                local animalsData = json.decode(v.animals)
                                                if animalsData == nil then
                                                    animalsData = {}
                                                end
                                                OpenAnimalMenu(v.id, animalsData, storageForAnimals)
                                            end
                                        end
                                    end
                                end
                            else
                                local storageForAnimals = 0
                                for k,v in pairs(WagonTable) do
                                    if v["selected"] == 1 then
                                        WagonList = filter(Config.Wagons)
                                        for k2,v2 in pairs(WagonList) do
                                            if k2 == v["model"] then
                                                storageForAnimals = v2[4]/Config.HuntingCartCalculate
                                                local animalsData = json.decode(v.animals)
                                                if animalsData == nil then
                                                    animalsData = {}
                                                end
                                                OpenAnimalMenu(v.id, animalsData, storageForAnimals)
                                            end
                                        end
                                    end
                                end
                            end
                            Citizen.Wait(500)
                        end

                        if Citizen.InvokeNative(0xE0F65F0640EF0617, SellWagonPrompt) then
                            active = true
                            Citizen.Wait(500)
                            TriggerEvent("guminputs:getInput", ""..Config.Language[53].text.."", ""..Config.Language[95].text.."", function(cb)
                                local playerid = tonumber(cb)
                                if playerid ~= 'close' and playerid ~= nil then
                                    TriggerServerEvent("gum_stables:transfer_wagon", playerid, idForStorageCart)
                                    fleeWagon()
                                    active = false
                                    return false
                                end
                            end)
                        end
                    else
                        active = true
                    end
                end
                if PromptHasHoldModeCompleted(UnsummonPrompt) then
                    fleeWagon()
                    can_call_cart_time = Config.CooldownWagon
                end
            else
                if open_menu_wagon == true then
                    in_interact = false
                    active = false
                    open_menu_wagon = false
                end
            end
        else
            opti2 = 1000
        end
        Citizen.Wait(opti2)
    end
end)

Citizen.CreateThread(function()
    while true do
        local opti = 50
        local coords = GetEntityCoords(PlayerPedId())
        if Citizen.InvokeNative(0x67722AEB798E5FAB, PlayerPedId()) then
            dh_on = true
        else
            dh_on = false
        end
        if Config.Access_Other_Storage then
            if Config.Access_Only_Id then   
                if checkHorse ~= horseentity and checkCart ~= entity2 then
                    if DoesEntityExist(checkHorse) then
                        local horseCoords = GetEntityCoords(checkHorse)
                        if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, horseCoords.x, horseCoords.y, horseCoords.z, false) < 1.5 and not dh_on then
                            if GetEntityType(checkHorse) == 1 then
                                if horse_data_all[NetworkGetNetworkIdFromEntity(checkHorse)] ~= nil then
                                    if allowedJob and Config.jobAccess then
                                        if GetMount(PlayerPedId()) == 0 and GetVehiclePedIsUsing(PlayerPedId()) == 0 then
                                            local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
                                            if Citizen.InvokeNative(0xFB4891BD7578CDC1, checkHorse, GetHashKey("HORSE_SADDLEBAGS")) and not holding then
                                                opti = 5
                                                if active_other == false then
                                                    local item_name = CreateVarString(10, 'LITERAL_STRING', Config.Language[355].text)
                                                    PromptSetActiveGroupThisFrame(buttons_prompt_other, item_name)
                                                end
                                                if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, Config.Keysconfig[7].key) then
                                                    Open_Bags_Menu_Other(horse_data_all[NetworkGetNetworkIdFromEntity(checkHorse)].id, false, checkHorse)
                                                    Citizen.InvokeNative(0xCD181A959CFDD7F4, PlayerPedId(), k, GetHashKey("Interaction_LootSaddleBags"), 0, 1)
                                                    Citizen.Wait(2000)
                                                end
                                            end
                                        end
                                    end
                                    for a,b in pairs(horse_data_all[NetworkGetNetworkIdFromEntity(checkHorse)].access) do
                                        if b == GetPlayerServerId(PlayerId()) then
                                            if GetMount(PlayerPedId()) == 0 and GetVehiclePedIsUsing(PlayerPedId()) == 0 then
                                                local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
                                                if Citizen.InvokeNative(0xFB4891BD7578CDC1, checkHorse, GetHashKey("HORSE_SADDLEBAGS")) and not holding then
                                                    opti = 5
                                                    if active_other == false then
                                                        local item_name = CreateVarString(10, 'LITERAL_STRING', Config.Language[355].text)
                                                        PromptSetActiveGroupThisFrame(buttons_prompt_other, item_name)
                                                    end
                                                    if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, Config.Keysconfig[7].key) then
                                                        Open_Bags_Menu_Other(horse_data_all[NetworkGetNetworkIdFromEntity(checkHorse)].id, false, checkHorse)
                                                        Citizen.InvokeNative(0xCD181A959CFDD7F4, PlayerPedId(), k, GetHashKey("Interaction_LootSaddleBags"), 0, 1)
                                                        Citizen.Wait(2000)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                    if DoesEntityExist(checkCart) then
                        local cartCoords = GetEntityCoords(checkCart)
                        if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, cartCoords.x, cartCoords.y, cartCoords.z, false) < 2.0 and not dh_on and not workerCarts[GetEntityModel(checkCart)] then
                            if GetEntityType(checkCart) == 2 then
                                if horse_data_all[NetworkGetNetworkIdFromEntity(checkCart)] ~= nil then
                                    if allowedJob and Config.jobAccess then
                                        local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
                                        if GetMount(PlayerPedId()) == 0 and GetVehiclePedIsUsing(PlayerPedId()) == 0 and not holding then
                                            opti = 5
                                            if active_other == false then
                                                local item_name = CreateVarString(10, 'LITERAL_STRING', Config.Language[355].text)
                                                PromptSetActiveGroupThisFrame(buttons_prompt_other, item_name)
                                            end
                                            if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, Config.Keysconfig[7].key) then
                                                Open_Bags_Menu_Other(horse_data_all[NetworkGetNetworkIdFromEntity(checkCart)].id, true, checkCart)
                                                Citizen.Wait(2000)
                                            end
                                        end
                                    end
                                    for a,b in pairs(horse_data_all[NetworkGetNetworkIdFromEntity(checkCart)].access) do
                                        if b == GetPlayerServerId(PlayerId()) then
                                            local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
                                            if GetMount(PlayerPedId()) == 0 and GetVehiclePedIsUsing(PlayerPedId()) == 0 and not holding then
                                                opti = 5
                                                if active_other == false then
                                                    local item_name = CreateVarString(10, 'LITERAL_STRING', Config.Language[355].text)
                                                    PromptSetActiveGroupThisFrame(buttons_prompt_other, item_name)
                                                end
                                                if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, Config.Keysconfig[7].key) then
                                                    Open_Bags_Menu_Other(horse_data_all[NetworkGetNetworkIdFromEntity(checkCart)].id, true, checkCart)
                                                    Citizen.Wait(2000)
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            else
                if checkHorse ~= horseentity and checkCart ~= entity2 then
                    local horseCoords = GetEntityCoords(checkHorse)
                    local cartCoords = GetEntityCoords(checkCart)
                    if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, horseCoords.x, horseCoords.y, horseCoords.z, false) < 1.5 and not dh_on then
                        if GetEntityType(checkHorse) == 1 then
                            if horse_data_all[NetworkGetNetworkIdFromEntity(checkHorse)] ~= nil then
                                if GetMount(PlayerPedId()) == 0 and GetVehiclePedIsUsing(PlayerPedId()) == 0 then
                                    local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
                                    if Citizen.InvokeNative(0xFB4891BD7578CDC1, checkHorse, GetHashKey("HORSE_SADDLEBAGS")) and not holding and GetEntityHealth(PlayerPedId()) ~= 0 then
                                        opti = 5
                                        if active_other == false then
                                            local item_name = CreateVarString(10, 'LITERAL_STRING', Config.Language[355].text)
                                            PromptSetActiveGroupThisFrame(buttons_prompt_other, item_name)
                                        end
                                        if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, Config.Keysconfig[7].key) then
                                            Open_Bags_Menu_Other(horse_data_all[NetworkGetNetworkIdFromEntity(checkHorse)].id, false, checkHorse)
                                            Citizen.InvokeNative(0xCD181A959CFDD7F4, PlayerPedId(), k, GetHashKey("Interaction_LootSaddleBags"), 0, 1)
                                            Citizen.Wait(2000)
                                        end
                                    end
                                end
                            end
                        end
                    end
                    if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, cartCoords.x, cartCoords.y, cartCoords.z, false) < 2.0 and not dh_on and not workerCarts[GetEntityModel(checkCart)] then
                        if GetEntityType(checkCart) == 2 then
                           if horse_data_all[NetworkGetNetworkIdFromEntity(checkCart)] ~= nil then
                            local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
                                if GetMount(PlayerPedId()) == 0 and GetVehiclePedIsUsing(PlayerPedId()) == 0 and not holding and GetEntityHealth(PlayerPedId()) ~= 0 then
                                    opti = 5
                                    if active_other == false then
                                        local item_name = CreateVarString(10, 'LITERAL_STRING', Config.Language[355].text)
                                        PromptSetActiveGroupThisFrame(buttons_prompt_other, item_name)
                                    end
                                    if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, Config.Keysconfig[7].key) then
                                        Open_Bags_Menu_Other(horse_data_all[NetworkGetNetworkIdFromEntity(checkCart)].id, true, checkCart)
                                        Citizen.Wait(2000)
                                    end
                                end
                            end
                        end
                   end
                end
            end
        end
        if SaddlesBagss and horseentity ~= nil then
            opti = 5
            local horseCoords2 = GetEntityCoords(horseentity)
            if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, horseCoords2.x, horseCoords2.y, horseCoords2.z, false) < 2.5 and not dh_on then
                DisableControlAction(0, 0x5966D52A, true)
            end
        end
        if horseentity ~= nil then
            if GetEntityHealth(horseentity) == 0.0 then
                local horseCoords2 = GetEntityCoords(horseentity)
                if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, horseCoords2.x, horseCoords2.y, horseCoords2.z, false) < 2.0 and not dh_on then
                    opti = 10
                    if active_other == false then
                        local item_name = CreateVarString(10, 'LITERAL_STRING', Config.Language[355].text)
                        PromptSetActiveGroupThisFrame(buttons_prompt_other, item_name)
                    end
                    if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, Config.Keysconfig[7].key) then
                        if Config.CallFromStableHorse or Config.SpotForTake then
                            for k,v in pairs(horse_table) do
                                if tonumber(idForStorageHorse) == tonumber(v.id) or tonumber(v["selected"]) == 1 then
                                    TriggerServerEvent("gum_stables:check_storage", v["id"], false)
                                    Citizen.Wait(500)
                                    for c,d in pairs(Config.Horses) do
                                        for x,y in pairs(d) do 
                                            if y[1] ~= nil then
                                                if x == v["model"] then
                                                    TriggerServerEvent("gumCore:registerstorage", GetPlayerServerId(PlayerId()), "horse_"..v["id"], y[4])
                                                    SetNuiFocus(true, true)
                                                    SendNUIMessage({type = "openBagsManage", size=y[4], id=v["id"], cart=false, shared=Config.Access_Other_Storage, byId=Config.Access_Only_Id, clothes=Config.Clothe1InBlanket})
                                                    Citizen.Wait(1000)
                                                end
                                            end
                                        end                                 
                                    end
                                end
                            end
                        else
                            for k,v in pairs(horse_table) do
                                if v["selected"] == 1 then
                                    TriggerServerEvent("gum_stables:check_storage", v["id"], false)
                                    Citizen.Wait(500)
                                    for c,d in pairs(Config.Horses) do
                                        for x,y in pairs(d) do 
                                            if y[1] ~= nil then
                                                if x == v["model"] then
                                                    TriggerServerEvent("gumCore:registerstorage", GetPlayerServerId(PlayerId()), "horse_"..v["id"], y[4])
                                                    SetNuiFocus(true, true)
                                                    SendNUIMessage({type = "openBagsManage", size=y[4], id=v["id"], cart=false, shared=Config.Access_Other_Storage, byId=Config.Access_Only_Id, clothes=Config.Clothe1InBlanket})
                                                    Citizen.Wait(1000)
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
        end
        if Config.OnlyTrainerSeeStats then
            if is_trainer == true and Citizen.InvokeNative(0xEFC4303DDC6E60D3, PlayerPedId()) == 1 then
                opti = 5
                local horseCoords2 = GetEntityCoords(horseentity)
                if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, horseCoords2.x, horseCoords2.y, horseCoords2.z, false) < 2.5 and not dh_on then
                    if Config.SpotForTake or Config.CallFromStableHorse then
                        for k,v in pairs(horse_table) do
                            if idForStorageHorse == v.id or tonumber(v["selected"]) == 1 then
                                horsemax = GetMaxAttributePoints(horseentity, 7)
                                levels()
                                local item_name = ""
                                local courageData = 0
                                local friendlyData = 0
                                if v.courage == nil then
                                    courageData = 0
                                else
                                    courageData = v.courage
                                end
                                if v.friendly == nil then
                                    friendlyData = 0
                                else
                                    friendlyData = v.friendly
                                end
                                if exp_horse+exp_writed >= horsemax then
                                    if Config.CourageSystem and Config.FriendlySystem then
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..horsemax.." / "..horsemax.." | "..Config.Language[425].text.." : "..friendlyData.." | "..Config.Language[426].text.." : "..courageData.."")
                                    elseif Config.CourageSystem and not Config.FriendlySystem then
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..horsemax.." / "..horsemax.." | "..Config.Language[426].text.." : "..courageData.."")
                                    elseif Config.FriendlySystem and not Config.CourageSystem then
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..horsemax.." / "..horsemax.." | "..Config.Language[425].text.." : "..friendlyData.."")
                                    else
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..horsemax.." / "..horsemax.."")
                                    end
                                else
                                    if Config.CourageSystem and Config.FriendlySystem then
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..exp_horse+exp_writed.." / "..horsemax.." | "..Config.Language[425].text.." : "..friendlyData.." | "..Config.Language[426].text.." : "..courageData.."")
                                    elseif Config.CourageSystem and not Config.FriendlySystem then
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..exp_horse+exp_writed.." / "..horsemax.." | "..Config.Language[426].text.." : "..courageData.."")
                                    elseif Config.FriendlySystem and not Config.CourageSystem then
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..exp_horse+exp_writed.." / "..horsemax.." | "..Config.Language[425].text.." : "..friendlyData.."")
                                    else
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..exp_horse+exp_writed.." / "..horsemax.."")
                                    end
                                end
                                PromptSetActiveGroupThisFrame(trainerprompt, item_name)
                                if Citizen.InvokeNative(0x91AEF906BCA88877, 0, 0x07B8BEAF) then
                                    ClearPedTasks(PlayerPedId())
                                end
                            end
                        end
                    else
                        for k,v in pairs(horse_table) do
                            if v["selected"] == 1 then
                                horsemax = GetMaxAttributePoints(horseentity, 7)
                                levels()
                                local item_name = ""
                                local courageData = 0
                                local friendlyData = 0
                                if v.courage == nil then
                                    courageData = 0
                                else
                                    courageData = v.courage
                                end
                                if v.friendly == nil then
                                    friendlyData = 0
                                else
                                    friendlyData = v.friendly
                                end
                                if exp_horse+exp_writed >= horsemax then
                                    if Config.CourageSystem and Config.FriendlySystem then
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..horsemax.." / "..horsemax.." | "..Config.Language[425].text.." : "..friendlyData.." | "..Config.Language[426].text.." : "..courageData.."")
                                    elseif Config.CourageSystem and not Config.FriendlySystem then
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..horsemax.." / "..horsemax.." | "..Config.Language[426].text.." : "..courageData.."")
                                    elseif Config.FriendlySystem and not Config.CourageSystem then
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..horsemax.." / "..horsemax.." | "..Config.Language[425].text.." : "..friendlyData.."")
                                    else
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..horsemax.." / "..horsemax.."")
                                    end
                                else
                                    if Config.CourageSystem and Config.FriendlySystem then
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..exp_horse+exp_writed.." / "..horsemax.." | "..Config.Language[425].text.." : "..friendlyData.." | "..Config.Language[426].text.." : "..courageData.."")
                                    elseif Config.CourageSystem and not Config.FriendlySystem then
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..exp_horse+exp_writed.." / "..horsemax.." | "..Config.Language[426].text.." : "..courageData.."")
                                    elseif Config.FriendlySystem and not Config.CourageSystem then
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..exp_horse+exp_writed.." / "..horsemax.." | "..Config.Language[425].text.." : "..friendlyData.."")
                                    else
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..exp_horse+exp_writed.." / "..horsemax.."")
                                    end
                                end
                                PromptSetActiveGroupThisFrame(trainerprompt, item_name)
                                if Citizen.InvokeNative(0x91AEF906BCA88877, 0, 0x07B8BEAF) then
                                    ClearPedTasks(PlayerPedId())
                                end
                            end
                        end
                    end
                end
            end
        else
            if Citizen.InvokeNative(0xEFC4303DDC6E60D3, PlayerPedId()) == 1 then
                opti = 5
                local horseCoords2 = GetEntityCoords(horseentity)
                if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, horseCoords2.x, horseCoords2.y, horseCoords2.z, false) < 2.5 and not dh_on then
                    if Config.SpotForTake or Config.CallFromStableHorse then
                        for k,v in pairs(horse_table) do
                            if idForStorageHorse == v.id or tonumber(v["selected"]) == 1 then
                                horsemax = GetMaxAttributePoints(horseentity, 7)
                                levels()
                                local item_name = ""
                                local courageData = 0
                                local friendlyData = 0
                                if v.courage == nil then
                                    courageData = 0
                                else
                                    courageData = v.courage
                                end
                                if v.friendly == nil then
                                    friendlyData = 0
                                else
                                    friendlyData = v.friendly
                                end
                                if exp_horse+exp_writed >= horsemax then
                                    if Config.CourageSystem and Config.FriendlySystem then
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..horsemax.." / "..horsemax.." | "..Config.Language[425].text.." : "..friendlyData.." | "..Config.Language[426].text.." : "..courageData.."")
                                    elseif Config.CourageSystem and not Config.FriendlySystem then
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..horsemax.." / "..horsemax.." | "..Config.Language[426].text.." : "..courageData.."")
                                    elseif Config.FriendlySystem and not Config.CourageSystem then
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..horsemax.." / "..horsemax.." | "..Config.Language[425].text.." : "..friendlyData.."")
                                    else
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..horsemax.." / "..horsemax.."")
                                    end
                                else
                                    if Config.CourageSystem and Config.FriendlySystem then
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..exp_horse+exp_writed.." / "..horsemax.." | "..Config.Language[425].text.." : "..friendlyData.." | "..Config.Language[426].text.." : "..courageData.."")
                                    elseif Config.CourageSystem and not Config.FriendlySystem then
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..exp_horse+exp_writed.." / "..horsemax.." | "..Config.Language[426].text.." : "..courageData.."")
                                    elseif Config.FriendlySystem and not Config.CourageSystem then
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..exp_horse+exp_writed.." / "..horsemax.." | "..Config.Language[425].text.." : "..friendlyData.."")
                                    else
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..exp_horse+exp_writed.." / "..horsemax.."")
                                    end
                                end
                                PromptSetActiveGroupThisFrame(trainerprompt, item_name)
                                if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, 0x07B8BEAF) then
                                    ClearPedTasks(PlayerPedId())
                                end
                            end
                        end
                    else
                        for k,v in pairs(horse_table) do
                            if v["selected"] == 1 then
                                horsemax = GetMaxAttributePoints(horseentity, 7)
                                levels()
                                local item_name = ""
                                local courageData = 0
                                local friendlyData = 0
                                if v.courage == nil then
                                    courageData = 0
                                else
                                    courageData = v.courage
                                end
                                if v.friendly == nil then
                                    friendlyData = 0
                                else
                                    friendlyData = v.friendly
                                end
                                if exp_horse+exp_writed >= horsemax then
                                    if Config.CourageSystem and Config.FriendlySystem then
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..horsemax.." / "..horsemax.." | "..Config.Language[425].text.." : "..friendlyData.." | "..Config.Language[426].text.." : "..courageData.."")
                                    elseif Config.CourageSystem and not Config.FriendlySystem then
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..horsemax.." / "..horsemax.." | "..Config.Language[426].text.." : "..courageData.."")
                                    elseif Config.FriendlySystem and not Config.CourageSystem then
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..horsemax.." / "..horsemax.." | "..Config.Language[425].text.." : "..friendlyData.."")
                                    else
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..horsemax.." / "..horsemax.."")
                                    end
                                else
                                    if Config.CourageSystem and Config.FriendlySystem then
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..exp_horse+exp_writed.." / "..horsemax.." | "..Config.Language[425].text.." : "..friendlyData.." | "..Config.Language[426].text.." : "..courageData.."")
                                    elseif Config.CourageSystem and not Config.FriendlySystem then
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..exp_horse+exp_writed.." / "..horsemax.." | "..Config.Language[426].text.." : "..courageData.."")
                                    elseif Config.FriendlySystem and not Config.CourageSystem then
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..exp_horse+exp_writed.." / "..horsemax.." | "..Config.Language[425].text.." : "..friendlyData.."")
                                    else
                                        item_name = CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[385].text.." : "..exp_horse+exp_writed.." / "..horsemax.."")
                                    end
                                end
                                PromptSetActiveGroupThisFrame(trainerprompt, item_name)
                                if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, 0x07B8BEAF) then
                                    ClearPedTasks(PlayerPedId())
                                end
                            end
                        end
                    end
                end
            end
        end
        local isTargetting, targetEntity = GetPlayerTargetEntity(PlayerId())
        if targetEntity == horseentity and isTargetting == 1 then
            opti = 5
            DisableControlAction(0, 0x17D3BFF5, true)
            DisableControlAction(0, 0x0D55A0F0, true)
            DisableControlAction(0, 0x5415BE48, true)
            DisableControlAction(0, 0x63A38F2C, true)
            DisableControlAction(0, 0x31219490, true)
            DisableControlAction(0, 0x5415BE48, true)
            DisableControlAction(0, 0x4216AF06, true)
            DisableControlAction(0, 0xB2F377E8, true)
            horsemax = GetMaxAttributePoints(horseentity, 7)
            levels()
            if Config.SpotForTake or Config.CallFromStableHorse then
                for k,v in pairs(horse_table) do
                    if idForStorageHorse == v.id or tonumber(v["selected"]) == 1 then
                        if is_trainer then
                            if v["age"] == Config.Language[417].text then 
                                if tonumber(horsemax) >= tonumber(exp_horse) then
                                    SetPedNameDebug(targetEntity, ""..Config.Language[47].text.." : "..Config.Language[417].text.."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..exp_horse+exp_writed.." / "..horsemax)
                                    SetPedPromptName(targetEntity, ""..Config.Language[47].text.." : "..Config.Language[417].text.."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..exp_horse+exp_writed.." / "..horsemax)
                                else
                                    SetPedNameDebug(targetEntity, ""..Config.Language[47].text.." : "..Config.Language[417].text.."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..horsemax.." / "..horsemax)
                                    SetPedPromptName(targetEntity, ""..Config.Language[47].text.." : "..Config.Language[417].text.."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..horsemax.." / "..horsemax)
                                end
                            else
                                if tonumber(horsemax) >= tonumber(exp_horse) then
                                    SetPedNameDebug(targetEntity, ""..Config.Language[47].text.." : "..tonumber(string.format("%.2f", v["age"])).."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..exp_horse+exp_writed.." / "..horsemax)
                                    SetPedPromptName(targetEntity, ""..Config.Language[47].text.." : "..tonumber(string.format("%.2f", v["age"])).."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..exp_horse+exp_writed.." / "..horsemax)
                                else
                                    SetPedNameDebug(targetEntity, ""..Config.Language[47].text.." : "..tonumber(string.format("%.2f", v["age"])).."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..horsemax.." / "..horsemax)
                                    SetPedPromptName(targetEntity, ""..Config.Language[47].text.." : "..tonumber(string.format("%.2f", v["age"])).."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..horsemax.." / "..horsemax)
                                end
                            end
                        else
                            if v["age"] == Config.Language[417].text then
                                if tonumber(horsemax) >= tonumber(exp_horse) then
                                    SetPedNameDebug(targetEntity, ""..Config.Language[47].text.." : "..Config.Language[417].text.."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..exp_horse+exp_writed.." / "..horsemax)
                                    SetPedPromptName(targetEntity, ""..Config.Language[47].text.." : "..Config.Language[417].text.."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..exp_horse+exp_writed.." / "..horsemax)
                                else
                                    SetPedNameDebug(targetEntity, ""..Config.Language[47].text.." : "..Config.Language[417].text.."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..horsemax.." / "..horsemax)
                                    SetPedPromptName(targetEntity, ""..Config.Language[47].text.." : "..Config.Language[417].text.."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..horsemax.." / "..horsemax)
                                end
                            else
                                if tonumber(horsemax) >= tonumber(exp_horse) then
                                    SetPedNameDebug(targetEntity, ""..Config.Language[47].text.." : "..tonumber(string.format("%.2f", v["age"])).."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..exp_horse+exp_writed.." / "..horsemax)
                                    SetPedPromptName(targetEntity, ""..Config.Language[47].text.." : "..tonumber(string.format("%.2f", v["age"])).."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..exp_horse+exp_writed.." / "..horsemax)
                                else
                                    SetPedNameDebug(targetEntity, ""..Config.Language[47].text.." : "..tonumber(string.format("%.2f", v["age"])).."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..horsemax.." / "..horsemax)
                                    SetPedPromptName(targetEntity, ""..Config.Language[47].text.." : "..tonumber(string.format("%.2f", v["age"])).."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..horsemax.." / "..horsemax)
                                end
                            end
                        end
                    end
                end
            else
                for k,v in pairs(horse_table) do
                    if v["selected"] == 1 then
                        if is_trainer then
                            if v["age"] == Config.Language[417].text then 
                                if tonumber(horsemax) >= tonumber(exp_horse) then
                                    SetPedNameDebug(targetEntity, ""..Config.Language[47].text.." : "..Config.Language[417].text.."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..exp_horse+exp_writed.." / "..horsemax)
                                    SetPedPromptName(targetEntity, ""..Config.Language[47].text.." : "..Config.Language[417].text.."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..exp_horse+exp_writed.." / "..horsemax)
                                else
                                    SetPedNameDebug(targetEntity, ""..Config.Language[47].text.." : "..Config.Language[417].text.."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..horsemax.." / "..horsemax)
                                    SetPedPromptName(targetEntity, ""..Config.Language[47].text.." : "..Config.Language[417].text.."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..horsemax.." / "..horsemax)
                                end
                            else
                                if tonumber(horsemax) >= tonumber(exp_horse) then
                                    SetPedNameDebug(targetEntity, ""..Config.Language[47].text.." : "..tonumber(string.format("%.2f", v["age"])).."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..exp_horse+exp_writed.." / "..horsemax)
                                    SetPedPromptName(targetEntity, ""..Config.Language[47].text.." : "..tonumber(string.format("%.2f", v["age"])).."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..exp_horse+exp_writed.." / "..horsemax)
                                else
                                    SetPedNameDebug(targetEntity, ""..Config.Language[47].text.." : "..tonumber(string.format("%.2f", v["age"])).."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..horsemax.." / "..horsemax)
                                    SetPedPromptName(targetEntity, ""..Config.Language[47].text.." : "..tonumber(string.format("%.2f", v["age"])).."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..horsemax.." / "..horsemax)
                                end
                            end
                        else
                            if v["age"] == Config.Language[417].text then
                                if tonumber(horsemax) >= tonumber(exp_horse) then
                                    SetPedNameDebug(targetEntity, ""..Config.Language[47].text.." : "..Config.Language[417].text.."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..exp_horse+exp_writed.." / "..horsemax)
                                    SetPedPromptName(targetEntity, ""..Config.Language[47].text.." : "..Config.Language[417].text.."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..exp_horse+exp_writed.." / "..horsemax)
                                else
                                    SetPedNameDebug(targetEntity, ""..Config.Language[47].text.." : "..Config.Language[417].text.."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..horsemax.." / "..horsemax)
                                    SetPedPromptName(targetEntity, ""..Config.Language[47].text.." : "..Config.Language[417].text.."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..horsemax.." / "..horsemax)
                                end
                            else
                                if tonumber(horsemax) >= tonumber(exp_horse) then
                                    SetPedNameDebug(targetEntity, ""..Config.Language[47].text.." : "..tonumber(string.format("%.2f", v["age"])).."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..exp_horse+exp_writed.." / "..horsemax)
                                    SetPedPromptName(targetEntity, ""..Config.Language[47].text.." : "..tonumber(string.format("%.2f", v["age"])).."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..exp_horse+exp_writed.." / "..horsemax)
                                else
                                    SetPedNameDebug(targetEntity, ""..Config.Language[47].text.." : "..tonumber(string.format("%.2f", v["age"])).."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..horsemax.." / "..horsemax)
                                    SetPedPromptName(targetEntity, ""..Config.Language[47].text.." : "..tonumber(string.format("%.2f", v["age"])).."   "..Config.Language[99].text.." : "..level.."   "..Config.Language[100].text.." : "..horsemax.." / "..horsemax)
                                end
                            end
                        end
                    end
                end
            end
            if horse_prompt1 then horse_prompt1:delete() end
            if horse_prompt3 then horse_prompt3:delete() end
            if horse_prompt2 then horse_prompt2:delete() end
            if horse_prompt4 then horse_prompt4:delete() end
            if horse_prompt5 then horse_prompt5:delete() end
            if horse_prompt6 then horse_prompt6:delete() end
            if Config.hoofHook == true then
                if horse_prompt7 then horse_prompt7:delete() end
            end
            local coords = GetEntityCoords(PlayerPedId())
            local horsecoord = GetEntityCoords(targetEntity)
            local distance = #(coords-horsecoord)
            local promptGroup = PromptGetGroupIdForTargetEntity(targetEntity)
            horse_prompt1 = Uiprompt:new(`INPUT_PROMPT_PAGE_NEXT`, ""..Config.Language[356].text.."", promptGroup)
            horse_prompt2 = Uiprompt:new(`INPUT_CONTEXT_B`, ""..Config.Language[357].text.."", promptGroup)
            horse_prompt3 = Uiprompt:new(`INPUT_MELEE_GRAPPLE_CHOKE`, ""..Config.Language[358].text.."", promptGroup)
            horse_prompt4 = Uiprompt:new(`INPUT_INTERACT_OPTION1`, ""..Config.Language[359].text.."", promptGroup)
            horse_prompt5 = Uiprompt:new(`INPUT_INTERACT_LOCKON_CALL_ANIMAL`, ""..Config.Language[360].text.."", promptGroup)
            horse_prompt6 = Uiprompt:new(`INPUT_CREATOR_RS`, ""..Config.Language[361].text.."", promptGroup)
            if Config.hoofHook == true then
                horse_prompt7 = Uiprompt:new(`INPUT_OPEN_WHEEL_MENU`, ""..Config.Language[430].text.."", promptGroup)
            end
            if Config.ShowNUIStatus then
                showedStatus1 = true
                SendNUIMessage({type = "showStatusTable", gender=GetHorseBall(horseentity), acc=GetAttributeBaseRank(horseentity, 6), spp=GetAttributeBaseRank(horseentity, 5), turn=GetAttributeBaseRank(horseentity, 4)})
            end
        else
            if Config.ShowNUIStatus then
                if showedStatus1 == true then
                    showedStatus1 = false
                    SendNUIMessage({type = "hideStatusTable"})
                    SendNUIMessage({type = "hideStatusTableWild"})
                end
            end
        end
        if Config.ShowWILDStatus then
            local isTargetting, targetEntity = GetPlayerTargetEntity(PlayerId())
            local _, wepHash = GetCurrentPedWeapon(PlayerPedId(), true, 0, true)
            if isTargetting and targetEntity and Citizen.InvokeNative(0x772A1969F649E902, GetEntityModel(targetEntity)) and Citizen.InvokeNative(0xC853230E76A152DF, wepHash) then
                if Config.OnlyTrainerSeeWildStatus then
                    if is_trainer then
                        showedStatus2 = true
                        SendNUIMessage({type = "showStatusWildTable", acc=GetAttributeBaseRank(targetEntity, 6), spp=GetAttributeBaseRank(targetEntity, 5), turn=GetAttributeBaseRank(targetEntity, 4)})
                    end
                else
                    showedStatus2 = true
                    SendNUIMessage({type = "showStatusWildTable", acc=GetAttributeBaseRank(targetEntity, 6), spp=GetAttributeBaseRank(targetEntity, 5), turn=GetAttributeBaseRank(targetEntity, 4)})
                end
            else
                if showedStatus2 == true then
                    showedStatus2 = false
                    SendNUIMessage({type = "hideStatusTableWild"})
                end
            end
        end
        Citizen.Wait(opti)
    end
end)

function GetHorseBall(horseentity)
    return Citizen.InvokeNative(0xFD1BA1EEF7985BB8, horseentity, 41611, Citizen.ResultAsFloat())
end
Citizen.CreateThread(function()
    while true do
        local opti = 500
        local coords = GetEntityCoords(PlayerPedId())
        local isTargetting, targetEntity = GetPlayerTargetEntity(PlayerId())
        if targetEntity == horseentity and isTargetting == 1 then
            opti = 5
            local horsecoord = GetEntityCoords(targetEntity)
            local distance = #(coords-horsecoord)
            if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, `INPUT_CONTEXT_B`) then
                if Config.CallFromStableHorse == false then
                    can_call_horse_time = tonumber(Config.Cooldown)
                end
                fleeHorse(true)
                Citizen.Wait(3000)
            end
            if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, `INPUT_CREATOR_RS`) then
                Citizen.Wait(500)
                TriggerEvent("guminputs:getInput", ""..Config.Language[53].text.."", ""..Config.Language[95].text.."", function(cb)
                    local playerid = tonumber(cb)
                    if playerid ~= nil and playerid ~= "close" then
                        TriggerServerEvent("gum_stables:transfer_horse", playerid, idForStorageHorse)
                        fleeHorse()
                    end
                    active = false
                    return false
                end)
            end
            if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, `INPUT_OPEN_EMOTE_WHEEL`) then
                if distance < 2.0 then
                    checkHoofState()
                end
            end
            if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, `INPUT_MELEE_GRAPPLE_CHOKE`) then
                if distance < 2.0 then
                    Citizen.InvokeNative(0x9A7A4A54596FE09D, PlayerPedId(), targetEntity)
                end
            end
            if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, `INPUT_PROMPT_PAGE_NEXT`) then
                if distance < 2.0 then
                    Components_Manipulation()
                    Citizen.Wait(50)
                end
            end
            if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, `INPUT_INTERACT_OPTION1`) then
                if distance < 2.0 then
                    TaskAnimalInteraction(PlayerPedId(), targetEntity, 2042508059, 0, 0)
                end
            end
            if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, `INPUT_INTERACT_LOCKON_CALL_ANIMAL`) then
                if distance < 2.0 then
                    if horseentity ~= nil and not IsPedOnMount(PlayerPedId()) then
                        if SaddlesBagss then
                            if Config.CallFromStableHorse or Config.SpotForTake then
                                Citizen.Wait(500)
                                for c,d in pairs(Config.Horses) do
                                    for x,y in pairs(d) do 
                                        if y[1] ~= nil then
                                            for a,b in pairs(horse_table) do
                                                if x == b["model"] then
                                                    if tonumber(idForStorageHorse) == tonumber(b.id) or tonumber(b["selected"]) == 1 then
                                                        TriggerServerEvent("gum_stables:check_storage", b["id"], false)
                                                        TriggerServerEvent("gumCore:registerstorage", GetPlayerServerId(PlayerId()), "horse_"..b["id"], y[4])
                                                        local haveBlanket = false
                                                        if Citizen.InvokeNative(0xFB4891BD7578CDC1, horseentity, GetHashKey("horse_bedrolls")) then
                                                            haveBlanket = true
                                                        end
                                                        SetNuiFocus(true, true)
                                                        SendNUIMessage({type = "openBagsManage", size=y[4], id=b["id"], cart=false, blanket=haveBlanket, shared=Config.Access_Other_Storage, byId=Config.Access_Only_Id, clothes=Config.Clothe1InBlanket})
                                                        Citizen.InvokeNative(0xCD181A959CFDD7F4, PlayerPedId(), horseentity, GetHashKey("Interaction_LootSaddleBags"), 0, 1)
                                                        Citizen.Wait(1000)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            else
                                for k,v in pairs(horse_table) do
                                    if v["selected"] == 1 then
                                        TriggerServerEvent("gum_stables:check_storage", v["id"], false)
                                        Citizen.Wait(500)
                                        for a,b in pairs(Config.Horses) do
                                            for x,y in pairs(b) do 
                                                if y[1] ~= nil then
                                                    if x == v["model"] then
                                                        TriggerServerEvent("gumCore:registerstorage", GetPlayerServerId(PlayerId()), "horse_"..v["id"], y[4])
                                                        local haveBlanket = false
                                                        if Citizen.InvokeNative(0xFB4891BD7578CDC1, horseentity, GetHashKey("horse_bedrolls")) then
                                                            haveBlanket = true
                                                        end
                                                        SetNuiFocus(true, true)
                                                        SendNUIMessage({type = "openBagsManage", size=y[4], id=v["id"], cart=false, blanket=haveBlanket, shared=Config.Access_Other_Storage, byId=Config.Access_Only_Id, clothes=Config.Clothe1InBlanket})
                                                        Citizen.InvokeNative(0xCD181A959CFDD7F4, PlayerPedId(), horseentity, GetHashKey("Interaction_LootSaddleBags"), 0, 1)
                                                        Citizen.Wait(1000)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        else
                            if Config.Gum_Notify_Old then
                                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text,""..Config.Language[101].text.."", Config.FirstName, Config.SecondName, Config.Language[101].time)
                            end
                            if Config.Gum_Notify_NUI then
                                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[101].text.."", Config.Image, Config.Language[101].time)
                            end
                        end
                    end
                end
            end
        end
        Citizen.Wait(opti)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(Config.Age_Check*60*1000)
        if Config.Real_Logic == false then
            TriggerServerEvent("gum_stables:age_update")
        end
        if Config.Dead_On_Old then
            local random_age_dead = math.random(1,100)
            if horse_table ~= nil then
                for k,v in pairs(horse_table) do
                    if v["age"] == Config.Language[417].text then
                        state_for_dead = k
                    end
                end
                Citizen.Wait(1000)
                if state_for_dead ~= nil then
                    random_dead_id = math.random(1, state_for_dead)
                    for k,v in pairs(horse_table) do
                        if v["age"] == Config.Language[417].text then
                            if Config.Chance_For_Dead >= tonumber(random_age_dead) then
                                if k == tonumber(random_dead_id) then
                                    SetEntityHealth(horseentity, random_dead_id, 0)
                                    TriggerServerEvent("gum_stables:dead_old_update", v["id"])
                                end
                            end
                        end
                    end
                end
                state_for_dead = nil
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5000)
        if horseentity ~= nil then
            horsemax = GetMaxAttributePoints(horseentity, 7)
            if Config.Only_Job_Exp == true then
                if exp_horse <= horsemax then
                    if is_trainer == true and exp_writed ~= 0 then
                        exp_horse = exp_horse+(Config.ExpTable.IfTrener*exp_writed)
                        expBreed = expBreed+exp_writed
                        local table = horse_table
                        local hoofTable = {}
                        if Config.hoofHook == true then
                            for a,b in pairs(table) do
                                if b.id == tonumber(idForStorageHorse) then
                                    if b.status ~= nil then
                                        local statusTable = json.decode(b.status)
                                        statusTable["hoof"] = hoofState
                                        b.status = json.encode(statusTable)
                                        hoofTable = b.status
                                    end
                                end
                            end
                        end
                        TriggerServerEvent("gum_stables:saveHorseForExp", idForStorageHorse, exp_horse, hoofTable)
                        exp_writed = 0
                    end
                end
            else
                if exp_horse <= horsemax then
                    if is_trainer == true and exp_writed ~= 0 then
                        exp_horse = exp_horse+(Config.ExpTable.IfTrener*exp_writed)
                        expBreed = expBreed+exp_writed
                        local table = horse_table
                        local hoofTable = {}
                        if Config.hoofHook == true then
                            for a,b in pairs(table) do
                                if b.id == tonumber(idForStorageHorse) then
                                    if b.status ~= nil then
                                        local statusTable = json.decode(b.status)
                                        statusTable["hoof"] = hoofState
                                        b.status = json.encode(statusTable)
                                        hoofTable = b.status
                                    end
                                end
                            end
                        end
                        TriggerServerEvent("gum_stables:saveHorseForExp", idForStorageHorse, exp_horse, hoofTable)
                        exp_writed = 0
                    else
                        if exp_writed ~= 0 then
                            exp_horse = exp_horse+(Config.ExpTable.IfNoTrener*exp_writed)
                            expBreed = expBreed+exp_writed
                            local table = horse_table
                            local hoofTable = {}
                            if Config.hoofHook == true then
                                for a,b in pairs(table) do
                                    if b.id == tonumber(idForStorageHorse) then
                                        if b.status ~= nil then
                                            local statusTable = json.decode(b.status)
                                            statusTable["hoof"] = hoofState
                                            b.status = json.encode(statusTable)
                                            hoofTable = b.status
                                        end
                                    end
                                end
                            end
                            TriggerServerEvent("gum_stables:saveHorseForExp", idForStorageHorse, exp_horse, hoofTable)
                            exp_writed = 0
                        end
                    end
                end
            end
        end
    end
end)
if Config.FriendlySystem then
    Citizen.CreateThread(function()
        while true do
            if Config.OnlyTrainerFriendly then
                if is_trainer then
                    if Config.RandomBadSituation then
                        local random = math.random(Config.RandomBadSituationTimer[1], Config.RandomBadSituationTimer[2])
                        Citizen.Wait(random*1000)
                        if horseentity ~= nil then
                            makeBadSituation()
                        end
                    else
                        Citizen.Wait(Config.BadFriendlyActionTimer*1000)
                        if horseentity ~= nil then
                            makeBadSituation()
                        end
                    end
                end
            else
                if Config.RandomBadSituation then
                    local random = math.random(Config.RandomBadSituationTimer[1], Config.RandomBadSituationTimer[2])
                    Citizen.Wait(random*1000)
                    if horseentity ~= nil then
                        makeBadSituation()
                    end
                else
                    Citizen.Wait(Config.BadFriendlyActionTimer*1000)
                    if horseentity ~= nil then
                        makeBadSituation()
                    end
                end
            end
            Citizen.Wait(500)
        end
    end)
end

function makeBadSituation()
    for a,b in pairs(horse_table) do
        if tonumber(idForStorageHorse) == tonumber(b.id) then
            for c,d in pairs(Config.BadFriendlyAction) do
                if b.friendly == nil then
                    b.friendly = 0
                end
                if tonumber(b.friendly) < (#Config.BadFriendlyAction-1) then
                    if c == b.friendly then
                        local random = math.random(1,100)
                        if random <= d then
                            local random2 = math.random(1,2)
                            if random2 == 1 then
                                ClearPedTasks(PlayerPedId())
                                Citizen.InvokeNative(0xA09CFD29100F06C3, horseentity, 2, 0, 0)
                                if is_trainer then
                                    local random3 = math.random(1, 100)
                                    if random3 <= Config.ChanceToMakeFrendlyTrainer then
                                        b.friendly = b.friendly + 1
                                        TriggerServerEvent("gum_stables:updateFriendly", b.id, b.friendly)
                                    end
                                else
                                    local random3 = math.random(1, 100)
                                    if random3 <= Config.ChanceToMakeFriendlyNoTrainer then
                                        b.friendly = b.friendly + 1
                                        TriggerServerEvent("gum_stables:updateFriendly", b.id, b.friendly)
                                    end
                                end
                                Citizen.Wait(1000)
                            else
                                ClearPedTasks(PlayerPedId())
                                Citizen.InvokeNative(0xA09CFD29100F06C3, horseentity, 8, 0, 0)
                                if is_trainer then
                                    local random3 = math.random(1, 100)
                                    if random3 <= Config.ChanceToMakeFrendlyTrainer then
                                        b.friendly = b.friendly + 1
                                        TriggerServerEvent("gum_stables:updateFriendly", b.id, tonumber(b.friendly))
                                        if Config.Gum_Notify_Old then
                                            exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text,""..Config.Language[424].text.."", Config.FirstName, Config.SecondName, Config.Language[103].time)
                                        end
                                        if Config.Gum_Notify_NUI then
                                            exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[424].text.."", Config.Image, Config.Language[103].time)
                                        end
                                    end
                                else
                                    local random3 = math.random(1, 100)
                                    if random3 <= Config.ChanceToMakeFriendlyNoTrainer then
                                        b.friendly = b.friendly + 1
                                        TriggerServerEvent("gum_stables:updateFriendly", b.id, tonumber(b.friendly))
                                        if Config.Gum_Notify_Old then
                                            exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text,""..Config.Language[424].text.."", Config.FirstName, Config.SecondName, Config.Language[103].time)
                                        end
                                        if Config.Gum_Notify_NUI then
                                            exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[424].text.."", Config.Image, Config.Language[103].time)
                                        end
                                    end
                                end
                                Citizen.Wait(1000)
                            end
                        end
                    end
                end
            end
        end
    end
end

function fixWheelPrompt()
	Citizen.CreateThread(function()
		local str = ""..Config.Language[453].text..""
		fixWheelButton = Citizen.InvokeNative(0x04F97DE45A519419)
		PromptSetControlAction(fixWheelButton, 0x07B8BEAF)
		str = CreateVarString(10, 'LITERAL_STRING', str)
		PromptSetText(fixWheelButton, str)
		PromptSetEnabled(fixWheelButton, true)
		PromptSetVisible(fixWheelButton, true)
		PromptSetGroup(fixWheelButton, fixWheelPrompts)
		PromptRegisterEnd(fixWheelButton)
	end)
end


Citizen.CreateThread(function()
    fixWheelPrompt()
    while true do
        local optimize = 1000
        showFix = false
        local pCoords = GetEntityCoords(PlayerPedId())
        if Citizen.InvokeNative(0xCB2CA620C48BC875, entity2, 0) then
            local leftFrontWheel = GetOffsetFromEntityInWorldCoords(entity2, -1.5, 1.0, 0)
            local distanc = GetDistanceBetweenCoords(pCoords, leftFrontWheel)
            if distanc < 0.7 then
                optimize = 5
                showFix = true
                PromptSetActiveGroupThisFrame(fixWheelPrompts,  CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[449].text..""))
                Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, leftFrontWheel.x, leftFrontWheel.y, leftFrontWheel.z-1.0, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 2.0, 255, 255, 100, 50, 0, 0, 2, 0, 0, 0, 0)
                if Citizen.InvokeNative(0xE2587F8CBBD87B1D, 0, 0x07B8BEAF) then
                    TriggerServerEvent("gum_stables:fixWheel", 1)
                    Citizen.Wait(1000)
                end
            end
        end
        if Citizen.InvokeNative(0xCB2CA620C48BC875, entity2, 1) then
            local rightFrontWheel = GetOffsetFromEntityInWorldCoords(entity2, 1.5, 1.0, 0)
            local distanc = GetDistanceBetweenCoords(pCoords, rightFrontWheel)
            if distanc < 0.7 then
                optimize = 5
                showFix = true
                Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, rightFrontWheel.x, rightFrontWheel.y, rightFrontWheel.z-1.0, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 2.0, 255, 255, 100, 50, 0, 0, 2, 0, 0, 0, 0)
                PromptSetActiveGroupThisFrame(fixWheelPrompts,  CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[450].text..""))
                if Citizen.InvokeNative(0xE2587F8CBBD87B1D, 0, 0x07B8BEAF) then
                    TriggerServerEvent("gum_stables:fixWheel", 2)
                    Citizen.Wait(1000)
                end
            end
        end
        if Citizen.InvokeNative(0xCB2CA620C48BC875, entity2, 2) then
            local leftBackWheel = GetOffsetFromEntityInWorldCoords(entity2, -1.5, -1.0, 0)
            local distanc = GetDistanceBetweenCoords(pCoords, leftBackWheel)
            if distanc < 0.7 then
                optimize = 5
                showFix = true
                Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, leftBackWheel.x, leftBackWheel.y, leftBackWheel.z-1.0, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 2.0, 255, 255, 100, 50, 0, 0, 2, 0, 0, 0, 0)
                PromptSetActiveGroupThisFrame(fixWheelPrompts,  CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[451].text..""))
                if Citizen.InvokeNative(0xE2587F8CBBD87B1D, 0, 0x07B8BEAF) then
                    TriggerServerEvent("gum_stables:fixWheel", 3)
                    Citizen.Wait(1000)
                end
            end
        end
        if Citizen.InvokeNative(0xCB2CA620C48BC875, entity2, 3) then
            local rightBackWheel = GetOffsetFromEntityInWorldCoords(entity2, 1.5, -1.0, 0)
            local distanc = GetDistanceBetweenCoords(pCoords, rightBackWheel)
            if distanc < 0.7 then
                optimize = 5
                showFix = true
                Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, rightBackWheel.x, rightBackWheel.y, rightBackWheel.z-1.0, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 2.0, 255, 255, 100, 50, 0, 0, 2, 0, 0, 0, 0)
                PromptSetActiveGroupThisFrame(fixWheelPrompts,  CreateVarString(10, 'LITERAL_STRING', ""..Config.Language[452].text..""))
                if Citizen.InvokeNative(0xE2587F8CBBD87B1D, 0, 0x07B8BEAF) then
                    TriggerServerEvent("gum_stables:fixWheel", 4)
                    Citizen.Wait(4000)
                end
            end
        end
        Citizen.Wait(optimize)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(Config.TimerForCheckSpeed*1000)
        local playerPed = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(playerPed, false)
        local speed = GetEntitySpeed(vehicle)
        if Config.Destroy_Wheel then
            if speed >= 12.0 then
                local randomWheel = math.random(1,4)
                if randomWheel == 1 then
                    if not Citizen.InvokeNative(0xCB2CA620C48BC875, entity2, 0) then
                        local randomDestroy = math.random(0,100)
                        if randomDestroy < Config.Chance_On_Destroy then
                            Citizen.InvokeNative(0xd4f5efb55769d272, entity2, 0)--L FRONT 0
                            TriggerServerEvent("gum_stables:damage_wheel", idForStorageCart, 1)
                        end
                    end
                elseif randomWheel == 2 then
                    if not Citizen.InvokeNative(0xCB2CA620C48BC875, entity2, 1) then
                        local randomDestroy = math.random(0,100)
                        if randomDestroy < Config.Chance_On_Destroy then
                            Citizen.InvokeNative(0xd4f5efb55769d272, entity2, 1)--R FRONT 1
                            TriggerServerEvent("gum_stables:damage_wheel", idForStorageCart,2)
                        end
                    end
                elseif randomWheel == 3 then
                    if not Citizen.InvokeNative(0xCB2CA620C48BC875, entity2, 2) then
                        local randomDestroy = math.random(0,100)
                        if randomDestroy < Config.Chance_On_Destroy then
                            Citizen.InvokeNative(0xd4f5efb55769d272, entity2, 4)--L BACK 4 
                            TriggerServerEvent("gum_stables:damage_wheel", idForStorageCart, 3)
                        end
                    end
                elseif randomWheel == 4 then
                    if not Citizen.InvokeNative(0xCB2CA620C48BC875, entity2, 3) then
                        local randomDestroy = math.random(0,100)
                        if randomDestroy < Config.Chance_On_Destroy then
                            Citizen.InvokeNative(0xd4f5efb55769d272, entity2, 5)--R BACK 5
                            TriggerServerEvent("gum_stables:damage_wheel", idForStorageCart, 4)
                        end
                    end 
                end
            end

        end

    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(Config.ExpTimer*1000)
        if Config.CinematicCameraProtection then
            if horseentity ~= nil then
                if IsPedWalking(horseentity) and not IsCinematicCamRendering() and not Citizen.InvokeNative(0xEFC4303DDC6E60D3, PlayerPedId()) then--Walk
                    horsemax = GetMaxAttributePoints(horseentity, 7)
                    if tonumber(exp_horse) <= tonumber(horsemax) then
                        if Config.Only_Job_Exp then
                            if is_trainer then
                                exp_writed = exp_writed+Config.ExpTable.Walking
                            end
                        else
                            exp_writed = exp_writed+Config.ExpTable.Walking
                        end
                    end
                end
                if IsPedRunning(horseentity) and not IsCinematicCamRendering() and not Citizen.InvokeNative(0xEFC4303DDC6E60D3, PlayerPedId()) then--Run
                    horsemax = GetMaxAttributePoints(horseentity, 7)
                    if tonumber(exp_horse) <= tonumber(horsemax) then
                        if Config.Only_Job_Exp then
                            if is_trainer then
                                exp_writed = exp_writed+Config.ExpTable.Running
                            end
                        else
                            exp_writed = exp_writed+Config.ExpTable.Running
                        end
                    end
                end
                if Citizen.InvokeNative(0x57E457CD2C0FC168, horseentity) and not IsCinematicCamRendering() and not Citizen.InvokeNative(0xEFC4303DDC6E60D3, PlayerPedId()) then--Sprint
                    horsemax = GetMaxAttributePoints(horseentity, 7)
                    if tonumber(exp_horse) <= tonumber(horsemax) then
                        if Config.Only_Job_Exp then
                            if is_trainer then
                                exp_writed = exp_writed+Config.ExpTable.Sprinting
                            end
                        else
                            exp_writed = exp_writed+Config.ExpTable.Sprinting
                        end
                    end
                end
                if Citizen.InvokeNative(0xEFC4303DDC6E60D3, PlayerPedId()) and IsPedWalking(PlayerPedId()) then--Lead
                    horsemax = GetMaxAttributePoints(horseentity, 7)
                    if tonumber(exp_horse) <= tonumber(horsemax) then
                        if Config.CallFromStableHorse or Config.SpotForTake then
                            for k,v in pairs(horse_table) do
                                if idForStorageHorse == v.id or v.selected == 1 then
                                    if v.age ~= Config.Language[417].text then
                                        if tonumber(v["age"]) <= 5.0 then
                                            if Config.Only_Job_Exp then
                                                if is_trainer then
                                                    exp_writed = exp_writed+Config.ExpTable.IfCub
                                                end
                                            else
                                                exp_writed = exp_writed+Config.ExpTable.IfCub
                                            end
                                        else
                                            if Config.Only_Job_Exp then
                                                if is_trainer then
                                                    exp_writed = exp_writed+Config.ExpTable.IfAdult
                                                end
                                            else
                                                exp_writed = exp_writed+Config.ExpTable.IfAdult
                                            end
                                        end
                                    else
                                        if Config.Only_Job_Exp then
                                            if is_trainer then
                                                exp_writed = exp_writed+Config.ExpTable.IfAdult
                                            end
                                        else
                                            exp_writed = exp_writed+Config.ExpTable.IfAdult
                                        end
                                    end
                                end
                            end
                        else
                            for k,v in pairs(horse_table) do
                                if v["selected"] == 1 then
                                    if v.age ~= Config.Language[417].text then
                                        if tonumber(v["age"]) <= 5.0 then
                                            if Config.Only_Job_Exp then
                                                if is_trainer then
                                                    exp_writed = exp_writed+Config.ExpTable.IfCub
                                                end
                                            else
                                                exp_writed = exp_writed+Config.ExpTable.IfCub
                                            end
                                        else
                                            if Config.Only_Job_Exp then
                                                if is_trainer then
                                                    exp_writed = exp_writed+Config.ExpTable.IfAdult
                                                end
                                            else
                                                exp_writed = exp_writed+Config.ExpTable.IfAdult
                                            end
                                        end
                                    else
                                        if Config.Only_Job_Exp then
                                            if is_trainer then
                                                exp_writed = exp_writed+Config.ExpTable.IfAdult
                                            end
                                        else
                                            exp_writed = exp_writed+Config.ExpTable.IfAdult
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        else
            if horseentity ~= nil then
                if IsPedWalking(horseentity) and not Citizen.InvokeNative(0xEFC4303DDC6E60D3, PlayerPedId()) then
                    horsemax = GetMaxAttributePoints(horseentity, 7)
                    if tonumber(exp_horse) <= tonumber(horsemax) then
                        if Config.Only_Job_Exp then
                            if is_trainer then
                                exp_writed = exp_writed+Config.ExpTable.Walking
                            end
                        else
                            exp_writed = exp_writed+Config.ExpTable.Walking
                        end
                        
                    end
                end
                if IsPedRunning(horseentity) and not Citizen.InvokeNative(0xEFC4303DDC6E60D3, PlayerPedId()) then
                    horsemax = GetMaxAttributePoints(horseentity, 7)
                    if tonumber(exp_horse) <= tonumber(horsemax) then
                        if Config.Only_Job_Exp then
                            if is_trainer then
                                exp_writed = exp_writed+Config.ExpTable.Running
                            end
                        else
                            exp_writed = exp_writed+Config.ExpTable.Running
                        end
                    end
                end
                if Citizen.InvokeNative(0x57E457CD2C0FC168, horseentity) and not Citizen.InvokeNative(0xEFC4303DDC6E60D3, PlayerPedId()) then
                    horsemax = GetMaxAttributePoints(horseentity, 7)
                    if tonumber(exp_horse) <= tonumber(horsemax) then
                        if Config.Only_Job_Exp then
                            if is_trainer then
                                exp_writed = exp_writed+Config.ExpTable.Sprinting
                            end
                        else
                            exp_writed = exp_writed+Config.ExpTable.Sprinting
                        end
                    end
                end
                if Citizen.InvokeNative(0xEFC4303DDC6E60D3, PlayerPedId()) and IsPedWalking(PlayerPedId()) then--Lead
                    horsemax = GetMaxAttributePoints(horseentity, 7)
                    if tonumber(exp_horse) <= tonumber(horsemax) then
                        for k,v in pairs(horse_table) do
                            if v["selected"] == 1 then
                                if tonumber(v["age"]) <= 5.0 then
                                    if Config.Only_Job_Exp then
                                        if is_trainer then
                                            exp_writed = exp_writed+Config.ExpTable.IfCub
                                        end
                                    else
                                        exp_writed = exp_writed+Config.ExpTable.IfCub
                                    end
                                else
                                    if Config.Only_Job_Exp then
                                        if is_trainer then
                                            exp_writed = exp_writed+Config.ExpTable.IfAdult
                                        end
                                    else
                                        exp_writed = exp_writed+Config.ExpTable.IfAdult
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end)

Citizen.CreateThread(function() 
    while true do
        Citizen.Wait(1000)
        if horseentity ~= nil then
            if IsEntityDead(horseentity) and DoesEntityExist(horseentity) then
                if checkDeadId ~= idForStorageHorse and (Config.CallFromStableHorse or Config.SpotForTake) then
                    checkDeadId = idForStorageHorse
                    TriggerServerEvent("gum_stables:dead_player_update", idForStorageHorse)
                end
            end
            local holding2 = Citizen.InvokeNative(0xD806CD2A4F2C2996, horseentity)
            if holding2 ~= false then
                TriggerEvent("gum_search:state", true)
            else
                TriggerEvent("gum_search:state", false)
            end
            if not Config.CallFromStableHorse and not Config.SpotForTake then
                for k,v in pairs(horse_table) do
                    if tonumber(v["selected"]) == 1 and tonumber(v["isdead"]) == 0 and not IsPedOnMount(PlayerPedId()) then
                        local pCoords = GetEntityCoords(PlayerPedId())
                        local cCoords = GetEntityCoords(horseentity)
                        local distanc = GetDistanceBetweenCoords(pCoords, cCoords)
                        if distanc < 80.0 then
                            if IsEntityVisible(horseentity) == 1 and GetEntityHealth(horseentity) == 0 then
                                TriggerServerEvent("gum_stables:dead_player_update", idForStorageHorse)
                                if Config.Gum_Notify_Old then
                                    exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text,""..Config.Language[106].text.."", Config.FirstName, Config.SecondName, Config.Language[106].time)
                                end
                                if Config.Gum_Notify_NUI then
                                    exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[106].text.."", Config.Image, Config.Language[106].time)
                                end
                            end
                        end
                    end
                end
            end
        end
        if entity2 ~= nil then
            for k,v in pairs(WagonTable) do
                if tonumber(v["selected"]) == 1 then
                    local pCoords = GetEntityCoords(PlayerPedId())
                    local cCoords = GetEntityCoords(entity2)
                    local distanc = GetDistanceBetweenCoords(pCoords, cCoords)
                    if distanc > Config.RangeForDespawnWagon and Config.OutOfRangeDespawn then
                        fleeWagon()
                    end
                end
            end
        end
        if horseentity ~= nil then
            local pCoords = GetEntityCoords(PlayerPedId())
            local cCoords = GetEntityCoords(horseentity)
            local distanc = GetDistanceBetweenCoords(pCoords, cCoords)
            if distanc > Config.RangeForDespawnHorse then
                if Config.OutOfRangeDespawn then
                    fleeHorse()
                end
                if Config.OutOfRangeTask then
                    TaskGoToEntity(horseentity, PlayerPedId(), -1, 7.2, 6.0, 0, 0)
                end
            end
        end
    end
end)

RegisterNetEvent("gum_stables:blockMinigame")
AddEventHandler("gum_stables:blockMinigame", function(stateMinigame)
    miniGameRunning = stateMinigame
end)
local canTameHorse = false

RegisterNetEvent("gum_stables:checkTameProtect")
AddEventHandler("gum_stables:checkTameProtect", function(state, time)
    canTameHorse = state
    if state == true then
        if Config.Gum_Notify_Old then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[448].text..time, Config.FirstName, Config.SecondName, Config.Language[448].time)
        end
        if Config.Gum_Notify_NUI then
            exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", Config.Language[448].text..time, Config.Image, Config.Language[448].time)
        end
    end
end)

if Config.Tamming_Mini_Game == true then
    Citizen.CreateThread(function()
        while true do
            if Citizen.InvokeNative(0x3B005FF0538ED2A9, GetMount(PlayerPedId())) ~= false then
                if Config.JobForTamming == true then
                    if tamming == false and miniGameRunning == false then
                        if is_trainer then
                            if Config.TriggerFixAnim then
                                wearClotheAnimation("veh_horseback@seat_saddle@male@normal@trot@2h","move", -1, 25)
                            end
                            start_tame()
                            Citizen.Wait(5000)
                        else
                            TaskHorseAction(GetMount(PlayerPedId()), 2,0,0)
                            Citizen.Wait(5000)
                        end
                    end
                else
                    if tamming == false and miniGameRunning == false then
                        if Config.TriggerFixAnim then
                            wearClotheAnimation("veh_horseback@seat_saddle@male@normal@trot@2h","move", -1, 25)
                        end
                        start_tame()
                        Citizen.Wait(5000)
                    end
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
        for k,v in pairs(Config.Tamming_Key_Table) do
            max_keys = k
        end
        for i=1, 40 do
            local random_number = math.random(1,max_keys)
            table.insert(random_table, {key=random_number, pressed=false})
        end
        timerCitizen = Citizen.CreateThread(function()
            while tamming == true do
                if GetMount(PlayerPedId()) ~= 0 then
                    for k,v in pairs(random_table) do
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
                Citizen.Wait(0)
            end
        end)
    end
end

-- RegisterCommand("wild", function(source, args, rawCommand)
--     Citizen.InvokeNative(0xAEB97D84CDF3C00B, GetMount(PlayerPedId()), true)
-- end)

RegisterCommand(""..Config.DeleteCommand.."", function(source, args, rawCommand)
    TriggerServerEvent("gum_stables:deleteData")
end)

RegisterNUICallback('maniAnimal', function(data,cb)
    SetNuiFocus(false, false)
    SendNUIMessage({type = "clearManage"})
    local num = tonumber(data.a)+1
    for a,b in pairs(animalsDataGlobal) do
        if a == num then
            local coords = GetEntityCoords(PlayerPedId())
            createAnimal(b.model, coords.x, coords.y, coords.z, GetEntityHeading(PlayerPedId()), b.loot, b.quality)
            table.remove(animalsDataGlobal, a)
            count = 0
            for k,v in pairs(animalsDataGlobal) do
                count = count+1
            end
            local recalculation = count/2/100
            Citizen.InvokeNative(0x31F343383F19C987, entity2, tonumber(recalculation), 1) 
            if Config.CallFromStableCart or Config.SpotForTake then
                for c,d in pairs(WagonTable) do
                    if tonumber(idForStorageCart) == tonumber(d.id) then
                        d.animals = json.encode(animalsDataGlobal)
                        TriggerServerEvent("gum_stables:updateAnimals", idForStorageCart, animalsDataGlobal)
                    end
                end
            else
                for c,d in pairs(WagonTable) do
                    if d.selected == 1 then
                        d.animals = json.encode(animalsDataGlobal)
                        TriggerServerEvent("gum_stables:updateAnimals", d.id, animalsDataGlobal)
                    end
                end
            end
        end
    end
end)

RegisterNUICallback('maniPelt', function(data,cb)
    SetNuiFocus(false, false)
    SendNUIMessage({type = "clearManage"})
    local num = tonumber(data.a)+1
    for a,b in pairs(animalsDataGlobal) do
        if a == num then
            local coords = GetEntityCoords(PlayerPedId())
            local obj = CreateObject(b.model, GetEntityCoords(PlayerPedId()), 1, 1, 1)
            if Config.Pelts2[GetHashKey(b.model)][2] then
                Citizen.InvokeNative(0xF0B4F759F35CC7F5, obj, -1648601722, PlayerPedId(), 0, 512) -- Big
            else
                if b.model == "p_cs_pelt_medlarge" then
                    Citizen.InvokeNative(0xF0B4F759F35CC7F5, obj, 1212186523, PlayerPedId(), 0, 512) -- Small
                else
                    Citizen.InvokeNative(0xF0B4F759F35CC7F5, obj, -1161106381, PlayerPedId(), 0, 512) -- Small
                end  
            end
            Citizen.InvokeNative(0x399657ED871B3A6C, obj, tonumber(b.provisionHash))
            table.remove(animalsDataGlobal, a)
            if Config.CallFromStableCart then
                for c,d in pairs(WagonTable) do
                    if tonumber(idForStorageCart) == tonumber(d.id) then
                        d.animals = json.encode(animalsDataGlobal)
                        TriggerServerEvent("gum_stables:updateAnimals", idForStorageCart, animalsDataGlobal)
                    end
                end
            else
                for c,d in pairs(WagonTable) do
                    if d.selected == 1 then
                        d.animals = json.encode(animalsDataGlobal)
                        TriggerServerEvent("gum_stables:updateAnimals", d.id, animalsDataGlobal)
                    end
                end
            end
            count = 0
            for k,v in pairs(animalsDataGlobal) do
                count = count+1
            end
            local recalculation = count/2/100
            Citizen.InvokeNative(0x31F343383F19C987, entity2, tonumber(recalculation), 1) 
        end
    end

end)

function OpenAnimalMenu(id, animals, storage)
    animalsDataGlobal = animals
    SetNuiFocus(true, true)
    SendNUIMessage({type = "openAnimals", cartItems=animals, maxStorage=storage, wagonId=id})
end
function createAnimal(model, x,y,z,h, loot, quality)
    Citizen.CreateThread(function()
        local npcSpawn = model
        while not HasModelLoaded(GetHashKey(npcSpawn)) do
            Wait(0)
            modelrequest( GetHashKey(npcSpawn) )
        end
        local animalNpc = CreatePed(GetHashKey(npcSpawn), x, y, z, h, true, true, 0, 0)

        while not DoesEntityExist(animalNpc) do
            Wait(0)
        end
        Citizen.InvokeNative(0x283978A15512B2FE, animalNpc, true)
        SetEntityAsMissionEntity(animalNpc, true, true)
        SetModelAsNoLongerNeeded(GetHashKey(animalNpc))
        SetEntityHealth(animalNpc, 0)
        Citizen.InvokeNative(0x6BCF5F3D8FFE988D, animalNpc, loot)
        Citizen.InvokeNative(0xCE6B874286D640BB, animalNpc, quality)
        TaskPickupCarriableEntity(PlayerPedId(), animalNpc)
    end)
end

function Open_List_Menu(cx,cy,cz,ch,fromSpot, horses, carts)
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
                if y[1] ~= nil then
                    for k,v in pairs(horse_table) do
                        if x == v["model"] then
                            if tonumber(v["isdead"]) == 0 and Config.Language[216].text ~= v["breeding"] then
                                isdeadhorse = Config.Language[38].text
                                if v.spotPosition == tonumber(fromSpot) and horses then
                                    if v.age == Config.Language[417].text then
                                        table.insert(elements,{id=v.id, isHorse = true, label = ""..v["name"].."", value = ""..v["id"]..""..v["name"].."", desc = ""..Config.Language[43].text.." : "..v2.name.."</br> "..Config.Language[279].text.." : "..y[1].."</br>"..Config.Language[44].text.." : "..v["name"].."</br>"..Config.Language[45].text.." : "..v["sex"].."</br>"..Config.Language[46].text.." : "..v["breeding"].."</br>"..Config.Language[301].text.." : "..v["exp"].." </br>"..Config.Language[47].text.." : "..v.age.."</br>"..Config.Language[48].text.." : "..isdeadhorse..""})
                                    else
                                        table.insert(elements,{id=v.id, isHorse = true, label = ""..v["name"].."", value = ""..v["id"]..""..v["name"].."", desc = ""..Config.Language[43].text.." : "..v2.name.."</br> "..Config.Language[279].text.." : "..y[1].."</br>"..Config.Language[44].text.." : "..v["name"].."</br>"..Config.Language[45].text.." : "..v["sex"].."</br>"..Config.Language[46].text.." : "..v["breeding"].."</br>"..Config.Language[301].text.." : "..v["exp"].." </br>"..Config.Language[47].text.." : "..(math.floor(v.age*10)/10).."</br>"..Config.Language[48].text.." : "..isdeadhorse..""})
                                    end
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
                    for k,v in pairs(horse_table) do
                        if x == v["model"] then
                            if tonumber(v["isdead"]) == 0 and Config.Language[216].text ~= v["breeding"]  and horses then
                                isdeadhorse = Config.Language[38].text
                                if v.age == Config.Language[417].text then
                                    table.insert(elements,{id=v.id, isHorse = true, label = ""..v["name"].."", value = ""..v["id"]..""..v["name"].."", desc = ""..Config.Language[43].text.." : "..v2.name.."</br> "..Config.Language[279].text.." : "..y[1].."</br>"..Config.Language[44].text.." : "..v["name"].."</br>"..Config.Language[45].text.." : "..v["sex"].."</br>"..Config.Language[46].text.." : "..v["breeding"].."</br>"..Config.Language[301].text.." : "..v["exp"].." </br>"..Config.Language[47].text.." : "..v.age.."</br>"..Config.Language[48].text.." : "..isdeadhorse..""})
                                else
                                    table.insert(elements,{id=v.id, isHorse = true, label = ""..v["name"].."", value = ""..v["id"]..""..v["name"].."", desc = ""..Config.Language[43].text.." : "..v2.name.."</br> "..Config.Language[279].text.." : "..y[1].."</br>"..Config.Language[44].text.." : "..v["name"].."</br>"..Config.Language[45].text.." : "..v["sex"].."</br>"..Config.Language[46].text.." : "..v["breeding"].."</br>"..Config.Language[301].text.." : "..v["exp"].." </br>"..Config.Language[47].text.." : "..(math.floor(v.age*10)/10).."</br>"..Config.Language[48].text.." : "..isdeadhorse..""})
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    if Config.CallFromStableCart and Config.CityStablesHorse then
        for k,v in pairs(WagonTable) do
            if v.spotPosition == tonumber(fromSpot) and carts then
                table.insert(elements,{id=v.id, isHorse = false, label = ""..v["name"].."", value = ""..v["id"]..""..v["name"].."", desc = ""})
            end
        end
    else
        for k,v in pairs(WagonTable) do
            if carts then
                table.insert(elements,{id=v.id, isHorse = false, label = ""..v["name"].."", value = ""..v["id"]..""..v["name"].."", desc = ""})
            end
        end
    end
    SetNuiFocus(true, true)
    SendNuiMessage(json.encode({type = "openSpot", array = elements}))
end


RegisterNetEvent('gum_stables:fix_this_cart')
AddEventHandler('gum_stables:fix_this_cart', function(state)
    fix_cart_value = state
end)

RegisterNetEvent("gum_stables:fixWheel")
AddEventHandler("gum_stables:fixWheel", function(num)
    local timeout = 0
    while not NetworkHasControlOfEntity(entity2) do
        timeout = timeout+1
        if timeout > 10 then
            break
        end
        if not DoesEntityExist(entity2) then
            break
        end
        Wait(100)
    end     
    if block_spam == false then
        block_spam = true
        local playerPed = PlayerPedId()
        local EntityCoords = GetEntityCoords(entity2)
        local EntityHeading = GetEntityHeading(entity2)
        fixWheelAnimation("amb_work@prop_human_repair_wagon_wheel_on@rear@male_a@idle_a", "idle_b")
        Citizen.Wait(2100)
        fixWheelAnimation("amb_work@prop_human_repair_wagon_wheel_on@rear@male_a@idle_a", "idle_c")
        Citizen.Wait(2900)
        fixWheelAnimation("amb_work@prop_human_repair_wagon_wheel_on@rear@male_a@idle_a", "idle_a")
        fixWheelAnimation("amb_work@prop_human_repair_wagon_wheel_on@front@male_a@idle_b","idle_d")
        Citizen.Wait(2100)
        fixWheelAnimation("amb_work@prop_human_repair_wagon_wheel_on@front@male_a@idle_a","idle_c")
        TriggerEvent("fix_wheel")
        Citizen.Wait(2100)

        
        while (fix_cart_value == nil) do
            fix_value_wait = fix_value_wait+1
            if fix_value_wait > 60 then
                if Config.Gum_Notify_Old then
                    exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[375].text, Config.FirstName, Config.SecondName, Config.Language[375].time)
                end
                if Config.Gum_Notify_NUI then
                    exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", Config.Language[375].text, Config.Image, Config.Language[375].time)
                end
                return false
            end
            Citizen.Wait(1000)
        end
        if fix_cart_value == true then
            ClearPedTasks(PlayerPedId())
            if Config.CallFromStableCart or Config.SpotForTake then
                for k,v in pairs(WagonTable) do
                    if tonumber(idForStorageCart) == v.id then
                        local wlDmg = json.decode(v.damage_wheel)
                        for a,b in pairs(wlDmg) do
            				for c,d in pairs(b) do
                                if tonumber(num) == tonumber(c) then
                                    b[c] = 0
                                end
                            end
                        end
                        v.damage_wheel = json.encode(wlDmg)
                        TriggerServerEvent("gum_stables:fix_wheel", v.id, num)
                    end
                end
            else
                for k,v in pairs(WagonTable) do
                    if v["selected"] == 1 then
                        local wlDmg = json.decode(v.damage_wheel)
                        for a,b in pairs(wlDmg) do
            				for c,d in pairs(b) do
                                if tonumber(num) == tonumber(c) then
                                    b[c] = 0
                                end
                            end
                        end
                        v.damage_wheel = json.encode(wlDmg)
                        TriggerServerEvent("gum_stables:fix_wheel", v.id, num)
                    end
                end
            end
            fleeWagon(true)
            Citizen.Wait(100)
            if Config.CallFromStableCart or Config.SpotForTake then
                for k,v in pairs(WagonTable) do
                    if tonumber(idForStorageCart) == v.id then
                        initiateWagon(v.model, v.id, EntityCoords.x, EntityCoords.y, EntityCoords.z, EntityHeading, true)
                    end
                end
            else 
                for k,v in pairs(WagonTable) do
                    if v["selected"] == 1 then
                        initiateWagon(v.model, v.id, EntityCoords.x, EntityCoords.y, EntityCoords.z, EntityHeading, true)
                    end
                end
            end
        end
        fix_cart_value = nil
        block_spam = false
    end
end)

function fixWheelAnimation(dict,name)
	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(100)
	end
	TaskPlayAnim(PlayerPedId(), dict, name, 1.0, 1.0, -1, 1, 0, true, 0, false, 0, false)  
end




RegisterNetEvent('gum_stables:fix_cart')
AddEventHandler('gum_stables:fix_cart', function()
    if entity2 ~= nil then
        local timeout = 0
        while not NetworkHasControlOfEntity(entity2) do
            timeout = timeout+1
            if timeout > 10 then
                break
            end
            if not DoesEntityExist(entity2) then
                break
            end
            Wait(100)
        end     
        if block_spam == false then
            block_spam = true
            if tonumber(NetworkGetEntityOwner(entity2)) == tonumber(PlayerId(PlayerPedId())) then
                if Config.RemoveKit then
                    TriggerServerEvent("gum_stables:remove_kit")
                end
                TriggerEvent("fix_wheel")
                local playerPed = PlayerPedId()
                local EntityCoords = GetEntityCoords(entity2)
                local EntityHeading = GetEntityHeading(entity2)
                playAnim("amb_work@prop_human_repair_wagon_wheel_on@rear@male_a@idle_a", "idle_b")
                Citizen.Wait(2100)
                playAnim("amb_work@prop_human_repair_wagon_wheel_on@rear@male_a@idle_a", "idle_c")
                Citizen.Wait(2900)
                playAnim("amb_work@prop_human_repair_wagon_wheel_on@rear@male_a@idle_a", "idle_a")
                while (fix_cart_value == nil) do
                    fix_value_wait = fix_value_wait+1
                    if fix_value_wait > 60 then
                        if Config.Gum_Notify_Old then
                            exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[375].text, Config.FirstName, Config.SecondName, Config.Language[375].time)
                        end
                        if Config.Gum_Notify_NUI then
                            exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", Config.Language[375].text, Config.Image, Config.Language[375].time)
                        end
                        return false
                    end
                    Citizen.Wait(1000)
                end
                Citizen.Wait(0)
                if fix_cart_value == true then
                    SetEntityHealth(entity2, 1000)
                    if Config.CallFromStableCart then
                        for k,v in pairs(WagonTable) do
                            if tonumber(idForStorageCart) == v.id then
                                TriggerServerEvent("gum_stables:fix_wheel", v.id)
                            end
                        end
                    else
                        for k,v in pairs(WagonTable) do
                            if v["selected"] == 1 then
                                TriggerServerEvent("gum_stables:fix_wheel", v.id)
                            end
                        end
                    end
                    fleeWagon(true)
                    Citizen.Wait(500)
                    if Config.CallFromStableCart or Config.SpotForTake then
                        for k,v in pairs(WagonTable) do
                            if tonumber(idForStorageCart) == v.id then
                                initiateWagon(v.model, v.id, EntityCoords.x, EntityCoords.y, EntityCoords.z, EntityHeading, true)
                            end
                        end
                    else 
                        for k,v in pairs(WagonTable) do
                            if v["selected"] == 1 then
                                initiateWagon(v.model, v.id, EntityCoords.x, EntityCoords.y, EntityCoords.z, EntityHeading, true)
                            end
                        end
                    end
                end
                fix_cart_value = nil
                block_spam = false
            else
                if Config.Gum_Notify_Old then
                    exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[107].text, Config.FirstName, Config.SecondName, Config.Language[107].time)
                end
                if Config.Gum_Notify_NUI then
                    exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", Config.Language[107].text, Config.Image, Config.Language[107].time)
                end
                block_spam = false
            end
        else
            if Config.Gum_Notify_Old then
                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text, Config.Language[107].text, Config.FirstName, Config.SecondName, Config.Language[107].time)
            end
            if Config.Gum_Notify_NUI then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", Config.Language[107].text, Config.Image, Config.Language[107].time)
            end
        end
    end
end)

function playAnim(dict,name)
	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(100)
	end
	TaskPlayAnim(PlayerPedId(), dict, name, 8.0, 8.0, 100000, 0, 0, true, 0, false, 0, false)  
end


function playAnimHorse(dict,name,time)
	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(100)
	end
	TaskPlayAnim(horseentity, dict, name, 1.0, 1.0, tonumber(time), 0, 0, true, 0, false, 0, false)  
end

RegisterNetEvent("gum_stables:rename")
AddEventHandler("gum_stables:rename", function()
    TriggerEvent("guminputs:getAnswer", ""..Config.Language[437].text.."", ""..Config.Language[438].text.."", ""..Config.Language[439].text.."", function(cb)
        local answer = cb
        if answer == true then
            if horseentity == nil then
                return false
            end
            TriggerEvent("guminputs:getInput", ""..Config.Language[53].text.."", ""..Config.Language[440].text.."", function(cb)
                local name = cb
                if name ~= nil and name ~= 'close' then
                    TriggerServerEvent("gum_stables:rename", "horse", idForStorageHorse, name)
                end
            end)
        else
            if entity2 == nil then
                return false
            end
            TriggerEvent("guminputs:getInput", ""..Config.Language[53].text.."", ""..Config.Language[441].text.."", function(cb)
                local name = cb
                if name ~= nil and name ~= 'close' then
                    TriggerServerEvent("gum_stables:rename", "cart", idForStorageCart, name)
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

    if GetEntityModel(entity2) == GetHashKey("logwagon") then
        local empty = false
        for x,z in pairs(json.decode(information)) do
            if tonumber(z) ~= 0 then
                empty = true
            end
        end
        if empty == true then
            Citizen.InvokeNative(0x75F90E4051CC084C, entity2, 0)
            Citizen.Wait(5)
            Citizen.InvokeNative(0x75F90E4051CC084C, entity2, GetHashKey("pg_veh_logwagon_1"))
            Citizen.InvokeNative(0x31F343383F19C987, entity2, 1.0, 1)
        else
            Citizen.InvokeNative(0x75F90E4051CC084C, entity2, 0)
        end
    end
    if GetEntityModel(entity2) == GetHashKey("coal_wagon") then
        local empty = false
        for x,z in pairs(json.decode(information)) do
            if tonumber(z) ~= 0 then
                empty = true
            end
        end
        if empty == true then
            Citizen.InvokeNative(0x75F90E4051CC084C, entity2, 0)
            Citizen.Wait(5)
            Citizen.InvokeNative(0x75F90E4051CC084C, entity2, GetHashKey("pg_delivery_Coal01x"))
            Citizen.InvokeNative(0x31F343383F19C987, entity2, 1.0, 1)
        else
            Citizen.InvokeNative(0x75F90E4051CC084C, entity2, 0)
        end
    end
 
end)

RegisterNUICallback('maniAddon', function(data,cb)
    TriggerEvent("guminputs:getAnswer", ""..Config.Language[406].text.."", ""..Config.Language[407].text.."", ""..Config.Language[408].text.."", function(cb)
        local answer = cb
        if answer == true then
            TriggerEvent("guminputs:getInput", ""..Config.Language[53].text.."", ""..Config.Language[409].text.." "..data.name.." "..Config.Language[410].text.."", function(cb)
                local count_item = tonumber(cb)
                if count_item ~= nil and count_item ~= 0 and count_item > 0 and count_item ~= 'close' then
                    TriggerServerEvent("gum_stables:maniAddon", data.itemId, count_item, data.max, data.id, 0, data.model, data.typeItem)
                end
            end)
        else
            TriggerEvent("guminputs:getInput", ""..Config.Language[53].text.."", ""..Config.Language[409].text.." "..data.name.." "..Config.Language[411].text.."", function(cb)
                local count_item = tonumber(cb)
                if count_item ~= nil and count_item ~= 0 and count_item > 0 and count_item ~= 'close' then
                    TriggerServerEvent("gum_stables:maniAddon", data.itemId, count_item, data.max, data.id, 1, data.model, data.typeItem)
                end
            end)
        end
    end)
end)

function Open_Bags_Menu_Other(id_otr, wagon, entity)
    if wagon == true then
        TriggerServerEvent("gum_stables:LoadInventory", "wagon_"..tonumber(id_otr), max_capacity)
    else
        TriggerServerEvent("gum_stables:LoadInventory", "horse_"..tonumber(id_otr), max_capacity)
     end
end

local blockEatNow = false
RegisterNetEvent("gum_stables:eat_function")
AddEventHandler("gum_stables:eat_function", function(item, health, stamina, gold_stamina, gold_health, prop)
    local pCoords = GetEntityCoords(PlayerPedId())
    local cCoords = GetEntityCoords(horseentity)
    local distanc = GetDistanceBetweenCoords(pCoords, cCoords)
    if distanc < 2.0 then
        if blockEatNow == false then
            if Config.BlockSpamEat then
                blockEatNow = true
            end
            TriggerServerEvent("gum_stables:rem_function", item)
            Citizen.InvokeNative(0xCD181A959CFDD7F4, PlayerPedId(), horseentity, GetHashKey("Interaction_Food"), GetHashKey(prop), 1)
            local valueHealth = Citizen.InvokeNative(0x36731AC041289BB1, horseentity, 0)
            local valueStamina = Citizen.InvokeNative(0x36731AC041289BB1, horseentity, 1)
            if not tonumber(valueHealth) then valueHealth = 0 end
            if not tonumber(valueStamina) then valueStamina = 0 end
            Citizen.Wait(3500)
            Citizen.InvokeNative(0xC6258F41D86676E0, horseentity, 0, valueHealth + health)
            Citizen.InvokeNative(0xC6258F41D86676E0, horseentity, 1, valueStamina + stamina)
            Citizen.InvokeNative(0xF6A7C08DF2E28B28, horseentity, 0, gold_health)
            Citizen.InvokeNative(0xF6A7C08DF2E28B28, horseentity, 1, gold_stamina)
            if Config.BlockSpamEat == true then
                blockTime = Config.BlockSpamEatTime
                while true do
                    blockTime = blockTime - 1
                    if blockTime <= 0 then
                        blockEatNow = false
                        break
                    end
                    Citizen.Wait(1000)
                end
            end
        else
            if Config.Gum_Notify_Old then
                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text,""..Config.Language[423].text..blockTime.."s", Config.FirstName, Config.SecondName, Config.Language[156].time)
            end
            if Config.Gum_Notify_NUI then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[423].text..blockTime.."s", Config.Image, Config.Language[156].time)
            end
        end
    else
        if Config.Gum_Notify_Old then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text,""..Config.Language[156].text.."", Config.FirstName, Config.SecondName, Config.Language[156].time)
        end
        if Config.Gum_Notify_NUI then
            exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[156].text.."", Config.Image, Config.Language[156].time)
        end
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
    local distanc = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(horseentity))
    if distanc < 2.0 then
        if blockEatNow == false then
            if Config.BlockSpamEat then
                blockEatNow = true
            end
            TriggerServerEvent("gum_stables:rem_function", item)
            Citizen.InvokeNative(0xCD181A959CFDD7F4, PlayerPedId(), horseentity, GetHashKey("Interaction_Food"), GetHashKey(prop), 1)
            local valueHealth = Citizen.InvokeNative(0x36731AC041289BB1, horseentity, 0)
            local valueStamina = Citizen.InvokeNative(0x36731AC041289BB1, horseentity, 1)
            if not tonumber(valueHealth) then valueHealth = 0 end
            if not tonumber(valueStamina) then valueStamina = 0 end
            Citizen.Wait(3500)
            Citizen.InvokeNative(0xC6258F41D86676E0, horseentity, 0, valueHealth + health)
            Citizen.InvokeNative(0xC6258F41D86676E0, horseentity, 1, valueStamina + stamina)
            if Config.BlockSpamEat == true then
                blockTime = Config.BlockSpamEatTime
                Citizen.CreateThread(function()
                    while true do
                        blockTime = blockTime - 1
                        if blockTime <= 0 then
                            blockEatNow = false
                            break
                        end
                        Citizen.Wait(1000)
                    end
                end)
            end
        else
            if Config.Gum_Notify_Old then
                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text,""..Config.Language[423].text..blockTime.."s", Config.FirstName, Config.SecondName, Config.Language[156].time)
            end
            if Config.Gum_Notify_NUI then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[423].text..blockTime.."s", Config.Image, Config.Language[156].time)
            end
        end
    else
        TriggerEvent("gum_metabolism:useMeFromStable", herbItem)
    end
end)

RegisterNetEvent("gum_stables:stimulant_function")
AddEventHandler("gum_stables:stimulant_function", function(item, health, stamina, gold_health, gold_stamina, healItem)
    local pCoords = GetEntityCoords(PlayerPedId())
    local cCoords = GetEntityCoords(horseentity)
    local distanc = GetDistanceBetweenCoords(pCoords, cCoords)
    if healItem then
        wearClotheAnimation("mini_games@story@mob4@heal_jules@bandage@arthur","trouniquet_intro", 5000, 1)
        Citizen.Wait(4000)
        for a,b in pairs(GetActivePlayers()) do
            if GetPlayerPed(b) ~= PlayerPedId() then 
                local coords = GetEntityCoords(GetPlayerPed(b))
                local distance = GetDistanceBetweenCoords(coords.x, coords.y, coords.z, pCoords.x, pCoords.y, pCoords.z, false)
                if distance < 2.0 then
                    TriggerServerEvent("gum_stables:rem_function", item)
                    TriggerServerEvent("gum_stables:reviveHorse", GetPlayerServerId(b))
                    return false
                end
            end
        end
        for a,b in pairs(GetActivePlayers()) do
            if GetPlayerPed(b) == PlayerPedId() then 
                local coords = GetEntityCoords(GetPlayerPed(b))
                local distance = GetDistanceBetweenCoords(coords.x, coords.y, coords.z, pCoords.x, pCoords.y, pCoords.z, false)
                if distance < 1.0 then
                    TriggerServerEvent("gum_stables:rem_function", item)
                    TriggerServerEvent("gum_stables:reviveHorse", GetPlayerServerId(b))
                    return false
                end
            end
        end
    else
        if distanc < 2.0 then
            TriggerServerEvent("gum_stables:rem_function", item)
            TaskAnimalInteraction(PlayerPedId(), horseentity, -1355254781, GetHashKey("p_cs_syringe01x"), 0)
            local valueHealth = Citizen.InvokeNative(0x36731AC041289BB1, horseentity, 0)
            local valueStamina = Citizen.InvokeNative(0x36731AC041289BB1, horseentity, 1)   
            if not tonumber(valueHealth) then valueHealth = 0 end
            if not tonumber(valueStamina) then valueStamina = 0 end
            Citizen.Wait(3500)
            Citizen.InvokeNative(0xC6258F41D86676E0, horseentity, 0, valueHealth + health)
            Citizen.InvokeNative(0xC6258F41D86676E0, horseentity, 1, valueStamina + stamina)
            Citizen.InvokeNative(0xF6A7C08DF2E28B28, horseentity, 0, gold_health)
            Citizen.InvokeNative(0xF6A7C08DF2E28B28, horseentity, 1, gold_stamina)
            Citizen.InvokeNative(0x50C803A4CD5932C5, true) 
            Citizen.InvokeNative(0xD4EE21B7CC7FD350, true) 
            PlaySoundFrontend("Core_Fill_Up", "Consumption_Sounds", true, 0)
        else
            if Config.Gum_Notify_Old then
                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text,""..Config.Language[156].text.."", Config.FirstName, Config.SecondName, Config.Language[156].time)
            end
            if Config.Gum_Notify_NUI then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[156].text.."", Config.Image, Config.Language[156].time)
            end
        end
    end
end)
      
RegisterNetEvent('gum_stables:reviveHorse')
AddEventHandler('gum_stables:reviveHorse', function()
    if horseentity ~= nil then
        local coords = GetEntityCoords(horseentity)
        for a,b in pairs(horse_table) do
            if b.id == tonumber(idForStorageHorse) and tonumber(b.isdead) == 2 then
                if Config.Gum_Notify_Old then
                    exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text,""..Config.Language[427].text.."", Config.FirstName, Config.SecondName, Config.Language[427].time)
                end
                if Config.Gum_Notify_NUI then
                    exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[427].text.."", Config.Image, Config.Language[427].time)
                end
                return false
            end
        end
        if DoesEntityExist(horseentity) then
            TriggerServerEvent("gum_stables:fix_this", NetworkGetNetworkIdFromEntity(horseentity), idForStorageHorse)
            local table = horse_table
            for a,b in pairs(table) do
                if b.id == tonumber(idForStorageHorse) and tonumber(b.isdead) == 1 then
                    if Config.SaveStatus then
                        if b.status ~= nil then
                            local statusTable = json.decode(b.status)
                            statusTable["stamina"] = 100
                            statusTable["health"] = 100
                            statusTable["hoof"] = 100
                            hoofState = 100
                            b.status = json.encode(statusTable)
                        end
                    end
                    TriggerServerEvent("gum_stables:exp_update_id", idForStorageHorse, exp_horse+(exp_writed), expBreed)
                    expBreed = 0
                    TriggerServerEvent("gum_stables:revivedHorse", idForStorageHorse, b.status)
                    b["exp"] = exp_horse+(exp_writed)
                    b["isdead"] = 0
                end
            end
            horse_table = table
        end
        delete_obj(horseentity)
        peltzOnHorse = {}
        for k,v in pairs(horse_table) do
            if tonumber(idForStorageHorse) == v.id then
                WhistleHorse(v["model"], v["id"], coords.x, coords.y, coords.z, GetEntityHeading(horseentity))
            end
        end
    end
end)


RegisterNetEvent('gum_stables:brush')
AddEventHandler('gum_stables:brush', function()
    local Ped = PlayerPedId()
    local pCoords = GetEntityCoords(Ped)
    local cCoords = GetEntityCoords(horseentity)
    local distanc = GetDistanceBetweenCoords(pCoords, cCoords)
    if distanc < 2.0 then
        TaskAnimalInteraction(Ped, horseentity, 554992710, GetHashKey("P_BRUSHHORSE02X"), 0)
        Citizen.Wait(3000)
        Citizen.InvokeNative(0x6585D955A68452A5, horseentity) 
        Citizen.InvokeNative(0xB5485E4907B53019, horseentity) 
        Citizen.InvokeNative(0x8FE22675A5A45817, horseentity) 
        if Config.Gum_Notify_Old then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text,""..Config.Language[157].text.."", Config.FirstName, Config.SecondName, Config.Language[157].time)
        end
        if Config.Gum_Notify_NUI then
            exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[157].text.."", Config.Image, Config.Language[157].time)
        end

    else
        if Config.Gum_Notify_Old then
            exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text,""..Config.Language[156].text.."", Config.FirstName, Config.SecondName, Config.Language[156].time)
        end
        if Config.Gum_Notify_NUI then
            exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[156].text.."", Config.Image, Config.Language[156].time)
        end

    end
end)

function show_horse_breed_first(model, name, state)
    delete_obj(horse_preview_3, true)
    delete_obj(horse_preview, true)
    Citizen.CreateThread(function()
        local npc_spawn_id = model
        while not HasModelLoaded(GetHashKey(npc_spawn_id)) do
            Wait(0)
            modelrequest( GetHashKey(npc_spawn_id) )
        end
        for k,v in pairs(Config.SpotsForStable) do
            if k == where_open_stable then
                horse_preview = CreatePed(GetHashKey(npc_spawn_id), v["B3SpawnHorse"][1], v["B3SpawnHorse"][2], v["B3SpawnHorse"][3], v["B3SpawnHorse"][4], false, false, 0, 0)
            end
        end
        while not DoesEntityExist(horse_preview) do
            Wait(0)
        end
        Citizen.InvokeNative(0x283978A15512B2FE, horse_preview, true)
        SetPedAsGroupMember(horse_preview, GetPedGroupIndex(PlayerPedId()))
        SetBlockingOfNonTemporaryEvents(horse_preview,true)
        FreezeEntityPosition(horse_preview, true)
        SetEntityInvincible(horse_preview, true)
        TaskStandStill(horse_preview, -1)
        SetModelAsNoLongerNeeded(GetHashKey(npc_spawn_id))
        ClearPedEnvDirt(horse_preview)
        ClearPedDamageDecalByZone(horse_preview ,10 ,"ALL")
        ClearPedBloodDamage(horse_preview)
        SetEntityCollision(horse_preview, false, false)
        for k,v in pairs(horse_table) do
            if v["name"] == name then
                local compos = json.decode(v["components"])
                if compos.horsetails ~= nil then
                    setclothcalled(horse_preview, compos.horsetails)
                end
                if compos.manes ~= nil then
                    setclothcalled(horse_preview, compos.manes)
                end
                local canShowStomach = false
                for a,b in pairs(breeding_table) do
                    if b.breeding_name_horse_1 == name  and b.breeding_time ~= ""..Config.Language[105].text.."" then
                        canShowStomach = true
                    elseif b.breeding_name_horse_2 == name  and b.breeding_time ~= ""..Config.Language[105].text.."" then
                        canShowStomach = true
                    end
                end
                if state == true and canShowStomach then
                    if tostring(v.sex) == ""..Config.Language[68].text.."" then
                        Citizen.InvokeNative(0x1902C4CFCC5BE57C, horse_preview, tonumber(0xEB76D635))
                        Citizen.InvokeNative(0xCC8CA3E88256E58F, horse_preview, false, true, true, true, false)
                    else
                        Citizen.InvokeNative(0x1902C4CFCC5BE57C, horse_preview, tonumber(0x86155956))
                        Citizen.InvokeNative(0xCC8CA3E88256E58F, horse_preview, false, true, true, true, false)
                    end
                end
            end
        end
    end)
end

function show_horse_breed_second(model, name, state)
    delete_obj(horse_preview_3, true)
    delete_obj(horse_preview_2, true)
    Citizen.CreateThread(function()
        local npc_spawn_id2 = model
        while not HasModelLoaded(GetHashKey(npc_spawn_id2)) do
            Wait(0)
            modelrequest( GetHashKey(npc_spawn_id2) )
        end
        for k,v in pairs(Config.SpotsForStable) do
            if k == where_open_stable then
                horse_preview_2 = CreatePed(GetHashKey(npc_spawn_id2), v["B4SpawnHorse"][1], v["B4SpawnHorse"][2], v["B4SpawnHorse"][3], v["B4SpawnHorse"][4], false, false, 0, 0)
            end
        end
        while not DoesEntityExist(horse_preview_2) do
            Wait(0)
        end
        Citizen.InvokeNative(0x283978A15512B2FE, horse_preview_2, true)
        SetPedAsGroupMember(horse_preview_2, GetPedGroupIndex(PlayerPedId()))
        SetBlockingOfNonTemporaryEvents(horse_preview_2,true)
        FreezeEntityPosition(horse_preview_2, true)
        SetEntityInvincible(horse_preview_2, true)
        TaskStandStill(horse_preview_2, -1)
        SetModelAsNoLongerNeeded(GetHashKey(npc_spawn_id2))
        ClearPedEnvDirt(horse_preview_2)
        ClearPedDamageDecalByZone(horse_preview_2 ,10 ,"ALL")
        ClearPedBloodDamage(horse_preview_2)
        SetEntityCollision(horse_preview_2, false, false)
        for k,v in pairs(horse_table) do
            if v["name"] == name then
                local compos = json.decode(v["components"])
                if compos.horsetails ~= nil then
                    setclothcalled(horse_preview_2, compos.horsetails)
                end
                if compos.manes ~= nil then
                    setclothcalled(horse_preview_2, compos.manes)
                end
                local canShowStomach = false
                for a,b in pairs(breeding_table) do
                    if b.breeding_name_horse_1 == name and b.breeding_time ~= ""..Config.Language[216].text.."" then
                        canShowStomach = true
                    elseif b.breeding_name_horse_2 == name and b.breeding_time ~= ""..Config.Language[216].text.."" then
                        canShowStomach = true
                    end
                end
                if state == true and canShowStomach then
                    if tostring(v.sex) == ""..Config.Language[68].text.."" then
                        Citizen.InvokeNative(0x1902C4CFCC5BE57C, horse_preview_2, tonumber(0xEB76D635))
                        Citizen.InvokeNative(0xCC8CA3E88256E58F, horse_preview_2, false, true, true, true, false)
                    else
                        Citizen.InvokeNative(0x1902C4CFCC5BE57C, horse_preview_2, tonumber(0x86155956))
                        Citizen.InvokeNative(0xCC8CA3E88256E58F, horse_preview_2, false, true, true, true, false)
                    end
                end
            end
        end
    end)
end


function show_horse_breed_third(model)
    delete_obj(npc_spawn_id3, true)
    Citizen.CreateThread(function()
        local npc_spawn_id3 = model
        while not HasModelLoaded(GetHashKey(npc_spawn_id3)) do
            Wait(5)
            modelrequest( GetHashKey(npc_spawn_id3) )
        end
        for k,v in pairs(Config.SpotsForStable) do
            if k == where_open_stable then
                horse_preview_3 = CreatePed(GetHashKey(npc_spawn_id3), v["B1SpawnHorse"][1], v["B1SpawnHorse"][2], v["B1SpawnHorse"][3], v["B1SpawnHorse"][4], false, false, 0, 0)
            end
        end
        while not DoesEntityExist(horse_preview_3) do
            Wait(5)
        end
        Citizen.InvokeNative(0x283978A15512B2FE, horse_preview_3, true)
        SetPedAsGroupMember(horse_preview_3, GetPedGroupIndex(PlayerPedId()))
        SetBlockingOfNonTemporaryEvents(horse_preview_3,true)
        FreezeEntityPosition(horse_preview_3, true)
        SetEntityInvincible(horse_preview_3, true)
        TaskStandStill(horse_preview_3, -1)
        SetModelAsNoLongerNeeded(GetHashKey(npc_spawn_id3))
        SetPedScale(horse_preview_3, 0.600)
        SetEntityCollision(horse_preview_3, false, false)
    end)
end

function show_horse_breed_fourth(model)
    delete_obj(npc_spawn_id3, true)
    Citizen.CreateThread(function()
        local npc_spawn_id3 = model
        while not HasModelLoaded(GetHashKey(npc_spawn_id3)) do
            Wait(5)
            modelrequest( GetHashKey(npc_spawn_id3) )
        end
        for k,v in pairs(Config.SpotsForStable) do
            if k == where_open_stable then
                horse_preview_3 = CreatePed(GetHashKey(npc_spawn_id3), v["B2SpawnHorse"][1], v["B2SpawnHorse"][2], v["B2SpawnHorse"][3], v["B2SpawnHorse"][4], false, false, 0, 0)
            end
        end
        while not DoesEntityExist(horse_preview_3) do
            Wait(5)
        end
        Citizen.InvokeNative(0x283978A15512B2FE, horse_preview_3, true)
        SetPedAsGroupMember(horse_preview_3, GetPedGroupIndex(PlayerPedId()))
        SetBlockingOfNonTemporaryEvents(horse_preview_3,true)
        FreezeEntityPosition(horse_preview_3, true)
        SetEntityInvincible(horse_preview_3, true)
        TaskStandStill(horse_preview_3, -1)
        SetEntityAsMissionEntity(horse_preview_3, true, true)
        SetModelAsNoLongerNeeded(GetHashKey(npc_spawn_id3))
        ClearPedEnvDirt(horse_preview_3)
        ClearPedDamageDecalByZone(horse_preview_3 ,10 ,"ALL")
        ClearPedBloodDamage(horse_preview_3)
        SetPedScale(horse_preview_3, 0.600)
        SetEntityCollision(horse_preview_3, false, false)
    end)
end

function StartCamBreed(k)
    Citizen.InvokeNative(0x17E0198B3882C2CB, PlayerPedId())
    for k,v in pairs(Config.SpotsForStable) do
        if k == where_open_stable then
            oldCamera = camera
            camera = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", v["Breedingcam"][1], v["Breedingcam"][2], v["Breedingcam"][3], -30.00, 00.00, v["Breedingcam"][4], 50.00, true, 0)
        end
    end
    SetCamActiveWithInterp(camera, oldCamera, 500, 0, 0)
    RenderScriptCams(true, true, 500, true, true)
end


function ProcessCamControls()
    Citizen.CreateThread(function()
        local playerCoords = GetEntityCoords(previewPed)
        local newPos = ProcessNewPosition()
        SetCamCoord(cam, newPos.x, newPos.y, newPos.z)
        PointCamAtCoord(cam, playerCoords.x, playerCoords.y, playerCoords.z + 0.5)
        Citizen.InvokeNative(0x27666E5988D9D429, cam, fov)
    end)
end

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

function ProcessNewPosition()
    angleZ = mouseX
    angleY = mouseY
    if (angleY > 89.0) then angleY = 89.0 elseif (angleY < -89.0) then angleY = -89.0 end
    local pCoords = GetEntityCoords(previewPed)
    local behindCam = {
        x = pCoords.x + ((Cos(angleZ) * Cos(angleY)) + (Cos(angleY) * Cos(angleZ))) / 2 * (3.0 + 0.5),
        y = pCoords.y + ((Sin(angleZ) * Cos(angleY)) + (Cos(angleY) * Sin(angleZ))) / 2 * (3.0 + 0.5),
        z = pCoords.z + ((Sin(angleY))) * (3.0 + 0.5)
    }
    local rayHandle = StartShapeTestRay(pCoords.x, pCoords.y, pCoords.z + 0.5, behindCam.x, behindCam.y, behindCam.z, -1, previewPed, 0)
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


--------WAGONS SYSTEM

RegisterNetEvent('gum_stables:send_wagon_data')
AddEventHandler('gum_stables:send_wagon_data', function(table)
	WagonTable = table
    for k,v in pairs(WagonTable) do
        count_wagon = k
    end
end)

function spawn_wagon(model)
    delete_obj(wagon_preview, true)
    Citizen.Wait(0)
    local modelHash = GetHashKey(model)
    if not HasModelLoaded(modelHash) then
        RequestModel(modelHash)
        while not HasModelLoaded(modelHash) do
            Citizen.Wait(0)
        end
    end
    for k,v in pairs(Config.SpotsForStable) do
        if k == where_open_stable then
            wagon_preview = CreateVehicle(modelHash, v["1SpawnHorse"][1], v["1SpawnHorse"][2], v["1SpawnHorse"][3], heading, false, false)
        end
    end
    previewPed = wagon_preview
    FreezeEntityPosition(wagon_preview, true)
    SetEntityCollision(wagon_preview, false, false)
end

function spawn_wagon_my(model, id, value)
    delete_obj(wagon_preview, true)
    local modelHash = GetHashKey(model)
    if not HasModelLoaded(modelHash) then
        RequestModel(modelHash)
        while not HasModelLoaded(modelHash) do
            Citizen.Wait(0)
        end
    end
    for k,v in pairs(Config.SpotsForStable) do
        if k == where_open_stable then
            wagon_preview = CreateVehicle(modelHash, v["1SpawnHorse"][1], v["1SpawnHorse"][2], v["1SpawnHorse"][3], heading, false, false, 0, 0)
         end
    end
    FreezeEntityPosition(wagon_preview, true)
    previewPed = wagon_preview
    for k,v in pairs(WagonTable) do
        if tonumber(id) == tonumber(v.id) then
            if value == nil then
                Citizen.InvokeNative(0x8C6D9A399126C194, wagon_preview, tonumber(v.horses))
            else
                Citizen.InvokeNative(0x8C6D9A399126C194, wagon_preview, tonumber(value))
            end
            SetEntityHealth(wagon_preview, tonumber(v.health_cart))

            local count = 0
            if json.decode(v.animals) ~= nil then
                for c,d in pairs(json.decode(v.animals)) do
                    count = count+1
                end
            end
            count = count/2/100
            Citizen.InvokeNative(0x31F343383F19C987, wagon_preview, tonumber(count), 1) 
            Citizen.Wait(150)
            if v.comp_propset ~= "none" then
                Citizen.InvokeNative(0x75F90E4051CC084C, wagon_preview, GetHashKey(v.comp_propset))
                Citizen.InvokeNative(0x31F343383F19C987, wagon_preview, 1.0, 1)
                Citizen.InvokeNative(0x7264F9CA87A9830B, wagon_preview)
                Citizen.InvokeNative(0xD798DF5DB67B1659, wagon_preview)
            end
            Citizen.InvokeNative(0x8268B098F6FCA4E2, wagon_preview, tonumber(v["comp_tints"]))
            Citizen.InvokeNative(0xF89D82A0582E46ED, wagon_preview, tonumber(v["comp_liveries"]))
            VehExtras = json.decode(v["comp_extras"])
            for i=1,20 do
                if i ~= nil then
                    if tonumber(VehExtras[tostring(i)]) == 0 then
                        Citizen.InvokeNative(0xBB6F89150BC9D16B, wagon_preview, i, 0)
                    end
                    if tonumber(VehExtras[tostring(i)]) == 1 then
                        Citizen.InvokeNative(0xBB6F89150BC9D16B, wagon_preview, i, 1)
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
                    Citizen.InvokeNative(0x75F90E4051CC084C, wagon_preview, 0)
                    Citizen.Wait(5)
                    Citizen.InvokeNative(0x75F90E4051CC084C, wagon_preview, GetHashKey("pg_veh_logwagon_1"))
                    Citizen.InvokeNative(0x31F343383F19C987, wagon_preview, 1.0, 1)
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
                    Citizen.InvokeNative(0x75F90E4051CC084C, wagon_preview, 0)
                    Citizen.Wait(5)
                    Citizen.InvokeNative(0x75F90E4051CC084C, wagon_preview, GetHashKey("pg_delivery_Coal01x"))
                    Citizen.InvokeNative(0x31F343383F19C987, wagon_preview, 1.0, 1)
                end
            end
            if v["model"] == "huntercart01" then
                Citizen.InvokeNative(0x75F90E4051CC084C, wagon_preview, GetHashKey("pg_mp005_huntingWagonTarp01"))
                Citizen.InvokeNative(0x31F343383F19C987, wagon_preview, tonumber(0.0), 1) 
            end
            Citizen.InvokeNative(0xC0F0417A90402742, wagon_preview, GetHashKey(v["comp_lantern"]))
            Citizen.Wait(100)
            if type(json.decode(v.damage_wheel)) == "table" then
                for a,b in pairs(json.decode(v.damage_wheel)) do
                    for c,d in pairs(b) do
                        if tonumber(c) == 1 and tonumber(d) == 1 then
                            Citizen.InvokeNative(0xd4f5efb55769d272, entity2, 0)
                        end
                        if tonumber(c) == 2 and tonumber(d) == 1 then
                            Citizen.InvokeNative(0xd4f5efb55769d272, entity2, 1)
                        end
                        if tonumber(c) == 3 and tonumber(d) == 1 then
                            Citizen.InvokeNative(0xd4f5efb55769d272, entity2, 4)
                        end
                        if tonumber(c) == 4 and tonumber(d) == 1 then
                            Citizen.InvokeNative(0xd4f5efb55769d272, entity2, 5)
                        end
                    end
                end
            else
                local tableData = {}
                for i=1, 4 do
                    local number = i
                    table.insert(tableData, {[""..number..""]=0})
                end
                v.damage_wheel = json.encode(tableData)
            end
        end
    end
    Citizen.Wait(500)
    SetEntityCollision(wagon_preview, false, false)
    local getEntityCoords = GetEntityCoords(wagon_preview)
    for a,b in pairs(GetGamePool('CObject')) do
        local coords = GetEntityCoords(b)
        if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, getEntityCoords.x, getEntityCoords.y, getEntityCoords.z, false) < 3.0 then
            SetEntityCollision(b, false, true)
        end
    end
end

RegisterNetEvent("gum_stables:saveWagonToHousing")
AddEventHandler("gum_stables:saveWagonToHousing", function(houseId, state)
    if state == "horse" then
        TriggerServerEvent("gum_stables:saveMeHouse", idForStorageHorse, houseId, "horse")
        fleeHorse(horseentity)
    elseif state == "cart" then
        Citizen.InvokeNative(0xD3DBCE61A490BE02, PlayerPedId(), entity2, 16)
        Citizen.Wait(2500)
        TriggerServerEvent("gum_stables:saveMeHouse", idForStorageCart, houseId, "cart")
        fleeWagon()
    end  
    Citizen.Wait(2000)
    TriggerServerEvent("gum_stables:check_all_info")
end)

function initiateWagon(wagonModel, id, cdx, cdy, cdz, cdh, fromHouse)
    local pcoords = GetEntityCoords(PlayerPedId())
    local node, vec, head = GetClosestVehicleNodeWithHeading(pcoords.x, pcoords.y, pcoords.z, 1, true, true)
    if tostring(vec.x) ~= tostring("0.0") or fromHouse then
        local ped = PlayerPedId()
        local pCoords = GetEntityCoords(ped)
        local modelHash = GetHashKey(wagonModel)
        RequestModel(modelHash)
        while not Citizen.InvokeNative(0x1283B8B89DD5D1B6, modelHash, Citizen.ResultAsBoolean) do
            Wait(0)
        end

        Citizen.InvokeNative(0x87344305778E5415, entity2, true)
        local pcoords = GetEntityCoords(PlayerPedId())
        local node, vec, head = GetClosestVehicleNodeWithHeading(pcoords.x, pcoords.y, pcoords.z, 60.0, true, true, true)
        local math_x = math.random(2,6)
        local math_y = math.random(2,6)
        local player_coord = GetEntityCoords(PlayerPedId())
        local town_hash = Citizen.InvokeNative(0x43AD8FC02B429D33, player_coord, 10)
        if fromHouse then
            if Config.OneSync then
                entity2 = Citizen.InvokeNative(0x214651FB1DFEBA89, modelHash, cdx, cdy, cdz, cdh, false, false, 0, 1)
            else
                entity2 = Citizen.InvokeNative(0xAF35D0D2583051B0, modelHash, cdx, cdy, cdz, cdh, true, false, 0, 1)
            end
        else
            if Config.SimulateNodesEnabled then
                local nodeExist = false
                local simulateX, simulateY, simulateZ, simulateH = 0, 0, 0, 0
                for a,b in pairs(Config.SimulateNodes) do
                    local distanc = GetDistanceBetweenCoords(pcoords, b[1], b[2], b[3], true)
                    if distanc < b[5] then
                        nodeExist = true
                        simulateX, simulateY, simulateZ, simulateH = b[1], b[2], b[3], b[4]
                    end
                end
                if nodeExist then
                    if Config.OneSync then
                        entity2 = Citizen.InvokeNative(0x214651FB1DFEBA89, modelHash, simulateX, simulateY, simulateZ, simulateH, false, false, 0, 1)
                    else
                        entity2 = Citizen.InvokeNative(0xAF35D0D2583051B0, modelHash, simulateX, simulateY, simulateZ, simulateH, true, false, 0, 1)
                    end
                else
                    if cdx == nil then
                        if town_hash == -108848014 or town_hash == -2066240242 or town_hash == 1453836102 or town_hash == -2145992129 or town_hash == -512529193 then
                            if vec[1] == 0.0 then
                                if Config.OneSync then
                                    entity2 = Citizen.InvokeNative(0x214651FB1DFEBA89, modelHash, player_coord.x+math_x, player_coord.y+math_y, player_coord.z, head, false, false, 0, 1)
                                else
                                    entity2 = Citizen.InvokeNative(0xAF35D0D2583051B0, modelHash, player_coord.x+math_x, player_coord.y+math_y, player_coord.z, head, true, false, 0, 1)
                                end
                            else
                                if Config.OneSync then
                                    entity2 = Citizen.InvokeNative(0x214651FB1DFEBA89, modelHash, vec.x, vec.y, vec.z, head, false, false, 0, 1)
                                else
                                    entity2 = Citizen.InvokeNative(0xAF35D0D2583051B0, modelHash, vec.x, vec.y, vec.z, head, true, false, 0, 1)
                                end
                            end
                        else
                            if Config.OneSync then
                                entity2 = Citizen.InvokeNative(0x214651FB1DFEBA89, modelHash, vec.x, vec.y, vec.z, head, false, false, 0, 1)
                            else
                                entity2 = Citizen.InvokeNative(0xAF35D0D2583051B0, modelHash, vec.x, vec.y, vec.z, head, true, false, 0, 1)
                            end
                        end
                    else
                        if Config.OneSync then
                            entity2 = Citizen.InvokeNative(0x214651FB1DFEBA89, modelHash, cdx, cdy, cdz, cdh, false, false, 0, 1)
                        else
                            entity2 = Citizen.InvokeNative(0xAF35D0D2583051B0, modelHash, cdx, cdy, cdz, cdh, true, false, 0, 1)
                        end
                    end
                end
            else
                if cdx == nil then
                    if town_hash == -108848014 or town_hash == -2066240242 or town_hash == 1453836102 or town_hash == -2145992129 or town_hash == -512529193 then
                        if vec[1] == 0.0 then
                            if Config.OneSync then
                                entity2 = Citizen.InvokeNative(0x214651FB1DFEBA89, modelHash, player_coord.x+math_x, player_coord.y+math_y, player_coord.z, head, false, false, 0, 1)
                            else
                                entity2 = Citizen.InvokeNative(0xAF35D0D2583051B0, modelHash, player_coord.x+math_x, player_coord.y+math_y, player_coord.z, head, true, false, 0, 1)
                            end
                        else
                            if Config.OneSync then
                                entity2 = Citizen.InvokeNative(0x214651FB1DFEBA89, modelHash, vec.x, vec.y, vec.z, head, false, false, 0, 1)
                            else
                                entity2 = Citizen.InvokeNative(0xAF35D0D2583051B0, modelHash, vec.x, vec.y, vec.z, head, true, false, 0, 1)
                            end
                        end
                    else
                        if Config.OneSync then
                            entity2 = Citizen.InvokeNative(0x214651FB1DFEBA89, modelHash, vec.x, vec.y, vec.z, head, false, false, 0, 1)
                        else
                            entity2 = Citizen.InvokeNative(0xAF35D0D2583051B0, modelHash, vec.x, vec.y, vec.z, head, true, false, 0, 1)
                        end
                    end
                else
                    if Config.OneSync then
                        entity2 = Citizen.InvokeNative(0x214651FB1DFEBA89, modelHash, cdx, cdy, cdz, cdh, false, false, 0, 1)
                    else
                        entity2 = Citizen.InvokeNative(0xAF35D0D2583051B0, modelHash, cdx, cdy, cdz, cdh, true, false, 0, 1)
                    end
                end
            end
        end
        local pCoords = GetEntityCoords(PlayerPedId())
        local cCoords = GetEntityCoords(entity2)
        local distanc = GetDistanceBetweenCoords(pCoords, cCoords)
        if distanc > Config.RangeForDespawnWagon and Config.OutOfRangeDespawn then
            fleeWagon()
            if Config.Gum_Notify_Old then
                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text,""..Config.Language[387].text.."", Config.FirstName, Config.SecondName, Config.Language[387].time)
            end
            if Config.Gum_Notify_NUI then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[387].text.."", Config.Image, Config.Language[387].time)
            end
            return false
        end
        while not DoesEntityExist(entity2) do
            Citizen.Wait(0)
        end
        SetModelAsNoLongerNeeded(modelHash)
        SetVehicleHasBeenOwnedByPlayer(entity2, true)
        Citizen.InvokeNative(0x758C3460EE915D0A, entity2, 0.0)
        Citizen.InvokeNative(0xBAE0EEDF93F05EAA, entity2, 0.0)
        Citizen.InvokeNative(0x23f74c2fda6e7c61, -1230993421, entity2)
        idForStorageCart = id
        cartIdForSave = id
        for k,v in pairs(WagonTable) do
            if idForStorageCart == v.id then
                Citizen.InvokeNative(0x8C6D9A399126C194, entity2, tonumber(v.horses))
                if type(json.decode(v.damage_wheel)) == "table" then
                    for a,b in pairs(json.decode(v.damage_wheel)) do
                        for c,d in pairs(b) do
                            if tonumber(c) == 1 and tonumber(d) == 1 then
                                Citizen.InvokeNative(0xd4f5efb55769d272, entity2, 0)
                            end
                            if tonumber(c) == 2 and tonumber(d) == 1 then
                                Citizen.InvokeNative(0xd4f5efb55769d272, entity2, 1)
                            end
                            if tonumber(c) == 3 and tonumber(d) == 1 then
                                Citizen.InvokeNative(0xd4f5efb55769d272, entity2, 4)
                            end
                            if tonumber(c) == 4 and tonumber(d) == 1 then
                                Citizen.InvokeNative(0xd4f5efb55769d272, entity2, 5)
                            end
                        end
                    end
                else
                    local tableData = {}
                    for i=1, 4 do
                        local number = i
                        table.insert(tableData, {[""..number..""]=0})
                    end
                    v.damage_wheel = json.encode(tableData)
                end
                SetEntityHealth(entity2, tonumber(v.health_cart))

                local count = 0
                if json.decode(v.animals) ~= nil then
                    for c,d in pairs(json.decode(v.animals)) do
                        count = count+1
                    end
                end
                count = count/2/100
                Citizen.InvokeNative(0x31F343383F19C987, entity2, tonumber(count), 1) 
                Citizen.Wait(150)
                if v.comp_propset ~= "none" then
                    Citizen.InvokeNative(0x75F90E4051CC084C, entity2, GetHashKey(v.comp_propset))
                    Citizen.InvokeNative(0x31F343383F19C987, entity2, 1.0, 1)
                    Citizen.InvokeNative(0x7264F9CA87A9830B, entity2)
                    Citizen.InvokeNative(0xD798DF5DB67B1659, entity2)
                end
                Citizen.InvokeNative(0x8268B098F6FCA4E2, entity2, tonumber(v["comp_tints"]))
                Citizen.InvokeNative(0xF89D82A0582E46ED, entity2, tonumber(v["comp_liveries"]))
                VehExtras = json.decode(v["comp_extras"])
                for i=1,20 do
                    if i ~= nil then
                        if tonumber(VehExtras[tostring(i)]) == 0 then
                            Citizen.InvokeNative(0xBB6F89150BC9D16B, entity2, i, 0)
                        end
                        if tonumber(VehExtras[tostring(i)]) == 1 then
                            Citizen.InvokeNative(0xBB6F89150BC9D16B, entity2, i, 1)
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
                        Citizen.InvokeNative(0x75F90E4051CC084C, entity2, 0)
                        Citizen.Wait(5)
                        Citizen.InvokeNative(0x75F90E4051CC084C, entity2, GetHashKey("pg_veh_logwagon_1"))
                        Citizen.InvokeNative(0x31F343383F19C987, entity2, 1.0, 1)
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
                        Citizen.InvokeNative(0x75F90E4051CC084C, entity2, 0)
                        Citizen.Wait(5)
                        Citizen.InvokeNative(0x75F90E4051CC084C, entity2, GetHashKey("pg_delivery_Coal01x"))
                        Citizen.InvokeNative(0x31F343383F19C987, entity2, 1.0, 1)
                    end
                end
                if v["model"] == "huntercart01" then
                    Citizen.InvokeNative(0x75F90E4051CC084C, entity2, GetHashKey("pg_mp005_huntingWagonTarp01"))
                    Citizen.InvokeNative(0x31F343383F19C987, entity2, tonumber(0.0), 1) 
                end
                Citizen.InvokeNative(0xC0F0417A90402742, entity2, GetHashKey(v["comp_lantern"]))
            end
        end
        if Config.OneSync then
            for a,b in pairs(GetGamePool('CPed')) do
                local coords = GetEntityCoords(entity2)
                local hCoords = GetEntityCoords(b)
                if (GetDistanceBetweenCoords(coords.x, coords.y, coords.z, hCoords.x, hCoords.y, hCoords.z, true) < 2.5) then
                    if PlayerPedId() ~= b and NetworkGetEntityIsNetworked(b) then
                        NetworkRegisterEntityAsNetworked(b)
                    end
                end
            end
            NetworkRegisterEntityAsNetworked(entity2)
        end
        wagonnetwork = NetworkGetNetworkIdFromEntity(entity2)
        TriggerServerEvent("gum_stables:send_data_all_horse", NetworkGetNetworkIdFromEntity(entity2), id, GetPlayerServerId(PlayerId()), false)
        TriggerEvent("gum_farming:checkCartEntity", entity2)
        canSaveDmg = true
        Citizen.Wait(1000)
        if Config.CallFromStableCart then
            active_3 = false
            active_camera = true
        end
    else
        if not Config.CallFromStableCart then
            if Config.Gum_Notify_Old then
                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text,""..Config.Language[193].text.."", Config.FirstName, Config.SecondName, Config.Language[193].time)
            end
            if Config.Gum_Notify_NUI then
                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[193].text.."", Config.Image, Config.Language[193].time)
            end
        end
    end
end

if Config.CourageSystem then
    Citizen.CreateThread(function()
        while true do
            local optimizeMe = 2000
            if horseentity ~= nil then
                if Citizen.InvokeNative(0x625B774D75C87068, horseentity, GetHashKey("EVENT_ANIMAL_DETECTED_THREAT")) then
                    Citizen.Wait(10000)
                    local randomCourage = math.random(0,100)
                    if randomCourage < Config.CourageUpgradeChance then
                        for k,v in pairs(horse_table) do
                            if tonumber(idForStorageHorse) == tonumber(v.id) then
                                if v.courage == nil then
                                    v.courage = 1
                                else
                                    v.courage = v.courage+1
                                end
                                TriggerServerEvent("gum_stables:updateCourage", idForStorageHorse, v.courage)
                                SetAttributeBaseRank(horseentity, 3, tonumber(v.courage))
                            end
                        end
                    end
                end
            end
            Citizen.Wait(optimizeMe)
        end
    end)
end

function Button_Prompt_10()
	Citizen.CreateThread(function()
		local str = Config.Language[194].text
		SellPrompt = Citizen.InvokeNative(0x04F97DE45A519419)
		PromptSetControlAction(SellPrompt, Config.Keysconfig[11].key)
		str = CreateVarString(10, 'LITERAL_STRING', str)
		PromptSetText(SellPrompt, str)
		PromptSetEnabled(SellPrompt, true)
        PromptSetStandardizedHoldMode(SellPrompt, GetHashKey("MEDIUM_TIMED_EVENT"))
        PromptSetVisible(SellPrompt, true)
		PromptSetGroup(SellPrompt, buttons_prompt_10)
		PromptRegisterEnd(SellPrompt)
	end)
	Citizen.CreateThread(function()
		local str = Config.Language[195].text
		SavePrompt = Citizen.InvokeNative(0x04F97DE45A519419)
		PromptSetControlAction(SavePrompt, Config.Keysconfig[12].key)
		str = CreateVarString(10, 'LITERAL_STRING', str)
		PromptSetText(SavePrompt, str)
		PromptSetEnabled(SavePrompt, true)
        PromptSetStandardizedHoldMode(SavePrompt, GetHashKey("MEDIUM_TIMED_EVENT"))
        PromptSetVisible(SavePrompt, true)
		PromptSetGroup(SavePrompt, buttons_prompt_10)
		PromptRegisterEnd(SavePrompt)
	end)
end

if Config.Tamming_Horses then
    Citizen.CreateThread(function()
        Button_Prompt_10()
        while true do
            local optimalize = 1000
            local coords = GetEntityCoords(PlayerPedId())
            if Config.JobForTamming == true then
                for k,v in pairs(Config.SellGetWildHorse) do
                    if GetMount(PlayerPedId()) ~= 0 and GetMount(PlayerPedId()) ~= horseentity and is_trainer then
                        if (GetDistanceBetweenCoords(coords.x, coords.y, coords.z, v["WildCoords"][1], v["WildCoords"][2], v["WildCoords"][3], true) < 20.0) then
                            optimalize = 5
                            if Config.MarkerForSaveHorse then
                                Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, v["WildCoords"][1], v["WildCoords"][2], v["WildCoords"][3]-1.0, 0, 0, 0, 0, 0, 0, 10.0, 10.0, 4.0, 255, 255, 100, 10, 0, 0, 2, 0, 0, 0, 0)
                            end
                            if (GetDistanceBetweenCoords(coords.x, coords.y, coords.z, v["WildCoords"][1], v["WildCoords"][2], v["WildCoords"][3], true) < 5.0) then
                                for a,b in pairs(SellWildHorse) do
                                    if NetworkGetEntityFromNetworkId(a) == GetMount(PlayerPedId()) and b ~= nil then
                                        PromptSetActiveGroupThisFrame(buttons_prompt_10,  CreateVarString(10, 'LITERAL_STRING', Config.Language[50].text))
                                        if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, Config.Keysconfig[12].key) then
                                            Citizen.Wait(100)
                                            if is_trainer then
                                                if count_horse < Config.Max_Horse_With_Job then
                                                    saveWildHorse(NetworkGetEntityFromNetworkId(a), b.price, b.gender, b.model)
                                                else
                                                    TriggerEvent("guminputs:getAnswer", ""..Config.Language[374].text.."", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
                                                        local answer = cb
                                                        if answer == true then
                                                            sellWildHorses(NetworkGetEntityFromNetworkId(a), b.price, b.gender, b.model)
                                                            if Config.Gum_Notify_Old then
                                                                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text,""..Config.Language[228].text.."", Config.FirstName, Config.SecondName, Config.Language[228].time)
                                                            end
                                                            if Config.Gum_Notify_NUI then
                                                                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[228].text.."", Config.Image, Config.Language[228].time)
                                                            end
                                                        end
                                                    end)
                                                end
                                            else
                                                if count_horse < Config.Max_Horse_Without_Job then
                                                    saveWildHorse(NetworkGetEntityFromNetworkId(a), b.price, b.gender, b.model)
                                                else
                                                    TriggerEvent("guminputs:getAnswer", ""..Config.Language[374].text.."", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
                                                        local answer = cb
                                                        if answer == true then
                                                            sellWildHorses(NetworkGetEntityFromNetworkId(a), b.price, b.gender, b.model)
                                                            if Config.Gum_Notify_Old then
                                                                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text,""..Config.Language[228].text.."", Config.FirstName, Config.SecondName, Config.Language[228].time)
                                                            end
                                                            if Config.Gum_Notify_NUI then
                                                                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[228].text.."", Config.Image, Config.Language[228].time)
                                                            end
                                                        end
                                                    end)
                                                end
                                            end
                                            Citizen.Wait(5000)
                                        end
                                        if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, Config.Keysconfig[11].key) then
                                            sellWildHorses(NetworkGetEntityFromNetworkId(a), b.price, b.gender, b.model)
                                            Citizen.Wait(5000)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            else
                for k,v in pairs(Config.SellGetWildHorse) do
                    if GetMount(PlayerPedId()) ~= 0 and GetMount(PlayerPedId()) ~= horseentity then
                        if (GetDistanceBetweenCoords(coords.x, coords.y, coords.z, v["WildCoords"][1], v["WildCoords"][2], v["WildCoords"][3], true) < 20.0) then
                            optimalize = 5
                            if Config.MarkerForSaveHorse then
                                Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, v["WildCoords"][1], v["WildCoords"][2], v["WildCoords"][3]-1.0, 0, 0, 0, 0, 0, 0, 10.0, 10.0, 4.0, 255, 255, 100, 10, 0, 0, 2, 0, 0, 0, 0)
                            end
                            if (GetDistanceBetweenCoords(coords.x, coords.y, coords.z, v["WildCoords"][1], v["WildCoords"][2], v["WildCoords"][3], true) < 5.0) then
                                for a,b in pairs(SellWildHorse) do
                                    if NetworkGetEntityFromNetworkId(a) == GetMount(PlayerPedId()) and b ~= nil then
                                        PromptSetActiveGroupThisFrame(buttons_prompt_10,  CreateVarString(10, 'LITERAL_STRING', Config.Language[50].text))
                                        if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, Config.Keysconfig[12].key) then
                                            Citizen.Wait(100)
                                            if is_trainer then
                                                if count_horse < Config.Max_Horse_With_Job then
                                                    saveWildHorse(NetworkGetEntityFromNetworkId(a), b.price, b.gender, b.model)
                                                else
                                                    TriggerEvent("guminputs:getAnswer", ""..Config.Language[374].text.."", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
                                                        local answer = cb
                                                        if answer == true then
                                                            sellWildHorses(NetworkGetEntityFromNetworkId(a), b.price, b.gender, b.model)
                                                            if Config.Gum_Notify_Old then
                                                                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text,""..Config.Language[228].text.."", Config.FirstName, Config.SecondName, Config.Language[228].time)
                                                            end
                                                            if Config.Gum_Notify_NUI then
                                                                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[228].text.."", Config.Image, Config.Language[228].time)
                                                            end
                                                        end
                                                    end)
                                                end
                                            else
                                                if count_horse < Config.Max_Horse_Without_Job then
                                                    saveWildHorse(NetworkGetEntityFromNetworkId(a), b.price, b.gender, b.model)
                                                else
                                                    TriggerEvent("guminputs:getAnswer", ""..Config.Language[374].text.."", ""..Config.Language[335].text.."", ""..Config.Language[336].text.."", function(cb)
                                                        local answer = cb
                                                        if answer == true then
                                                            sellWildHorses(NetworkGetEntityFromNetworkId(a), b.price, b.gender, b.model)
                                                            if Config.Gum_Notify_Old then
                                                                exports['gum_notify']:DisplayLeftNotification(Config.Language[15].text,""..Config.Language[228].text.."", Config.FirstName, Config.SecondName, Config.Language[228].time)
                                                            end
                                                            if Config.Gum_Notify_NUI then
                                                                exports['gum_notify']:DisplayLeftNotification(""..Config.Language[15].text.."", ""..Config.Language[228].text.."", Config.Image, Config.Language[228].time)
                                                            end
                                                        end
                                                    end)
                                                end
                                            end
                                            Citizen.Wait(5000)
                                        end
                                        if Citizen.InvokeNative(0x305C8DCD79DA8B0F, 0, Config.Keysconfig[11].key) then
                                            sellWildHorses(NetworkGetEntityFromNetworkId(a), b.price, b.gender, b.model)
                                            Citizen.Wait(5000)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
            Citizen.Wait(optimalize)
        end
    end)

    function saveWildHorse(entity, price, gender, model)
        local positionForBuy = 0
        for f,g in pairs(Config.SpotsForStable) do
            local coords = GetEntityCoords(PlayerPedId())
            if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, g["BasicCoord"][1], g["BasicCoord"][2], g["BasicCoord"][3], false) < Config.CoordAdjustForStablesId then
                positionForBuy = f
            end
        end
        TriggerEvent("guminputs:getInput", ""..Config.Language[53].text.."", ""..Config.Language[197].text.." "..gender.."", function(cb)
            local nameHorse = tostring(cb)
            if nameHorse ~= nil and nameHorse ~= "close" then
                if Config.Pay_For_Save_Horse then
                    TriggerServerEvent("gum_stables:save_horse", model, nameHorse, (price/100*Config.Pay_For_Save_Percent), gender, positionForBuy)
                    SellWildHorse[entity] = nil
                    delete_obj(entity, true)
                else
                    TriggerServerEvent("gum_stables:save_horse", model, nameHorse, 0, gender, positionForBuy)
                    SellWildHorse[entity] = nil
                    delete_obj(entity, true)
                end
            end
        end)
    end
    function sellWildHorses(entity, price, gender, model)
        local wildCalculation = 0
        for a,b in pairs(Config.Wild_Horses) do
            if model == GetHashKey(a) then
                wildCalculation = b
            end
        end
        if wildCalculation == 0 then
            TriggerServerEvent("gum_horses:sell_horse", tonumber(price/Config.Sell_Spot_Price_Calc), model)
        else
            TriggerServerEvent("gum_horses:sell_horse", tonumber(price/wildCalculation), model)
        end
        SellWildHorse[entity] = nil
        delete_obj(entity, true)
    end
 
    RegisterNetEvent('gum_stables:save_horse_nw')
    AddEventHandler('gum_stables:save_horse_nw', function()
        for k,v in pairs(SellWildHorse) do
            for k2,v2 in pairs(Config.Horses) do 
                for x,y in pairs(v2) do 
                    if x ~= "name" then  
                        if GetEntityModel(v.id) == GetHashKey(x) then
                            delete_obj(v.id, true)
                        end
                    end
                end
            end
        end
    end)

    function RequestControl(entity)
        local type = GetEntityType(entity)
        if type < 1 or type > 3 then
            return
        end
        NetworkRequestControlOfEntity(entity)
    end

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0) 
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
                                    for a,b in pairs(filtered_wild_horses) do
                                        if GetHashKey(b.data[1]) == GetEntityModel(eventDataStruct:GetInt32(8)) then
                                            local gender = math.random(1,2)
                                            if tonumber(gender) == 1 then
                                                gender = ""..Config.Language[68].text..""
                                            else
                                                gender = ""..Config.Language[67].text..""
                                            end
                                            SellWildHorse[NetworkGetNetworkIdFromEntity(eventDataStruct:GetInt32(8))] = {price=b.data[4], gender=gender, model=b.data[1]}
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
                end
            end
        end
    end)
end

function filter(tablex)
    local table2 = tablex
    if Config.supporterselection then 
        for k,v in pairs(table2) do 
            for x,y in pairs(v) do 
                if x ~= "name" then 
                    if y[5] > supporterstatus then
                        v[x] = nil
                    end
                end
            end
        end
    end
    if Config.joblock2 then
        for k,v in pairs(table2) do 
            for x,y in pairs(v) do 
                if x ~= "name" then  
                    if not contains6(y[6], playerjob) and not contains6(y[6], "nojob") then 
                        v[x] = nil
                    end
                end
            end
        end
    end
    return table2
end

        function contains6(table, element)
            for k, v in pairs(table) do
                  if v == element then
                    return true
                end
            end
            return false
        end
        
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

        function delete_obj(obj, npc)
            local timeout = 0
            if obj ~= nil and obj ~= false then
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
                if npc == nil then
                    TriggerServerEvent("gum_stables:delete", NetworkGetNetworkIdFromEntity(obj))
                end
                DeleteEntity(obj)
                if horseentity == obj then
                    horsenetwork = nil
                    horseentity = nil
                end
                if entity2 == obj then
                    entity2 = nil
                    wagonnetwork = nil
                end
            end
        end
