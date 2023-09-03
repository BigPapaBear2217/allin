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
Config.GoldRol = true

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
        ["Shop_Cam"] = {x = 1199.59, y = -7078.36, z = 113.96, h= 210.23},--X,Y,Z for position cam and "h" for Heading (use /make_coords cmd) where you looking -> heading
        ["Shop_Light"] = {x = -268.09, y = 695.26, z = 115.46, r= 4.0, i=75.0},--X,Y,Z, R=Range , I=Intensity light
        ["Shop_Dog_1"] = {x = 1203.96, y = -7081.07, z = 141.97, h=37.02},--X,Y,Z,  H -> Heading
        ["Shop_Dog_2"] = {x = 1203.96, y = -7081.07, z = 141.97, h=37.02},--X,Y,Z,  H -> Heading
    },
}

Config.enableInteractWithNpc = false
Config.useNPC = false
Config.useTimeLogic = false
Config.StableNPC = {
    [1] = {
        npc="u_m_m_bwmstablehand_01",
        coords={1195.37, -7078.4, 42.91, 92.08},
        timeStart=0,--Hours
        timeEnd=0--Hours
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
    [2] =  {
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
    },
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
    [5] =  {
        ["JobStore"] = {"annimalerie"},
        ["Model"] = "a_c_goat_01",
        ["Name"] = "Biquette",
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
    [7] =  {
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
	[2] =  {
        ["JobStore"] = {"annimalerie", "Anything"},
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
        ["JobStore"] = {"annimalerie", "Anything"},
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
        ["JobStore"] = {"annimalerie", "Anything"},
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
        ["JobStore"] = {"annimalerie"},
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
        ["JobStore"] = {"annimalerie"},
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
     [1] = "Animalerie",
     [2] = "Les familiers gagnent exp : ",
     [3] = "Vous avez dû appeler un animal malade",
     [4] = "Vous devez être à proximité d'un animal malade",
     [5] = "Les familiers n'ont pas été invoqués",
     [6] = "Vous ne pouvez pas appeler un animal mort",
     [7] = "Vous appelez animal de compagnie",
     [8] = "Vous n'avez pas sélectionné d'animal de compagnie",
     [9] = "Vous donnez à manger à votre animal",
     [10] = "Vous donnez à boire à votre animal",
     [11] = "Le familier obtient une compétence : ",
     [12] = " dans ",
     [13] = "Le familier fait des compétences, mais n'apprend rien",
     [14] = "Animer rien apprendre.",
     [15] = "Ancien",
     [16] = "Année",
     [17] = "Exp",
     [18] = "Vous ne pouvez pas boire ou manger trop d'animaux morts.",
     [19] = "Désinvoquer un familier",
     [20] = "Invoquer un familier",
     [22] = "Portée d'appel, compétences etc.",
     [23] = "Config animalier",
     [24] = "Statistiques",
     [25] = "Type",
     [28] = "Année",
     [29] = "Animaux domestiques",
     [30] = "Sélectionnez votre animal pour l'appel",
     [31] = "Vous devez d'abord désinvoquer des familiers",
     [32] = "Vous sélectionnez des animaux de compagnie",
     [33] = "Vous devez abattre les animaux de compagnie",
     [34] = "Plage de fonctionnement",
     [35] = "Appelle-moi",
     [36] = "Poser",
     [37] = "Prendre en main",
     [38] = "Rechercher un animal mort",
     [39] = "Caresse maintenant tout ce qui fait. Tu dois attendre",
     [40] = "Accepter",
     [41] = "Vous achetez pour",
     [42] = "Nom",
     [43] = "Accès",
     [44] = "Donnez l'identifiant de l'animal :",
     [45] = "Quelque chose ne va pas",
     [46] = "Supprimer votre animal avec ID : ",
     [47] = "Etat",
     [49] = "Débutant",
     [50] = "Moyen",
     [51] = "Professionnel",
     [550] = "Aimez-vous acheter pour $",
     [551] = "Aimez-vous acheter pour G",
     [54] = "Nom",
     [55] = "Vous aimez acheter",
     [56] = "Tu n'as rien à manger ni à boire.",
     [57] = "Vous achetez un animal de compagnie",
     [58] = "Vous n'avez pas d'argent",
     [59] = "Vous sélectionnez le prix du chèque sans provision",
     [60] = "Est en direct",
     [61] = "Est mort",
     [62] = "Liste des familiers",
     [63] = "Gauche / Droite",
     [64] = "Appelle-moi",
     [65] = "Rechercher les animaux morts",
     [66] = "Voulez-vous sélectionner cet animal : ",
     [67] = "Vous devez d'abord appeler votre animal de compagnie",
     [68] = "Oui",
     [69] = "Eh bien",
     [70] = "Prendre sur l'épaule",
     [71] = "Ecrire l'identifiant du joueur",
     [72] = "Nouveau nom",
     [73] = "Attaque",
     [74] = "Amenez-moi un animal mort",
     [80] = "Le magasin est fermé maintenant. Revenez demain matin ???",
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