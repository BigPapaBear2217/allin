Config = {}


Config.Max_Age = 15
Config.Age_Update_If_Real_Logic = 30--30 min real logic update (every 30min == 0.009)
Config.Age_Update_For_1_Time = 0.009
--(i this using on horses)

Config.Gum_Notify_Old = false
Config.FirstName = ""--If you use old Notify you must add Image path
Config.SecondName = ""--If you use old Notify fro mme you must add Image Name

Config.Gum_Notify_NUI = true
Config.Image = "pets"
Config.GoldRol = false

Config.PetsEat = {
    hunger = {
        --Health using number like 1-100 (dont use decimal like 10.5 etc..)
        Meat = {hunger=25, thirst=0, health=0},
        Gamey_Meat = {hunger=50, thirst=0, health=0},
    },
    thirst = {
        Water = {hunger=0, thirst=20, health=0},
        Clean_Water_Bottle = {hunger=0, thirst=50, health=0},
    },
    health = {
        Health_For_Dog = {hunger=0, thirst=0, health=10},
        Granuls = {hunger=0, thirst=0, health=10},
    }
}



Config.ChanceForLearn_1 = {10, 50}
Config.ChanceForLearn_2 = {30, 50}

--Exps its on you. If you make 2000 levels its on you :D
Config.ExpLevels = {
    [1] = 100,
    [2] = 200,
    [3] = 300,
    [4] = 400,
    [5] = 500,
    [6] = 600,
    [7] = 700,
    [8] = 800,
    [9] = 900,
    [10] = 1000,
    [11] = 1100,
    [12] = 1200,
    [12] = 1200,
}

--Every 10 second is updated exps
Config.ExpSystem = {
    Walking = 1,--For Walking = 10 exp
    Running = 2,
    Sprinting = 3,
    Eat = 1,
    Drink = 1,
    Health = 10,
    FailSkill = 2,
    Success1lv = 5,
    Success2lv = 10,
    SuccessMax = 3
}
Config.TrainerMultiplier = {
    [2] = {"TrainerDogLow", "TrainerDogLow3"},
    [5] = {"TrainerDog", "TrainerDog2"},
}

Config.Shops = {
	[1] =  {
        ["Shop_Enabled"] = true,
        ["Shop_Coords"] = {x = 1192.1, y = -7084.44, z = 42.93},-- Standard X,Y,Z Coords
      --  ["Shop_Coords"] = {x = -273.51, y = 689.26, z = 113.45},-- Standard X,Y,Z Coords
        ["Shop_Cam"] = {x = 1200.04, y = -7078.19, z = 43.27, h= -153.21},--X,Y,Z for position cam and "h" for Heading (use /make_coords cmd) where you looking -> heading
        ["Shop_Light"] = {x = -268.09, y = 695.26, z = 115.46, r= 4.0, i=75.0},--X,Y,Z, R=Range , I=Intensity light
        ["Shop_Dog_1"] = {x = 1203.65, y = -7083.71, z = 41.35, h=98.05},--X,Y,Z,  H -> Heading
        ["Shop_Dog_2"] = {x = 1201.58, y = -7084.17, z = 41.46, h=168.75},--X,Y,Z  H -> Heading
    },
    --[[
	[2] =  {
        ["Shop_Enabled"] = true,
        ["Shop_Coords"] = {x = -830.58, y = -1318.11, z = 43.63},
        ["Shop_Cam"] = {x = -833.1321, y = -1320.52, z = 43.63, h = 175.00},
        ["Shop_Light"] = {x = -834.21, y = -1324.26, z = 43.64, r= 4.0, i=75.0},
        ["Shop_Dog_1"] = {x = -833.50, y = -1325.28, z = 42.65, h=29.55},
        ["Shop_Dog_2"] = {x = -834.54, y = -1324.83, z = 42.65, h=334.99},
    },
    [3] =  {
        ["Shop_Enabled"] = true,
        ["Shop_Coords"] = {x = 1192.1, y = -7084.44, z = 42.93},-- Standard X,Y,Z Coords
        ["Shop_Cam"] = {x = 1199.59, y = -7078.36, z = 113.96, h= 210.23},--X,Y,Z for position cam and "h" for Heading (use /make_coords cmd) where you looking -> heading
        ["Shop_Light"] = {x = -268.09, y = 695.26, z = 115.46, r= 4.0, i=75.0},--X,Y,Z, R=Range , I=Intensity light
        ["Shop_Dog_1"] = {x = 1203.96, y = -7081.07, z = 141.97, h=37.02},--X,Y,Z,  H -> Heading
        ["Shop_Dog_2"] = {x = 1203.96, y = -7081.07, z = 141.97, h=37.02},--X,Y,Z,  H -> Heading
    }, ]]--
}

Config.enableInteractWithNpc = false
Config.useNPC = true
Config.useTimeLogic = false
Config.StableNPC = {
    [1] = {
        npc="u_m_m_bwmstablehand_01",
        coords={-366.0655822753906, 790.820556640625, 115.31959533691406, 170.0},
        timeStart=10,--Hours
        timeEnd=20--Hours
    },
    [2] = {
        npc="u_m_m_bwmstablehand_01",
        coords={-878.3824462890625, -1364.4324951171875, 42.67800521850586, -84.0},
        timeStart=10,--Hours
        timeEnd=20--Hours
    }
}

