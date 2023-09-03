Config = {}

/* Discord hook */
Config.discordHook = false
Config.webhookLink = ""
Config.webhookColor = 16755884
Config.webhookLanguage = {
    [1] = "Rename ",
    [2] = "ID ",
    [3] = " have changed name to : ",

    [4] = "Tame horse",
    [5] = "**Model** : ",
    [6] = "**Name** : ",
    [7] = "**Gender** : ",
    [8] = "**Price** : ",
    [9] = "**Year** : ",

    [10] = "Buy horse",
    [11] = "**Model** : ",
    [12] = "**Name** : ",
    [13] = "**Gender** : ",
    [14] = "**Year** : ",
    [15] = "**Price** : ",

    [16] = "Save adult horse",
    [17] = "**Model** : ",
    [18] = "**Name** : ",
    [19] = "**Gender** : ",

    [20] = "Transfer horse/cart",
    [21] = "**Transfer** : To City",
    [22] = "**Type** : ",
    [23] = "**ID** : ",
    [24] = "**City position** : ",
    [25] = "**Price** : ",

    [26] = "Transfer horse/cart",
    [27] = "**Transfer** : To Spot",
    [28] = "**Type** : ",
    [29] = "**ID** : ",
    [30] = "**City position** : ",
    [31] = "**Price** : ",

    [32] = "Start breed horse",
    [33] = "**First horse**",
    [34] = "**ID** : ",
    [35] = "**Model** : ",
    [36] = "**Name** : ",
    [37] = "**Second horse**",
    [38] = "**ID** : ",
    [39] = "**Model** : ",
    [40] = "**Name** : ",
    [41] = "**Price** : ",
    
    [42] = "Buy components for horse",
    [43] = "**Price** : ",

    [44] = "Add shoe for horse",
    [45] = "**ID** : ",
    [46] = "**Count** : ",

    [47] = "Give horse to player",
    [48] = "**Horse ID** : ",

    [49] = "Give cart to player",
    [50] = "**Cart ID** : ",

    [51] = "Buy cart",
    [52] = "**Model** : ",
    [53] = "**Name** : ",
    [54] = "**Price** : ",

    [55] = "Buy components on cart",
    [56] = "**Price** : ",

    [57] = "Sell owned horse",
    [58] = "**ID** : ",
    [59] = "**Price** : ",

    [60] = "Sell owned cart",
    [61] = "**ID** : ",
    [62] = "**Price** : ",

    [63] = "Dead on old",
    [64] = "**ID** : ",

    [65] = "Healed dead horse",
    [66] = "**Price** : ",

    [67] = "Sell wild horse",
    [68] = "**Model** : ",
    [69] = "**Price** : ",
}
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* 
Base
*/
Config.Debug = true
Config.GoldRol = false


Config.Image = "stables"--Image for notify
Config.enableMarkers = false--Does use if you use NPC for stables <3
Config.RGBAMarkes = {255, 255, 100, 30}
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* 
Default horses/cart logic 
*/
Config.OutOfRangeTask = true--If horse out of range -> automaticaly go to you
Config.RangeForTaskHorse = 110.0

Config.OutOfRangeDespawnHorse = true
Config.OutOfRangeDespawnCart = true

Config.RangeForDespawnHorse = 115.0
Config.RangeForDespawnWagon = 110.0
Config.SpawnRangeAfterCallHorse = {30,40}--Random range for spawn horse if you are not near node

Config.RageForCallHorse = 80.0--If you press H and horse is long way from you, he does come
-- If you need despawn horse from another script add only this to script 
-- TriggerEvent("gum_stables:fleeHorse")
-- TriggerEvent("gum_stables:fleeCart")

Config.HorseFollowYou = true
Config.HorseFollowYouRange = 3.0--If you whistle your horse in this range horse start follow you

Config.Cooldown = 5--5 sec for again call horse
Config.CooldownWagon = 5--5 sec for again call cart

