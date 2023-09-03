Config = {}

/* Discord hook */
Config.DiscordHook = false
Config.DiscordLink = ""
Config.DiscordName = "RW"
Config.DiscordLanguage = {
    [2] = {text = "Steam name",},
    [3] = {text = "Steam hex",},
    [4] = {text = "Model",},
    [5] = {text = "Name",},
    [6] = {text = "Male/Female",},
    [7] = {text = "Age",},
    [8] = {text = "Price",},
    [10] = {text = "Start breeding ",},
    [11] = {text = "Which",},
    [12] = {text = "Giving horse",},
    [13] = {text = "Horse ID",},
    [14] = {text = "Sell horse",},
    [15] = {text = "Sell my horse",},
    [16] = {text = "Save wild horse",},
    [17] = {text = "Pay : ",},
    [18] = {text = "Horse was killed",},
    [19] = {text = "Horse dayed on old",},
    [20] = {text = "Horse shoes",},
    [21] = {text = "Transfer wagon",},
    [22] = {text = "Buy Horse",},
    [23] = {text = "Save adult horse",},
    [24] = {text = "Buy components",},
    [25] = {text = "Update horse shoe state",},
    [26] = {text = "Buy wagon",},
    [27] = {text = "Sell my wagon",},
    [28] = {text = "Delete dead horse",},
    [29] = {text = "Health sick horse",},
    [30] = {text = "Wagon ID "}
}
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* Base */
Config.Debug = false
Config.OneSync = true
Config.GoldRol = true
Config.Farming = true--If you use my farming
Config.UnemployedJob = "unemployed"

Config.Gum_Notify_Old = false
Config.FirstName = ""--If you use old Notify you must add Image path
Config.SecondName = ""--If you use old Notify fro mme you must add Image Name

Config.Gum_Notify_NUI = true
Config.Image = "stables"
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* Default horses/cart logic */
Config.OutOfRangeTask = true--If horse out of range -> automaticaly go to you
Config.OutOfRangeDespawn = false--If horse out of range -> automaticaly despawn
Config.RangeForDespawnHorse = 110.0
Config.RangeForDespawnWagon = 110.0
Config.RageForCallHorse = 80.0--If you press H and horse is long way from you, he does come
-- If you need despawn horse from another script add only this to script -  TriggerEvent("gum_stables:fleeHorse")

Config.Max_Horse_Without_Job = 8--How much horses you can have without job
Config.Max_Horse_With_Job = 21--How much horses you can have with trainer job
Config.Max_Wagon_Without_Job = 2--How much carts you can have without job
Config.Max_Wagon_With_Job = 15--How much carts you can have with trainer job

Config.Cooldown = 1--5 min for again call horse
Config.CooldownWagon = 5

Config.Access_Other_Storage = true--Access for other
Config.Access_Only_Id = true--If you have enabled player can see your storage only if you add him via ID (if you have disabled you have access to all players storage)
Config.RemoveAccessAfterDrop = true--Remove access if player disconnect/drop from game

Config.jobAccess = true--Only specific job can access to your storage
Config.jobAccessInventory = {--You must have enabled : Config.Access_Other_Storage, Config.Access_Only_Id
    ["police"] = true,
    ["Sheriff_SD"] = true,
}

Config.BrushItem = "Brush"--For cleaning horses

Config.Eat_Items = {--Feed table for horses
    [1] = {item = "Apple", health=40, stamina=40, gold_health=0.0, gold_stamina=0.0, prop="p_apple01x",useOtherScript=false},
    [2] = {item = "Hay", health=30, stamina=30, gold_health=0.0, gold_stamina=0.0, prop="p_haypilepitchfork01x",useOtherScript=false},
	[3] = {item = "consumable_sugarcube", health=20, stamina=40, gold_health=0.0, gold_stamina=0.0, prop="p_haypilepitchfork01x",useOtherScript=false},
	[4] = {item = "Wild_Carrot", health=30, stamina=30, gold_health=0.0, gold_stamina=0.0, prop="p_haypilepitchfork01x",useOtherScript=true},
}

Config.Stimulant_Items = {--Injcetion (stimulant) table for horses   (if you have enabled healItem, its item for revive horses)
    [1] = {item = "Heal_For_Horse", health=0, stamina=0, gold_health=0.0, gold_stamina=0.0, healItem=true},
    [2] = {item = "Boost_For_Horse", health=0, stamina=100, gold_health=0.0, gold_stamina=0.0, healItem=false},
    [3] = {item = "Gold_For_Horse", health=100, stamina=100, gold_health=1000.0, gold_stamina=1000.0, healItem=false},
}

Config.HealHorse = true--If you disable you can select HealPrice on "strong" value like 40$ now (for healing in stables)
Config.HealCount = 4--If you have enable HealHorse you pay for health horsePrice / 4
Config.HealPrice = 40--If you have disable Heal horse this "strong" price 40$
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* Workers/Hunting Carts logic + horses */

Config.PeltOnHorses = true--If you have butcher what sell peltz from horse add here this for clean = TriggerEvent("gum_stables:cleanPeltz") 
Config.MaxPelts = 5--Max peltz on horse (max is 5)
Config.HuntingCartCalculate = 2--Hunting cart storage / 2 = Is storage for animals

Config.Wood_Items = {--Table for wood carts
    --NUM = {"Item name", "Item ID", "Weight"}
    [1] = {"Bois", "bois", 1.0},
    [2] = {"Grande branche", "p_bois", 0.1},
}

Config.Stone_Items = {--Table for stone carts
      --NUM = {"Item name", "Item ID", "Weight"}
    [1] = {"Stone", "Stone", 1.0},
    [2] = {"Charcoal", "Charcoal", 0.5},
}

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* Stables logic */
Config.CityStablesHorse = false
Config.CityStablesWagon = false
Config.FleeWagon = true -- If you have enabled, you can flee wagon, if you have disabled you cant flee wagon anywhere
Config.DebugWagon = true -- Debug buttons is for carts, and if you use onesync sometimes you can get cart without horses.. this carts (good for city stables and call cart from stable)
Config.RespawnAfterLogin = true--If your game drop, and you connect back, you cart/horse was respawned on same position

Config.CallFromStableHorse = false
Config.CallFromStableCart = false

Config.mainStables = 1

Config.TransferEnable = false--Transfer between stables is enabled (if you use City stables)
Config.TransferPrice = 30--Price for transfer horses/carts between stables  (0 is disabled)
Config.CoordAdjustForStablesId = 30.0--(this control coords from "save" wild horses too normal stables)
Config.Clothe1InBlanket = true--Here you can set clothing 1 / 2 slots via ID (its special for vorp/gum, where you can edit clothing -> IDs )

Config.SimulateNodesEnabled = true--Simulate nodes have priority before road nodes. If you have problem with call cart becouse "Road not near" you can add here nodes, and you can call cart on this spot. You can make your specific "place" for spawn via simulate 
Config.SimulateNodes = {
    [1] = {1012.510498046875,-1702.018310546875,45.8022346496582,350.778076171875, 40.0},
    [2] = {1011.9470825195312,-1636.866455078125,46.39780807495117,1.2416785955429, 40.0},
    [3] = {1011.5985107421876,-1711.5843505859375,45.83487701416015,2.0401337146759, 40.0},
}

Config.InteractibleCamera = true--In my horses, my carts, Horse components and Cart components you can move via mouse camera (if you hold left or right click)
Config.RenameCartHorse = "HorseCartTag"
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* Age logic */
Config.Real_Logic = true
Config.Age_Update_If_Real_Logic = 30--30 min real logic update
Config.Age_Update_For_1_Time = 0.009--Calculation   24hours ==== (day have 30min 58x) =  58 * 0.009 = 0.522 ages for 24 Hours
Config.MaxAge = 30--Max age for horses where go to state old

Config.Dead_On_Old = true--If horse old you have chance for "dead"
Config.Chance_For_Dead = 10--10% chance

Config.Age_Check = 30--30 min for check age

--After you buy horse you have select cub/adult (this is for CUB)
Config.Random_Age_From = 1
Config.Random_Age_To = 6

--After you buy horse you have select cub/adult (this is for ADULT)
Config.Random_Age_For_Normal_Horses_1 = 6
Config.Random_Age_For_Normal_Horses_2 = 10

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* Status cart/horses */
Config.SaveStatus = true--Save status sprint, health from horse after flee, dirty hook
Config.BlockSpamEat = true--Blocked spamming eat for full stamina etc..
Config.BlockSpamEatTime = 60--2min

Config.KickHorse = true-- If you enable, your horse can kick you
Config.AffectDamageToCart = true--This affect damage on cart to your vehicle
--Under 600 HP cart is more and more dirty and under 100HP is undriveble
Config.AffectDirtyToCart = true--Clean / under 600Hp more dirty and every 100 -> more and more dirty
Config.AffectRidingToCart = true--Under 100 HP -> undriveble cart you are kicked from cart with notify "Your cart is much broken"

Config.RepairNeed = true-- If you have enabled, you need repair kit for repair wheel
Config.RemoveWheel = true
Config.RepairWheel = "Repair_Kit"--For fix item for wheel health
Config.Destroy_Wheel = true
Config.RepairKit = "Repair_Kit"--For fixing carts
Config.RemoveKit = true
Config.Chance_On_Destroy = 10--30% every 10 second for destroy wheel
Config.TimerForCheckSpeed = 300---Every 10 second check speed cart if is fastest -> 30% for wheel down

Config.ShowNUIStatus = true--Show status on NUI (If you target your horse, you see ACC / SPEED / TURN Stats)
Config.ShowWILDStatus = true--Show status on NUI (If you target with binoculars wild horse you see ACC / SPEED / TURN Stats)
Config.OnlyTrainerSeeWildStatus = true--Only trainer can see stats wild horses

Config.Horse_Props = 5.55
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* Horse shoe */
Config.JobForShoe = true--Enable this option you enable for trainers put Horse shoe on horse
Config.JobGrade = true
Config.GradeForShoe = 0--If you have enabel Grade you set Job grade

Config.minigameShoe = true
Config.Max_Agility = 9--Max agility is 9 but you can select smaller :)
Config.Horse_Shoe = 1--Per 1 shoes per 1 level
Config.ShoeItem = "Horse_Shoe"

/* Horse hook */
Config.hoofHook = true--If you have enabled status, and enabled this, your hoof need cleaning
Config.Hoof_Hook_Item = "Hoof_Hook"--For cleaning hoof on horses
Config.removeAfterUse = false

Config.timerForHook = 30--30 seconds

--How much dirty go down in specific states
Config.HoofDownIfSprint = 0.03
Config.HoofDownIfRun = 0.02
Config.HoofDownIfWalk = 0.01

Config.hoofDirtyAffectSpeed = {
-- Default speed is +-2.6 this speed was counted from table after downed value 
    [1] = {100, 0.0},
    [2] = {80, 0.1},
    [3] = {60, 0.2},
    [4] = {40, 0.3},
    [5] = {20, 0.4},
    [6] = {10, 0.5},
    [7] = {0, 0.6},
}

----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* Horse trainers */
Config.JobSet = {"ecurie","ecurie_g","HorseBreeder","lakota","kwanita","kiowa","chippewa"}--Trainers jobs
Config.Only_Job_Exp = true
Config.OnlyTrainerSeeStats = true--only trainer if lead horse see stats 
Config.CinematicCameraProtection = true--This block exp if you have cinematic camera
Config.ExpTimer = 10--Every 10 second add Exp to horse if player lead, or walk with horse
Config.ExpTable = {
    Walking = 1,
    Running = 2,
    Sprinting = 3,
    Leading = 4,

    IfCub = 3,
    IfAdult = 1,

    IfTrener = 5,
    IfNoTrener = 1,

    ExpForCommandSkills = true,-- Language command = 400,401,402,403
    Resting = 10,
    Sleep = 10,
    Wallow = 10,
    Drink = 10,
}

----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* Horse system friendly/bond */
Config.FriendlySystem = true--Friendly system is bond between player and horses
Config.OnlyTrainerFriendly = false--Only trainer can train friendly

Config.ChanceToMakeFrendlyTrainer = 95--70% chance for make friendly action
Config.ChanceToMakeFriendlyNoTrainer = 5--10% chance for make friendly action without job

Config.RandomBadSituation = true
Config.RandomBadSituationTimer = {60, 300}--    1m-5m  randomly

Config.BadFriendlyActionTimer = 30--Every  30 second horse make bad action (affected on Percent) like Every 30 second = You have change 70% for bad action
Config.BadFriendlyAction = {
    [10] = 0,--10 Level friendly
    [9] = 10,
    [8] = 15,
    [7] = 20,
    [6] = 25,
    [5] = 30,
    [4] = 35,
    [3] = 40,
    [2] = 45,
    [1] = 50,
    [0] = 70,--0 Level friendly
}

----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* Horse system courage */
Config.CourageSystem = true--Courage system how much is horse scarred from fire, snakes etc.
Config.CourageUpgradeChance = 70--If horse scarred you have 70% chance for upgrade courage
Config.MaxCourage = 8--Max courage level

----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* Tame Wild horses */
Config.Tamming_Horses = true--Enabled taming wild horses
Config.JobForTamming = true
Config.MarkerForSaveHorse = true

Config.Random_Age_For_Tamming_Save_1 = 6--From Year
Config.Random_Age_For_Tamming_Save_2 = 20--To Year
Config.BreedAfterTame = 50--(If you tame horse you have 50% chance "can breed state")

Config.TriggerFixAnim = false--This trigger animation if you tame horses (some peds have problem with bad animation)
Config.Tamming_Mini_Game = false--Minigames
Config.Tamming_Key_Table = {
    [1] = {0xE6F612E4, "1"},
    [2] = {0x1CE6D9EB, "2"},
    -- [3] = {0x4F49CC4C, "3"},
    -- [4] = {0x8F9F9E58, "4"},
    -- [5] = {0xAB62E997, "5"},
    -- [6] = {0xA1FDE2A6, "6"},
}

Config.CooldownTame = true
Config.CooldownTime = 30 -- in Minutes

Config.Time_To_Press = 150
Config.Pay_For_Save_Horse = false
Config.Pay_For_Save_Percent = 10


Config.Sell_My_Horse = 4--Sell your buyed horses   HorsePrice/4
Config.Sell_Spot_Price_Calc = 31--    HorsePrice/31    (this is calculation for sell wild horses all)
Config.Wild_Horses = {--               HorsePrice/Value    (This is calculation for sell wild horses on specific models)
    A_C_Horse_KentuckySaddle_Black = 31,
    A_C_Horse_KentuckySaddle_ButterMilkBuckskin_PC = 15,
    A_C_Horse_KentuckySaddle_ChestnutPinto = 31,
    A_C_Horse_KentuckySaddle_Grey = 31,
    A_C_Horse_KentuckySaddle_SilverBay = 31,
    A_C_Horse_Morgan_Bay = 45,
    A_C_Horse_Morgan_BayRoan = 45,
    A_C_Horse_Morgan_FlaxenChestnut = 45,
    A_C_Horse_Morgan_LiverChestnut_PC = 45,
    A_C_Horse_Morgan_Palomino = 45,
    A_C_Horse_TennesseeWalker_BlackRabicano = 30,
    A_C_Horse_TennesseeWalker_Chestnut = 30,
    A_C_Horse_TennesseeWalker_MahoganyBay = 30,
    A_C_Horse_TennesseeWalker_RedRoan = 30,
    A_C_Horse_TennesseeWalker_GoldPalomino_PC = 30,
    A_C_Horse_AmericanPaint_Tobiano = 15,
    A_C_Horse_AmericanPaint_SplashedWhite = 15,
    A_C_Horse_AmericanPaint_Overo = 15,
    A_C_Horse_AmericanStandardbred_Black = 15,
    A_C_Horse_AmericanStandardbred_Buckskin = 15,
    A_C_Horse_Andalusian_Perlino = 3,
    A_C_Horse_Appaloosa_Blanket = 24,
    A_C_Horse_Appaloosa_FewSpotted_PC = 4,
    A_C_Horse_Appaloosa_LeopardBlanket = 24,
    A_C_Horse_HungarianHalfbred_FlaxenChestnut = 20,
    A_C_Horse_HungarianHalfbred_PiebaldTobiano = 20,
    A_C_Horse_Mustang_GrulloDun = 15,
    A_C_Horse_Mustang_TigerStripedBay = 3,
    A_C_Horse_Mustang_WildBay = 15,
    A_C_Horse_Nokota_BlueRoan = 10,
    A_C_Horse_Nokota_WhiteRoan = 10,
    A_C_Horse_Thoroughbred_BloodBay = 11,
    A_C_Horse_Thoroughbred_DappleGrey = 11,
}

Config.SellGetWildHorse = {--Coordinations for save horse spots
    [1] =  {
        ["Blip_Enable"] = true,
        ["WildCoords"] = {1221.1, -218.22, 100.78},
    },
    [2] =  {
        ["Blip_Enable"] = true,
        ["WildCoords"] = {2501.8916015625, -1431.5257568359375, 46.26433181762695},
    },
    [3] =  {
        ["Blip_Enable"] = true,
        ["WildCoords"] = {-874.1815795898438, -1357.041748046875, 43.56147384643555},
    },
    [4] =  {
        ["Blip_Enable"] = true,
        ["WildCoords"] = {-857.90, 348.14, 96.09},
    },
}

----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* Breeding */
Config.Only_Breeder_Can_Breed = true
Config.JobSetB = {"ecurie","Breeder2"}

Config.FixBrainerItem = true
Config.FixBrainerItemId = "BreederFix"--Only For trainers and for Male genders
Config.FemaleFixToo = true--Enable Female gender fix too

Config.BreedPriceEnable = false--Example : If you have BreedPriceDistance 60 you can breed like horse for 30$ and max horse for 90$ (60+30)
Config.BreedPriceDistance = 90--Distance

Config.PayForBreed = false--(((Price first horse+Price Second horse)/2)/100*Percent price for breed)
Config.BreedPricePercent = 50 
--price_first_breed+price_second_breed/2)/100*Config.BreedPricePercent
--200+200 = 400 / 2 = 200/100 = 2* Config.BreedPricePercent ==> Pay for breed

Config.MaxBreedWithJob = 5--Only Breeder Can (too if you have disable only breeder, function check only job)
Config.MaxBreedWithoutJob = 3--Without job breeder

Config.txBreedingDataSave = true -- if you use TX i can recommened this! Speed up performace for breeding, and before restart server from TX -> all saved to Database (all breeding data)
Config.txDisabledTime = 30 -- if you have dont use TX Admin you must set save time for Breeding (in minutes)

Config.BreedStateAfterBuy = 60--(If you buy horse you have 50% chance "can breed state")
Config.Can_Breed_Again_Chance = 10--Percentage chance for again breed after breed

Config.BreedingTime = 5400--16h . (its in seconds)
Config.BlockBreedHorse = {
}
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* Horse/cart components */
Config.Horse_Bedrolls = 1.00
Config.Horse_Blankets = 1.00
Config.Horse_Manes = 1.00
Config.Horse_Bags = 10.00
Config.Horse_Saddles = 12.00
Config.Horse_Tails = 1.00
Config.Horse_Horn = 1.00
Config.Horse_Stirrups = 1.00
Config.Horse_Accesori = 1.00
Config.Horse_Mustache = 1.00
Config.Horse_Holster = 1.00
Config.Horse_Lantern = 6.00
Config.Horse_Bridle = 6.00
Config.Horse_Props = 6.00

Config.Extras = 0.1
Config.Tint = 0.5
Config.Livery = 0.5
Config.Lantern = 0.5
Config.Propset = 2.5
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* Commands for delete Horses/Carts for job */
Config.DeleteCommand = "del"
Config.DeleteJobs = {
    "Sheriff_VL",
    "Sheriff",
    "ecurie",
}