Config.Supporter = false
Config.Pets_Store = {
    [1] =  {
        ["JobStore"] = {"annimalerie"},
        ["Model"] = "a_c_parrot_01",
        ["Name"] = "Parrot",
        ["Skin"] = 3,
        ["Dolar"] = 30,
        ["Gold"] = 00,
        ["Behavior"] = true,
        ["ToHand"] = false,
        ["OnShoulder"] = true,
        ["CanHuntSmallAnimal"] = false,        --Dont use on Birds Animals
        ["CanSearchAnimals"] = false,        --Dont use on Birds Animals
        ["CanCallToMe"] = false,        --Dont use on Birds Animals
        ["CanAttackOnPed"] = false,        --Dont use on Birds Animals

        ["Command_1"] = {0, 'manger', 'EAT', 2},
        ["Command_2"] = {0, 'boire', 'DRINK', 2},
    },
--[[   [2] =  {
        ["JobStore"] = {"annimalerie"},
        ["Model"] = "a_c_snakereddboa_01",
        ["Name"] = "Boa",
        ["Skin"] = 3,
        ["Dolar"] = 30,
        ["Gold"] = 00,
        ["Behavior"] = true,
        ["ToHand"] = false,
        ["OnShoulder"] = true,
        ["CanHuntSmallAnimal"] = false,        --Dont use on Birds Animals
        ["CanSearchAnimals"] = false,        --Dont use on Birds Animals
        ["CanCallToMe"] = false,        --Dont use on Birds Animals
        ["CanAttackOnPed"] = false,        --Dont use on Birds Animals

        ["Command_1"] = {0, 'manger', 'EAT', 2},
        ["Command_2"] = {0, 'boire', 'DRINK', 2},
    }, ]]
    [3] =  {
        ["JobStore"] = {"annimalerie"},
        ["Model"] = "a_c_snake_01",
        ["Name"] = "Serpent",
        ["Skin"] = 3,
        ["Dolar"] = 30,
        ["Gold"] = 00,
        ["Behavior"] = true,
        ["ToHand"] = false,
        ["OnShoulder"] = true,
        ["CanHuntSmallAnimal"] = false,        --Dont use on Birds Animals
        ["CanSearchAnimals"] = false,        --Dont use on Birds Animals
        ["CanCallToMe"] = false,        --Dont use on Birds Animals
        ["CanAttackOnPed"] = false,        --Dont use on Birds Animals

        ["Command_1"] = {0, 'manger', 'EAT', 2},
        ["Command_2"] = {0, 'boire', 'DRINK', 2},
    },
    [4] =  {
        ["JobStore"] = {"annimalerie"},
        ["Model"] = "a_c_pig_01",
        ["Name"] = "Cochon",
        ["Skin"] = 3,
        ["Dolar"] = 30,
        ["Gold"] = 00,
        ["Behavior"] = true,
        ["ToHand"] = false,
        ["OnShoulder"] = true,
        ["CanHuntSmallAnimal"] = false,        --Dont use on Birds Animals
        ["CanSearchAnimals"] = false,        --Dont use on Birds Animals
        ["CanCallToMe"] = false,        --Dont use on Birds Animals
        ["CanAttackOnPed"] = false,        --Dont use on Birds Animals

        ["Command_1"] = {0, 'manger', 'EAT', 2},
        ["Command_2"] = {0, 'boire', 'DRINK', 2},
    },

    [6] =  {
        ["JobStore"] = {"annimalerie"},
        ["Model"] = "a_c_bat_01",
        ["Name"] = "Chauve souris",
        ["Skin"] = 3,
        ["Dolar"] = 30,
        ["Gold"] = 00,
        ["Behavior"] = true,
        ["ToHand"] = false,
        ["OnShoulder"] = true,
        ["CanHuntSmallAnimal"] = false,        --Dont use on Birds Animals
        ["CanSearchAnimals"] = false,        --Dont use on Birds Animals
        ["CanCallToMe"] = false,        --Dont use on Birds Animals
        ["CanAttackOnPed"] = false,        --Dont use on Birds Animals

        ["Command_1"] = {0, 'manger', 'EAT', 2},
        ["Command_2"] = {0, 'boire', 'DRINK', 2},
    },
    [8] =  {
        ["JobStore"] = {"annimalerie"},
        ["Model"] = "a_c_rooster_01",
        ["Name"] = "Corbeau",
        ["Skin"] = 3,
        ["Dolar"] = 30,
        ["Gold"] = 00,
        ["Behavior"] = true,
        ["ToHand"] = false,
        ["OnShoulder"] = true,
        ["CanHuntSmallAnimal"] = false,        --Dont use on Birds Animals
        ["CanSearchAnimals"] = false,        --Dont use on Birds Animals
        ["CanCallToMe"] = false,        --Dont use on Birds Animals
        ["CanAttackOnPed"] = false,        --Dont use on Birds Animals

        ["Command_1"] = {0, 'manger', 'EAT', 2},
        ["Command_2"] = {0, 'boire', 'DRINK', 2},
    },
    [9] =  {
        ["JobStore"] = {"annimalerie"},
        ["Model"] = "a_c_gilamonster_01",
        ["Name"] = "Corbeau",
        ["Skin"] = 3,
        ["Dolar"] = 30,
        ["Gold"] = 00,
        ["Behavior"] = true,
        ["ToHand"] = false,
        ["OnShoulder"] = true,
        ["CanHuntSmallAnimal"] = false,        --Dont use on Birds Animals
        ["CanSearchAnimals"] = false,        --Dont use on Birds Animals
        ["CanCallToMe"] = false,        --Dont use on Birds Animals
        ["CanAttackOnPed"] = false,        --Dont use on Birds Animals

        ["Command_1"] = {0, 'manger', 'EAT', 2},
        ["Command_2"] = {0, 'boire', 'DRINK', 2},
    },
    [10] =  {
        ["JobStore"] = {"annimalerie"},
        ["Model"] = "a_c_crab_01",
        ["Name"] = "Corbeau",
        ["Skin"] = 3,
        ["Dolar"] = 30,
        ["Gold"] = 00,
        ["Behavior"] = true,
        ["ToHand"] = false,
        ["OnShoulder"] = true,
        ["CanHuntSmallAnimal"] = false,        --Dont use on Birds Animals
        ["CanSearchAnimals"] = false,        --Dont use on Birds Animals
        ["CanCallToMe"] = false,        --Dont use on Birds Animals
        ["CanAttackOnPed"] = false,        --Dont use on Birds Animals

        ["Command_1"] = {0, 'manger', 'EAT', 2},
        ["Command_2"] = {0, 'boire', 'DRINK', 2},
    },
        --[[
    [1] =  {
        ["supporter"] = 1,
        ["JobStore"] = {"annimalerie"},
        ["Model"] = "A_C_DogHusky_01",
        ["Name"] = "Husky",
        ["Skin"] = 3,
        ["Dolar"] = 30,
        ["Gold"] = 100,
        ["Behavior"] = false,
        ["ToHand"] = true,
        ["OnShoulder"] = false,
        ["CanHuntSmallAnimal"] = true,
        ["CanSearchAnimals"] = true,
        ["CanCallToMe"] = true,
        ["CanAttackOnPed"] = true,
        --Max 12 commands
        --         Unlock level | Name | Scenario | Get Skill in level (like if he buy pet -> get automaticaly 2 level skill)
        ["Command_1"] = {0, 'Eating', 'WORLD_ANIMAL_DOG_EATING_GROUND', 2},
        ["Command_2"] = {0, 'Drinking', 'WORLD_ANIMAL_DOG_DRINK_GROUND', 2},
        ["Command_3"] = {1, 'Bakring down', 'WORLD_ANIMAL_DOG_BARKING_GROUND', 0},
        ["Command_4"] = {2, 'Play on ground', 'WORLD_ANIMAL_DOG_ROLL_GROUND', 0},
        ["Command_5"] = {3, 'Barking up', 'WORLD_ANIMAL_DOG_BARKING_UP', 0},
        ["Command_6"] = {4, 'Bark glowl', 'WORLD_ANIMAL_DOG_BARK_GROWL', 0},
        ["Command_7"] = {5, 'Begging', 'WORLD_ANIMAL_DOG_BEGGING', 0},
        ["Command_8"] = {6, 'Resting', 'WORLD_ANIMAL_DOG_RESTING', 0},
        ["Command_9"] = {7, 'Mark territory', 'WORLD_ANIMAL_DOG_MARK_TERRITORY_A', 0},
        ["Command_10"] = {8, 'HOwling sitting', 'WORLD_ANIMAL_DOG_HOWLING_SITTING', 0},
        ["Command_11"] = {9, 'Digging', 'WORLD_ANIMAL_DOG_DIGGING', 0},
        ["Command_12"] = {10, 'Sitting', 'WORLD_ANIMAL_DOG_SITTING', 0},
    },
	[2] =  {
        ["JobStore"] = {"annimalerie"},
        ["Model"] = "A_C_DogRufus_01",
        ["Name"] = "Rufus",
        ["Skin"] = 3,
        ["Dolar"] = 30,
        ["Gold"] = 100,
        ["Behavior"] = false,
        ["ToHand"] = true,
        ["OnShoulder"] = false,
        ["CanHuntSmallAnimal"] = true,
        ["CanSearchAnimals"] = true,
        ["CanCallToMe"] = true,
        ["CanAttackOnPed"] = true,

        ["Command_1"] = {0, 'Eating', 'WORLD_ANIMAL_DOG_EATING_GROUND', 2},
        ["Command_2"] = {0, 'Drinking', 'WORLD_ANIMAL_DOG_DRINK_GROUND', 2},
        ["Command_3"] = {1, 'Bakring down', 'WORLD_ANIMAL_DOG_BARKING_GROUND', 0},
        ["Command_4"] = {2, 'Play on ground', 'WORLD_ANIMAL_DOG_ROLL_GROUND', 0},
        ["Command_5"] = {3, 'Barking up', 'WORLD_ANIMAL_DOG_BARKING_UP', 0},
        ["Command_6"] = {4, 'Bark glowl', 'WORLD_ANIMAL_DOG_BARK_GROWL', 0},
        ["Command_7"] = {5, 'Begging', 'WORLD_ANIMAL_DOG_BEGGING', 0},
        ["Command_8"] = {6, 'Resting', 'WORLD_ANIMAL_DOG_RESTING', 0},
        ["Command_9"] = {7, 'Mark territory', 'WORLD_ANIMAL_DOG_MARK_TERRITORY_A', 0},
        ["Command_10"] = {8, 'HOwling sitting', 'WORLD_ANIMAL_DOG_HOWLING_SITTING', 0},
        ["Command_11"] = {9, 'Digging', 'WORLD_ANIMAL_DOG_DIGGING', 0},
        ["Command_12"] = {10, 'Sitting', 'WORLD_ANIMAL_DOG_SITTING', 0},
    },
	[3] =  {
        ["JobStore"] = {"annimalerie"},
        ["Model"] = "A_C_DogLab_01",
        ["Name"] = "Labrador",
        ["Skin"] = 3,
        ["Dolar"] = 30,
        ["Gold"] = 100,
        ["Behavior"] = false,
        ["ToHand"] = true,
        ["OnShoulder"] = false,
        ["CanHuntSmallAnimal"] = true,
        ["CanSearchAnimals"] = true,
        ["CanCallToMe"] = true,
        ["CanAttackOnPed"] = true,

        ["Command_1"] = {0, 'Eating', 'WORLD_ANIMAL_DOG_EATING_GROUND', 2},
        ["Command_2"] = {0, 'Drinking', 'WORLD_ANIMAL_DOG_DRINK_GROUND', 2},
        ["Command_3"] = {1, 'Bakring down', 'WORLD_ANIMAL_DOG_BARKING_GROUND', 0},
        ["Command_4"] = {2, 'Play on ground', 'WORLD_ANIMAL_DOG_ROLL_GROUND', 0},
        ["Command_5"] = {3, 'Barking up', 'WORLD_ANIMAL_DOG_BARKING_UP', 0},
        ["Command_6"] = {4, 'Bark glowl', 'WORLD_ANIMAL_DOG_BARK_GROWL', 0},
        ["Command_7"] = {5, 'Begging', 'WORLD_ANIMAL_DOG_BEGGING', 0},
        ["Command_8"] = {6, 'Resting', 'WORLD_ANIMAL_DOG_RESTING', 0},
        ["Command_9"] = {7, 'Mark territory', 'WORLD_ANIMAL_DOG_MARK_TERRITORY_A', 0},
        ["Command_10"] = {8, 'HOwling sitting', 'WORLD_ANIMAL_DOG_HOWLING_SITTING', 0},
        ["Command_11"] = {9, 'Digging', 'WORLD_ANIMAL_DOG_DIGGING', 0},
        ["Command_12"] = {10, 'Sitting', 'WORLD_ANIMAL_DOG_SITTING', 0},
    },
	[4] =  {
        ["JobStore"] = {"annimalerie"},
        ["Model"] = "A_C_DogBluetickCoonhound_01",
        ["Name"] = "Coonhound",
        ["Skin"] = 3,
        ["Dolar"] = 30,
        ["Gold"] = 100,
        ["Behavior"] = false,
        ["ToHand"] = true,
        ["OnShoulder"] = false,
        ["CanHuntSmallAnimal"] = true,
        ["CanSearchAnimals"] = true,
        ["CanCallToMe"] = true,
        ["CanAttackOnPed"] = true,

        ["Command_1"] = {0, 'Eating', 'WORLD_ANIMAL_DOG_EATING_GROUND', 2},
        ["Command_2"] = {0, 'Drinking', 'WORLD_ANIMAL_DOG_DRINK_GROUND', 2},
        ["Command_3"] = {1, 'Bakring down', 'WORLD_ANIMAL_DOG_BARKING_GROUND', 0},
        ["Command_4"] = {2, 'Play on ground', 'WORLD_ANIMAL_DOG_ROLL_GROUND', 0},
        ["Command_5"] = {3, 'Barking up', 'WORLD_ANIMAL_DOG_BARKING_UP', 0},
        ["Command_6"] = {4, 'Bark glowl', 'WORLD_ANIMAL_DOG_BARK_GROWL', 0},
        ["Command_7"] = {5, 'Begging', 'WORLD_ANIMAL_DOG_BEGGING', 0},
        ["Command_8"] = {6, 'Resting', 'WORLD_ANIMAL_DOG_RESTING', 0},
        ["Command_9"] = {7, 'Mark territory', 'WORLD_ANIMAL_DOG_MARK_TERRITORY_A', 0},
        ["Command_10"] = {8, 'HOwling sitting', 'WORLD_ANIMAL_DOG_HOWLING_SITTING', 0},
        ["Command_11"] = {9, 'Digging', 'WORLD_ANIMAL_DOG_DIGGING', 0},
        ["Command_12"] = {10, 'Sitting', 'WORLD_ANIMAL_DOG_SITTING', 0},
    },
	[5] =  {
        ["JobStore"] = {"unemployed"},
        ["Model"] = "A_C_DogCollie_01",
        ["Name"] = "Collie",
        ["Skin"] = 3,
        ["Dolar"] = 30,
        ["Gold"] = 100,
        ["Behavior"] = false,
        ["ToHand"] = true,
        ["OnShoulder"] = false,
        ["CanHuntSmallAnimal"] = true,
        ["CanSearchAnimals"] = true,
        ["CanCallToMe"] = true,
        ["CanAttackOnPed"] = true,


        ["Command_1"] = {0, 'Eating', 'WORLD_ANIMAL_DOG_EATING_GROUND', 2},
        ["Command_2"] = {0, 'Drinking', 'WORLD_ANIMAL_DOG_DRINK_GROUND', 2},
        ["Command_3"] = {1, 'Bakring down', 'WORLD_ANIMAL_DOG_BARKING_GROUND', 0},
        ["Command_4"] = {2, 'Play on ground', 'WORLD_ANIMAL_DOG_ROLL_GROUND', 0},
        ["Command_5"] = {3, 'Barking up', 'WORLD_ANIMAL_DOG_BARKING_UP', 0},
        ["Command_6"] = {4, 'Bark glowl', 'WORLD_ANIMAL_DOG_BARK_GROWL', 0},
        ["Command_7"] = {5, 'Begging', 'WORLD_ANIMAL_DOG_BEGGING', 0},
        ["Command_8"] = {6, 'Resting', 'WORLD_ANIMAL_DOG_RESTING', 0},
        ["Command_9"] = {7, 'Mark territory', 'WORLD_ANIMAL_DOG_MARK_TERRITORY_A', 0},
        ["Command_10"] = {8, 'HOwling sitting', 'WORLD_ANIMAL_DOG_HOWLING_SITTING', 0},
        ["Command_11"] = {9, 'Digging', 'WORLD_ANIMAL_DOG_DIGGING', 0},
        ["Command_12"] = {10, 'Sitting', 'WORLD_ANIMAL_DOG_SITTING', 0},
    },
	[6] =  {
        ["JobStore"] = {"annimalerie"},
        ["Model"] = "A_C_DogChesBayRetriever_01",
        ["Name"] = "Retriever",
        ["Skin"] = 3,
        ["Dolar"] = 30,
        ["Gold"] = 100,
        ["Behavior"] = false,
        ["ToHand"] = true,
        ["OnShoulder"] = false,
        ["CanHuntSmallAnimal"] = true,
        ["CanSearchAnimals"] = true,
        ["CanCallToMe"] = true,
        ["CanAttackOnPed"] = true,

        ["Command_1"] = {0, 'Eating', 'WORLD_ANIMAL_DOG_EATING_GROUND', 2},
        ["Command_2"] = {0, 'Drinking', 'WORLD_ANIMAL_DOG_DRINK_GROUND', 2},
        ["Command_3"] = {1, 'Bakring down', 'WORLD_ANIMAL_DOG_BARKING_GROUND', 0},
        ["Command_4"] = {2, 'Play on ground', 'WORLD_ANIMAL_DOG_ROLL_GROUND', 0},
        ["Command_5"] = {3, 'Barking up', 'WORLD_ANIMAL_DOG_BARKING_UP', 0},
        ["Command_6"] = {4, 'Bark glowl', 'WORLD_ANIMAL_DOG_BARK_GROWL', 0},
        ["Command_7"] = {5, 'Begging', 'WORLD_ANIMAL_DOG_BEGGING', 0},
        ["Command_8"] = {6, 'Resting', 'WORLD_ANIMAL_DOG_RESTING', 0},
        ["Command_9"] = {7, 'Mark territory', 'WORLD_ANIMAL_DOG_MARK_TERRITORY_A', 0},
        ["Command_10"] = {8, 'HOwling sitting', 'WORLD_ANIMAL_DOG_HOWLING_SITTING', 0},
        ["Command_11"] = {9, 'Digging', 'WORLD_ANIMAL_DOG_DIGGING', 0},
        ["Command_12"] = {10, 'Sitting', 'WORLD_ANIMAL_DOG_SITTING', 0},
    },
	[7] =  {
        ["JobStore"] = {"annimalerie"},
        ["Model"] = "A_C_DogAmericanFoxhound_01",
        ["Name"] = "FoxHound",
        ["Skin"] = 3,
        ["Dolar"] = 30,
        ["Gold"] = 100,
        ["Behavior"] = false,
        ["ToHand"] = true,
        ["OnShoulder"] = false,
        ["CanHuntSmallAnimal"] = true,
        ["CanSearchAnimals"] = true,
        ["CanCallToMe"] = true,
        ["CanAttackOnPed"] = true,

        ["Command_1"] = {0, 'Eating', 'WORLD_ANIMAL_DOG_EATING_GROUND', 2},
        ["Command_2"] = {0, 'Drinking', 'WORLD_ANIMAL_DOG_DRINK_GROUND', 2},
        ["Command_3"] = {1, 'Bakring down', 'WORLD_ANIMAL_DOG_BARKING_GROUND', 0},
        ["Command_4"] = {2, 'Play on ground', 'WORLD_ANIMAL_DOG_ROLL_GROUND', 0},
        ["Command_5"] = {3, 'Barking up', 'WORLD_ANIMAL_DOG_BARKING_UP', 0},
        ["Command_6"] = {4, 'Bark glowl', 'WORLD_ANIMAL_DOG_BARK_GROWL', 0},
        ["Command_7"] = {5, 'Begging', 'WORLD_ANIMAL_DOG_BEGGING', 0},
        ["Command_8"] = {6, 'Resting', 'WORLD_ANIMAL_DOG_RESTING', 0},
        ["Command_9"] = {7, 'Mark territory', 'WORLD_ANIMAL_DOG_MARK_TERRITORY_A', 0},
        ["Command_10"] = {8, 'HOwling sitting', 'WORLD_ANIMAL_DOG_HOWLING_SITTING', 0},
        ["Command_11"] = {9, 'Digging', 'WORLD_ANIMAL_DOG_DIGGING', 0},
        ["Command_12"] = {10, 'Sitting', 'WORLD_ANIMAL_DOG_SITTING', 0},
    },
	[8] =  {
        ["JobStore"] = {"annimalerie"},
        ["Model"] = "a_c_dogaustraliansheperd_01",
        ["Name"] = "Sheperd",
        ["Skin"] = 3,
        ["Dolar"] = 30,
        ["Gold"] = 100,
        ["Behavior"] = false,
        ["ToHand"] = true,
        ["OnShoulder"] = false,
        ["CanHuntSmallAnimal"] = true,
        ["CanSearchAnimals"] = true,
        ["CanCallToMe"] = true,
        ["CanAttackOnPed"] = true,

        ["Command_1"] = {0, 'Eating', 'WORLD_ANIMAL_DOG_EATING_GROUND', 2},
        ["Command_2"] = {0, 'Drinking', 'WORLD_ANIMAL_DOG_DRINK_GROUND', 2},
        ["Command_3"] = {1, 'Bakring down', 'WORLD_ANIMAL_DOG_BARKING_GROUND', 0},
        ["Command_4"] = {2, 'Play on ground', 'WORLD_ANIMAL_DOG_ROLL_GROUND', 0},
        ["Command_5"] = {3, 'Barking up', 'WORLD_ANIMAL_DOG_BARKING_UP', 0},
        ["Command_6"] = {4, 'Bark glowl', 'WORLD_ANIMAL_DOG_BARK_GROWL', 0},
        ["Command_7"] = {5, 'Begging', 'WORLD_ANIMAL_DOG_BEGGING', 0},
        ["Command_8"] = {6, 'Resting', 'WORLD_ANIMAL_DOG_RESTING', 0},
        ["Command_9"] = {7, 'Mark territory', 'WORLD_ANIMAL_DOG_MARK_TERRITORY_A', 0},
        ["Command_10"] = {8, 'HOwling sitting', 'WORLD_ANIMAL_DOG_HOWLING_SITTING', 0},
        ["Command_11"] = {9, 'Digging', 'WORLD_ANIMAL_DOG_DIGGING', 0},
        ["Command_12"] = {10, 'Sitting', 'WORLD_ANIMAL_DOG_SITTING', 0},
    },
	[9] =  {
        ["JobStore"] = {"annimalerie"},
        ["Model"] = "a_c_doghobo_01",
        ["Name"] = "Hobo",
        ["Skin"] = 3,
        ["Dolar"] = 30,
        ["Gold"] = 100,
        ["Behavior"] = false,
        ["ToHand"] = true,
        ["OnShoulder"] = false,
        ["CanHuntSmallAnimal"] = true,
        ["CanSearchAnimals"] = true,
        ["CanCallToMe"] = true,
        ["CanAttackOnPed"] = true,

        ["Command_1"] = {0, 'Eating', 'WORLD_ANIMAL_DOG_EATING_GROUND', 2},
        ["Command_2"] = {0, 'Drinking', 'WORLD_ANIMAL_DOG_DRINK_GROUND', 2},
        ["Command_3"] = {1, 'Bakring down', 'WORLD_ANIMAL_DOG_BARKING_GROUND', 0},
        ["Command_4"] = {2, 'Play on ground', 'WORLD_ANIMAL_DOG_ROLL_GROUND', 0},
        ["Command_5"] = {3, 'Barking up', 'WORLD_ANIMAL_DOG_BARKING_UP', 0},
        ["Command_6"] = {4, 'Bark glowl', 'WORLD_ANIMAL_DOG_BARK_GROWL', 0},
        ["Command_7"] = {5, 'Begging', 'WORLD_ANIMAL_DOG_BEGGING', 0},
        ["Command_8"] = {6, 'Resting', 'WORLD_ANIMAL_DOG_RESTING', 0},
        ["Command_9"] = {7, 'Mark territory', 'WORLD_ANIMAL_DOG_MARK_TERRITORY_A', 0},
        ["Command_10"] = {8, 'HOwling sitting', 'WORLD_ANIMAL_DOG_HOWLING_SITTING', 0},
        ["Command_11"] = {9, 'Digging', 'WORLD_ANIMAL_DOG_DIGGING', 0},
        ["Command_12"] = {10, 'Sitting', 'WORLD_ANIMAL_DOG_SITTING', 0},
    },
	[10] =  {
        ["JobStore"] = {"annimalerie"},
        ["Model"] = "a_c_dogcatahoulacur_01",
        ["Name"] = "Catahoula",
        ["Skin"] = 3,
        ["Dolar"] = 30,
        ["Gold"] = 100,
        ["Behavior"] = false,
        ["ToHand"] = true,
        ["OnShoulder"] = false,
        ["CanHuntSmallAnimal"] = true,
        ["CanSearchAnimals"] = true,
        ["CanCallToMe"] = true,
        ["CanAttackOnPed"] = true,

        ["Command_1"] = {0, 'Eating', 'WORLD_ANIMAL_DOG_EATING_GROUND', 2},
        ["Command_2"] = {0, 'Drinking', 'WORLD_ANIMAL_DOG_DRINK_GROUND', 2},
        ["Command_3"] = {1, 'Bakring down', 'WORLD_ANIMAL_DOG_BARKING_GROUND', 0},
        ["Command_4"] = {2, 'Play on ground', 'WORLD_ANIMAL_DOG_ROLL_GROUND', 0},
        ["Command_5"] = {3, 'Barking up', 'WORLD_ANIMAL_DOG_BARKING_UP', 0},
        ["Command_6"] = {4, 'Bark glowl', 'WORLD_ANIMAL_DOG_BARK_GROWL', 0},
        ["Command_7"] = {5, 'Begging', 'WORLD_ANIMAL_DOG_BEGGING', 0},
        ["Command_8"] = {6, 'Resting', 'WORLD_ANIMAL_DOG_RESTING', 0},
        ["Command_9"] = {7, 'Mark territory', 'WORLD_ANIMAL_DOG_MARK_TERRITORY_A', 0},
        ["Command_10"] = {8, 'HOwling sitting', 'WORLD_ANIMAL_DOG_HOWLING_SITTING', 0},
        ["Command_11"] = {9, 'Digging', 'WORLD_ANIMAL_DOG_DIGGING', 0},
        ["Command_12"] = {10, 'Sitting', 'WORLD_ANIMAL_DOG_SITTING', 0},
    },
	[11] =  {
        ["JobStore"] = {"annimalerie"},
        ["Model"] = "a_c_dogpoodle_01",
        ["Name"] = "Poodle",
        ["Skin"] = 3,
        ["Dolar"] = 30,
        ["Gold"] = 100,
        ["Behavior"] = false,
        ["ToHand"] = true,
        ["OnShoulder"] = false,
        ["CanHuntSmallAnimal"] = true,
        ["CanSearchAnimals"] = true,
        ["CanCallToMe"] = true,
        ["CanAttackOnPed"] = true,

        ["Command_1"] = {0, 'Eating', 'WORLD_ANIMAL_DOG_EATING_GROUND', 2},
        ["Command_2"] = {0, 'Drinking', 'WORLD_ANIMAL_DOG_DRINK_GROUND', 2},
        ["Command_3"] = {1, 'Bakring down', 'WORLD_ANIMAL_DOG_BARKING_GROUND', 0},
        ["Command_4"] = {2, 'Play on ground', 'WORLD_ANIMAL_DOG_ROLL_GROUND', 0},
        ["Command_5"] = {3, 'Barking up', 'WORLD_ANIMAL_DOG_BARKING_UP', 0},
        ["Command_6"] = {4, 'Bark glowl', 'WORLD_ANIMAL_DOG_BARK_GROWL', 0},
        ["Command_7"] = {5, 'Begging', 'WORLD_ANIMAL_DOG_BEGGING', 0},
        ["Command_8"] = {6, 'Resting', 'WORLD_ANIMAL_DOG_RESTING', 0},
        ["Command_9"] = {7, 'Mark territory', 'WORLD_ANIMAL_DOG_MARK_TERRITORY_A', 0},
        ["Command_10"] = {8, 'HOwling sitting', 'WORLD_ANIMAL_DOG_HOWLING_SITTING', 0},
        ["Command_11"] = {9, 'Digging', 'WORLD_ANIMAL_DOG_DIGGING', 0},
        ["Command_12"] = {10, 'Sitting', 'WORLD_ANIMAL_DOG_SITTING', 0},
    },
	[12] =  {
        ["JobStore"] = {"annimalerie"},
        ["Model"] = "A_C_Cat_01",
        ["Name"] = "Cat",
        ["Skin"] = 3,
        ["Dolar"] = 30,
        ["Gold"] = 100,
        ["Behavior"] = false,
        ["ToHand"] = true,
        ["OnShoulder"] = false,
        ["CanHuntSmallAnimal"] = true,
        ["CanSearchAnimals"] = true,
        ["CanCallToMe"] = true,
        ["CanAttackOnPed"] = true,

        ["Command_1"] = {0, 'Eating', 'WORLD_ANIMAL_CAT_EATING', 2},
        ["Command_2"] = {0, 'Drinking', 'WORLD_ANIMAL_CAT_DRINKING', 2},
        ["Command_3"] = {1, 'Claw sharpen', 'WORLD_ANIMAL_CAT_CLAW_SHARPEN', 0},
        ["Command_4"] = {2, 'Resting', 'WORLD_ANIMAL_CAT_RESTING', 0},
        ["Command_5"] = {3, 'Sitting', 'WORLD_ANIMAL_CAT_SITTING', 0},
        ["Command_6"] = {4, 'Sleeping', 'WORLD_ANIMAL_CAT_SLEEPING', 0},
    },
    [12] =  {
        ["JobStore"] = {"annimalerie"},
        ["Model"] = "a_c_bear_01",
        ["Name"] = "Bear",
        ["Skin"] = 3,
        ["Dolar"] = 30,
        ["Gold"] = 100,
        ["Behavior"] = true,
        ["ToHand"] = true,
        ["OnShoulder"] = false,
        ["CanHuntSmallAnimal"] = true,
        ["CanSearchAnimals"] = true,
        ["CanCallToMe"] = true,
        ["CanAttackOnPed"] = true,

        ["Command_1"] = {0, 'Eating', 'WORLD_ANIMAL_CAT_EATING', 2},
        ["Command_2"] = {0, 'Drinking', 'WORLD_ANIMAL_CAT_DRINKING', 2},
        ["Command_3"] = {1, 'Claw sharpen', 'WORLD_ANIMAL_CAT_CLAW_SHARPEN', 0},
        ["Command_4"] = {2, 'Resting', 'WORLD_ANIMAL_CAT_RESTING', 0},
        ["Command_5"] = {3, 'Sitting', 'WORLD_ANIMAL_CAT_SITTING', 0},
        ["Command_6"] = {4, 'Sleeping', 'WORLD_ANIMAL_CAT_SLEEPING', 0},
    },
    [13] =  {
        ["JobStore"] = {"annimalerie"},
        ["Model"] = "a_c_deer_01",
        ["Name"] = "Deer",
        ["Skin"] = 3,
        ["Dolar"] = 30,
        ["Gold"] = 100,
        ["Behavior"] = true,
        ["ToHand"] = true,
        ["OnShoulder"] = false,
        ["CanHuntSmallAnimal"] = true,
        ["CanSearchAnimals"] = true,
        ["CanCallToMe"] = true,
        ["CanAttackOnPed"] = true,
   
        ["Command_1"] = {0, 'Eating', 'WORLD_ANIMAL_CAT_EATING', 2},
        ["Command_2"] = {0, 'Drinking', 'WORLD_ANIMAL_CAT_DRINKING', 2},
        ["Command_3"] = {1, 'Claw sharpen', 'WORLD_ANIMAL_CAT_CLAW_SHARPEN', 0},
        ["Command_4"] = {2, 'Resting', 'WORLD_ANIMAL_CAT_RESTING', 0},
        ["Command_5"] = {3, 'Sitting', 'WORLD_ANIMAL_CAT_SITTING', 0},
        ["Command_6"] = {4, 'Sleeping', 'WORLD_ANIMAL_CAT_SLEEPING', 0},
    },
    [14] =  {
        ["JobStore"] = {"annimalerie"},
        ["Model"] = "a_c_squirrel_01",
        ["Name"] = "Squirrel",
        ["Skin"] = 3,
        ["Dolar"] = 30,
        ["Gold"] = 100,
        ["Behavior"] = true,
        ["ToHand"] = false,
        ["OnShoulder"] = true,
        ["CanHuntSmallAnimal"] = false,
        ["CanSearchAnimals"] = false,
        ["CanCallToMe"] = true,
        ["CanAttackOnPed"] = false,
   
        ["Command_1"] = {0, 'Eating', 'WORLD_ANIMAL_CAT_EATING', 2},
        ["Command_2"] = {0, 'Drinking', 'WORLD_ANIMAL_CAT_DRINKING', 2},
        ["Command_3"] = {1, 'Claw sharpen', 'WORLD_ANIMAL_CAT_CLAW_SHARPEN', 0},
        ["Command_4"] = {2, 'Resting', 'WORLD_ANIMAL_CAT_RESTING', 0},
        ["Command_5"] = {3, 'Sitting', 'WORLD_ANIMAL_CAT_SITTING', 0},
        ["Command_6"] = {4, 'Sleeping', 'WORLD_ANIMAL_CAT_SLEEPING', 0},
    },
    [15] =  {
        ["JobStore"] = {"unemployed"},
        ["Model"] = "a_c_parrot_01",
        ["Name"] = "Parrot",
        ["Skin"] = 3,
        ["Dolar"] = 30,
        ["Gold"] = 100,
        ["Behavior"] = true,
        ["ToHand"] = false,
        ["OnShoulder"] = true,
        ["CanHuntSmallAnimal"] = false,        --Dont use on Birds Animals
        ["CanSearchAnimals"] = false,        --Dont use on Birds Animals
        ["CanCallToMe"] = false,        --Dont use on Birds Animals
        ["CanAttackOnPed"] = false,        --Dont use on Birds Animals

        ["Command_1"] = {0, '�ran�', 'EAT', 2},
        ["Command_2"] = {0, 'Pit�', 'DRINK', 2},
    },
    [16] =  {
        ["JobStore"] = {"annimalerie"},
        ["Model"] = "a_c_sparrow_01",
        ["Name"] = "Sparrow",
        ["Skin"] = 3,
        ["Dolar"] = 30,
        ["Gold"] = 100,
        ["Behavior"] = true,
        ["ToHand"] = false,
        ["OnShoulder"] = true,
        ["CanHuntSmallAnimal"] = false,        --Dont use on Birds Animals
        ["CanSearchAnimals"] = false,        --Dont use on Birds Animals
        ["CanCallToMe"] = false,        --Dont use on Birds Animals
        ["CanAttackOnPed"] = false,        --Dont use on Birds Animals

        ["Command_1"] = {0, '�ran�', 'EAT', 2},
        ["Command_2"] = {0, 'Pit�', 'DRINK', 2},
    },
    [17] =  {
        ["JobStore"] = {"annimalerie"},
        ["Model"] = "a_c_eagle_01",
        ["Name"] = "Eagle",
        ["Skin"] = 3,
        ["Dolar"] = 30,
        ["Gold"] = 100,
        ["Behavior"] = true,
        ["ToHand"] = false,
        ["OnShoulder"] = true,
        ["CanHuntSmallAnimal"] = false,        --Dont use on Birds Animals
        ["CanSearchAnimals"] = false,        --Dont use on Birds Animals
        ["CanCallToMe"] = false,        --Dont use on Birds Animals
        ["CanAttackOnPed"] = false,        --Dont use on Birds Animals

        ["Command_1"] = {0, '�ran�', 'EAT', 2},
        ["Command_2"] = {0, 'Pit�', 'DRINK', 2},
    },
    ]]
    
}