Config.Access_Other_Storage = true--Access for other
Config.Access_Only_Id = true--If you have enabled player can see your storage only if you add him via ID (if you have disabled you have access to all players storage)
Config.RemoveAccessAfterDrop = true--Remove access if player disconnect/drop from game

Config.BrushItem = "Brush"--For cleaning horses

Config.Eat_Items = {--Feed table for horses
    [1] = {item = "Apple", health=40, stamina=40, gold_health=0.0, gold_stamina=0.0, prop="p_apple01x",useOtherScript=false},
    [2] = {item = "Hay", health=30, stamina=30, gold_health=0.0, gold_stamina=0.0, prop="p_haypilepitchfork01x",useOtherScript=false},
	[3] = {item = "Sugar", health=20, stamina=40, gold_health=0.0, gold_stamina=0.0, prop="p_haypilepitchfork01x",useOtherScript=false},
	[4] = {item = "Wild_Carrot", health=30, stamina=30, gold_health=0.0, gold_stamina=0.0, prop="p_haypilepitchfork01x",useOtherScript=false},
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
/* 
Workers/Hunting Carts logic + horses 
*/

Config.PeltOnHorses = true--If you have butcher what sell peltz from horse add here this for clean = TriggerEvent("gum_stables:cleanPeltz") 

Config.Wood_Items = {--Table for wood carts
    --NUM = {"Item name", "Item ID", "Weight"}
    [1] = {"Wood", "Wood", 1.0},
    [2] = {"Wood Branch", "Wood_Branch", 0.1},
}

Config.Stone_Items = {--Table for stone carts
      --NUM = {"Item name", "Item ID", "Weight"}
    [1] = {"Stone", "Stone", 1.0},
    [2] = {"Charcoal", "Charcoal", 0.5},
}

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* 
Stables logic 
*/
Config.CityStablesHorse = false
Config.CityStablesWagon = true
Config.FleeWagon = false -- If you have enabled, you can flee wagon, if you have disabled you cant flee wagon anywhere
Config.DebugWagon = true -- Debug buttons is for carts, and if you use onesync sometimes you can get cart without horses.. this carts (good for city stables and call cart from stable)
Config.RespawnAfterLoginCart = false--If your game drop, and you connect back, you cart was respawned on same position
Config.RespawnAfterLoginHorse = false--If your game drop, and you connect back, you horse was respawned on same position

Config.CallFromStableHorse = false
Config.CallFromStableCart = true
Config.mainStables = 1

Config.TransferEnable = true--Transfer between stables is enabled (if you use City stables)
Config.TransferPrice = 150--Price for transfer horses/carts between stables  (0 is disabled)

Config.TransferSaddle = true--Transfer saddle  from horse to another (via command)
Config.TransferItems = {
    saddlecloths = true,
    bridle = true,
    holster = true,
    acshorn = true,
    bags = true,
    saddles = true,
    stirrups = true,
    lantern = false,
    Mask = false,
    acsluggage = true,
}

Config.CoordAdjustForStablesId = 30.0--(this control coords from "save" wild horses too normal stables)
Config.Clothe1InBlanket = true--Here you can set clothing 1 / 2 slots via ID (its special for vorp/gum, where you can edit clothing -> IDs )

Config.InteractibleCamera = true--In my horses, my carts, Horse components and Cart components you can move via mouse camera (if you hold left or right click)
Config.RenameCartHorse = "HorseCartTag"
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* 
Age logic 
*/
Config.Real_Logic = true
Config.Age_Update_If_Real_Logic = 30--30 min real logic update
Config.Age_Update_For_1_Time = 0.009--Calculation   24hours ==== (day have 30min 58x) =  58 * 0.009 = 0.522 ages for 24 Hours
Config.Age_Update_For_1_Time_Small = 0.009--Calculation   24hours ==== (day have 30min 58x) =  58 * 0.009 = 0.522 ages for 24 Hours (for horses to 5 years)
Config.MaxAge = 30--Max age for horses where go to state old

Config.Dead_On_Old = true--If horse old you have chance for "dead"
Config.Chance_For_Dead = 10--10% chance

Config.Age_Check = 30--30 min for check age

--After you buy horse you have select cub/adult (this is for CUB)
Config.Random_Age_From = 1
Config.Random_Age_To = 2

--After you buy horse you have select cub/adult (this is for ADULT)
Config.Random_Age_For_Normal_Horses_1 = 5
Config.Random_Age_For_Normal_Horses_2 = 20

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* 
Status cart/horses 
*/
Config.SaveStatus = true--Save status sprint, health from horse after flee, dirty hook
Config.BlockSpamEat = true--Blocked spamming eat for full stamina etc..
Config.BlockSpamEatTime = 10--2min

Config.KickHorse = true-- If you enable, your horse can kick you
Config.AffectDamageToCart = true--This affect damage on cart to your vehicle
--Under 600 HP cart is more and more dirty and under 100HP is undriveble
Config.AffectDirtyToCart = true--Clean / under 600Hp more dirty and every 100 -> more and more dirty
Config.AffectRidingToCart = true--Under 100 HP -> undriveble cart you are kicked from cart with notify "Your cart is much broken"
Config.RepairKit = "Repair_Kit"--For Fix item for cart health
Config.RemoveKit = true

Config.Destroy_Wheel = true
Config.RepairNeed = true-- If you have enabled, you need repair kit for repair wheel
Config.RepairWheel = "Repair_Kit"--For fix item for wheel health
Config.RemoveWheel = true

Config.DirtyStatus = true--If you want save dirty level for your horse, with thsi you can reduce "dirty level" horse
Config.DirtyUpdate = 5--Every 5 second update dirty status
Config.DirtyValue = 10--Every 10 second +1 dirty value
Config.DirtyDownInWater = 500--Dirty down is horse in water. Dirty go down every DirtyUdpate  -> (Max value of dirty is 10000)
Config.DirtyDownWithBrush = 250--Down with brush
Config.DirtyOnlyWhileRide = true--Dirty is only while ride

Config.Chance_On_Destroy = 30--30% every 10 second for destroy wheel
Config.TimerForCheckSpeed = 10---Every 10 second check speed cart if is fastest -> 30% for wheel down

Config.ShowNUIStatus = true--Show status on NUI (If you target your horse, you see ACC / SPEED / TURN Stats)
Config.ShowWILDStatus = true--Show status on NUI (If you target with binoculars wild horse you see ACC / SPEED / TURN Stats)
Config.OnlyTrainerSeeWildStatus = false--Only trainer can see stats wild horses
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* 
Horse shoe 
*/
Config.minigameShoe = true
Config.Max_Agility = 9--Max agility is 9 but you can select smaller :)
Config.Horse_Shoe = 1--Per 1 shoes per 1 level
Config.ShoeItem = "Horse_Shoe"