/* Commands for delete Horses/Carts for admins */
Config.AdminCommand = "del"
Config.DeleteAdmin = {
    "admin",
    "mod"
}
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* NPC Position, Stable position, Spot setting */
Config.enableInteractWithNpc = false--If you have enabled interact you must look on NPC for interact
Config.useTimeLogic = false--Time logic select if you have opened store from 5:00 = 23:00
Config.useNPC = false
Config.StableNPC = {
    [1] = { --valentine (warning, this number must be same what is position for stables Config.SpotsForStable)
        npc="u_m_m_bwmstablehand_01",
        coords={-369.29107666015625, 787.6444702148438, 115.19013214111328, 170.0},
        timeStart=5,--Hours
        timeEnd=23--Hours
    },
    [2] = { --blackwater
        npc="u_m_m_bwmstablehand_01",
        coords={-875.6722412109375,-1367.19921875,42.55912780761719, -84.0},
        timeStart=5,--Hours
        timeEnd=23--Hours
    },
	[3] = { --rhodes
        npc="u_m_m_bwmstablehand_01",
        coords={1460.4578857421875, -1367.54345703125, 77.88512420654297, 75.51103973388672},
        timeStart=5,--Hours
        timeEnd=23--Hours
    },
	[4] = { --denis
        npc="u_m_m_bwmstablehand_01",
        coords={2508.898193359375,-1458.2095947265625,45.34691619873047,191.3592987060547},
        timeStart=5,--Hours
        timeEnd=23--Hours
    },
	[5] = { --tumbleweed
        npc="u_m_m_bwmstablehand_01",
        coords={-5526.22265625,-3034.348876953125,-3.22567963600158,210.35563659667969},
        timeStart=5,--Hours
        timeEnd=23--Hours
    },
	[6] = { --Wapiti
        npc="a_m_m_wapwarriors_01",
        coords={411.9329528808594,2226.380615234375,253.0602569580078,245.81478881835935},
        timeStart=0,--Hours
        timeEnd=24--Hours
    },
	[7] = { --strawberry
        npc="u_m_m_bwmstablehand_01",
        coords={-1819.4879150390625, -562.0413818359375, 155.0779266357422, -101.0},
        timeStart=5,--Hours
        timeEnd=23--Hours
    },
    [8] = { --rhodes Brainwather
        npc="u_m_m_bwmstablehand_01",
        coords={972.808349609375,-1829.1591796875,45.73870468139648, 90.0},
        timeStart=5,--Hours
        timeEnd=23--Hours
    },
}

Config.SpotsForStable = {
    [1] =  {
        ["Blip_Enable"] = true,
        ["Blip_Name"] = "Emerald Ranch",
        ["BasicCoord"] = {1394.26, 353.95, 87.7},


        ["CamPosHorse"] = {1381.59, 321.59, 89.60, -26.45},
        ["1SpawnHorse"] = {1382.93, 328.83, 86.8},
        ["2SpawnHorse"] = {1384.86, 328.51, 86.8},

        ["Breedingcam"] = {-5520.71, -3043.59, 0.74, -178.93},

        --Breed spawn
        ["B3SpawnHorse"] = {-5519.3765, -3050.7974, -2.1877},
        ["B4SpawnHorse"] = {-5522.0444, -3050.7844, -1.9893},

        --Adult spawn
        ["B1SpawnHorse"] = {-5522.3643, -3039.3586, -2.0769},
        ["B2SpawnHorse"] = {-5519.2329, -3039.1589, -2.1069},
    },
	
	    [2] =  {
        ["Blip_Enable"] = true,
        ["Blip_Name"] = "Establo de Guarma",
        ["BasicCoord"] = {1498.51, -7066.26, 77.04},

        ["CamPosHorse"] = {1501.87, -7080.73, 78.17, 28.69},
        ["1SpawnHorse"] = {1498.88, -7075.26, 77.12},
        ["2SpawnHorse"] = {1496.52, -7073.79, 76.99},

        ["Breedingcam"] = {-5520.71, -3043.59, 0.74, -178.93},

        --Breed spawn
        ["B3SpawnHorse"] = {-5519.3765, -3050.7974, -2.1877},
        ["B4SpawnHorse"] = {-5522.0444, -3050.7844, -1.9893},

        --Adult spawn
        ["B1SpawnHorse"] = {-5522.3643, -3039.3586, -2.0769},
        ["B2SpawnHorse"] = {-5519.2329, -3039.1589, -2.1069},
    },

    [3] =  {
        ["Blip_Enable"] = true,
        ["Blip_Name"] = "Ecurie de saint denis",
        ["BasicCoord"] = {2512.39, -1457.72, 46.36},

        ["CamPosHorse"] = {2503.66, -1454.14, 47.26, 1.31},
        ["1SpawnHorse"] = {2504.38, -1449.78, 46.30}, 
        ["2SpawnHorse"] = {2502.09, -1451.61, 46.30},

        ["Breedingcam"] = {-5520.71, -3043.59, 0.74, -178.93},

        --Breed spawn
        ["B3SpawnHorse"] = {-5519.3765, -3050.7974, -2.1877},
        ["B4SpawnHorse"] = {-5522.0444, -3050.7844, -1.9893},

        --Adult spawn
        ["B1SpawnHorse"] = {-5522.3643, -3039.3586, -2.0769},
        ["B2SpawnHorse"] = {-5519.2329, -3039.1589, -2.1069},
    },

    [4] =  {
        ["Blip_Enable"] = true,
        ["Blip_Name"] = "Attelages Indien",
        ["BasicCoord"] = {2512.75, 1700.84, 87.49},

        ["CamPosHorse"] = {2503.81, 1704.43, 89.05, -91.81},
        ["1SpawnHorse"] = {2512.83, 1703.08, 87.51}, 
        ["2SpawnHorse"] = {2512.55, 1705.66, 87.52},

        ["Breedingcam"] = {-5520.71, -3043.59, 0.74, -178.93},

        --Breed spawn
        ["B3SpawnHorse"] = {-5519.3765, -3050.7974, -2.1877},
        ["B4SpawnHorse"] = {-5522.0444, -3050.7844, -1.9893},

        --Adult spawn
        ["B1SpawnHorse"] = {-5522.3643, -3039.3586, -2.0769},
        ["B2SpawnHorse"] = {-5519.2329, -3039.1589, -2.1069},
    },
    
    [5] =  {
        ["Blip_Enable"] = true,
        ["Blip_Name"] = "Ecurie de Rhodes",
        ["BasicCoord"] = {1433.49, -1301.19, 77.87},

        ["CamPosHorse"] = {1430.21, -1295.33, 78.75, -17.17}, 
        ["1SpawnHorse"] = {1433.03, -1287.98, 77.81},
        ["2SpawnHorse"] = {1430.95, -1288.75, 77.82},

        ["Breedingcam"] = {-5520.71, -3043.59, 0.74, -178.93},

        --Breed spawn
        ["B3SpawnHorse"] = {-5519.3765, -3050.7974, -2.1877},
        ["B4SpawnHorse"] = {-5522.0444, -3050.7844, -1.9893},

        --Adult spawn
        ["B1SpawnHorse"] = {-5522.3643, -3039.3586, -2.0769},
        ["B2SpawnHorse"] = {-5519.2329, -3039.1589, -2.1069},
    },

    [6] =  {
        ["Blip_Enable"] = true,
        ["Blip_Name"] = "Attelages Kiowa ",
        ["BasicCoord"] = {-2701.30, -1482.99, 148.94},

        ["CamPosHorse"] = {-2698.22, -1474.20, 151.13, -173.01}, 
        ["1SpawnHorse"] = {-2694.04, -1483.08, 148.450},
        ["2SpawnHorse"] = {-2696.43, -1483.19, 148.49},

        ["Breedingcam"] = {-5520.71, -3043.59, 0.74, -178.93},

        --Breed spawn
        ["B3SpawnHorse"] = {-5519.3765, -3050.7974, -2.1877},
        ["B4SpawnHorse"] = {-5522.0444, -3050.7844, -1.9893},

        --Adult spawn
        ["B1SpawnHorse"] = {-5522.3643, -3039.3586, -2.0769},
        ["B2SpawnHorse"] = {-5519.2329, -3039.1589, -2.1069},
    },

    [7] =  {
        ["Blip_Enable"] = true,
        ["Blip_Name"] = "Attelages Chippewa ",
        ["BasicCoord"] = {676.66, -1213.67, 45.82},

        ["CamPosHorse"] = {678.67, -1209.71, 48.50, 109.82}, 
        ["1SpawnHorse"] = {671.29, -1483.08, 46.17},
        ["2SpawnHorse"] = {669.98, -1207.25, 46.33},

        ["Breedingcam"] = {-5520.71, -3043.59, 0.74, -178.93},

        --Breed spawn
        ["B3SpawnHorse"] = {-5519.3765, -3050.7974, -2.1877},
        ["B4SpawnHorse"] = {-5522.0444, -3050.7844, -1.9893},

        --Adult spawn
        ["B1SpawnHorse"] = {-5522.3643, -3039.3586, -2.0769},
        ["B2SpawnHorse"] = {-5519.2329, -3039.1589, -2.1069},
    },
}


Config.SpotForTake = false--If you dis enable you cant whistle horse anywhere but can spawn horse at this spot
Config.TimeForSpawn = 5--(5 Second for spawn at pos)
Config.SpotForTakeCd = {
    [1] = {  --- Valentine
        blip_e = true,--Blip enable / disable
        blip = "Stable Boy",--Blip name
        coords = {-269.69, 678.18, 113.39},--Cords for enter
        scoords = {-259.77, 672.78, 113.38, 220.32},--Coords + heading for spawn
        carts = true,
        horses = true,
    },
    [2] = {  --- Saint Denis
        blip_e = true,--Blip enable / disable
        blip = "Stable Boy",--Blip name
        coords = {2513.73, -1463.73, 46.41},--Cords for enter
        scoords = {2514.48, -1470.03, 46.29, 91.51},--Coords + heading for spawn
        carts = true,
        horses = true,
    },
    [3] = {  --- Rhodes
        blip_e = true,--Blip enable / disable
        blip = "Stable Boy",--Blip name
        coords = {1461.54, -1376.48, 78.94},--Cords for enter
        scoords = {1453.85, -1388.97, 79.29, 183.62},--Coords + heading for spawn�
        carts = true,
        horses = true,
    },
    [4] = {  --- Emerald  Ranch
        blip_e = true,--Blip enable / disable
        blip = "Stable Boy",--Blip name
        coords = {1407.64, 265.68, 89.69},--Cords for enter
        scoords = {1410.02, 261.01, 89.98, 272.51},--Coords + heading for spawn
        carts = true,
        horses = true,
    },
    [5] = {  --- Van Horn
        blip_e = true,--Blip enable / disable
        blip = "Stable Boy",--Blip name
        coords = {2948.35, 572.85, 44.73},--Cords for enter
        scoords = {2936.54, 578.10, 44.60, 348.53},--Coords + heading for spawn
        carts = true,
        horses = true,
    },
    [6] = {  --- Annesburg
        blip_e = true,--Blip enable / disable
        blip = "Stable Boy",--Blip name
        coords = {2976.42, 1429.53, 44.81},--Cords for enter
        scoords = {2979.20, 1416.54, 44.72, 121.97},--Coords + heading for spawn
        carts = true,
        horses = true,
    },
    [7] = {  --- Wapiti Reserve
        blip_e = true,--Blip enable / disable
        blip = "Stable Boy",--Blip name
        coords = {479.54, 2213.37, 247.11},--Cords for enter
        scoords = {486.89, 2218.00, 247.34, 354.98},--Coords + heading for spawn
        carts = true,
        horses = true,
    },
    [8] = {  --- Fort Wallace
        blip_e = false,--Blip enable / disable
        blip = "Stable Boy",--Blip name
        coords = {354.89, 1501.28, 180.15},--Cords for enter
        scoords = {356.95, 1491.91, 180.22, 179.72},--Coords + heading for spawn
        carts = true,
        horses = true,
    },
    [9] = {  --- Blackwater
        blip_e = true,--Blip enable / disable
        blip = "Stable Boy",--Blip name
        coords = {-870.29, -1375.01, 43.68},--Cords for enter
        scoords = {-868.23, -1383.18, 43.68, 267.14},--Coords + heading for spawn
        carts = true,
        horses = true,
    },
    [10] = {  --- Coulter - Kodiak
        blip_e = true,--Blip enable / disable
        blip = "Stable Boy",--Blip name
        coords = {-1338.58, 2397.79, 307.08},--Cords for enter
        scoords = {-1334.61, 2409.24, 307.59, 245.48},--Coords + heading for spawn
        carts = true,
        horses = true,
    },
    [11] = {  --- Strawberry
        blip_e = true,--Blip enable / disable
        blip = "Stable Boy",--Blip name
        coords = {-1776.68, -442.14, 155.16},--Cords for enter
        scoords = {-1779.89, -436.03, 155.22, 328.45},--Coords + heading for spawn
        carts = true,
        horses = true,
    },
    [12] = {  --- MacFarlanes Ranch
        blip_e = true,--Blip enable / disable
        blip = "Stable Boy",--Blip name
        coords = {-2434.35, -2440.93, 60.26},--Cords for enter
        scoords = {-2434.72, -2450.56, 60.26, 188.77},--Coords + heading for spawn
        carts = true,
        horses = true,
    },
    [13] = {  --- Armadillo
        blip_e = true,--Blip enable / disable
        blip = "Stable Boy",--Blip name
        coords = {-3700.59, -2571.09, -13.63},--Cords for enter
        scoords = {-3687.93, -2573.40, -13.63, 184.08},--Coords + heading for spawn
        carts = true,
        horses = true,
    },
    [14] = {  --- Tumbleweed
        blip_e = true,--Blip enable / disable
        blip = "Stable Boy",--Blip name
        coords = {-5509.78, -3038.94, -2.34},--Cords for enter
        scoords = {-5501.45, -3029.30, -3.89, 16.90},--Coords + heading for spawn
        carts = true,
        horses = true,
    },
}
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* Keyes setting */

Config.keys = {["one"] = 0xD8F73058,["two"] = 0xF3830D8E,["three"] = 0x24978A28,["four"] = 0x8AAA0AD4,["five"] = 0xD9D0E1C0,}
Config.Keysconfig = {
    [1] = {key = 0x27D1C284},--Open stable spot
    [2] = {key = 0xA1ABB953},--Open breeding
    [3] = {key = 0x3F4DC0EF},--DELETE Key
    [4] = {key = 0x27D1C284},--Animal on wagon
    [5] = {key = 0x27D1C284},--Open wagon storage
    [6] = {key = 0xA1ABB953},--Flee wagon
    [7] = {key = 0x27D1C284},--Open bags
    [8] = {key = 0x27D1C284},--+z on horse
    [9] = {key = 0x0522B243},--Component manipulation
    [10] = {key = 0xA1ABB953},--Trasnfer horse to other
    [11] = {key = 0x0522B243},--Sell tammed horse
    [12] = {key = 0x27D1C284},--Save tamemd horse
    [13] = {key = 0x24978A28},--Whistle horse
    [14] = {key = 0xF3830D8E},--Whistle wagon
    [15] = {key = 0x4216AF06},--Flee horse
    [16] = {key = 0x27D1C284},--Open stables

    [17] = {key = 0x20190AB4},--Rotate left
    [18] = {key = 0x65F9EC5B},--Rotate right
    [19] = {key = 0x6319DB71},--Zoom+
    [20] = {key = 0x05CA7C52},--Zoom-
}