Config.Language = {
    [1] = "Pet store",
    [2] = "Pets get exp : ",
    [3] = "You must have called sick pet",
    [4] = "You mut be near sick pet",
    [5] = "Pets was unsummoned",
    [6] = "You cant call dead pet",
    [7] = "You call pet",
    [8] = "You dont have selected pet",
    [9] = "You give eat to your pet",
    [10] = "You give drink to your pet",
    [11] = "Pet get skill : ",
    [12] = " in ",
    [13] = "Pet make skill, but nothing learn",
    [14] = "Pet nothing learn.",
    [15] = "Old",
    [16] = "Year",
    [17] = "Exp",
    [18] = "You cant drink or eat too dead pets.",
    [19] = "Unsummon pet",
    [20] = "Summon pet",
    [22] = "Call range, skills etc.",
    [23] = "Pet config",
    [24] = "Stats",
    [25] = "Type",
    [28] = "Year ",
    [29] = "Pets",
    [30] = "Select your pet for call",
    [31] = "First you must unsummon pets",
    [32] = "You select pets",
    [33] = "You must put down pets",
    [34] = "Running range",
    [35] = "Call to me",
    [36] = "Put down",
    [37] = "Take up to hand",
    [38] = "Search dead animal",
    [39] = "Pet now anything making. You must wait",
    [40] = "Accept",
    [41] = "You buy for ",
    [42] = "Name ",
    [43] = "Access",
    [44] = "Give pet ID :",
    [45] = "Something is wrong",
    [46] = "Delete your pet with ID : ",
    [47] = "State",
    [49] = "Beginner",
    [50] = "Medium",
    [51] = "Profesional",
    [550] = "Do you like buy for $",
    [551] = "Do you like buy for G",
    [54] = "Name",
    [55] = "You like buy ",
    [56] = "You dont have any eat or drink.",
    [57] = "You buy pet",
    [58] = "You dont have money",
    [59] = "You select bad check price",
    [60] = "Is Live",
    [61] = "Is Dead",
    [62] = "Pet list",
    [63] = "Left / Right",
    [64] = "Call to me",
    [65] = "Search dead animals",
    [66] = "Do you liek select this pet : ",
    [67] = "First you must call your pet",
    [68] = "Yes",
    [69] = "No",
    [70] = "Take on shoulder",
    [71] = "Write player id",
    [72] = "New name",
    [73] = "Attack",
    [74] = "Take dead animal to me",
   [80] = "Store is closed now. Come back at mornign ???",
}