/* 
Horse hook 
*/
Config.hoofHook = true--If you have enabled status, and enabled this, your hoof need cleaning
Config.Hoof_Hook_Item = "Hoof_Hook"--For cleaning hoof on horses
Config.removeAfterUse = true

Config.timerForHook = 30--30 seconds

/*
How much dirty go down in specific states
*/
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
/* 
Horse trainers 
*/
Config.AdministrationJob = true--If you have enable, trainers have menu for add trainers etc.
Config.AdministrationCommand = "trainer"--Command for open menu

Config.CinematicCameraProtection = true--This block exp if you have cinematic camera
Config.ExpTimer = 10--Every 10 second add Exp to horse if player lead, or walk with horse
Config.ExpTable = {
    Walking = 1,
    Running = 2,
    Sprinting = 3,
    Leading = 4,

    IfCub = 3,
    IfAdult = 1,

    NormalJump = 7,

    --Training Exps
    Jumping = 5,
    Dancing = 20,
    RearUp = 5,
    FootScrats = 5,
    LongingJump = 10,
    SwitchSide = 5,

    Feeding = 1,
    Brushing = 1,

    ExpForCommandSkills = true,-- Language command = 400,401,402,403, or via Lead horse buttons
    Resting = 10,
    Sleep = 10,
    Wallow = 10,
    Drink = 10,
}