--[10] = {key = 0xA1ABB953},--Trasnfer horse to other
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* Language */
Config.Language = {
    ---Notify is delayedd for notify, if it notify affect time 
    ---NOTIFY TIME (if it notify), NOTIFY TEXT
    [15] = {time=2000, text = "Écurie",},
    [18] = {time=2000, text = "Masque",},
    [19] = {time=2000, text = "Selles",},
    [20] = {time=2000, text = "Pommeau",},
    [21] = {time=2000, text = "Etriers",},
    [22] = {time=2000, text = "Sacoches",},
    [23] = {time=2000, text = "Tapis de selle",},
    [24] = {time=2000, text = "Lanterne",},
    [25] = {time=2000, text = "Sacoches",},
    [26] = {time=2000, text = "Bride",},
    [27] = {time=2000, text = "Holster",},
    [34] = {time=2000, text = "Equipements pour chevaux",},
    [38] = {time=2000, text = "C'est bien",},
    [43] = {time=2000, text = "Class",},
    [44] = {time=2000, text = "Nom",},
    [45] = {time=2000, text = "Genre",},
    [46] = {time=2000, text = "Fertile?",},
    [47] = {time=2000, text = "Age",},
    [48] = {time=2000, text = "Status",},
    [50] = {time=2000, text = "Écurie",},
    [53] = {time=2000, text = "Accepter",},
    [54] = {time=2000, text = "Soins pour cheval",},
    [55] = {time=2000, text = "",},
    [67] = {time=2000, text = "Male",},
    [68] = {time=2000, text = "Femelle",},
    [70] = {time=2000, text = "Poulain ou adulte",},
    [77] = {time=2000, text = "Tourner à gauche",},
    [78] = {time=2000, text = "Tourner à droite",},
    [79] = {time=2000, text = "Ouvrir l'écurie",},
    [81] = {time=2000, text = "Ouvrir",},
    [82] = {time=2000, text = "Vendre",},
    [83] = {time=2000, text = "Fuir",},
    [84] = {time=2000, text = "Monter à cheval",},
    [844] = {time=2000,text = "Prendre",},
    [85] = {time=2000, text = "Ajouter",},
    [86] = {time=2000, text = "Vous devez être niveau 2",},
    [87] = {time=2000, text = "Vous devez être niveau 4",},
    [88] = {time=2000, text = "Le cheval dois être dans l'eau",},
    [89] = {time=2000, text = "Vous devez être niveau 3",},
    [90] = {time=2000, text = "Point de vente",},--Sell spot  blip
    [91] = {time=2000, text = "Ajouter l'animal",},
    [92] = {time=2000, text = "Écurie",},
    [94] = {time=2000, text = "Charrette",},
    [95] = {time=2000, text = "ID du joueur",},
    [96] = {time=2000, text = "Pour ranger votre charrette vous devez d'abord monter dessus",},
    [98] = {time=2000, text = "Vous n'avez pas de place pour la fourure",},
    [99] = {time=2000, text = "Niveau",},
    [100] = {time=2000, text = "Exp",},
    [101] = {time=2000, text = "Votre cheval n'a pas de sacoches",},
    [102] = {time=2000, text = "Vou avez",},
    [103] = {time=2000, text = "Vous avez détruit votre roue, roulez moins vite!",},
    [104] = {time=2000, text = "Fait",},
    [105] = {time=2000, text = "Récompense",},
    [106] = {time=2000, text = "Votre cheval est malade. Allez dans une écurie pour le soigner",},
    [107] = {time=2000, text = "Vous devez d'abord monter sur votre charrette",},
    [1070] = {time=2000, text = "Votre charrette est détruite",},
    [108] = {time=2000, text = "fix_wheel",},--command
    [109] = {time=2000, text = "Ajouter un objet",},
    [110] = {time=2000, text = "prendre un objet",},
    [133] = {time=2000, text = "Votre sacoche est pleine",},
    [136] = {time=2000, text = "Vous n'avez pas suffisament",},
    [155] = {time=2000, text = "Vous avez donné une carotte à votre cheval",},
    [156] = {time=2000, text = "Trop loin de votre cheval",},
    [157] = {time=2000, text = "Vous brossez votre cheval",},
    [164] = {time=2000, text = "Oui",},--Breeding state
    [1640] = {time=2000, text = "Non",},
    [165] = {time=2000, text = "Avec",},
    [166] = {time=2000, text = "Temps",},
    [167] = {time=2000, text = "Nom",},
    [168] = {time=2000, text = "Ajouter pour reproduction",},
    [170] = {time=2000, text = "Vous commencez la saillie",},
    [171] = {time=2000, text = "Vous ne pouvez pas reproduir le même sexe",},
    [180] = {time=2000, text = "Menu d'équipements",},
    [186] = {time=2000, text = "Sélectionnez votre charrette",},
    [191] = {time=2000, text = "Nom",},
    [192] = {time=2000, text = "Vous n'avez pas Sélectionnez de charrette",},
    [193] = {time=2000, text = "Vous n'êtes pas proche d'une route",},
    [194] = {time=2000, text = "Vendre cheval sauvage",},
    [195] = {time=2000, text = "Enregistrer cheval sauvage",},
    [196] = {time=2000, text = "Prendre sacoche de votre dernier cheval.",},
    [197] = {time=2000, text = "Nommez le cheval:",},
    [198] = {time=2000, text = "Vous avez acheter un cheval pour",},
    [199] = {time=2000, text = "et nommez",},
    [200] = {time=2000, text = "Vous n'avez pas suffisament d'argent",},
    [201] = {time=2000, text = "Ajouté à l'écurie sous le nom de: ",},
    [202] = {time=2000, text = "Vous avez acheté des équipements pour: ",},
    [204] = {time=2000, text = "You dont have correct count that you set",},
    [205] = {time=2000, text = "Tu ne peux pas tenir",},
    [206] = {time=2000, text = "Vous avez acheté une charrette pour",},
    [207] = {time=2000, text = "et nommer",},
    [208] = {time=2000, text = "Vous avez vendu une cheval sauvage pour",},
    [209] = {time=2000, text = "Vous enregistrez un cheval sauvage nommé: ",},
    [210] = {time=2000, text = "Vous n'avez pas ",},
    [211] = {time=2000, text = "Pour soigner.",},
    [212] = {time=2000, text = "Non",},
    [213] = {time=2000, text = "Vous avez séléctionné un cheval",},
    [2133] = {time=2000, text = "Vous avez séléctionné une charrette",},
    [214] = {time=2000, text = "Équipement",},
	[215] = {time=2000, text = "Selectionnez equipement",},
	[216] = {time=2000, text = "Saillie",},
	[217] = {time=2000, text = "Votre cheval est blessé. Allez dans une écurie pour le soigner",},
	[218] = {time=2000, text = "Votre cheval est mort de vieillesse",},
	[219] = {time=2000, text = "Ne pas spam",},
	[220] = {time=2000, text = "Vous avez cet equipement",},
	[221] = {time=2000, text = "Prix",},
	[222] = {time=2000, text = "Stockage",},
	[2222] = {time=2000, text = "Roll",},
	[223] = {time=2000, text = "Pièce",},
	[224] = {time=2000, text = "Boite de stockage",},
    [225] = {time=2000, text = "Vous ne pouvez pas faire ça. ",},
	[226] = {time=2000, text = "Vous n'avez pas le métier pour acheter. ",},
	[227] = {time=2000, text = "Vous n'avez pas le métier pour acheter. ",},
	[228] = {time=2000, text = "Vous n'avez plus de place en box, vous ne pouvez plus acheter de chevaux. ",},
	[229] = {time=2000, text = "Vous n'avez plus de place, vous ne pouvez plus acheter de charrettes. ",},
	[230] = {time=2000, text = "Fer à cheval",},
	[231] = {time=2000, text = "Endurance",},
	[232] = {time=2000, text = "Vitesse",},
	[233] = {time=2000, text = "Accélération",},
	[234] = {time=2000, text = "Vous n'avez pas le métier",},
    [236] = {time=2000, text = "Boost up your turn on this horse",},
	[239] = {time=2000, text = "Ne pas spam",},
	[240] = {time=2000, text = "Combien?",},
	[241] = {time=2000, text = "Stockage de l'écurie",},
	[242] = {time=2000, text = "Vous fouillez dans les sacoches",},
	[243] = {time=2000, text = "Liste d'objets",},
	[244] = {time=2000, text = "Patientez.",},
	[245] = {time=2000, text = "Début de la saillie: ",},
    [248] = {time=2000, text = "Holster",},
    [249] = {time=2000, text = "Bride",},
    [250] = {time=2000, text = "Moustache",},
    [252] = {time=2000, text = "Couleur",},
    [253] = {time=2000, text = "Vous n'avez pas de fer à cheval.",},
    [2533] = {time=2000, text = "Vous posez des fer",},
    [254] = {time=2000, text = "Vous ne pouvez pas poser de fer à cheval.",},
    [255] = {time=2000, text = "Vous ne pouvez pas enregistrer de cheval.",},
    [256] = {time=2000, text = "Vous n'avez pas suffisament d'argent.",},
    [257] = {time=2000, text = "Coût de la saillie: ",},
    [258] = {time=2000, text = "$ ? ",},
    [259] = {time=2000, text = "Vous n'avez pas d'espace de stockage.",},
    [260] = {time=2000, text = "Voulez vous vraiment vendre votre cheval? Ecrire: Oui",},
    [261] = {time=2000, text = "Vous avez vendu pour",},
    [262] = {time=2000, text = "Vous n'avez pas le métier pour reproduire",},
    [2622] = {time=2000, text = "Vous n'avez pas le métier pour reproduire",},
    [263] = {time=2000, text = "Zoom +",},
    [264] = {time=2000, text = "Zoom -",},
    [267] = {time=2000, text = "Payer avec 1=$ ,  0=G",},
    [268] = {time=2000, text = "ID non valide",},
    [269] = {time=2000, text = "Vous avez transferé le cheval au joueur: ",},
    [270] = {time=2000, text = "Vous avez transferé la charrette au joueur: ",},
    [271] = {time=2000, text = "Vous avez posé des fer au cheval séléctionné",},
    [272] = {time=2000, text = "Vous avez déjà ces fer à cheval",},
    [273] = {time=2000, text = "Accès",},
    [274] = {time=2000, text = "Ajouter un ID d'accès",},
    [275] = {time=2000, text = "Retirer un ID d'accès",},
    [276] = {time=2000, text = "ID du joueur",},
    [277] = {time=2000, text = "Retirer ID",},
    [278] = {time=2000, text = "Vendre la charrette? pour 25% prix",},
    [279] = {time=2000, text = "Couleur",},
    [288] = {time=2000, text = "You can call only from spot",},
    [280] = {time=2000, text = "Inventaire",},
    [281] = {time=2000, text = "Vous avez appelé votre cheval, vous devez le renvoyer",},
    [282] = {time=2000, text = "Votre cheval est trop loin",},
    [283] = {time=2000, text = "Mes chevaux et mes charrettes",},
    [284] = {time=2000, text = "Stable man take your horse and give between stables",},
    [285] = {time=2000, text = "Stable man take your wagon and give between stables",},
    [286] = {time=2000, text = "Vous avez appelé votre charrette",},
    [287] = {time=2000, text = "Vous n'avez pas le métier pour la saillie",},
    [289] = {time=2000, text = "Vous devez séléctionner un cheval",},
    [300] = {time=2000, text = "Age: ",},
    [301] = {time=2000, text = "Exp: ",},
    [302] = {time=2000, text = "Sexe: ",},
    [303] = {time=2000, text = "Fertile: ",},
    [304] = {time=2000, text = "Shoe: 1 lv / 1x Shoe",},
    [305] = {time=2000, text = "Edit ability",},
    [306] = {time=2000, text = "Tapis de selle: 1.0$",},
    [307] = {time=2000, text = "Selles: 12.0$",},
    [308] = {time=2000, text = "Pommeau: 1.0$",},
    [309] = {time=2000, text = "Étriers: 1.0$",},
    [310] = {time=2000, text = "Sacoches: 10$",},
    [311] = {time=2000, text = "Sac de couchage: 1.0$",},
    [312] = {time=2000, text = "Lanterne: 5.0$",},
    [313] = {time=2000, text = "Masque: 9.0$",},
    [314] = {time=2000, text = "Queue: 1.0$",},
    [315] = {time=2000, text = "Crinière: 1.0$",},
    [316] = {time=2000, text = "Moustache: 1.0$",},
    [317] = {time=2000, text = "Holsters: 1.0$",},
    [318] = {time=2000, text = "Brides: 5.0$",},
    [319] = {time=2000, text = "Acheter",},
    [320] = {time=2000, text = "Acheter un cheval",},
    [321] = {time=2000, text = "Acheter une charrette",},
    [322] = {time=2000, text = "Mes chevaux",},
    [323] = {time=2000, text = "Mes charrettes",},
    [324] = {time=2000, text = "Équipements pour cheval",},
    [325] = {time=2000, text = "Modifier ma charrette",},
    [326] = {time=2000, text = "Fer à cheval",},
    [327] = {time=2000, text = "Saillie",},
    [328] = {time=2000, text = "Achat équipements",},
    [329] = {time=2000, text = "Lanterne",},
    [330] = {time=2000, text = "Peinture",},
    [331] = {time=2000, text = "Finition",},
    [332] = {time=2000, text = "Extra",},
    [333] = {time=2000, text = "Reproduction",},
    [334] = {time=2000, text = "Voulez vous faire une saillie avec ces chevaux?"},
    [335] = {time=2000, text = "Oui"},
    [336] = {time=2000, text = "Non"},
    [337] = {time=2000, text = "Vendre votre cheval pour:"},
    [338] = {time=2000, text = "Voulez vendre votre charrette pour 25% ?"},
    [339] = {time=2000, text = "Poulain ou adulte?"},
    [340] = {time=2000, text = "Poulain"},
    [341] = {time=2000, text = "Adulte"},
    [342] = {time=2000, text = "Male or Femelle? "},
    [343] = {time=2000, text = "Male"},
    [344] = {time=2000, text = "Femelle"},
    [345] = {time=2000, text = "Accepter"},
    [346] = {time=2000, text = "Choisir un nom"},
    [347] = {time=2000, text = "Payer avec ?"},
    [348] = {time=2000, text = "Acheter accessoires pour "},
    [349] = {time=2000, text = "Vous n'avez rien a acheter."},
    [350] = {time=2000, text = "Nom du poulain?"},
    [365] = {time=2000, text = "Voulez vous faire une saillie avec ces chevaux?"},
    [363] = {time=2000, text = "Selectionner ce cheval?"},
    [364] = {time=2000, text = "Selectionner cette charrette?"},
    [371] = {time=2000,text = "Saillie terminée, patientez encore un peut."},
    [372] = {time=2000,text = "Votre charrette est très abimée vous devez la réparer"},
    [373] = {time=2000,text = "Ce n'est pas un cheval sauvage."},
    [374] = {time=2000,text = "Vous n'avez plus de box libre. Vendez un cheval pour un libérer"},
    [375] = {time=5000,text = "VOus avez mis trop de temps. Fermez le mini jeu et réessayez"},
    [376] = {time=5000,text = "Écurie pleine"},
    [3766] = {time=5000,text = "Le joueur n'a plus de box libre"},
    [377] = {time=5000,text = "Appeler cheval"},
    [378] = {time=5000,text = "Appeler charrette"},
    [379] = {time=5000,text = "Rappelez a nouveau votre cheval"},
    [380] = {time=5000,text = "Attendez que la charrette charge"},
    [381] = {time=5000,text = "Le palefrenier n'est plus en service. Revenez demain matin???"},
    [382] = {time=5000,text = "Animaux"},
    [383] = {time=5000,text = "Charrette pleine."},
    [384] = {time=5000,text = "Santé"},
    [385] = {time=5000,text = "Exp"},
    [386] = {time=5000,text = "Animaux"},
    [387] = {time=2000,text = "Vous devez être proche d'une route pour appeler votre charrette."},
    [388] = {time=2000,text = "You can have range only "..Config.BreedPriceDistance.."."},
    [389] = {time=2000,text = "Tenue"},
    [390] = {time=2000,text = "Ajouter ou retirer l'accès?"},
    [391] = {time=2000,text = "Ajouter"},
    [392] = {time=2000,text = "Retirer"},
    [393] = {time=2000,text = "Toile 1 or 2?"},
    [394] = {time=2000,text = "Slot 1"},
    [395] = {time=2000,text = "Slot 2"},
    [396] = {time=2000,text = "De quoi avez vous besoin ? "},
    [397] = {time=2000,text = "Porter"},
    [398] = {time=2000,text = "Changer ID"},
    [399] = {time=2000,text = "ID de la tenue :"},
  
    [405] = {time=2000,text = "Vous avez déjà des fer à cheval"},
    [406] = {time=2000,text = "prendre ou ajouter?"},
    [407] = {time=2000,text = "Prendre"},
    [408] = {time=2000,text = "Ajouter"},
    [409] = {time=2000,text = "Combien"},
    [410] = {time=2000,text = "Devez vous prendre?"},
    [411] = {time=2000,text = "Devez vous ajouter?"},
    [412] = {time=2000,text = "Vous n'avez plus de place dans la charrette."},
    [413] = {time=2000,text = "Vous n'avez pas cela dans votre inventaire."},
    [414] = {time=2000,text = "Plus de place dans l'inventaire."},
    [415] = {time=2000,text = "Stockage"},
    [416] = {time=2000,text = "Tenue"},
    [417] = {time=2000,text = "Vieux"},
    [418] = {time=2000,text = "Horse/cart position management",},
    [419] = {time=2000,text = "Lacher bride",},
    [420] = {time=2000,text = "Ouvrir",},
    [421] = {time=2000,text = "Envoyer a l'écurie",},
    [422] = {time=2000,text = "Vous devez choisir, où vous voulez transferer le cheval/charrette",},
    [423] = {time=2000,text = "You must wait : ",},
    [424] = {time=2000,text = "Votre cheval vous aime un peut plus.",},
    [425] = {time=2000,text = "Amitié",},
    [426] = {time=2000,text = "Courage",},
    [427] = {time=2000,text = "Votre cheval est mort de vieillesse, paix à son âme.",},
    [428] = {time=2000,text = "Vous ne pouvez pasfaire plus de saillie.",},
    [429] = {time=2000,text = "Hoof stat is on: ",},
    [430] = {time=2000,text = "Vérifier les sabots",},
    [431] = {time=2000,text = "Vous transférez à: ",},
    [432] = {time=1000,text = "Choisissez l'écurie et ensuite choisissez le cheval/charrette",},
    [433] = {time=2000,text = "Vous selectionnez: ",},
    [434] = {time=2000,text = "Selectionnez cheval ou charrette",},
    [435] = {time=2000,text = "Re-spawn",},
    [436] = {time=2000,text = "Caméra d'écurie",},
    [437] = {time=2000,text = "Changer de nom?",},
    [438] = {time=2000,text = "Cheval",},
    [439] = {time=2000,text = "Charrette",},
    [440] = {time=2000,text = "Nom pour le cheval?",},
    [441] = {time=2000,text = "Nom pour la charrette?",},
    [442] = {time=2000, text = "Enssemble d'accessoires",},
    [443] = {time=2000, text = "Accessoires: 6.0$",},
	[444] = {time=2000, text = "Haut | Bas"},
    [445] = {time=2000, text = "Gauche | Droite"},
    [446] = {time=2000, text = "Interaction avec la camera"},
    [447] = {time=2000, text = "Zoomer | dezoomer"},
	[448] = {time=2000, text = "Pour dresser le cheval veuillez attendre : "},
	[2444] = {time=2000, text = "Vous avez fait partir votre charrette.</br>Veuillez:",},
    [449] = {time=2000, text = "Avant gauche"},
    [450] = {time=2000, text = "Avant droit"},
    [451] = {time=2000, text = "Arriere Gauche"},
    [452] = {time=2000, text = "Arriere Droit"},
    [453] = {time=2000, text = "Reparage de la roue roulante"},
	[454] = {time=2000, text = "Chevaux"},

    [351] = {time=2000, text = "Hunting carts"},--Cart config
    [352] = {time=2000, text = "Working carts"},--Cart config
    [353] = {time=2000, text = "Normal carts"},--Cart config

    [354] = {time=2000, text = "Peau"},
    [355] = {time=2000, text = "Stockage"},
    [356] = {time=2000, text = "Équipements"},
    [357] = {time=2000, text = "Fuir"},
    [358] = {time=2000, text = "Diriger"},
    [359] = {time=2000, text = "Calmer"},
    [360] = {time=2000, text = "Sacoches"},
    [361] = {time=2000, text = "Transferer"},

    [362] = {time=2000, text = "Maximum 10 fer à cheval"},

    [370] = {time=2000, text = "Selectionner"},
    [366] = {time=2000, text = "Reproduire maintenant"},
    [367] = {time=2000, text = "vendre"},
    [368] = {time=2000, text = "Soigner"},
    [369] = {time=2000, text = "Mort"},
    --Commands
	[400] = {time=2000, text = "horserest",},
	[401] = {time=2000, text = "horseplay",},
	[402] = {time=2000, text = "horsesleep",},
	[403] = {time=2000, text = "horsedrink",},
}
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* Wagon setting */
Config.Wagons = {
    ["buggy01"] = {"Coach 1", 100, 300, 20,0,{"ecurie", "ecurie_g"}, Config.Language[353].text},
    ["cart03"] = {"Small hunting 1", 100, 250, 100,0,{"unemployed"}, Config.Language[351].text},
    --["cart02"] = {"Cart 2", 10, 250, 10,0,{"unemployed"}, Config.Language[353].text},
    --["cart01"] = {"Cart 1", 100, 250, 15,0,{"ecurie", "ecurie_g"}, Config.Language[353].text},
    ["huntercart01"] = {"Hunting cart", 300, 275, 200,0,{"ecurie", "ecurie_g"}, Config.Language[351].text},
    ["coach2"] = {"Cart 4", 800, 500, 150,0,{"ecurie", "ecurie_g"}, Config.Language[353].text},
    ["stagecoach001x"] = {"Cart 9", 600, 500, 200,0,{"ecurie", "ecurie_g"}, Config.Language[353].text},
    ["cart07"] = {"Small hunting 2", 200, 250, 200,0,{"ecurie", "ecurie_g"}, Config.Language[351].text},
    ["coal_wagon"] = {"Wagon for stone", 350, 500, 400,0,{"ecurie", "ecurie_g"}, Config.Language[352].text},
    ["logwagon"] = {"Wagon for wood", 350, 500, 200,0,{"ecurie", "ecurie_g"}, Config.Language[352].text},
    ["oilWagon01x"] = {"Water tank", 350, 500, 200,0,{"ecurie", "ecurie_g"}, Config.Language[352].text}, 
    ["wagondoc01x"] = {"Doctor wagon", 250, 400, 200,0,{"ecurie", "ecurie_g"}, Config.Language[353].text},
    ["wagonPrison01x"] = {"Prisoner wagon", 400, 400, 0,0,{"ecurie", "ecurie_g"}, Config.Language[352].text},
    ["chuckwagon002x"] = {"Charette de voyage", 500, 500, 800,0,{"ecurie", "ecurie_g"}, Config.Language[353].text},
    ----Model           -Name --$ -- Gold -- Storage- Rol
    --[[["ArmySupplyWagon"] = {"Supply wagon", 420, 1000, 200, 0,{"unemployed"}, Config.Language[351].text},


   
  

    ["cart05"] = {"Watering wagon", 20, 250, 0,0,{"unemployed"}, Config.Language[353].text},
    
    ["cart08"] = {"Small hunting 3", 35, 200, 30,0,{"unemployed"}, Config.Language[351].text},
    ["chuckwagon000x"] = {"Freight Cart 1", 100, 150, 120,0,{"unemployed"}, Config.Language[351].text},
    ["gatchuck"] = {"Freight Cart 2", 100, 300, 120,0,{"unemployed"}, Config.Language[351].text},
    ["utilliwag"] = {"Freight Cart 3", 50, 275, 50,0,{"unemployed"}, Config.Language[351].text},
   
    ["wagon03x"] = {"Wagon 1", 100, 400, 40,0,{"unemployed"}, Config.Language[353].text},
    ["wagon06x"] = {"Wagon 2", 110, 400, 140,0,{"unemployed"}, Config.Language[353].text},
    ]]
    ["coach3"] = {"Cart 5", 110, 500, 60,0,{"ecurie", "ecurie_g"}, Config.Language[353].text},
    ["coach4"] = {"Cart 6", 100, 500, 40,0,{"ecurie", "ecurie_g"}, Config.Language[353].text},
    ["coach5"] = {"Cart 7", 60, 500, 40,0,{"ecurie", "ecurie_g"}, Config.Language[353].text},
    ["coach6"] = {"Cart 8", 80, 500, 30,0,{"ecurie", "ecurie_g"}, Config.Language[353].text},
    ["buggy02"] = {"Coach 2", 40, 300, 20,0,{"ecurie", "ecurie_g"}, Config.Language[353].text},
    ["buggy03"] = {"Coach 3", 40, 300, 20,0,{"ecurie", "ecurie_g"}, Config.Language[353].text},
    ["stagecoach002x"] = {"Cart 10", 120, 500, 100,0,{"ecurie", "ecurie_g"}, Config.Language[353].text},
    ["stagecoach003x"] = {"Cart 11", 80, 500, 60,0,{"ecurie", "ecurie_g"}, Config.Language[353].text},
    ["stagecoach004x"] = {"Armored cart", 400, 500, 50,0,{"ecurie", "ecurie_g"}, Config.Language[353].text},
    ["stagecoach005x"] = {"Cart 12", 120, 500, 100,0,{"ecurie", "ecurie_g"}, Config.Language[353].text},
    ["stagecoach006x"] = {"Cart 13", 120, 500, 100,0,{"ecurie", "ecurie_g"}, Config.Language[353].text},
   --[[
    ["supplywagon"] = {"Freight Cart 4", 90, 500, 80,0,{"unemployed"}, Config.Language[351].text},
    ["wagondairy01x"] = {"Shopping wagon", 90, 400, 80,0,{"unemployed"}, Config.Language[353].text},

    ["wagontraveller01x"] = {"Travering wagon 1", 300, 400, 200,0,{"unemployed"}, Config.Language[353].text},
    ["wagonwork01x"] = {"Travering wagon 2", 300, 400, 200,0,{"unemployed"}, Config.Language[353].text}, ]]
}
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* Horse setting */
Config.Horses = {
    {
    name = "American Paint ",
       ----Název           -                           $ -- Zlata -- Místo ve skladu - Rol
      ["A_C_Horse_AmericanPaint_Greyovero"] = {"Overo Gris", 100, 0, 20,0,{"natif"}, "state_2"}, 
      ["A_C_Horse_AmericanPaint_Overo"] = {"Overo", 60, 0, 10,0,{"natif"}, "state_1"},
      ["A_C_Horse_AmericanPaint_SplashedWhite"] = {"Balzane noir", 60, 0, 20,0,{"natif"}, "state_1"},
      ["A_C_Horse_AmericanPaint_Tobiano"] = {"Tobiano", 60, 0, 10,0,{"natif", "unemployed2", "unemployed3"}, "state_1"},
      ["a_c_horse_eagleflies"] = {"Balzane Crème", 60, 0, 20,0,{"natif"}, "state_3"},
    },
    {
    name = "Andalou",
      ["A_C_Horse_Andalusian_DarkBay"] = {"Bai brun", 370, 0, 20,0,{"ecurie_g"}, "state_2"},
      ["A_C_Horse_Andalusian_Perlino"] = {"Perlino", 380, 0, 10,0,{"ecurie_g"}, "state_1"},
      ["A_C_Horse_Andalusian_RoseGray"] = {"Alezan grisonnant", 350, 0, 20,0,{"ecurie_g"}, "state_2"},    
    },
    {
    name = "Appaloosa",
      ["A_C_Horse_Appaloosa_BlackSnowflake"] = {"Noir floconné", 450, 0, 30,0,{"natif"}, "state_2"},
      ["A_C_Horse_Appaloosa_Blanket"] = {"Capé", 430, 0, 10,0,{"natif"}, "state_1"},
      ["A_C_Horse_Appaloosa_BrownLeopard"] = {"Léopard brun", 500, 0, 30,0,{"natif"}, "state_2"},
      ["A_C_Horse_Appaloosa_FewSpotted_PC"] = {"Tacheté", 450, 0, 10,0,{"natif"}, "state_1"},
      ["A_C_Horse_Appaloosa_Leopard"] = {"Léopard", 500, 0, 30,0,{"natif"}, "state_2"},
      ["A_C_Horse_Appaloosa_LeopardBlanket"] = {"Capé léopard", 430, 0, 10,0,{"natif"}, "state_1"},
      ["a_c_horse_gang_charles"] = {"Capé tâché gris", 430, 0, 20,0,{"natif"}, "state_3"},
    },
	{
    name = "Ardennais",
      ["A_C_Horse_Ardennes_BayRoan"] = {"Bai rouanné", 250, 0, 40,0,{"ecurie"}, "state_2"},
      ["A_C_Horse_Ardennes_IronGreyRoan"] = {"Gris fer rouanné", 320, 0, 50,0,{"ecurie"}, "state_3"},
      ["A_C_Horse_Ardennes_StrawberryRoan"] = {"Rouan fraise", 320, 0, 50,0,{"ecurie"}, "state_3"},
      ["a_c_horse_gang_bill"] = {"Rouan brun", 250, 0, 20,0,{"ecurie"}, "state_3"},
    },
    {
    name = "Breton",
      ["A_C_Horse_Breton_SteelGrey"] = {"Gris fer", 600, 0, 40,0,{"ecurie"}, "state_4"},
      ["A_C_Horse_Breton_SealBrown"] = {"Noir pangaré", 560, 0, 40,0,{"ecurie"}, "state_3"},
      ["A_C_Horse_Breton_GrulloDun"] = {"Grullo", 550, 0, 40,0,{"ecurie"}, "state_3"},
      ["A_C_Horse_Breton_Sorrel"] = {"Oseille", 550, 0, 40,0,{"ecurie"}, "state_2"},
      ["A_C_Horse_Breton_RedRoan"] = {"Rubican", 550, 0, 40,0,{"ecurie"}, "state_2"},
      ["a_c_horse_breton_mealydapplebay"] = {"Pommelé pangaré ", 600, 0, 40,0,{"ecurie"}, "state_2"},
    },
	{
    name = "Carne",
      ["A_C_Horse_MP_Mangy_Backup"] = {"Carne", 10, 0, 5,0,{"unemployed","ecurie"}, "state_1"},
    },
	{
    name = "Criollo",
      ["A_C_Horse_Criollo_Dun"] = {"Dun", 250, 0, 25,0,{"ecurie_g"}, "state_3"},
      ["A_C_Horse_Criollo_MarbleSabino"] = {"Sabino marmoré", 300, 0, 15,0,{"ecurie_g"}, "state_4"},
      ["A_C_Horse_Criollo_BayFrameOvero"] = {"Bai overo", 300, 0, 15,0,{"ecurie_g"}, "state_4"},
      ["A_C_Horse_Criollo_BayBrindle"] = {"Bai bringé", 250, 0, 20,0,{"ecurie_g"}, "state_4"},
      ["A_C_Horse_Criollo_SorrelOvero"] = {"Overo oseille", 250, 0, 20,0,{"ecurie_g"}, "state_4"},
      ["A_C_Horse_Criollo_BlueRoanOvero"] = {"Overo noir rouanné", 250, 0, 25,0,{"ecurie_g"}, "state_3"},
    },
    {
    name = "Demi-sang Hongrois",
      ["A_C_Horse_HungarianHalfbred_DarkDappleGrey"] = {"Gris pommelé", 150, 0, 30,0,{"ecurie"}, "state_2"},
      ["A_C_Horse_HungarianHalfbred_FlaxenChestnut"] = {"Alezan crins lavés", 150, 0, 15,0,{"ecurie"}, "state_1"},
      ["A_C_Horse_HungarianHalfbred_LiverChestnut"] = {"Alezan châtaigne", 200, 0, 10,0,{"ecurie"}, "state_2"},
      ["A_C_Horse_HungarianHalfbred_PiebaldTobiano"] = {"Pie tobiano", 150, 0, 10,0,{"ecurie"}, "state_1"},
      ["a_c_horse_gang_john"] = {"Bai brun foncé", 150, 0, 20,0,{"ecurie"}, "state_3"},
    },
	    {
    name = "Gypsy cob",
      ["a_c_horse_gypsycob_palominoblagdon"] = {"Palomino Blagdon", 360, 0, 40,0,{"ecurie"}, "state_2"},
      ["a_c_horse_gypsycob_piebald"] = {"Pie noir", 340, 0, 40,0,{"ecurie"}, "state_2"},
      ["a_c_horse_gypsycob_splashedbay"] = {"Bai Alezan", 450, 0, 40,0,{"ecurie"}, "state_3"},
      ["a_c_horse_gypsycob_splashedpiebald"] = {"Pie balzan", 450, 0, 40,0,{"ecurie"}, "state_3"},
      ["a_c_horse_gypsycob_skewbald"] = {"Pie rouge", 360, 0, 40,0,{"ecurie"}, "state_2"},
      ["a_c_horse_gypsycob_whiteblagdon"] = {"Blanc", 365, 0, 40,0,{"ecurie"}, "state_2"},
      ["a_c_horse_gang_uncle_endlesssummer"] = {"Isabelle tacheté", 360, 0, 20,0,{"ecurie"}, "state_3"},
    },	
	    {
    name = "Hollandais à sang chaud",
      ["A_C_Horse_DutchWarmblood_ChocolateRoan"] = {"Rouan chocolat", 280, 0, 30,0,{"ecurie"}, "state_3"},
      ["A_C_Horse_DutchWarmblood_SealBrown"] = {"Noir pangaré", 290, 0, 30,0,{"ecurie"}, "state_2"},
      ["A_C_Horse_DutchWarmblood_SootyBuckskin"] = {"Isabelle sooty", 290, 0, 30,0,{"ecurie"}, "state_2"},
      ["a_c_horse_buell_warvets"] = {"Cremello", 350, 0, 20,0,{"ecurie"}, "state_3"},
    },
    {
    name = "Kentucky",
      ["A_C_Horse_KentuckySaddle_Black"] = {"Noir", 60, 0, 10,0,{"ecurie"}, "state_1"},
      ["A_C_Horse_KentuckySaddle_ButterMilkBuckskin_PC"] = {"Isabelle", 100, 0, 10,0,{"ecurie"}, "state_1"},
      ["A_C_Horse_KentuckySaddle_ChestnutPinto"] = {"Alezan pinto", 60, 0, 10,0,{"ecurie"}, "state_1"},
      ["A_C_Horse_KentuckySaddle_Grey"] = {"Gris", 60, 0, 10,0,{"ecurie"}, "state_1"},
      ["A_C_Horse_KentuckySaddle_SilverBay"] = {"Bai silver", 60, 0, 10,0,{"ecurie"}, "state_1"},
      ["a_c_horse_gang_uncle"] = {"Sabino", 60, 0, 20,0,{"ecurie"}, "state_3"},
    },

    {
    name = "Kladruber",
      ["A_C_Horse_Kladruber_Black"] = {"Noir", 540, 0, 30,0,{"ecurie"}, "state_2"},
      ["A_C_Horse_Kladruber_Silver"] = {"Argenté", 540, 0, 30,0,{"ecurie"}, "state_3"},
      ["A_C_Horse_Kladruber_Cremello"] = {"Cremello", 520, 0, 30,0,{"ecurie"}, "state_3"},
      ["A_C_Horse_Kladruber_Grey"] = {"Gris", 530, 0, 30,0,{"ecurie"}, "state_3"},
      ["A_C_Horse_Kladruber_DappleRoseGrey"] = {"Gris rosé", 600, 0, 30,0,{"ecurie"}, "state_3"},
      ["A_C_Horse_Kladruber_White"] = {"Blanc", 520, 0, 30,0,{"ecurie"}, "state_2"},
    },
    {
    name = "Missouri Fox Trotter",
      ["A_C_Horse_MissouriFoxTrotter_AmberChampagne"] = {"Champagne ambré", 500, 0, 15,0,{"ecurie"}, "state_4"},
      ["A_C_Horse_MissouriFoxTrotter_SableChampagne"] = {"Champagne sable", 500, 0, 15,0,{"ecurie"}, "state_4"},
      ["A_C_Horse_MissouriFoxTrotter_SilverDapplePinto"] = {"Pinto pommelé", 500, 0, 15,0,{"ecurie"}, "state_4"},
      ["a_c_horse_missourifoxtrotter_blacktovero"] = {"Tovero noir", 500, 0, 15,0,{"ecurie"}, "state_4"},   
      ["a_c_horse_missourifoxtrotter_blueroan"] = {"Bleu rouanné", 500, 0, 15,0,{"ecurie"}, "state_4"},   
      ["a_c_horse_missourifoxtrotter_buckskinbrindle"] = {"Isabelle bringé", 500, 0, 15,0,{"ecurie"}, "state_4"},  
      ["a_c_horse_missourifoxtrotter_dapplegrey"] = {"Gris pommelé", 500, 0, 15,0,{"ecurie"}, "state_4"},
      ["a_c_horse_gang_micah"] = {"Noir à tête blanche", 550, 0, 20,0,{"ecurie"}, "state_3"},
    },
    {
    name = "Morgan",
      ["A_C_Horse_Morgan_Bay"] = {"Bai", 50, 0, 10,0,{"ecurie"}, "state_1"},
      ["A_C_Horse_Morgan_BayRoan"] = {"Rouan", 50, 0, 10,0,{"ecurie"}, "state_1"},
      ["A_C_Horse_Morgan_FlaxenChestnut"] = {"Alezan", 50, 0, 10,0,{"ecurie"}, "state_1"},
      ["A_C_Horse_Morgan_LiverChestnut_PC"] = {"Bai brulé", 100, 0, 10,0,{"ecurie"}, "state_1"},
      ["A_C_Horse_Morgan_Palomino"] = {"Palomino", 50, 0, 10,0,{"ecurie"}, "state_1"},
    },
    {
    name = "Mustang",
      ["A_C_Horse_Mustang_GoldenDun"] = {"Isabelle doré", 600, 0, 15,0,{"ecurie"}, "state_4"},
      ["A_C_Horse_Mustang_GrulloDun"] = {"Grullo", 400, 0, 10,0,{"ecurie"}, "state_1"},
      ["A_C_Horse_Mustang_TigerStripedBay"] = {"Bai tigré", 300, 0, 10,0,{"ecurie"}, "state_1"},
      ["A_C_Horse_Mustang_WildBay"] = {"Bai sauvage", 300, 0, 10,0,{"ecurie"}, "state_1"},
      ["a_c_horse_mustang_blackovero"] = {"Overo noir", 600, 0, 15,0,{"ecurie"}, "state_4"},    
      ["a_c_horse_mustang_buckskin"] = {"Isabelle", 600, 0, 15,0,{"ecurie"}, "state_4"},  
      ["a_c_horse_mustang_chestnuttovero"] = {"Tovero alezan", 600, 0, 15,0,{"ecurie"}, "state_4"}, 
      ["a_c_horse_mustang_reddunovero"] = {"Overo alezan", 600, 0, 15,0,{"ecurie"}, "state_4"},   
      ["a_c_horse_gang_lenny"] = {"Palomino clair", 300, 0, 20,0,{"ecurie"}, "state_3"},
      ["a_c_horse_gang_sadie_endlesssummer"] = {"Bai rouanné foncé", 250, 0, 20,0,{"ecurie"}, "state_3"},
    },
    {
    name = "Nokota",
      ["A_C_Horse_Nokota_BlueRoan"] = {"Noir rouanné", 100, 0, 10,0,{"natif"}, "state_1"},
      ["A_C_Horse_Nokota_ReverseDappleRoan"] = {"Rouan pommelé", 150, 0, 20,0,{"natif"}, "state_3"},
      ["A_C_Horse_Nokota_WhiteRoan"] = {"Rouanc blanc", 100, 0, 10,0,{"natif"}, "state_1"},
      ["a_c_horse_gang_karen"] = {"Noir réglisse", 100, 0, 20,0,{"natif"}, "state_3"},
      ["a_c_horse_gang_charles_endlesssummer"] = {"Rouan gris sabino", 100, 0, 20,0,{"natif"}, "state_3"},
    },
    {
      name = "Norfolk",
        ["A_C_HORSE_NORFOLKROADSTER_BLACK"] = {"Noir", 180, 0, 20,0,{"ecurie"}, "state_3"},
        ["A_C_HORSE_NORFOLKROADSTER_SPECKLEDGREY"] = {"Gris tacheté", 180, 0, 20,0,{"ecurie"}, "state_3"},
        ["A_C_HORSE_NORFOLKROADSTER_PIEBALDROAN"] = {"Pie rouanné", 180, 0, 15,0,{"ecurie"}, "state_4"},
        ["A_C_HORSE_NORFOLKROADSTER_ROSEGREY"] = {"Alezan grisonnant", 180, 0, 15,0,{"ecurie"}, "state_4"},
        ["A_C_HORSE_NORFOLKROADSTER_DAPPLEDBUCKSKIN"] = {"Isabelle pommelé", 450, 0, 15,0,{"ecurie"}, "state_4"},
        ["A_C_HORSE_NORFOLKROADSTER_SPOTTEDTRICOLOR"] = {"Capé tâché tricolore", 450, 0, 15,0,{"ecurie"}, "state_4"},
      },
	{
    name = "Pur-sang Anglais",
      ["A_C_Horse_Thoroughbred_BlackChestnut"] = {"Alezan noir", 2000, 0, 15,0,{"ecurie"}, "state_3"},
      ["A_C_Horse_Thoroughbred_BloodBay"] = {"Bai acajou", 2000, 0, 10,0,{"ecurie"}, "state_1"},
      ["A_C_Horse_Thoroughbred_Brindle"] = {"Bringé", 2000, 0, 15,0,{"ecurie"}, "state_3"},
      ["A_C_Horse_Thoroughbred_DappleGrey"] = {"Tacheté gris", 2000, 0, 10,0,{"ecurie"}, "state_1"},
      ["A_C_Horse_Thoroughbred_ReverseDappleBlack"] = {"Noir pommelé inversé", 2000, 0, 15,0,{"ecurie"}, "state_3"},
      ["a_c_horse_john_endlesssummer"] = {"Noir Pangaré", 2000, 0, 20,0,{"ecurie"}, "state_3"},
    },
    {
    name = "Pur-Sang Arabe",
      ["A_C_Horse_Arabian_Black"] = {"Noir", 2000, 0, 15,0,{"ecurie"}, "state_4"},
      ["A_C_Horse_Arabian_Grey"] = {"Gris", 2000, 0, 15,0,{"ecurie"}, "state_4"},
      ["A_C_Horse_Arabian_RedChestnut"] = {"Alezan doré", 2000, 0, 15,0,{"ecurie"}, "state_3"},
      ["A_C_Horse_Arabian_RoseGreyBay"] = {"Bai gris rosé", 2000, 0, 15,0,{"ecurie"}, "state_4"},
      ["A_C_Horse_Arabian_WarpedBrindle_PC"] = {"Bringé marbré", 2000, 0, 15,0,{"ecurie"}, "state_3"},
      ["A_C_Horse_Arabian_White"] = {"Blanc", 2000, 0, 15,0,{"ecurie"}, "state_3"},
      ["a_c_horse_gang_dutch"] = {"Cremello", 2000, 0, 20,0,{"ecurie"}, "state_3"},
      ["a_c_horse_arabian_redchestnut_pc"] = {"Alezan", 2000, 0, 20,0,{"ecurie"}, "state_3"},
    },
    {
    name = "Shire",
      ["A_C_Horse_Shire_DarkBay"] = {"Bai", 700, 0, 50,0,{"ecurie"}, "state_2"},
      ["A_C_Horse_Shire_LightGrey"] = {"Gris clair", 700, 0, 50,0,{"ecurie"}, "state_2"},
      ["A_C_Horse_Shire_RavenBlack"] = {"Noir", 725, 0, 50,0,{"ecurie"}, "state_2"},
    },
    {
    name = "Suffolk",
      ["A_C_Horse_SuffolkPunch_RedChestnut"] = {"Alezan", 45, 0, 35,0,{"ecurie_g"}, "state_1"},
      ["A_C_Horse_SuffolkPunch_Sorrel"] = {"Oseille", 50, 0, 35,0,{"ecurie_g"}, "state_1"},
    },
	    {
    name = "Tennessee Walker",
      ["A_C_Horse_TennesseeWalker_BlackRabicano"] = {"Rabicano noir", 60, 0, 10,0,{"ecurie"}, "state_1"},
      ["A_C_Horse_TennesseeWalker_Chestnut"] = {"Alezan", 60, 0, 10,0,{"ecurie"}, "state_1"},
      ["A_C_Horse_TennesseeWalker_DappleBay"] = {"Bai pommelé", 60, 0, 10,0,{"ecurie"}, "state_1"},
      ["A_C_Horse_TennesseeWalker_FlaxenRoan"] = {"Rouan crins lavés", 100, 0, 10,0,{"ecurie"}, "state_1"},
      ["A_C_Horse_TennesseeWalker_MahoganyBay"] = {"Bai marron", 60, 0, 10,0,{"ecurie"}, "state_1"},
      ["A_C_Horse_TennesseeWalker_RedRoan"] = {"Rubican", 60, 0, 10,0,{"ecurie"}, "state_1"},
      ["A_C_Horse_TennesseeWalker_GoldPalomino_PC"] = {"Palomino doré", 60, 0, 10,0,{"ecurie"}, "state_1"},
    },
	{
    name = "Trait Belge",
      ["A_C_Horse_Belgian_BlondChestnut"] = {"Alezan clair", 70, 0, 35,0,{"ecurie"}, "state_1"},
      ["A_C_Horse_Belgian_MealyChestnut"] = {"Alezan pangaré", 70, 0, 35,0,{"ecurie"}, "state_1"},
    },
    {
    name = "Trotteur Americain",
      ["A_C_Horse_AmericanStandardbred_Black"] = {"Noir", 70, 0, 10,0,{"ecurie"}, "state_3"},
      ["A_C_Horse_AmericanStandardbred_Buckskin"] = {"Isabelle", 70, 0, 10,0,{"ecurie"}, "state_3"},
      ["A_C_Horse_AmericanStandardbred_PalominoDapple"] = {"Palomino pommelé", 70, 0, 15,0,{"ecurie"}, "state_3"},
      ["A_C_Horse_AmericanStandardbred_SilverTailBuckskin"] = {"Isabelle queue argentée", 130, 0, 20,0,{"ecurie"}, "state_3"},
      ["a_c_horse_americanstandardbred_lightbuckskin"] = {"Isabelle clair", 70, 0, 20,0,{"ecurie"}, "state_3"},
    },
    {
    name = "Turkoman",
      ["A_C_Horse_Turkoman_DarkBay"] = {"Bai brun", 450, 0, 15,0,{"ecurie"}, "state_4"},
      ["A_C_Horse_Turkoman_Gold"] = {"Doré", 480, 0, 15,0,{"ecurie"}, "state_4"},
      ["A_C_Horse_Turkoman_Silver"] = {"Argenté", 430, 0, 15,0,{"ecurie"}, "state_4"},
      ["a_c_horse_turkoman_black"] = {"Noir", 420, 0, 15,0,{"ecurie"}, "state_4"},   
      ["a_c_horse_turkoman_chestnut"] = {"Alezan", 455, 0, 15,0,{"ecurie"}, "state_4"},
      ["a_c_horse_turkoman_grey"] = {"Gris", 450, 0, 15,0,{"ecurie"}, "state_4"},    
      ["a_c_horse_turkoman_perlino"] = {"Perlino", 500, 0, 15,0,{"ecurie"}, "state_4"},
      ["a_c_horse_gang_sadie"] = {"Doré pommelé", 420, 0, 20,0,{"ecurie"}, "state_3"},
    },
    {
    name = "Other",
      ["A_C_HorseMulePainted_01"] = {"Mule zebrée", 1500, 0, 10,0,{"ecurie_g"}, "state_1"},
      ["A_C_HorseMule_01"] = {"Mule", 5, 0, 50,0,{"ecurie_g"}, "state_1"},
      ["A_C_Donkey_01"] = {"Ane", 15, 0, 25,0,{"ecurie_g"}, "state_1"},
      }
}
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* Pelts setting */
Config.Animals = {
    [GetHashKey("a_c_alligator_01")] = "Alligator",
    [GetHashKey("a_c_alligator_03")] = "Alligator",
    [GetHashKey("a_c_armadillo_01")] = "Armadillo",
    [GetHashKey("a_c_badger_01")] = "Badger",
    [GetHashKey("a_c_bat_01")] = "Bat",
    [GetHashKey("a_c_bear_01")] = "Bear",
    [GetHashKey("a_c_bearblack_01")] = "Bearblack",
    [GetHashKey("a_c_beaver_01")] = "Beaver",
    [GetHashKey("a_c_bighornram_01")] = "Big Horn Ram",
    [GetHashKey("a_c_boar_01")] = "Boar",
    [GetHashKey("a_c_buck_01")] = "Buck",
    [GetHashKey("a_c_buffalo_01")] = "Buffalo",
    [GetHashKey("a_c_bull_01")] = "Bull",
    [GetHashKey("a_c_cardinal_01")] = "Cardinal",
    [GetHashKey("a_c_californiacondor_01")] = "California Condor",
    [GetHashKey("a_c_carolinaparakeet_01")] = "Carolina Parakeet",
    [GetHashKey("a_c_cedarwaxwing_01")] = "Cedar WaxWing",
    [GetHashKey("a_c_chicken_01")] = "Chicken",
    [GetHashKey("a_c_chipmunk_01")] = "Chipmunk",
    [GetHashKey("a_c_cougar_01")] = "Cougar",
    [GetHashKey("a_c_cormorant_01")] = "Cormorant",
    [GetHashKey("a_c_cow")] = "Cow",
    [GetHashKey("a_c_coyote_01")] = "Coyote",
    [GetHashKey("a_c_crab_01")] = "Crab",
    [GetHashKey("a_c_cranewhooping_01")] = "Crane Whooping",
    [GetHashKey("a_c_crow_01")] = "Drow",
    [GetHashKey("a_c_deer_01")] = "Deer",
    [GetHashKey("a_c_duck_01")] = "Duck",
    [GetHashKey("a_c_eagle_01")] = "Eagle",
    [GetHashKey("a_c_egret_01")] = "Egret",
    [GetHashKey("a_c_elk_01")] = "Elk",
    [GetHashKey("a_c_fox_01")] = "Fox",
    [GetHashKey("a_c_frogbull_01")] = "Frogbull",
    [GetHashKey("a_c_gilamonster_01")] = "Gila Monster",
    [GetHashKey("a_c_goat_01")] = "Goat",
    [GetHashKey("a_c_goosecanada_01")] = "Goose Canada",
    [GetHashKey("a_c_hawk_01")] = "Hawk",
    [GetHashKey("a_c_heron_01")] = "Heron",
    [GetHashKey("a_c_iguana_01")] = "Iguana",
    [GetHashKey("a_c_iguanadesert_01")] = "Iguana Desert",
    [GetHashKey("a_c_javelina_01")] = "Javelina",  
    [GetHashKey("a_c_loon_01")] = "Loon",
    [GetHashKey("a_c_moose_01")] = "Moose",
    [GetHashKey("a_c_muskrat_01")] = "Muskrat",
    [GetHashKey("a_c_oriole_01")] = "Oriole",
    [GetHashKey("a_c_owl_01")] = "Owl",
    [GetHashKey("a_c_ox_01")] = "Ox",
    [GetHashKey("a_c_panther_01")] = "Panther", 
    [GetHashKey("a_c_parrot_01")] = "Parrot",
    [GetHashKey("a_c_pelican_01")] = "Pelican",
    [GetHashKey("a_c_pheasant_01")] = "Pheasant",
    [GetHashKey("a_c_pig_01")] = "Pig",
    [GetHashKey("a_c_pigeon")] = "Pigeon",
    [GetHashKey("a_c_possum_01")] = "Possum",
    [GetHashKey("a_c_prairiechicken_01")] = "Prairie Chicken",
    [GetHashKey("a_c_pronghorn_01")] = "Pronghorn",
    [GetHashKey("a_c_quail_01")] = "Quail",
    [GetHashKey("a_c_rabbit_01")] =  "Rabbit",
    [GetHashKey("a_c_raccoon_01")] = "Raccoon",
    [GetHashKey("a_c_rat_01")] = "Rat",
    [GetHashKey("a_c_raven_01")] =  "Raven",
    [GetHashKey("a_c_redfootedbooby_01")] = "Redfooted Booby",
    [GetHashKey("a_c_robin_01")] = "Robin",
    [GetHashKey("a_c_rooster_01")] = "Rooster",
    [GetHashKey("a_c_roseatespoonbill_01")] = "Roseate Spoonbill",
    [GetHashKey("a_c_seagull_01")] = "Seagull",
    [GetHashKey("a_c_sheep_01")] = "Sheep",
    [GetHashKey("a_c_skunk_01")] =  "Skunk",
    [GetHashKey("a_c_snake_01")] = "Snake",
    [GetHashKey("a_c_snakeblacktailrattle_01")] = "Snake blacktail rattle",
    [GetHashKey("a_c_snakeferdelance_01")] = "Snake ferdelance",
    [GetHashKey("a_c_snakewater_01")] =  "Snakewater",   
    [GetHashKey("a_c_songbird_01")] = "Songbird",
    [GetHashKey("a_c_sparrow_01")] = "Sparrow",
    [GetHashKey("a_c_squirrel_01")] =  "Squirrel",
    [GetHashKey("a_c_toad_01")] = "Toad",
    [GetHashKey("a_c_turkey_01")] = "Turkey",
    [GetHashKey("a_c_turkeywild_01")] =  "Turkey Wild",
    [GetHashKey("a_c_turtlesnapping_01")] = "Turtle Snapping",
    [GetHashKey("a_c_vulture_01")] =  "Vulture",
    [GetHashKey("a_c_wolf")] = "Wolf",
    [GetHashKey("a_c_wolf_medium")] = "Wolf_medium",  
    [GetHashKey("a_c_wolf_small")] = "Wolf_small",
    [GetHashKey("a_c_woodpecker_01")] =  "Woodpecker",
    [GetHashKey("a_c_woodpecker_02")] = "Woodpecker",
    [GetHashKey("mp_a_c_alligator_01")] = "Alligator",
    [GetHashKey("mp_a_c_beaver_01")] =  "Beaver",
    [GetHashKey("mp_a_c_bighornram_01")] =  "Big Horn Ram",
    [GetHashKey("mp_a_c_boar_01")] = "Boar",
    [GetHashKey("mp_a_c_buck_01")] =  "Buck",
    [GetHashKey("mp_a_c_chicken_01")] = "Chicken",
    [GetHashKey("mp_a_c_cougar_01")] = "Cougar",    
}

