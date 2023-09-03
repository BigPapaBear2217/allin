RegisterCommand("converted", function(source, args, rawCommand)
    ConvertMe()
end)

--SYN/GUM TABLE HORSES (SQL)
local GUMHorseTable = "horses"--TO GUM (HORSES)
local SYNHorseTable = "horses_translate"-- FROM SYN (HORSES)

--SYN TABLE WAGONS (SQL)
local GUMCartTable = "wagons"--TO GUM (CARTS)
local SYNCartTable = "wagons_translate"--FROM SYN (CARTS)

--Setup from your Language (from config male / female)
local MaleGender = "Male"
local FemaleGender = "Female"

--Random chance for if horses exist = Breedable / Non breedable, and Yes/No select to your language
local BreedChance = 50
local BreedLangYes = "Yes"
local BreedLangNo = "No"


--Random setup for Ages (now its from 5-10)
local AgeSetup = {5,10}

function ConvertMe()
    print("START CONVERTING STABLES HORSES")
    Citizen.Wait(2000)
    exports.ghmattimysql:execute("SELECT * FROM "..SYNHorseTable.."", {}, function(result)
        if result then
            for k,v in pairs(result) do

                local tableComp = {}

                local gender = "Male"
                if tonumber(v.sex) == 0 then
                    gender = MaleGender
                else
                    gender = FemaleGender
                end
                local age = math.random(AgeSetup[1], AgeSetup[2])
                local BreedingChance = math.random(1,100)
                if BreedingChance < BreedChance then
                    breeding = BreedLangYes
                else
                    breeding = BreedLangNo
                end
                for a,b in pairs(json.decode(v.components)) do
                    if b ~= nil then
                        local category = SendNameCategory(b)
                        if SendNameCategory(b) ~= nil then
                            tableComp[category] = b
                        end
                    end
                end

                print(v.identifier, v.charid, v.model,v.name,tableComp,v.exp,v.items,age,breeding,gender)
                local Parameters = { identifier=v.identifier, charid=v.charid, model=v.model,name=v.name,components=json.encode(tableComp),exp=v.exp,items=v.items,age=age,breeding=breeding,sex=gender}
                exports.ghmattimysql:execute("INSERT INTO "..GUMHorseTable.." ( `identifier`,`charid`,`model`,`name`,`components`,`exp`,`items`,`age`,`breeding`,`sex` ) VALUES (@identifier,@charid,@model,@name,@components,@exp,@items,@age,@breeding,@sex)", Parameters)
                Citizen.Wait(100)
            end
        end
    end)
    Citizen.Wait(2000)
    print("HORSES WILL BE CONVERTED")
    Citizen.Wait(2000)
    print("START STABLES WAGONS")
    exports.ghmattimysql:execute("SELECT * FROM "..SYNCartTable.."", {}, function(result)
        if result then
            for k,v in pairs(result) do
                print(v.identifier, v.charid, v.model,v.name)
                local Parameters = { identifier=v.identifier, charid=v.charid, model=v.model,name=v.name,items=v.items}
                exports.ghmattimysql:execute("INSERT INTO "..GUMCartTable.." ( `identifier`,`charid`,`model`,`name`,`items`) VALUES (@identifier,@charid,@model,@name,@items)", Parameters)
                Citizen.Wait(100)
            end
        end
    end)

end

function SendNameCategory(hash)
    local sendIt
    for a,b in pairs(Config_2.Horse) do
        if b.hash == hash then
            if b.category_hashname == "horse_blankets" then
                sendIt = "saddlecloths"
            elseif  b.category_hashname == "saddle_horns" then
                sendIt = "acshorn"
            elseif  b.category_hashname == "HORSE_SADDLEBAGS" then
                sendIt = "bags"
            elseif  b.category_hashname == "HORSE_TAILS" then
                sendIt = "tails"
            elseif  b.category_hashname == "horse_manes" then
                sendIt = "manes"
            elseif  b.category_hashname == "horse_saddles" then
                sendIt = "saddles"
            elseif  b.category_hashname == "saddle_stirrups" then
                sendIt = "stirrups"
            elseif  b.category_hashname == "saddle_lanterns" then
                sendIt = "lantern"
            elseif  b.category_hashname == "horse_accessories" then
                sendIt = "Mask"
            elseif  b.category_hashname == "horse_bedrolls" then
                sendIt = "acsluggage"
            end
        end
    end
    return sendIt
end