Config.JumpingOnHorseSpamProtect = 10--This protect gain exp if you spamming jump on horse (in second)
Config.JumpingOnLongingSpamProtect = 10--This protect gain exp if you spamming jump on longing (in second)
Config.SwitchSideOnLongingSpamProtect = 10--This protect gain exp if you spamming switch side on longing (in second)

Config.MaxLevel = 4--Max level for horse
Config.EnableCommands = true--This enables commands like "/horseRest -> horse starts resting"
Config.Skills = {
    --chat command       Level / Event for call anim
    ["horseRest"] = {1, "gum_stables:restHorse"},--Horse rest
    ["horseSleep"] = {1, "gum_stables:sleepHorse"},--Horse sleep
    ["horseWallow"] = {1, "gum_stables:wallowHorse"},--Horse play
    ["horseDrink"] = {1, "gum_stables:drinkHorse"},--Drink from water
}

Config.DrainStaminaByLevel = {
    [1] = 0.95,
    [2] = 0.90,
    [3] = 0.85,
    [4] = 0.80,
}


----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* 
Horse system friendly/bond 
*/
Config.FriendlySystem = true--Friendly system is bond between player and horses

Config.ChanceToMakeFrendlyTrainer = 70--70% chance for make friendly action
Config.ChanceToMakeFriendlyNoTrainer = 80--10% chance for make friendly action without job

Config.RandomBadSituation = false
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
/* 
Horse system courage 
*/
Config.CourageSystem = true--Courage system how much is horse scarred from fire, snakes etc.
Config.CourageUpgradeChance = 70--If horse scarred you have 70% chance for upgrade courage
Config.MaxCourage = 9--Max courage level

----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* 
Tame Wild horses 
*/
Config.Tamming_Horses = true--Enabled taming wild horses

Config.CooldownTame = true
Config.CooldownTime = 30 -- in Minutes

Config.SellWildButton = true
Config.SaveWildButton = true

Config.Random_Age_For_Tamming_Save_1 = 6--From Year
Config.Random_Age_For_Tamming_Save_2 = 20--To Year
Config.BreedAfterTame = 50--(If you tame horse you have 50% chance "can breed state")

Config.TriggerFixAnim = true--This trigger animation if you tame horses (some peds have problem with bad animation)
Config.Tamming_Mini_Game = true--Minigames
Config.Tamming_Key_Table = {
    [1] = {0xE6F612E4, "1"},
    [2] = {0x1CE6D9EB, "2"},
    [3] = {0x4F49CC4C, "3"},
    [4] = {0x8F9F9E58, "4"},
    [5] = {0xAB62E997, "5"},
    [6] = {0xA1FDE2A6, "6"},
}
Config.Time_To_Press = 150
Config.Pay_For_Save_Horse = false
Config.Pay_For_Save_Percent = 10

Config.StoreForBreeder = true--Breeders or trainers can sell horses in this stores.
Config.BreederStorePriceLimit = 100--(disabled is 0)
Config.BreederStoreAgeing = false--Disabled ageing

----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* 
Breeding 
*/
Config.FixBrainerItem = true
Config.FixBrainerItemId = "BreederFix"--Only For trainers and for Male genders (if you have horse with state "No" you can breed horse with this item)
Config.FemaleFixToo = true--Enable Female gender fix too

Config.BreedPriceEnable = false--Example : If you have BreedPriceDistance 60 you can breed like horse for 30$ and max horse for 90$ (60+30)
Config.BreedPriceDistance = 90--Distance