Config.Animals2 = {
    [GetHashKey("a_c_alligator_01")] = "a_c_alligator_01",
    [GetHashKey("a_c_alligator_03")] = "a_c_alligator_03",
    [GetHashKey("a_c_armadillo_01")] = "a_c_armadillo_01",
    [GetHashKey("a_c_badger_01")] = "a_c_badger_01",
    [GetHashKey("a_c_bat_01")] = "a_c_bat_01",
    [GetHashKey("a_c_bear_01")] = "a_c_bear_01",
    [GetHashKey("a_c_bearblack_01")] = "a_c_bearblack_01",
    [GetHashKey("a_c_beaver_01")] = "a_c_beaver_01",
    [GetHashKey("a_c_bighornram_01")] = "a_c_bighornram_01",
    [GetHashKey("a_c_boar_01")] = "a_c_boar_01",
    [GetHashKey("a_c_buck_01")] = "a_c_buck_01",
    [GetHashKey("a_c_buffalo_01")] = "a_c_buffalo_01",
    [GetHashKey("a_c_bull_01")] = "a_c_bull_01",
    [GetHashKey("a_c_cardinal_01")] = "a_c_cardinal_01",
    [GetHashKey("a_c_californiacondor_01")] = "a_c_californiacondor_01",
    [GetHashKey("a_c_carolinaparakeet_01")] = "a_c_carolinaparakeet_01",
    [GetHashKey("a_c_cedarwaxwing_01")] = "a_c_cedarwaxwing_01",
    [GetHashKey("a_c_chicken_01")] = "a_c_chicken_01",
    [GetHashKey("a_c_chipmunk_01")] = "a_c_chipmunk_01",
    [GetHashKey("a_c_cougar_01")] = "a_c_cougar_01",
    [GetHashKey("a_c_cormorant_01")] = "a_c_cormorant_01",
    [GetHashKey("a_c_cow")] = "a_c_cow",
    [GetHashKey("a_c_coyote_01")] = "a_c_coyote_01",
    [GetHashKey("a_c_crab_01")] = "a_c_crab_01",
    [GetHashKey("a_c_cranewhooping_01")] = "a_c_cranewhooping_01",
    [GetHashKey("a_c_crow_01")] = "a_c_crow_01",
    [GetHashKey("a_c_deer_01")] = "a_c_deer_01",
    [GetHashKey("a_c_duck_01")] = "a_c_duck_01",
    [GetHashKey("a_c_eagle_01")] = "a_c_eagle_01",
    [GetHashKey("a_c_egret_01")] = "a_c_egret_01",
    [GetHashKey("a_c_elk_01")] = "a_c_elk_01",
    [GetHashKey("a_c_fox_01")] = "a_c_fox_01",
    [GetHashKey("a_c_frogbull_01")] = "a_c_frogbull_01",
    [GetHashKey("a_c_gilamonster_01")] = "a_c_gilamonster_01",
    [GetHashKey("a_c_goat_01")] = "a_c_goat_01",
    [GetHashKey("a_c_goosecanada_01")] = "a_c_goosecanada_01",
    [GetHashKey("a_c_hawk_01")] = "a_c_hawk_01",
    [GetHashKey("a_c_heron_01")] = "a_c_heron_01",
    [GetHashKey("a_c_iguana_01")] = "a_c_iguana_01",
    [GetHashKey("a_c_iguanadesert_01")] = "a_c_iguanadesert_01",
    [GetHashKey("a_c_javelina_01")] = "a_c_javelina_01",  
    [GetHashKey("a_c_loon_01")] = "a_c_loon_01",
    [GetHashKey("a_c_moose_01")] = "a_c_moose_01",
    [GetHashKey("a_c_muskrat_01")] = "a_c_muskrat_01",
    [GetHashKey("a_c_oriole_01")] = "a_c_oriole_01",
    [GetHashKey("a_c_owl_01")] = "a_c_owl_01",
    [GetHashKey("a_c_ox_01")] = "a_c_ox_01",
    [GetHashKey("a_c_panther_01")] = "a_c_panther_01", 
    [GetHashKey("a_c_parrot_01")] = "a_c_parrot_01",
    [GetHashKey("a_c_pelican_01")] = "a_c_pelican_01",
    [GetHashKey("a_c_pheasant_01")] = "a_c_pheasant_01",
    [GetHashKey("a_c_pig_01")] = "a_c_pig_01",
    [GetHashKey("a_c_pigeon")] = "a_c_pigeon",
    [GetHashKey("a_c_possum_01")] = "a_c_possum_01",
    [GetHashKey("a_c_prairiechicken_01")] = "a_c_prairiechicken_01",
    [GetHashKey("a_c_pronghorn_01")] = "a_c_pronghorn_01",
    [GetHashKey("a_c_quail_01")] = "a_c_quail_01",
    [GetHashKey("a_c_rabbit_01")] =  "a_c_rabbit_01",
    [GetHashKey("a_c_raccoon_01")] = "a_c_raccoon_01",
    [GetHashKey("a_c_rat_01")] = "a_c_rat_01",
    [GetHashKey("a_c_raven_01")] =  "a_c_raven_01",
    [GetHashKey("a_c_redfootedbooby_01")] = "a_c_redfootedbooby_01",
    [GetHashKey("a_c_robin_01")] = "a_c_robin_01",
    [GetHashKey("a_c_rooster_01")] = "a_c_rooster_01",
    [GetHashKey("a_c_roseatespoonbill_01")] = "a_c_roseatespoonbill_01",
    [GetHashKey("a_c_seagull_01")] = "a_c_seagull_01",
    [GetHashKey("a_c_sheep_01")] = "a_c_sheep_01",
    [GetHashKey("a_c_skunk_01")] =  "a_c_skunk_01",
    [GetHashKey("a_c_snake_01")] = "a_c_snake_01",
    [GetHashKey("a_c_snakeblacktailrattle_01")] = "a_c_snakeblacktailrattle_01",
    [GetHashKey("a_c_snakeferdelance_01")] = "a_c_snakeferdelance_01",
    [GetHashKey("a_c_snakewater_01")] =  "a_c_snakewater_01",   
    [GetHashKey("a_c_songbird_01")] = "a_c_songbird_01",
    [GetHashKey("a_c_sparrow_01")] = "a_c_sparrow_01",
    [GetHashKey("a_c_squirrel_01")] =  "a_c_squirrel_01",
    [GetHashKey("a_c_toad_01")] = "a_c_toad_01",
    [GetHashKey("a_c_turkey_01")] = "a_c_turkey_01",
    [GetHashKey("a_c_turkeywild_01")] =  "a_c_turkeywild_01",
    [GetHashKey("a_c_turtlesnapping_01")] = "a_c_turtlesnapping_01",
    [GetHashKey("a_c_vulture_01")] =  "a_c_vulture_01",
    [GetHashKey("a_c_wolf")] = "a_c_wolf",
    [GetHashKey("a_c_wolf_medium")] = "a_c_wolf_medium",  
    [GetHashKey("a_c_wolf_small")] = "a_c_wolf_small",
    [GetHashKey("a_c_woodpecker_01")] =  "a_c_woodpecker_01",
    [GetHashKey("a_c_woodpecker_02")] = "a_c_woodpecker_02",
    [GetHashKey("mp_a_c_alligator_01")] = "mp_a_c_alligator_01",
    [GetHashKey("mp_a_c_beaver_01")] =  "mp_a_c_beaver_01",
    [GetHashKey("mp_a_c_bighornram_01")] =  "mp_a_c_bighornram_01",
    [GetHashKey("mp_a_c_boar_01")] = "mp_a_c_boar_01",
    [GetHashKey("mp_a_c_buck_01")] =  "mp_a_c_buck_01",
    [GetHashKey("mp_a_c_chicken_01")] = "mp_a_c_chicken_01",
    [GetHashKey("mp_a_c_cougar_01")] = "mp_a_c_cougar_01",    
}