--You can use here GetHashKey("animal"),
Config.Animals = {
    [1] = -1910795227,
    [2] = -930822792,
    [3] = 831859211,   
    [4] = 1095117488,
    [5] = -930822792,
    [6] = -541762431,
    [7] = 1465438313,
    [8] = 1095117488,
    [9] = 1458540991,
    [10] = 1465438313,
    [11] = -1134449699,
    [12] = -575340245,
    [13] = 386506078,
    [14] = -861544272,
    [15] = -564099192,
    [16] = 1104697660,
    [17] = 1459778951,
    [18] = -2145890973,
    [19] = -1003616053,
    [20] = 723190474,
    [21] = 1095117488,
    [22] = 1205982615,
    [23] = -2063183075,
    [24] = -2073130256,
    [25] = 1416324601,
    [26] = 1265966684,
    [27] = -1797450568,
    [28] = 2079703102,
    [29] = -164963696,
    [30] = -1076508705,
    [31] = 2023522846,
    [32] = -466687768,
    [33] = -575340245,
    [34] = -466054788,
    [35] = -2011226991,
    [36] = -166054593,
    [37] = 1104697660,
    [38] = 0000000000,
    [39] = -1211566332,
    [40] = 2105463796,
    [41] = -1414989025,
    [42] = -1170118274,
    [43] = 1502581273,
    [44] = -125323032,
    [45] = 1203222291,
    [46] = 740300135,
    [47] = -2054685425,
    [48] = -1610495764,
    [49] = -1028170431,
    [50] = -1523680261,
}