Config.PayForBreed = true--(((Price first horse+Price Second horse)/2)/100*Percent price for breed)
Config.BreedPricePercent = 50 
--price_first_breed+price_second_breed/2)/100*Config.BreedPricePercent
--200+200 = 400 / 2 = 200/100 = 2* Config.BreedPricePercent ==> Pay for breed

Config.txBreedingDataSave = true -- if you use TX i can recommened this! Speed up performace for breeding, and before restart server from TX -> all saved to Database (all breeding data)
Config.txDisabledTime = 30 -- if you have dont use TX Admin you must set save time for Breeding (in minutes)

Config.BreedStateAfterBuy = 50--(If you buy horse you have 50% chance "can breed state")
Config.Can_Breed_Again_Chance = 30--Percentage chance for again breed after breed

Config.BreedingTime = 57600--16h . (its in seconds)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* 
Horse/cart components 
*/
Config.Horse_Bedrolls = 0.55
Config.Horse_Blankets = 1.29
Config.Horse_Manes = 0.20
Config.Horse_Bags = 10.00
Config.Horse_Saddles = 12.50
Config.Horse_Tails = 0.20
Config.Horse_Horn = 0.55
Config.Horse_Stirrups = 0.55
Config.Horse_Accesori = 9.25
Config.Horse_Mustache = 0.10
Config.Horse_Holster = 0.10
Config.Horse_Lantern = 5.90
Config.Horse_Bridle = 5.55
Config.Horse_Props = 5.55

Config.Extras = 0.1
Config.Tint = 0.5
Config.Livery = 0.5
Config.Lantern = 0.5
Config.Propset = 2.5
Config.HorsesDraft = 2.5
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------

Config.LimitFurniture = 200


/* 
Commands for delete Horses/Carts for job 
*/
Config.DeleteCommand = "dv"

/* 
Commands for delete Horses/Carts for admins 
*/
Config.AdminCommand = "delHorseCart"
Config.DeleteAdmin = {
    "admin",
    "mod"
}
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* 
Keyes setting 
*/
Config.KeySetting = {
    ["horseComponents"] = 0x8CF90A9D,
    ["horseFlee"] = 0x3B24C470,
    ["horseLead"] = 0x018C47CF,
    ["horseCalm"] = 0x760A9C6F,
    ["horseBags"] = 0x71F89BBC,
    ["horseTransfer"] = 0xD8CF0C95,
    ["horseCheckHoof"] = 0x811F4A1A,
    ["horseWhistle"] = 0x24978A28,
    ["horsePutPelt"] = 0x27D1C284,
    ["horseTakePelt"] = 0xA1ABB953,

    ["cartWhistle"] = 0xF3830D8E,
    ["cartTransfer"] = 0xA1ABB953,
    ["cartFixWheel"] = 0x07B8BEAF,
    ["cartFlee"] = 0x0522B243,
    ["cartDebug"] = 0x156F7119,
    ["openStorage"] = 0x27D1C284,
    ["openAnimals"] = 0x8CF90A9D,
    ["putAnimalOnCart"] = 0x27D1C284,
    ["saveWildHorse"] = 0x27D1C284,
    ["saveToSpotOrStables"] = 0x27D1C284,
    
    ["cameraRotateLeft"] = 0x20190AB4,
    ["cameraRotateRight"] = 0x65F9EC5B,
    ["cameraZoomIn"] = 0x05CA7C52,
    ["cameraZoomOut"] = 0x53296B75,
    ["cameraInteraction"] = 0x53296B75,
    ["cameraUpDown"] = 0x84574AE8,
    ["cameraLeftRight"] = 0x390948DC,
    ["cameraZoomInOut"] = 0x8BDE7443,

    ["openStable"] = 0x27D1C284,
    ["openSpot"] = 0x27D1C284,
    ["openBreederStore"] = 0x27D1C284,
}

----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