Config.Pelts =  {
    [GetHashKey("p_cs_alligatorpelt_large")] = "Pelt 1",    
    [GetHashKey("p_cs_cowpelt2_xlarge")] = "Pelt 2",    
    [GetHashKey("p_cs_gilamonsterpelt01x")] = "Pelt 3",    
    [GetHashKey("p_cs_iguanapelt")] = "Pelt 4",    
    [GetHashKey("p_cs_iguanapelt02x")] = "Pelt 5",    
    [GetHashKey("p_cs_pelt_elklegendary")] = "Pelt 6",    
    [GetHashKey("p_cs_pelt_large")] = "Pelt 7",    
    [GetHashKey("p_cs_pelt_med_armadillo")] = "Pelt 8",    
    [GetHashKey("p_cs_pelt_med_badger")] = "Pelt 9",    
    [GetHashKey("p_cs_pelt_med_muskrat")] = "Pelt 10",    
    [GetHashKey("p_cs_pelt_med_possum")] = "Pelt 11",    
    [GetHashKey("p_cs_pelt_med_raccoon")] = "Pelt 12",    
    [GetHashKey("p_cs_pelt_med_skunk")] = "Pelt 13",    
    [GetHashKey("p_cs_medium")] = "Pelt 14",    
    [GetHashKey("p_cs_medium_og")] = "Pelt 15",    
    [GetHashKey("p_cs_medlarge")] = "Pelt 16",    
    [GetHashKey("p_cs_wolf")] = "Pelt 17",    
    [GetHashKey("p_cs_wolf_roll")] = "Pelt 18",    
    [GetHashKey("p_cs_ws_alligator")] = "Pelt 19",    
    [GetHashKey("p_cs_pelt_xlarge")] = "Pelt 20",    
    [GetHashKey("p_cs_pelt_xlarge_alligator")] = "Pelt 21",    
    [GetHashKey("p_cs_pelt_xlarge_bear")] = "Pelt 22",    
    [GetHashKey("p_cs_pelt_xlarge_bearlegendary")] = "Pelt 23",    
    [GetHashKey("p_cs_pelt_xlarge_buffalo")] = "Pelt 24",    
    [GetHashKey("p_cs_pelt_xlarge_elk")] = "Pelt 25",    
    [GetHashKey("p_cs_pelt_xlarge_tbuffalo")] = "Pelt 26",    
    [GetHashKey("p_cs_pelt_xlarge_wbuffalo")] = "Pelt 27",    
    [GetHashKey("p_cs_wolfpelt_large")] = "Pelt 28",    
    [GetHashKey("p_cs_blackbearskin_medlarge")] = "Pelt 29",   
    [GetHashKey("p_cs_pelt_medlarge")] = "Pelt 30", 
}

Config.Pelts2 =  {
    [GetHashKey("p_cs_alligatorpelt_large")] = {"p_cs_alligatorpelt_large", true},    
    [GetHashKey("p_cs_cowpelt2_xlarge")] = {"p_cs_cowpelt2_xlarge", true},   
    [GetHashKey("p_cs_gilamonsterpelt01x")] = {"p_cs_gilamonsterpelt01x", false},  
    [GetHashKey("p_cs_iguanapelt")] = {"p_cs_iguanapelt", false},  
    [GetHashKey("p_cs_iguanapelt02x")] = {"p_cs_iguanapelt02x", false}, 
    [GetHashKey("p_cs_pelt_elklegendary")] = {"p_cs_pelt_elklegendary", true}, 
    [GetHashKey("p_cs_pelt_large")] = {"p_cs_pelt_large", false},  
    [GetHashKey("p_cs_pelt_med_armadillo")] = {"p_cs_pelt_med_armadillo", false},
    [GetHashKey("p_cs_pelt_med_badger")] = {"p_cs_pelt_med_badger", false},
    [GetHashKey("p_cs_pelt_med_muskrat")] = {"p_cs_pelt_med_muskrat", false},
    [GetHashKey("p_cs_pelt_med_possum")] = {"p_cs_pelt_med_possum", false},
    [GetHashKey("p_cs_pelt_med_raccoon")] = {"p_cs_pelt_med_raccoon", false}, 
    [GetHashKey("p_cs_pelt_med_skunk")] = {"p_cs_pelt_med_skunk", false},
    [GetHashKey("p_cs_medium")] = {"p_cs_medium", false},
    [GetHashKey("p_cs_medium_og")] = {"p_cs_medium_og", false},
    [GetHashKey("p_cs_medlarge")] = {"p_cs_medlarge", false},
    [GetHashKey("p_cs_wolf")] = {"p_cs_wolf", false},
    [GetHashKey("p_cs_wolf_roll")] = {"p_cs_wolf_roll", false},
    [GetHashKey("p_cs_ws_alligator")] = {"p_cs_ws_alligator", true},
    [GetHashKey("p_cs_pelt_xlarge")] = {"p_cs_pelt_xlarge", true},
    [GetHashKey("p_cs_pelt_xlarge_alligator")] = {"p_cs_pelt_xlarge_alligator", true},
    [GetHashKey("p_cs_pelt_xlarge_bear")] = {"p_cs_pelt_xlarge_bear", true},
    [GetHashKey("p_cs_pelt_xlarge_bearlegendary")] = {"p_cs_pelt_xlarge_bearlegendary", true},
    [GetHashKey("p_cs_pelt_xlarge_buffalo")] = {"p_cs_pelt_xlarge_buffalo", true},
    [GetHashKey("p_cs_pelt_xlarge_elk")] = {"p_cs_pelt_xlarge_elk", true},
    [GetHashKey("p_cs_pelt_xlarge_tbuffalo")] = {"p_cs_pelt_xlarge_tbuffalo", true},
    [GetHashKey("p_cs_pelt_xlarge_wbuffalo")] = {"p_cs_pelt_xlarge_wbuffalo", true},
    [GetHashKey("p_cs_wolfpelt_large")] = {"p_cs_wolfpelt_large", false},
    [GetHashKey("p_cs_blackbearskin_medlarge")] = {"p_cs_blackbearskin_medlarge", true},
    [GetHashKey("p_cs_pelt_medlarge")] = {"p_cs_pelt_medlarge", false}, 
}
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* Addons on carts */
Config.vehicle_extras = {
    ["armoredCar03x"] = {
        5,
        6,
        7,
    },

    ["bountywagon01x"] = {
        5,
    },

    ["caboose01x"] = {
        1,
    },

    ["cart01"] = {
        1,
        4,
    },

    ["cart05"] = {
        1,
        2,
        3,
    },

    ["cart07"] = {
        1,
    },

    ["cart08"] = {
        4,
    },

    ["chuckwagon000x"] = {
        1,
        2,
        3,
    },

    ["chuckwagon002x"] = {
        1,
        2,
        3,
    },

    ["coach2"] = {
        1,
        2,
        3,
        5,
    },

    ["coalHopper01x"] = {
        1,
        2,
        3,
        4,
        5,
    },

    ["gatchuck"] = {
        1,
        2,
        3,
        4,
    },

    ["gatchuck_2"] = {
        1,
    },

    ["horseBoat"] = {
        1,
        2,
        3,
        4,
    },

    ["keelboat"] = {
        5,
    },

    ["midlandboxcar05x"] = {
        1,
        2,
        3,
        4,
        5,
    },

    ["midlandrefrigeratorcar"] = {
        1,
        2,
        3,
    },

    ["northpassenger01x"] = {
        1,
        2,
        3,
        4,
        5,
    },

    ["northpassenger03x"] = {
        1,
        2,
        3,
        4,
        5,
    },

    ["policewagon01x"] = {
        5,
    },

    ["privatebaggage01x"] = {
        1,
        2,
    },

    ["privateboxcar01x"] = {
        1,
        2,
        3,
        4,
        5,
    },

    ["privateboxcar02x"] = {
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        9,
    },

    ["privateboxcar04x"] = {
        5,
    },

    ["privatedining01x"] = {
        1,
        2,
        3,
        4,
        5,
    },

    ["privateopensleeper01x"] = {
        1,
        2,
        3,
    },

    ["privateopensleeper02x"] = {
        1,
        2,
        3,
    },

    ["privatepassenger01x"] = {
        1,
        2,
        3,
        4,
        5,
        6,
    },

    ["rowboat"] = {
        1,
    },

    ["rowboatSwamp"] = {
        5,
    },

    ["rowboatSwamp02"] = {
        5,
    },

    ["ship_guama02"] = {
        1,
    },

    ["ship_nbdGuama2"] = {
        1,
        2,
        3,
    },

    ["smuggler02"] = {
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        9,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
    },

    ["stagecoach001x"] = {
        1,
        2,
    },

    ["stagecoach002x"] = {
        1,
        2,
    },

    ["stagecoach004_2x"] = {
        5,
        6,
        7,
    },

    ["stagecoach005x"] = {
        1,
    },

    ["supplywagon"] = {
        1,
        2,
        4,
    },

    ["trolley01x"] = {
        1,
        2,
    },

    ["TugBoat2"] = {
        1,
        2,
    },

    ["utilliwag"] = {
        2,
    },

    ["wagon02x"] = {
        1,
        2,
        3,
        5,
    },

    ["wagon04x"] = {
        1,
        2,
        3,
    },

    ["wagon05x"] = {
        5,
    },

    ["wagon06x"] = {
        1,
        2,
    },

    ["wagonCircus01x"] = {
        1,
    },

    ["wagonCircus02x"] = {
        1,
    },

    ["wagondoc01x"] = {
        1,
    },
}

Config.vehicle_lantern_propsets = {
    ["keelboat"] = {
        "none",
        "pg_veh_keelboat_lanterns_1",
    },
    ["cart01"] = {
      "none",
      "pg_teamster_cart01_lightupgrade1",
        "pg_teamster_cart01_lightupgrade2",
        "pg_teamster_cart01_lightupgrade3",
        "pg_veh_cart01_lanterns01",
    },
    ["cart06"] =    {
      "none",
      "pg_re_deadbodies01x_lights",
        "pg_teamster_cart06_lightupgrade1",
        "pg_teamster_cart06_lightupgrade2",
        "pg_teamster_cart06_lightupgrade3",
        "pg_veh_cart06_lanterns01",
    },
    ["ArmySupplyWagon"] = {
      "none",
      "pg_veh_ArmySupplyWagon_lanterns01",
    },
    ["chuckwagon000x"] = {
      "none",
      "pg_teamster_chuckwagon000x_lightupgrade1",
        "pg_teamster_chuckwagon000x_lightupgrade2",
        "pg_teamster_chuckwagon000x_lightupgrade3",
        "pg_veh_chuckwagon000x_lanterns",
    },
    ["coal_wagon"] =      {
        "none",
        "pg_teamster_coalwagon_lightupgrade1",
        "pg_teamster_coalwagon_lightupgrade2",
        "pg_teamster_coalwagon_lightupgrade3",
        "pg_veh_coal_wagon_lanterns01",
    },
    ["chuckwagon002x"] =  {
      "none",
      "pg_teamster_chuckwagon002x_lightupgrade1",
        "pg_teamster_chuckwagon002x_lightupgrade2",
        "pg_teamster_chuckwagon002x_lightupgrade3",
        "pg_veh_chuckwagon002x_lanterns01",
    },
    ["horseBoat"] = {
      "none",
      "pg_veh_horseboat_1_lights",
    },
    ["policeWagon01x"] = {
      "none",
      "pg_veh_policeWagon01x_lanterns01",
    },
    ["policeWagongatling01x"] = {
      "none",
      "pg_veh_policeWagonGatling01x_lanterns01",
    },
    ["rowboat"] = {
      "none",
      "pg_veh_rowboat_lightupgrade_1",
        "pg_veh_rowboat_lightupgrade_2",
        "pg_veh_rowboat_lightupgrade_3",
    },
    ["ship_guama02"] = {
      "none",
      "pg_veh_shipguama02_lights01x",
    },
    ["turbineboat"] = {
      "none",
      "pg_veh_turbineboat01x_lights",
    },
    ["ship_nbdGuama"] =         {
      "none",
      "pg_veh_nbdguama_lights01x",
    },
    ["ship_nbdGuama2"] = {
      "none",
      "pg_veh_shipnbdguama2_1_lights",
    },
    ["stagecoach003x"] =    {
      "none",
      "pg_veh_stagecoach003x_lanterns01",
    },
    ["trolley01x"] = {
      "none",
      "pg_veh_trolley01x_lights",
    },
    ["TugBoat2"] = {
      "none",
      "pg_veh_tugboat2_lights01x",
    },
    ["wagon02x"] = {
      "none",
      "pg_teamster_wagon02x_lightupgrade1",
        "pg_teamster_wagon02x_lightupgrade2",
        "pg_teamster_wagon02x_lightupgrade3",
        "pg_veh_wagon02x_lanterns01",
        "pg_veh_wagonsuffrage_lanterns01",
    },
    ["wagon04x"] = {
      "none",
      "pg_teamster_wagon04x_lightupgrade1",
        "pg_teamster_wagon04x_lightupgrade2",
        "pg_teamster_wagon04x_lightupgrade3",
        "pg_veh_wagon04x_lanterns01",
    },
    ["wagon05x"] = {
      "none",
      "pg_teamster_wagon05x_lightupgrade1",
        "pg_teamster_wagon05x_lightupgrade2",
        "pg_teamster_wagon05x_lightupgrade3",
        "pg_veh_wagon05x_2_lanterns01",
        "pg_veh_wagon05x_lanterns01",
        "pg_veh_wagon05x_lanterns02",
    },
    ["wagon06x"] = {
      "none",
      "pg_teamster_wagon06x_lightupgrade1",
        "pg_teamster_wagon06x_lightupgrade2",
        "pg_teamster_wagon06x_lightupgrade3",
    },
    ["wagonPrison01x"] = {
      "none",
      "pg_veh_wagonPrison01x_lanterns01",
    },
    ["utilliwag"] = {
      "none",
      "pg_veh_utilliwag_lightupgrade_1",
        "pg_veh_utilliwag_lightupgrade_2",
        "pg_veh_utilliwag_lightupgrade_3",
        "pg_veh_utilliwag_lanterns01",
    },
    ["gatchuck"] =         {
      "none",
      "pg_teamster_gatchuck_lightupgrade1",
        "pg_teamster_gatchuck_lightupgrade2",
        "pg_teamster_gatchuck_lightupgrade3",
        "pg_veh_gatchuck_lanterns01",
    },
    ["bountywagon01x"] = {
      "none",
      "pg_teamster_chuckwagon002x_lightupgrade1",
        "pg_teamster_chuckwagon002x_lightupgrade2",
        "pg_teamster_chuckwagon002x_lightupgrade3",
        "pg_veh_chuckwagon002x_lanterns01",
    },
    ["wagonarmoured01x"] = {
      "none",
      "pg_veh_wagonarmoured01x_lanterns01",
    },
    ["huntercart01"] = {
      "none",
      "pg_re_deadbodies01x_lights",
        "pg_teamster_cart06_lightupgrade1",
        "pg_teamster_cart06_lightupgrade2",
        "pg_teamster_cart06_lightupgrade3",
        "pg_veh_cart06_lanterns01",
    },
    ["TugBoat3"] = {
      "none",
      "pg_veh_tugboat2_lights01x",
    },
}


Config.vehicle_liveries = {

	["privatebaggage01x"] = {
	 {0, "LM"},
	 {1, "CU"},
	 {2, "SE"},
	 {3, "PU"},
	},


	["gatchuck"] = {
	 {0, "0 - Simple Red Yellow"},
	 {1, "1 - Tapered Yellow Cream"},
	 {2, "2 - Squared Gold Black"},
	 {3, "3 - Flourish Gold Cream"},
	 {4, "4 - Simple Cream"},
	 {5, "5 - Tapered Gold Red"},
	 {6, "6 - Squared Cream Red"},
	 {7, "7 - Flourish Black Yellow"},
	 {8, "8 - Simple Yellow Red"},
	 {9, "9 - Tapered Gold Black"},
	 {10, "10 - Squared Black Red"},
	 {11, "11 - Flourish Cream Gold"},
	 {12, "12 - Gold Cream"},
	 {13, "13 - Tapered Blue Black"},
	 {14, "14 - Squared Gold Black"},
	 {15, "15 - Flourish Yellow Red"},
	},


	["privateboxcar04x"] = {
	 {0, "0 -Lannahechee"},
	 {1, "1 -Central Union"},
	 {2, "2 -Southern and Eastern"},
	 {3, "ARMY"},
	 {4, "PU"},
	},


	["privateboxcar02x"] = {
	 {0, "0 -LM"},
	 {1, "01 -CU"},
	 {2, "02 -SE"},
	 {3, "03 -military"},
	 {4, "PU"},
	},


	["stagecoach002x"] = {
	 {0, "0 -Davis"},
	 {1, "1 -Boles"},
	 {2, "2 -Heartlands"},
	 {3, "3 -Tapered"},
	},


	["cart03"] = {
	 {0, "0 - Simple Cream"},
	 {1, "1 - Tapered Double Cream Yellow"},
	 {2, "2 - Loco Red Yellow"},
	 {3, "3 - Fancy Red Blue Yellow"},
	 {4, "4 - Simple Worn Yellow Cream"},
	 {5, "5 - Chassis Worn Cream"},
	 {6, "6 - Loco Red Black"},
	 {7, "7 - Loco Blue Cream"},
	 {8, "8 - Fancy Red Gold"},
	 {9, "9 - Tapered Double Red Yellow"},
	},


	["midlandboxcar05x"] = {
	 {0, "LM"},
	 {1, "CU"},
	 {2, "SE"},
	 {3, "PU"},
	},


	["midlandrefrigeratorCar"] = {
	 {0, "LM"},
	},


	["boatSteam02x"] = {
	 {0, "0 -AnnieMay"},
	 {1, "1 -Calliope"},
	 {2, "2 -LaChuparrosa"},
	 {3, "3 -Magicienne"},
	},


	["northpassenger03x"] = {
	 {0, "CU"},
	},


	["privateopensleeper01x"] = {
	 {0, "SE"},
	 {1, "ARMY"},
	 {2, "PU"},
	},


	["coach4"] = {
	 {0, "0 - Lines Red Grey"},
	 {1, "1 - Crosshatch Red Green"},
	 {2, "2 - Accented Red Yellow"},
	 {3, "3 - Leaf Yellow"},
	 {4, "4 - Lines Red Green"},
	 {5, "5 - Crosshatch Red Yellow"},
	 {6, "6 - Accented Gold Red"},
	 {7, "7 - Leaf Red Yellow"},
	 {8, "8 - Lines Yellow Orange"},
	 {9, "9 - Crosshatch Cream"},
	 {10, "10 - Crosshatch Green"},
	 {11, "11 - Leaf Gold"},
	 {12, "12 - Lines Gold Yellow"},
	 {13, "13 - Crosshatch Gold"},
	},


	["wagon05x"] = {
	 {0, "0 - Simple Yellow"},
	 {1, "1 - Tapered Gold"},
	 {2, "2 - Double Cream Orange"},
	 {3, "3 - Flourish Yellow Orange"},
	 {4, "4 - Simple Cream"},
	 {5, "5 - Tapered Orange"},
	 {6, "6 - Double Cream Red"},
	 {7, "7 - Flourish Yellow Red"},
	 {8, "8 - Simple Red"},
	 {9, "9 - Tapered Yellow"},
	 {10, "10 - Double Creams"},
	 {11, "11 - Flourish Black Gold"},
	 {12, "12 - Simple Red"},
	 {13, "13 - Tapered Green"},
	 {14, "14 - Double Yellow Cream"},
	 {15, "15 - Flourish Yellow Cream"},
	 {16, "16 - Simple Orange"},
	 {17, "17 - Tapered Black"},
	 {18, "18 - Double Black Red"},
	 {19, "19 - Flourish Worn Red Cream"},
	},


	["bountywagon01x"] = {
	 {0, "0 - Livery1"},
	 {1, "1 - Livery2"},
	 {2, "2 - Livery3"},
	},


	["policeWagon01x"] = {
	 {0, "0 - Police Red White"},
	},


	["stagecoach003x"] = {
	 {0, "1 -Davis"},
	 {1, "2 -Boles"},
	 {2, "3 -Heartlands"},
	 {3, "4 -Ornate"},
	},


	["coach5"] = {
	 {0, "0 - Lines Yellow"},
	 {1, "1 - Tapered Yellow"},
	 {2, "2 - Squared Yellow Cream"},
	 {3, "3 - Leaf Yellow"},
	 {4, "4 - Lines Red Yellow"},
	 {5, "5 - Tapered Red Yellow"},
	 {6, "6 - Squared Red Yellow"},
	 {7, "7 - Leaf Red Yellow"},
	 {8, "8 - Lines Gold"},
	 {9, "9 - Tapered Gold"},
	 {10, "10 - Squared Gold"},
	 {11, "11 - Leaf Gold"},
	},


	["coach6"] = {
	 {0, "0 - Simple Cream"},
	 {1, "1 - Tapered Cream"},
	 {2, "2 - Squared Cream"},
	 {3, "3 - Leaf Cream Yellow"},
	 {4, "4 - Simple Yellow"},
	 {5, "5 - Tapered Yellow Red"},
	 {6, "6 - Squared Yellow"},
	 {7, "7 - Leaf Red Yellow"},
	 {8, "8 - Simple Red Yellow"},
	 {9, "9 - Tapered Red Yellow"},
	 {10, "10 - Squared Red"},
	 {11, "11 - Leaf Black Yellow"},
	 {12, "12 - Simple Black"},
	 {13, "13 - Tapered Gold Black"},
	 {14, "14 - Squared"},
	 {15, "15 - Leaf Gold"},
	},


	["northcoalcar01x"] = {
	 {0, "CU"},
	 {1, "LM"},
	},


	["policeWagongatling01x"] = {
	 {0, "0 - Police Red White"},
	},


	["privateboxcar01x"] = {
	 {0, "LM"},
	 {1, "CU"},
	 {2, "SE"},
	 {3, "ARMY"},
	 {4, "PU"},
	},


	["chuckwagon002X"] = {
	 {0, "0 - Simple Lining Yellow"},
	 {1, "1 - Double Lining Red Black"},
	 {2, "2 - Loco Grey Red"},
	 {3, "3 - Flourish Red Yellow"},
	 {4, "4 - Simple Lining Cream Red"},
	 {5, "5 - Double Lining Red Yellow"},
	 {6, "6 - Loco Red Cream"},
	 {7, "7 - Flourish Green"},
	 {8, "8 - Simple Lining Cream"},
	 {9, "9 - Double Lining Gold Red"},
	 {10, "10 - Gold Leaf"},
	},


	["coach3_cutscene"] = {
	 {0, "1 -Lines"},
	 {1, "2 -Flourish"},
	 {2, "3 -Gold Tapered"},
	 {3, "4 -Gold Leaf"},
	},


	["privateDining01x"] = {
	 {0, "SE"},
	 {1, "PU"},
	},


	["privateSteamer01x"] = {
	 {0, "SE"},
	 {1, "PU"},
	},


	["coach3"] = {
	 {0, "0 - Lines Gold"},
	 {1, "1 - Flourish Yellow"},
	 {2, "2 - Tapered Yellow"},
	 {3, "3 -  Leaf Yellow Red"},
	 {4, "4 - Lines Blue"},
	 {5, "5 - Flourish Gold Red"},
	 {6, "6 - Tapered Blue Grey"},
	 {7, "7 - Leaf Gold"},
	 {8, "8 - Lines Orange"},
	 {9, "9 - Flourish Red Cream"},
	 {10, "10 - Tapered Orange Yellow"},
	 {11, "11 - Leaf Worn"},
	 {12, "12 - Tapered Red Orange"},
	},


	["coach2"] = {
	 {0, "0 -Davis"},
	 {1, "1 -Boles"},
	 {2, "2 -Heartlands"},
	 {3, "3 -Tapered"},
	},


	["huntercart01"] = {
	 {0, "0 - Hunt0"},
	 {1, "1 - Hunt1"},
	 {2, "2 - Hunt2"},
	 {3, "3 - Hunt3"},
	 {4, "4 - Hunt4"},
	 {5, "5 - Hunt5"},
	},


	["oilWagon01x"] = {
	 {0, "0 - Cornwall Red Cream"},
	 {1, "1 - Cornwall Red Black"},
	 {2, "2 - Cornwall Cream Yellow"},
	 {3, "3 - Cornwall Cream Red Yellow"},
	 {4, "4 - Cornwall White Orange"},
	 {5, "5 -  Cornwall Yellow Red"},
	},


	["wagon06x"] = {
	 {0, "0 - Simple Cream Red"},
	 {1, "1 - Double Red Yellow"},
	 {2, "2 - Flourish Cream Gold"},
	 {3, "3 - Flourish II Red Black Yellow"},
	 {4, "4 - Simple Red"},
	 {5, "5 - Double Cream Yellow"},
	 {6, "6 - Flourish Black Yellow"},
	 {7, "7 - Flourish II Black Cream Gold"},
	 {8, "8 - Simple Red"},
	 {9, "9 - Double Red Cream"},
	 {10, "10 - Flourish Black Gold"},
	 {11, "11 - Flourish II Cream Orange Yellow"},
	 {12, "12 - Simple Yellow Red"},
	 {13, "13 - Double Black Red"},
	 {14, "14 - Flourish Red Yellow"},
	 {15, "15 - Flourish II Green Gold"},
	},


	["wagon03x"] = {
	 {0, "0 - Simple Brown Red"},
	 {1, "1 - Double Red Yellow"},
	 {2, "2 - Tapered Yellow Red"},
	 {3, "3 - Flourish Gold Black"},
	 {4, "4 - Simple Red"},
	 {5, "5 - Double Yellow Red"},
	 {6, "6 - Tapered Cream Red"},
	 {7, "7 - Flourish Red Black"},
	 {8, "8 - Simple Black"},
	 {9, "9 - Double Lining"},
	 {10, "10 - Tapered Yellow"},
	 {11, "11 - Flourish Red Gold"},
	 {12, "12 - Simple Brown"},
	 {13, "13 - Double Red"},
	 {14, "14 - Tapered Cream Red"},
	 {15, "15 - Flourish Red Yellow"},
	},


	["cart02"] = {
	 {0, "0 - Tapered Double Red Yellow"},
	 {1, "1 - Crossed Yellow Grey"},
	 {2, "2 - Leaf Yellow"},
	 {3, "3 - Flourish Red Yellow"},
	 {4, "4 - Tapered Worn Grey Yellow"},
	 {5, "5 - Simple Worn Cream"},
	 {6, "6 - Leaf Gold"},
	 {7, "7 - Flourish Gold"},
	 {8, "8 - Tapered Double Red Grey"},
	 {9, "9 - Crossed Red Yellow"},
	 {10, "10 - Leaf Red Yellow"},
	 {11, "11 - Flourish Brown"},
	 {12, "12 - Tapered Worn Red Yellow"},
	 {13, "13 - Simple Worn Yellow"},
	 {14, "14 - Leaf Cream Red"},
	 {15, "15 - Flourish Yellow"},
	},


	["warWagon2"] = {
	 {0, "0 -Simple Lining"},
	 {1, "1 -Double Lining"},
	 {2, "2 -Tapered"},
	 {3, "3 -Gold Leaf"},
	},


	["wagonarmoured01x"] = {
	 {0, "0 - Liv 1"},
	 {1, "1 - Liv 1a"},
	 {2, "2 - Liv 1b"},
	 {3, "3 -Liv 2"},
	 {4, "4 -Liv 2a"},
	 {5, "5 -Liv 2b"},
	 {6, "6 -Liv 3"},
	 {7, "7 -Liv 3a"},
	 {8, "8 -Liv 3b"},
	 {9, "9 -Liv 4"},
	 {10, "10 -Liv 4a"},
	 {11, "11 -Liv 4b"},
	 {12, "12 -Liv 5"},
	 {13, "13 -Liv 5a"},
	 {14, "14 -Liv 5b"},
	 {15, "15 -Liv 6"},
	 {16, "16 -Liv 6a"},
	 {17, "17 -Liv 6b"},
	 {18, "18 -Liv 7"},
	 {19, "19 -Liv 7a"},
	 {20, "20 -Liv 7b"},
	 {21, "21 -Liv 8"},
	 {22, "22 -Liv 8a"},
	 {23, "23 -Liv 8b"},
	 {24, "24 -Liv 9"},
	 {25, "25 -Liv 9a"},
	 {26, "26 -Liv 9b"},
	 {27, "27 -Liv 10"},
	 {28, "28 -Liv 10a"},
	 {29, "29 -Liv 10b"},
	 {30, "30 -Liv 10c"},
	},


	["caboose01x"] = {
	 {0, "LM"},
	 {1, "CU"},
	 {2, "SE"},
	 {3, "PU"},
	},


	["stagecoach004_2x"] = {
	 {0, "0 -Davis"},
	 {1, "1 -Boles"},
	 {2, "2 -Heartland"},
	 {3, "3 -Tapered"},
	 {4, "4 -Lemoyne"},
	},


	["privatepassenger01x"] = {
	 {0, "SE"},
	 {1, "PU"},
	},


	["trolley01x"] = {
	 {0, "CWALL"},
	 {1, "PU"},
	},


	["NORTHSTEAMER01X"] = {
	 {0, "northsteamer01x_LM"},
	 {1, "northsteamer01x_CU"},
	},


	["northpassenger01x"] = {
	 {0, "CU"},
	},


	["utilliwag"] = {
	 {0, "0 - Simple Red"},
	 {1, "1 - Double Red Cream"},
	 {2, "2 - Tapered Yellow Cream"},
	 {3, "3 - Flourish Cream Yellow"},
	 {4, "4 - Simple Red Yellow"},
	 {5, "5 - Double Red Black"},
	 {6, "6 - Tapered Red Cream Black"},
	 {7, "7 - Flourish Red Cream Gold"},
	 {8, "8 - Simple Black"},
	 {9, "9 - Double Red Black"},
	 {10, "10 - Tapered Cream Red"},
	 {11, "11 - Flourish Brown Gold"},
	 {12, "12 - Simple Cream Yellow"},
	 {13, "13 - Double Gold Cream"},
	 {14, "14 - Tapered Yellow Blue"},
	 {15, "15 - Flourish Red Yellow"},
	},


	["cart06"] = {
   {-1, "-1 - Default"},
   {0, "0 - Simple Yellow White"},
	 {1, "1 - Tapered Double Yellow Red"},
	 {2, "2 - Ornate Yellow"},
	 {3, "3 - Flourish Yellow Red"},
	 {4, "4 - Chassis Line White Yellow"},
	 {5, "5 - Rounded Blue White"},
	 {6, "6 - Simple White Red"},
	 {7, "7 - Tapered Double White Red"},
	 {8, "8 - Ornate Light Green"},
	 {9, "9 - Flourish Red"},
	 {10, "10 - Chassis Line Yellow Red"},
	 {11, "11 - Rounded Yellow Red"},
	 {12, "12 - Tapered Double Black"},
	},


	["wagondoc01x"] = {
	 {0, "0 -Doctors"},
	},


	["coal_wagon"] = {
	 {0, "0 -M.Harris01"},
	 {1, "1 -Jameson01"},
	 {2, "2 -M.Harris02"},
	 {3, "3 -Jameson02"},
	},


	["supplywagon2"] = {
	 {0, "0 - Simple Yellow Blue"},
	 {1, "1 - Double Yellow Red"},
	 {2, "2 - Tapered Yellow Red"},
	 {3, "3 - Flourish Green Yellow"},
	 {4, "4 - Appleseed Timber"},
	 {5, "5 - Simple Brown Blue"},
	 {6, "6 - Double Lining Green Yellow"},
	 {7, "7 - Tapered Yellow Cream"},
	 {8, "8 - Flourish Red Yellow"},
	 {9, "9 - Simple Red"},
	 {10, "10 - Double Brown Cream"},
	 {11, "11 - Tapered Gold Orange"},
	 {12, "12 - Flourish Cream Blue"},
	 {13, "13 - Double Gold Black"},
	 {14, "14 - Tapered Cream Orange"},
	 {15, "15 - Flourish Gold Brown"},
	},


	["cart04"] = {
	 {0, "0 - Simple Yellow"},
	 {1, "1 - Loco Cream Red"},
	 {2, "2 - Tapered Double Red Yellow"},
	 {3, "3 - Flourish Yellow"},
	 {4, "4 - Lines Red Yellow"},
	 {5, "5 - Lines Thick White Yellow"},
	 {6, "6 - Flourish Gold"},
	},


	["supplywagon"] = {
	 {0, "0 - Simple Yellow Blue"},
	 {1, "1 - Double Yellow Red"},
	 {2, "2 - Tapered Yellow Red"},
	 {3, "3 - Flourish Green Yellow"},
	 {4, "4 - Appleseed Timber"},
	 {5, "5 - Simple Brown Blue"},
	 {6, "6 - Double Lining Green Yellow"},
	 {7, "7 - Tapered Yellow Cream"},
	 {8, "8 - Flourish Red Yellow"},
	 {9, "9 - Simple Red"},
	 {10, "10 - Double Brown Cream"},
	 {11, "11 - Tapered Gold Orange"},
	 {12, "12 - Flourish Cream Blue"},
	 {13, "13 - Double Gold Black"},
	 {14, "14 - Tapered Cream Orange"},
	 {15, "15 - Flourish Gold Brown"},
	},


	["wagonwork01x"] = {
	 {0, "0 -Wakefield"},
	},


	["stagecoach004x"] = {
	 {0, "0 -Boles"},
	},


	["ArmySupplyWagon"] = {
        {0, "0 -US Army"},
	},


	["stagecoach006x"] = {
	 {0, "1 -Davis"},
	 {1, "2 -Boles"},
	 {2, "3 -Heartlands"},
	 {3, "4 -Simple"},
	},


	["buggy02"] = {
	 {0, "0 - Simple Yellow"},
	 {1, "1 - Flourish Red Yellow"},
	 {2, "2 - Ornate Red Yellow"},
	 {3, "3 - Fancy Yellow Brown"},
	 {4, "4 - Simple Red"},
	 {5, "5 - Flourish Orange Red"},
	 {6, "6 - Ornate Red Orange"},
	 {7, "7 - Fancy Red Orange"},
	 {8, "8 - Simple Cream"},
	 {9, "9 - Flourish Gold"},
	 {10, "10 - Ornate Gold Black"},
	 {11, "11 - Fancy Gold"},
	 {12, "12 - Simple Black"},
	 {13, "13 - Flourish Red Black"},
	 {14, "14 - Ornate Red Black"},
	},


	["wagon02x"] = {
	 {0, "0 - Simple Red"},
	 {1, "1 - Double Cream Yellow"},
	 {2, "2 - Tapered Red"},
	 {3, "3 - Flourish Red Cream"},
	 {4, "4 - Jameson"},
	 {5, "5 - Cornwall"},
	 {6, "6 - Simple Orange"},
	 {7, "7 - Double Lining"},
	 {8, "8 - Tapered Orange"},
	 {9, "9 - Flourish Red Yellow"},
	 {10, "10 - Simple Black"},
	 {11, "11 - Double Cream Yellow"},
	 {12, "12 - Tapered Cream Yellow"},
	 {13, "13 - Flourish Gold"},
	 {14, "14 - Simple Yellow"},
	 {15, "15 - Double Red Yellow"},
	 {16, "16 - Tapered Gold"},
	},


	["cart07"] = {
	 {0, "0 - Simple Green Yellow"},
	 {1, "1 - Tapered Double Yellow Red"},
	 {2, "2 - Loco Black Red Yellow"},
	 {3, "3 - Flourish Yellow Orange"},
	 {4, "4 - Rounded Off-White Yellow"},
	 {5, "5 - Rounded Worn Red Brown"},
	 {6, "6 - Tapered Double Orange Yellow"},
	 {7, "7 - Flourish Gold"},
	 {8, "8 - Rounded Grey Orange"},
	 {9, "9 - Loco Blue Black Yellow"},
	 {10, "10 - Simple Red Yellow"},
	 {11, "11 - Rounded Worn Black White"},
	},


	["privateCoalCar01x"] = {
	 {0, "SE"},
	 {1, "PU"},
	 {2, "ARMY"},
	},


	["oilWagon02x"] = {
	 {0, "0 - Cornwall Red Cream"},
	 {1, "1 - Cornwall Red Black"},
	 {2, "2 - Cornwall Cream Yellow"},
	 {3, "3 - Cornwall Cream Red Yellow"},
	 {4, "4 - Cornwall White Orange"},
	 {5, "5 -  Cornwall Yellow Red"},
	},


	["handcart"] = {
	 {0, "0 "},
	},


	["buggy01"] = {
	 {0, "0 - Simple Yellow"},
	 {1, "1 - Flourish Red Yellow"},
	 {2, "2 - Ornate Red Yellow"},
	 {3, "3 - Fancy Yellow Brown"},
	 {4, "4 - Simple Red"},
	 {5, "5 - Flourish Orange Red"},
	 {6, "6 - Ornate Red Orange"},
	 {7, "7 - Fancy Red Orange"},
	 {8, "8 - Simple Cream"},
	 {9, "9 - Flourish Gold Cream"},
	 {10, "10 - Ornate Gold Black"},
	 {11, "11 - Fancy Gold"},
	 {12, "12 - Simple Black"},
	 {13, "13 - Flourish Red Black"},
	 {14, "14 - Ornate Red Black"},
	},


	["buggy03"] = {
	 {0, "0 - Simple Yellow"},
	 {1, "1 - Flourish Red Yellow"},
	 {2, "2 - Ornate Red Yellow"},
	 {3, "3 - Fancy Yellow Brown"},
	 {4, "4 - Simple Red"},
	 {5, "5 - Flourish Orange Red"},
	 {6, "6 - Ornate Red Orange"},
	 {7, "7 - Fancy Red Orange"},
	 {8, "8 - Simple Cream"},
	 {9, "9 - Flourish Gold Cream"},
	 {10, "10 - Ornate Gold Black"},
	 {11, "11 - Fancy Gold"},
	 {12, "12 - Simple Black"},
	 {13, "13 - Flourish Red Black"},
	 {14, "14 - Ornate Red Black"},
	},


	["wagontraveller01x"] = {
	 {0, "0 - Traveller Red Yellow"},
	},


	["cart05"] = {
	 {0, "0 - Line Blue"},
	 {1, "1 - Double Line Yellow"},
	 {2, "2 - Line Thick Green"},
	 {3, "3 - Flourish Red"},
	 {4, "4 - Simple Red"},
	 {5, "5 - Simple White"},
	 {6, "6 - Line Thick Yellow Orange"},
	 {7, "7 - Line Thick Red Blue"},
	 {8, "8 - Flourish Yellow White"},
	 {9, "9 - Double Line Orange"},
	},


	["gatchuck_2"] = {
	 {0, "0 - Simple Red Yellow"},
	 {1, "1 - Tapered Yellow Cream"},
	 {2, "2 - Squared Gold Black"},
	 {3, "3 - Flourish Gold Cream"},
	 {4, "4 - Simple Cream"},
	 {5, "5 - Tapered Gold Red"},
	 {6, "6 - Squared Cream Red"},
	 {7, "7 - Flourish Black Yellow"},
	 {8, "8 - Simple Yellow Red"},
	 {9, "9 - Tapered Gold Black"},
	 {10, "10 - Squared Black Red"},
	 {11, "11 - Flourish Cream Gold"},
	 {12, "12 - Gold Cream"},
	 {13, "13 - Tapered Blue Black"},
	 {14, "14 - Squared Gold Black"},
	 {15, "15 - Flourish Yellow Red"},
	},


	["cart08"] = {
	 {0, "0 - Single Line Yellow Red"},
	 {1, "1 - Simple Double Cream Yellow"},
	 {2, "2 - Tapered Double Brown White"},
	 {3, "3 - Flourish Cream"},
	 {4, "4 - Simple Red"},
	 {5, "5 - Chassis Cream Yellow"},
	 {6, "6 - Single Line Orange"},
	 {7, "7 - Double Line Brown"},
	 {8, "8 - Single Line Brown Red"},
	 {9, "9 - Simple Double Cream Yellow"},
	 {10, "10 - Tapered Double Grey White"},
	 {11, "11 - Flourish Gold"},
	 {12, "12 - Simple Blue Red"},
	 {13, "13 - Chassis Red Yellow"},
	 {14, "14 - Single Line Bright Orange"},
	 {15, "15 - Double Line Worn"},
	},


	["wagondairy01x"] = {
	 {0, "0 - Kauffman"},
	 {1, "1 - Kauffman Worn"},
	},


	["wagon04x"] = {
	 {0, "0 - Simple Cream"},
	 {1, "1 - Double Yellows"},
	 {2, "2 - Tapered Red"},
	 {3, "3 - Flourish Red Yellow"},
	 {4, "4 - Simple Red"},
	 {5, "5 - Double Yellow White"},
	 {6, "6 - Tapered Yellow"},
	 {7, "7 - Flourish Cream Black"},
	 {8, "8 - Simple Green"},
	 {9, "9 - Double Red Yellow"},
	 {10, "10 - Tapered Cream"},
	 {11, "11 - Flourish Black Gold"},
	 {12, "12 - Simple Black Cream"},
	 {13, "13 - Double Brown Orange"},
	 {14, "14 - Tapered Orange"},
	 {15, "15 - Flourish Cream Red"},
	},


	["stagecoach005x"] = {
	 {0, "1 -Davis"},
	 {1, "2 -Boles"},
	 {2, "3 -Heartlands"},
	 {3, "4 -Tapered"},
	},


	["chuckwagon000x"] = {
	 {0, "0 -Simple Lining Red"},
	 {1, "1 - Dot Lining Red Yellow"},
	 {2, "2 - Double Lining White Blue"},
	 {3, "3 - Flourish Yellow"},
	 {4, "4 -Simple Lining Yellow"},
	 {5, "5 - Dot Lining Orange Yellow"},
	 {6, "6 - Double Lining Black Red"},
	 {7, "7 - Flourish Red Yellow"},
	 {8, "8 - Flourish Cream Gold"},
	 {9, "9 - Flourish Red Black"},
	 {10, "10 - Double Lining Red Yellow"},
	},


	["stagecoach001x"] = {
	 {0, "1 -Davis"},
	 {1, "2 -Boles"},
	 {2, "3 -Heartlands"},
	 {3, "4 -Ornate"},
	},


	["privateopensleeper02x"] = {
	 {0, "SE"},
	 {1, "ARMY"},
	 {2, "PU"},
	},


	["privateRooms01x"] = {
	 {0, "SE"},
	 {1, "PU"},
	},


	["cart01"] = {
	 {0, "0 - Simple Cream"},
	 {1, "1 - Tapered Double Yellow"},
	 {2, "2 - Loco Cream Blue"},
	 {3, "3 - Flourish Yellow Cream"},
	 {4, "4 - Simple Worn Yellow"},
	 {5, "5 - Tapered Worn Cream"},
	 {6, "6 - Simple Yellow"},
	 {7, "7 - Tapered Double Red Cream"},
	 {8, "8 - Loco Cream Red"},
	 {9, "9 - Flourish Red Yellow"},
	 {10, "10 - Simple Worn Cream"},
	 {11, "11 - Tapered Worn Red Cream"},
	},


	["wagon05x_2"] = {
	 {0, "0 - Simple Yellow"},
	 {1, "1 - Tapered Gold"},
	 {2, "2 - Double Cream Orange"},
	 {3, "3 - Flourish Yellow Orange"},
	 {4, "4 - Simple Cream"},
	 {5, "5 - Tapered Orange"},
	 {6, "6 - Double Cream Red"},
	 {7, "7 - Flourish Yellow Red"},
	 {8, "8 - Simple Red"},
	 {9, "9 - Tapered Yellow"},
	 {10, "10 - Double Creams"},
	 {11, "11 - Flourish Black Gold"},
	 {12, "12 - Simple Red"},
	 {13, "13 - Tapered Green"},
	 {14, "14 - Double Yellow Cream"},
	 {15, "15 - Flourish Yellow Cream"},
	 {16, "16 - Simple Orange"},
	 {17, "17 - Tapered Black"},
	 {18, "18 - Double Black Red"},
	 {19, "19 - Flourish Worn Red Cream"},
	},
} 

Config.vehicle_tints = {
	["armoredCar01x"]              = 1,
	["armoredcar03x"]              = 1,
	["ArmySupplyWagon"]            = 1,
	["boatsteam02x"]               = 6,
	["bountywagon01x"]             = 5,
	["buggy01"]                    = 14,
	["buggy02"]                    = 16,
	["buggy03"]                    = 16,
	["caboose01x"]                 = 12,
	["canoe"]                      = 5,
	["canoeTreeTrunk"]             = 1,
	["cart01"]                     = 27,
	["cart02"]                     = 24,
	["cart03"]                     = 25,
	["cart04"]                     = 19,
	["cart05"]                     = 24,
	["cart06"]                     = 25,
	["cart07"]                     = 24,
	["cart08"]                     = 20,
	["chuckwagon000x"]             = 15,
	["chuckwagon002x"]             = 15,
	["coach2"]                     = 5,
	["coach3"]                     = 20,
	["coach3_cutscene"]            = 10,
	["coach4"]                     = 20,
	["coach5"]                     = 20,
	["coach6"]                     = 20,
	["coal_wagon"]                 = 24,
	["coalHopper01x"]              = 1,
	["gatchuck"]                   = 16,
	["gatchuck_2"]                 = 16,
	["handcart"]                   = 2,
	["huntercart01"]               = 6,
	["keelboat"]                   = 5,
	["logwagon"]                   = 5,
	["logwagon2"]                  = 5,
	["midlandboxcar05x"]           = 12,
	["midlandrefrigeratorCar"]     = 1,
	["northcoalcar01x"]            = 7,
	["northflatcar01x"]            = 3,
	["northpassenger01x"]          = 1,
	["northpassenger03x"]          = 1,
	["northsteamer01X"]            = 7,
	["oilWagon01x"]                = 14,
	["oilWagon02x"]                = 12,
	["pirogue"]                    = 6,
	["pirogue2"]                   = 7,
	["policewagon01x"]             = 3,
	["policewagongatling01x"]      = 3,
	["privateArmoured"]            = 1,
	["privatebaggage01x"]          = 8,
	["privateboxcar01x"]           = 15,
	["privateboxcar02x"]           = 15,
	["privateboxcar04x"]           = 15,
	["privateCoalCar01x"]          = 3,
	["privateDining01x"]           = 2,
	["privateflatcar01x"]          = 3,
	["privateObservationcar"]      = 1,
	["privateopensleeper01x"]      = 3,
	["privateopensleeper02x"]      = 3,
	["privatepassenger01x"]        = 2,
	["privaterooms01x"]            = 2,
	["privatesteamer01x"]          = 2,
	["rowboat"]                    = 7,
	["rowboatSwamp"]               = 6,
	["rowboatSwamp02"]             = 6,
	["ship_nbdGuama2"]             = 2,
	["skiff"]                      = 3,
	["stagecoach001x"]             = 4,
	["stagecoach002x"]             = 4,
	["stagecoach003x"]             = 4,
	["stagecoach004_2x"]           = 5,
	["stagecoach004x"]             = 3,
	["stagecoach005x"]             = 4,
	["stagecoach006x"]             = 7,
	["supplywagon"]                = 16,
	["supplywagon2"]               = 16,
	["trolley01x"]                 = 2,
	["tugboat2"]                   = 8,
	["tugBoat3"]                   = 4,
	["utilliwag"]                  = 17,
	["wagon02x"]                   = 22,
	["wagon03x"]                   = 16,
	["wagon04x"]                   = 21,
	["wagon05x"]                   = 20,
	["wagon05x_2"]                 = 20,
	["wagon06x"]                   = 16,
	["wagonarmoured01x"]           = 31,
	["wagoncircus01x"]             = 1,
	["wagoncircus02x"]             = 1,
	["wagondairy01x"]              = 2,
	["wagondoc01x"]                = 1,
	["wagonPrison01x"]             = 7,
	["wagontraveller01x"]          = 1,
	["wagonwork01x"]               = 2,
	["warwagon2"]                  = 6,
	["wintercoalcar"]              = 1,
}



Config.vehicle_propsets = {

    ["armoredCar01x"] = {
        "pg_veh_armoredCar01x_1",
    },

    ["armoredCar03x"] = {
        "pg_veh_armoredCar02x_1",
    },

    ["keelboat"] = {
        "pg_veh_keelboat_01",
        "pg_veh_keelboat_02",
        "pg_veh_keelboat_03",     
    },

    ["boatSteam02x"] = {
        "pg_veh_boatsteam02x_1",
    },

    ["caboose01x"] = {
        "pg_veh_caboose01x_1",
    },

    ["canoe"] = {
        "pg_veh_canoe_01",
        "pg_veh_canoe_02",
    },

    ["cart01"] = {
        "pg_re_checkpoint02x_food",
        "pg_re_moonshineCampgroupCart01x",
        "pg_teamster_cart01_breakables",
        "pg_teamster_cart01_gen",
        "pg_teamster_cart01_perishables",
        "pg_teamster_cart01_tnt",
        "pg_veh_cart01_1",
        "pg_veh_cart01_2",
        "pg_veh_cart01_3",
    },

    ["cart02"] = {
        "pg_mission_caravanCart02x",
        "pg_teamster_cart02_breakables",
        "pg_teamster_cart02_gen",
        "pg_teamster_cart02_perishables",
        "pg_teamster_cart02_tnt",     
    },

    ["cart03"] = {
        "pg_delivery_Coal02x",
        "pg_mp_moonshinebiz_supplies01x_cart03",
        "pg_teamster_cart03_breakables",
        "pg_teamster_cart03_gen",
        "pg_teamster_cart03_perishables",
        "pg_teamster_cart03_tnt",
        "pg_veh_cart03_1",
        "pg_veh_cart03_2",
        "pg_veh_cart03_barrels01x",     
    },

    ["cart04"] = {
        "pg_mission_caravanCart04x",
        "pg_teamster_cart04_breakables",
        "pg_teamster_cart04_gen",
        "pg_teamster_cart04_perishables",
        "pg_teamster_cart04_tnt",
        "pg_veh_cart04_1",
        "pg_veh_cart04_2",         
    },

    ["cart06"] = {
        "pg_teamster_cart06_breakables",
        "pg_teamster_cart06_gen",
        "pg_teamster_cart06_perishables",
        "pg_teamster_cart06_tnt",
        "pg_veh_cart06_1",
        "pg_veh_cart06_2",     
    },

    ["cart07"] = {
        "pg_teamster_cart07_breakables",
        "pg_teamster_cart07_gen",
        "pg_teamster_cart07_perishables",
        "pg_teamster_cart07_tnt",
        "pg_veh_cart07_1",
        "pg_veh_cart07_2",     
    },

    ["cart08"] = {
        "pg_teamster_cart08_breakables",
        "pg_teamster_cart08_gen",
        "pg_teamster_cart08_perishables",
        "pg_teamster_cart08_tnt",
        "pg_veh_cart08_1",
        "pg_veh_cart08_2",         
    },

    ["coach2"] = {
        "pg_mission_mary3_01x",
        "pg_re_coachrobbery01x",
        "pg_veh_coach2_1",
        "pg_veh_coach2_bootA",
    },

    ["ArmySupplyWagon"] = {
        "pg_rc_monroe1_01x",
    },

    ["chuckwagon000x"] = {
        "pg_re_fleeingfamily01x",
        "pg_teamster_chuckwagon000x_breakables",
        "pg_teamster_chuckwagon000x_gen",
        "pg_teamster_chuckwagon000x_perishables",
        "pg_teamster_chuckwagon000x_tnt",
        "pg_veh_chuckwagon000x_1",
        "pg_veh_chuckwagon000x_2",
        "pg_veh_chuckwagon000x_3",
        "pg_veh_chuckwagon000x_2a",
        "pg_veh_chuckwagon000x_3a",
        "pg_veh_chuckwagon000x_4",
        "pg_veh_chuckwagon000x_orange_1",
        "pg_vehload_cotton01",
        "pg_vehload_crates01",
        "pg_vehload_haybale01",
        "pg_vehload_livestock01",
        "pg_vehload_lumber01",
        "pg_vehload_sacks01",
        "pg_vl_blacksmith01",
        "pg_vl_butcher01",
        "pg_vl_craftsman01",
        "pg_vl_delivery01",
        "pg_vl_farmer01",
        "pg_vl_farmer02",
        "pg_vl_ferrier01",
        "pg_vl_fisherman01",
        "pg_vl_hunter01",
        "pg_vl_movingFamily01",
        "pg_vl_rancher01",
        "pg_vl_rancher02",
        "pg_vl_rancher03",
        "pg_vl_rancher04",
        "pg_vl_rancher05",
        "pg_vl_tradesman01",
        "pg_vl_tradesman02",
        "pg_vl_tradesman03",
        "pg_vl_tradesman04",
        "pg_vl_travellingFamily01",
        "pg_vl_travellingLabour01",
    },

    ["supplywagon"] = {
        "pg_mission_cornwall1_01x",
        "pg_mp_moonshinebiz_supplies02x_supwag",
        "pg_teamster_supplywagon_breakables",
        "pg_teamster_supplywagon_gen",
        "pg_teamster_supplywagon_perishables",
        "pg_teamster_supplywagon_tnt",
        "pg_delivery_Cotton01x",         
    },

    ["supplywagon2"] = {
        "pg_mission_mud4_strauswag01x",
        "pg_mission_mud4_strauswag02x",
    },

    ["logwagon"] = {
        "pg_veh_logwagon_1",         
    },

    ["logwagon2"] = {
        "pg_veh_logwagon2_1",         
    },

    ["coal_wagon"] = {
        "pg_delivery_Coal01x",     
    },

    ["chuckwagon002x"] = {
        "pg_rc_exconfederates1_01x",
        "pg_teamster_chuckwagon002x_breakables",
        "pg_teamster_chuckwagon002x_gen",
        "pg_teamster_chuckwagon002x_perishables",
        "pg_teamster_chuckwagon002x_tnt",
        "pg_veh_chuckwagon002x_1",
        "pg_veh_chuckwagon002x_2",
        "pg_veh_chuckwagon002x_3",
        "pg_vl_blacksmith01",
        "pg_vl_butcher01",
        "pg_vl_craftsman01",
        "pg_vl_delivery01",
        "pg_vl_farmer01",
        "pg_vl_farmer02",
        "pg_vl_ferrier01",
        "pg_vl_fisherman01",
        "pg_vl_hunter01",
        "pg_vl_movingFamily01",
        "pg_vl_rancher01",
        "pg_vl_rancher02",
        "pg_vl_rancher03",
        "pg_vl_rancher04",
        "pg_vl_rancher05",
        "pg_vl_tradesman01",
        "pg_vl_tradesman02",
        "pg_vl_tradesman03",
        "pg_vl_tradesman04",
        "pg_vl_travellingFamily01",
        "pg_vl_travellingLabour01",     
    },

    ["handcart"] = {
        "pg_mission_trainrob3_01x",     
    },

    ["horseBoat"] = {
        "pg_veh_horseBoat_1",
        "pg_veh_horseBoat_1_wreckage",
    },

    ["pirogue"] = {
        "pg_veh_pirogue_01",
    },

    ["pirogue2"] = {
        "pg_veh_pirogue_01",
    },

    ["GhostTrainCaboose"] = {
        "pg_veh_caboose01x_1",
    },

    ["rowboat"] = {
        "pg_veh_rowboat_01",
        "pg_veh_rowboat_02",
        "pg_mp_veh_rowboat_supplies01",
        "pg_mp_veh_rowboat_supplies02",
        "pg_mp_veh_rowboat_supplies03",
        "pg_mp_veh_rowboat_supplies04",
    },

    ["rowboatSwamp"] = {
        "pg_veh_rowboatswamp_01",
        "pg_veh_rowboatswamp_02",
        "pg_mp_veh_rowboatSwamp_supplies01",
        "pg_mp_veh_rowboatSwamp_supplies02",
        "pg_mp_veh_rowboatSwamp_supplies03",
        "pg_mp_veh_rowboatSwamp_supplies04",
    },

    ["rowboatSwamp02"] = {
        "pg_veh_rowboatswamp_01",
        "pg_veh_rowboatswamp_02",
    },

    ["ship_nbdGuama"] = {
        "pg_veh_NBDguama_01x",         
    },

    ["ship_nbdGuama2"] = {
        "pg_veh_shipNBDguama2_1",
    },

    ["stagecoach001x"] = {
        "pg_veh_stagecoach001x_1",
        "pg_veh_stagecoach001x_2",
    },

    ["stagecoach002x"] = {
        "pg_veh_stagecoach002x_1",
        "pg_veh_stagecoach002x_2",
        "pg_veh_stagecoach002x_bootA",
    },

    ["stagecoach003x"] = {
        "pg_veh_stagecoach003x_bootA",     
    },

    ["stagecoach004x"] = {
        "pg_mission_utp2_coachLockbox",
        "pg_teamster_armourwag_breakables",
        "pg_teamster_armourwag_gen",
        "pg_teamster_armourwag_perishables",
        "pg_teamster_armourwag_tnt",
    },

    ["stagecoach005x"] = {
        "pg_veh_stagecoach005x_1",
        "pg_veh_stagecoach005x_2",
    },

    ["stagecoach006x"] = {
        "pg_veh_stagecoach006x_1",
        "pg_veh_stagecoach006x_2",
    },

    ["trolley01x"] = {
        "pg_veh_trolley01x_1",
    },

    ["TugBoat2"] = {
        "pg_veh_tugboat2_1",
    },

    ["wagon02x"] = {
        "pg_gunforhire01x",
        "pg_vehload_cotton01",
        "pg_gunforhire02x",
        "pg_gunforhire03x",
        "Pg_Mis_Mud1_Wagon02x",
        "Pg_Mis_Mud1_Wagon02x_NoLooseProps",
        "pg_mission_ammoDeal",
        "pg_mission_caravanWagon02x",
        "pg_mission_marston7_lumber01x",
        "pg_mission_marston7_lumber02x",
        "pg_mission_marston7_lumber03x_doneloading",
        "pg_mission_mud1_wagon03x",
        "pg_mission_tntwagon01x",
        "pg_mission_trainrob3_start01x",
        "pg_mission_weaponsDeal",
        "pg_mission_winter1_4thwagon01x",
        "pg_rc_BeauAndPene101x",
        "pg_rc_beauandpene201x",
        "pg_rc_forgiven601x",
        "pg_rc_nativewagoncornwall01x",
        "pg_rc_saddiesupplies00x",
        "pg_rc_saddiesupplies01x",
        "pg_re_armsdeal01x",
        "pg_re_odriscollwagon01x",
        "pg_re_supplydelivery_gsmith01x",
        "pg_re_supplyDelivery01x",
        "pg_re_trainholdup01x",
        "pg_sp_MarstonsWagon02x",
        "pg_teamster_wagon02x_breakables",
        "pg_teamster_wagon02x_gen",
        "pg_teamster_wagon02x_gen02",
        "pg_teamster_wagon02x_perishables",
        "pg_teamster_wagon02x_tnt",
        "pg_wagon02xClimbtest01x",
        "pg_mission_trainRob4_Wagon02x_dynamite",
        "pg_veh_wagon02x_1",
        "pg_veh_wagon02x_2",
        "pg_veh_wagon02x_3",
        "pg_vl_blacksmith01",
        "pg_vl_butcher01",
        "pg_vl_craftsman01",
        "pg_vl_delivery01",
        "pg_vl_farmer01",
        "pg_vl_farmer02",
        "pg_vl_ferrier01",
        "pg_vl_fisherman01",
        "pg_vl_hunter01",
        "pg_vl_movingFamily01",
        "pg_vl_rancher01",
        "pg_vl_rancher02",
        "pg_vl_rancher03",
        "pg_vl_rancher04",
        "pg_vl_rancher05",
        "pg_vl_tradesman01",
        "pg_vl_tradesman02",
        "pg_vl_tradesman03",
        "pg_vl_tradesman04",
        "pg_vl_travellingFamily01",
        "pg_vl_travellingLabour01",
    },

    ["wagon04x"] = {
        "pg_gunforhire01x",
        "pg_gunforhire02x",
        "pg_gunforhire03x",
        "pg_mission_caravanWagon04x",
        "pg_mission_mud1_jackwagon01x",
        "pg_mission_mud1_wagon01x",
        "pg_mission_mud1_wagon02x",
        "pg_mission_winter1_keiranWag01x",
        "pg_mission_winter1_wag04_01x",
        "pg_teamster_wagon04x_breakables",
        "pg_teamster_wagon04x_gen",
        "pg_teamster_wagon04x_gen02",
        "pg_teamster_wagon04x_perishables",
        "pg_teamster_wagon04x_tnt",
        "pg_veh_wagon04x_1",
        "pg_veh_wagon04x_2",
        "pg_veh_wagon04x_3",
        "pg_vl_blacksmith01",
        "pg_vl_butcher01",
        "pg_vl_craftsman01",
        "pg_vl_delivery01",
        "pg_vl_farmer01",
        "pg_vl_farmer02",
        "pg_vl_ferrier01",
        "pg_vl_fisherman01",
        "pg_vl_hunter01",
        "pg_vl_movingFamily01",
        "pg_vl_rancher01",
        "pg_vl_rancher02",
        "pg_vl_rancher03",
        "pg_vl_rancher04",
        "pg_vl_rancher05",
        "pg_vl_tradesman01",
        "pg_vl_tradesman02",
        "pg_vl_tradesman03",
        "pg_vl_tradesman04",
        "pg_vl_travellingFamily01",
        "pg_vl_travellingLabour01",
        "pg_veh_germFam_wagon04x_01",     
    },

    ["wagon05x"] = {
        "pg_delivery_CKToil01x",
        "pg_delivery_Orange01x",
        "pg_gunforhire01x",
        "pg_gunforhire02x",
        "pg_gunforhire03x",
        "pg_ls_soldier2_01x",
        "pg_mission_bra1_wagon",
        "pg_mission_brt1_jump01x",
        "pg_mission_brt1_tomansion01x",
        "pg_mission_brt2",
        "pg_mission_BRT2_escape01x",
        "pg_mission_brt3",
        "pg_mission_caravanWagon05x",
        "pg_mission_moonshineSupplies",
        "pg_rc_ridethelightning01x",
        "pg_re_checkpoint01x",
        "pg_re_savagewagon01x",
        "pg_teamster_wagon05x_breakables",
        "pg_teamster_wagon05x_gen",
        "pg_teamster_wagon05x_perishables",
        "pg_teamster_wagon05x_tnt",
        "pg_veh_wagon05x_1",
        "pg_veh_wagon05x_2",
        "pg_veh_wagon05x_3",
        "pg_veh_wagon05x_4",
        "pg_veh_wagon05x_5",
        "pg_veh_wagon05x_cotton",
    },

    ["wagon06x"] = {
        "pg_teamster_wagon06x_breakables",
        "pg_teamster_wagon06x_gen",
        "pg_teamster_wagon06x_perishables",
        "pg_teamster_wagon06x_tnt",
        "pg_veh_wagon06x_1",
        "pg_veh_wagon06x_2",
        "pg_veh_wagon06x_3",
    },

    ["wagondairy01x"] = {
        "pg_delivery_dairy01x",    
    },

    ["utilliwag"] = {
        "pg_cs_marston101x",
        "pg_mission_marston1_supplies01x",
        "pg_mission_marston1_supplies02x",
        "pg_mission_marston2_postoffice01x",
        "pg_mission_native2_01x",
        "pg_rc_dinoLady01x",
        "pg_teamster_utilitywag_breakables",
        "pg_teamster_utilitywag_gen",
        "pg_teamster_utilitywag_perishables",
        "pg_teamster_utilitywag_tnt",
        "pg_veh_utilliwag_1",
        "pg_veh_utilliwag_2",
        "pg_veh_utilliwag_3",
        "pg_veh_utilliwag_orange_1",   
    },

    ["gatchuck"] = {
        "pg_mission_native2_01x",
        "pg_teamster_payroll01x_gat",         
    },

    ["wagon05x_2"] = {
        "pg_teamster_wagon05x_gen",
    },

    ["huntercart01"] = {
        "pg_mp005_huntingWagonTarp01",
    },

    ["TugBoat3"] = {
        "pg_moonshiner3_tugboat2_1",
    },
}
