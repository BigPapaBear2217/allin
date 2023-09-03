Config = {}

Config.Gum_Notify_NUI = true
Config.Image = "ecology"

Config.TimerForCounter = 900--This count your herbs in your client cache.  (seconds)
Config.DeleteAfterGatherAnimal = true
Config.RandomRewardCount = 0-- If its 0 disabled. This function make random reward count from herbs and animals

Config.Header = "Cueillette"
Config.YouPick = "Vous ramassez : "
Config.PickUp = "Vous recevez"

--Example you get 3 count from Wild Mint -> you here write 2. Now you get 2-3 counts from wild mint
Config.Herbs = {
    ["crp_cornstalks_bb_sim"] =  {
        blipSprite = -675651933,
        blipName = "Kukurice",
        coords = {
            {174.52, -189.88, 125.96, 15.0},
            {1294.60, -2149.03, 57.30, 15.0},
        },
        maxSpawn = 10,--How much props is cached
        propMax = 5,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.5,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"Corn", 1, "Maïs"},
        },
        animDict = "script_common@mth_generic_enters@give_item_satchel@rhand@generic@in_place",
        animPart = "enter_rf",
        animDur = 4500
    },

    ["rdr_bush_paradise_aa_sim"] =  {
        blipSprite = -675651933,
        blipName = "Indigo",
        coords = {
            {-3971.35, -2443.02, -9.07, 15.0},
            {-3489.94, -1942.30, 5.2, 15.0},
        },
        maxSpawn = 10,--How much props is cached
        propMax = 5,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.5,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"Indigo", 1, "Feuille d'indigotier"},
        },
        animDict = "mech_pickup@plant@berries",
        animPart = "base",
        animDur = 3000
    },

    ["s_milkweed01x"] =  {
        blipSprite = -675651933,
        blipName = "Chmel",
        coords = {
            {-2009.60, -1245.93, 113.30, 15.0},
            {2213.79, 125.79, 62.88, 15.0},
        },
        maxSpawn = 10,--How much props is cached
        propMax = 5,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.2,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"Hop", 1, "Houblon"},
        },
        animDict = "script_common@mth_generic_enters@give_item_satchel@rhand@generic@in_place",
        animPart = "enter_rf",
        animDur = 2000
    },

    ["crp_potato_aa_sim"] =  {
        blipSprite = -675651933,
        blipName = "Brambory",
        coords = {
            {946.92, -1070.28, 60.15, 15.0},
        },
        maxSpawn = 10,
        propMax = 5,
        canGatherMore = 5,
        grounded = 0.3,

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"Potato", 1, "Patate"},
        },
        animDict = "amb_misc@world_human_concertina_pickup@male_a@base",
        animPart = "base",
        animDur = 1000
    },

    ["crp_sugarcane_ac_sim"] =  {
        blipSprite = -675651933,
        blipName = "Cukrova trtina",
        coords = {
            {1543.63, -7047.65, 81.87, 15.0},
        },
        maxSpawn = 10,
        propMax = 5,
        canGatherMore = 1,
        grounded = 0.2,

        randomized = false,
        items = {
            {"Sugarcane_Seed", 1, "Graine de Canne à sucre"},
        },
        animDict = "script_common@mth_generic_enters@give_item_satchel@rhand@generic@in_place",
        animPart = "enter_rf",
        animDur = 2000
    },

    ["p_watermelon01x"] =  {
        blipSprite = -675651933,
        blipName = "Melouny",
        coords = {
            {891.64, -7140.65, 64.89, 15.0},
        },
        maxSpawn = 10,
        propMax = 5,
        canGatherMore = 1,
        grounded = 0.2,

        randomized = false,
        items = {
            {"Melone", 1, "Pasteque"},
        },
        animDict = "script_common@mth_generic_enters@give_item_satchel@rhand@generic@in_place",
        animPart = "enter_rf",
        animDur = 2000
    },

    ["p_tree_banana_01_crt"] =  {
        blipSprite = -675651933,
        blipName = "Banany",
        coords = {
            {1134.29, -7301.16, 72.39, 15.0},
            {686.94, -7476.93, 185.68, 15.0},
        },
        maxSpawn = 10,
        propMax = 5,
        canGatherMore = 1,
        grounded = 0.2,

        randomized = false,
        items = {
            {"Bannana", 1, "Banane"},
        },
        animDict = "mech_pickup@plant@orchid_tree",
        animPart = "base",
        animDur = 4500
    },

    ["rdr_bush_broad_aa_sim"] =  {
        blipSprite = 0,
        blipName = "Koka",
        coords = {
            {1621.03, -7050.09, 92.80, 15.0},
            {1412.68, -7424.38, 97.93, 15.0},
        },
        maxSpawn = 10,--How much props is cached
        propMax = 5,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.2,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"Coca", 1, "Feuille de cocaïne"},
        },
        animDict = "script_common@mth_generic_enters@give_item_satchel@rhand@generic@in_place",
        animPart = "enter_rf",
        animDur = 2000
    },
	
	["rdr_bush_tall_reeds_aa_sim"] =  {
        blipSprite = 0,
        blipName = "Obili",
        coords = {
            {1038.94, 217.62, 114.11, 15.0},
        },
        maxSpawn = 10,--How much props is cached
        propMax = 5,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.2,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"Grain", 1, "Blé"},
        },
        animDict = "script_common@mth_generic_enters@give_item_satchel@rhand@generic@in_place",
        animPart = "enter_rf",
        animDur = 2000
    },

    ["rdr_bush_hedgecore_aa"] =  {
        blipSprite = -675651933,
        blipName = "Guarmský tabák",
        coords = {
            {1621.03, -7050.09, 92.80, 15.0},
        },
        maxSpawn = 10,--How much props is cached
        propMax = 5,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.2,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"Guarma_Tobacco", 1, "Feuille de tabac"},
        },
        animDict = "script_common@mth_generic_enters@give_item_satchel@rhand@generic@in_place",
        animPart = "enter_rf",
        animDur = 2000
    },




    ["COMPOSITE_LOOTABLE_MILKWEED_DEF"] =  {
        blipSprite = -675651933,
        blipName = "Jahody",
        coords = {
            {-1247.84, -215.87, 98.56, 15.0},
            {-1852.62, 447.03, 114.40, 15.0},
        },
        maxSpawn = 10,
        propMax = 5,
        canGatherMore = 1,
        grounded = 0.0,

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"Strawberry", 1, "Fraise"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    },

    ["COMPOSITE_LOOTABLE_WILD_CARROT_DEF"] =  {
        blipSprite = -675651933,
        blipName = "Wild Carrot",
        coords = {
            {1118.69, 963.67, 128.78, 15.0},
            {-788.26, -850.73, 52.41, 15.0},
        },
        maxSpawn = 10,--How much props is cached
        propMax = 5,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"Wild_Carrot", 1, "Carotte sauvage"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    },

    ["COMPOSITE_LOOTABLE_INDIAN_TOBACCO_DEF"] =  {
        blipSprite = -675651933,
        blipName = "Indian Tobbaco",
        coords = {
            {2086.50, 817.83, 154.9, 15.0},
            {-2451.71, -2787.23, 71.19, 15.0},
        },
        maxSpawn = 10,--How much props is cached
        propMax = 5,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"Indian_Tobbaco", 1, "Tabac Indien"},
        },
        animDict = "",
        animPart = "",
        animDur = 0 
    },

    ["COMPOSITE_LOOTABLE_WILD_MINT_DEF"] =  {
        blipSprite = -675651933,
        blipName = "Wild mint",
        coords = {
            {2180.08, 1749.82, 119.01, 15.0},
            {129.51, 1203.05, 183.14, 15.0},
        },
        maxSpawn = 10,--How much props is cached
        propMax = 5,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"Wild_Mint", 1, "Menthe sauvage"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    },

    ["COMPOSITE_LOOTABLE_RAMS_HEAD_DEF"] =  {
        blipSprite = -675651933,
        blipName = "Rams Head",
        coords = {
            {2180.08, 1749.82, 119.01, 15.0},
            {129.51, 1203.05, 183.14, 15.0},
            
        },
        maxSpawn = 10,--How much props is cached
        propMax = 5,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"Rams_Head", 1, "Poule des bois"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    },

    ["COMPOSITE_LOOTABLE_PARASOL_MUSHROOM_DEF"] =  {
        blipSprite = -675651933,
        blipName = "Parasol Mushroom",
        coords = {
            {-3483.03, -2793.92, -4.80, 15.0},
            {-2885.62, -236.60, 186.55, 15.0},
        },
        maxSpawn = 10,--How much props is cached
        propMax = 5,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"Parasol_Mushroom", 1, "Coulemelle"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    },

    ["COMPOSITE_LOOTABLE_HUMMINGBIRD_SAGE_DEF"] =  {
        blipSprite = -675651933,
        blipName = "Hummingbird Sage",
        coords = {
            {-2175.12, -1755.21, 138.88, 15.0},
            {-1904.82, 739.04, 149.39, 15.0},
        },
        maxSpawn = 10,--How much props is cached
        propMax = 5,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"Hummingbird_Sage", 1, "Sauge du colibri"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    },
    ["COMPOSITE_LOOTABLE_EVERGREEN_HUCKLEBERRY_DEF"] =  {
        blipSprite = -675651933,
        blipName = "Evergreen Huckleberry",
        coords = {
            { 940.94, -453.47, 85.95, 15.0},
            {2761.00, 1980.98, 161.73, 15.0},
        },
        maxSpawn = 10,--How much props is cached
        propMax = 5,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"Evergreen_Huckleberry", 1, "Airelle ovale"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    },

    ["COMPOSITE_LOOTABLE_BLACK_BERRY_DEF"] =  {
        blipSprite = -675651933,
        blipName = "Boruvky",
        coords = {
            {-981.45, 176.43, 86.31, 15.0},
            {-1648.68, -845.93, 94.31, 15.0},
            {-1651.96, -1872.25, 80.97, 15.0},
            {1115.07, 33.68, 89.57, 15.0}, 
            {1200.83, -836.70, 79.55, 15.0},
            {1989.62, 421.65, 115.70, 15.0},
            {2289.05, 1446.60, 109.44, 15.0},
            {717.08, 1497.26, 194.54, 15.0},
        },
        maxSpawn = 10,--How much props is cached
        propMax = 5,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"Blueberry", 5, "Myrtille"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    },
    ["p_haybale01x"] =  {
        blipSprite = -675651933,
        blipName = "Foins",
        coords = {
            {1389.96, 288.64, 88.49, 20},
            {1389.96, 288.64, 88.49, 20},
            {1389.96, 288.64, 88.49, 20},
            {1389.96, 288.64, 88.49, 20},
            {1389.96, 288.64, 88.49, 20},
        },
        maxSpawn = 10,--How much props is cached
        propMax = 5,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"Hay", 5, "Foins"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    },
    ["bulrush_p"] =  {
        blipSprite = -675651933,
        blipName = "Jonc Commun",
        coords = {
            {2262.423095703125, 1624.8271484375, 84.95462036132812, 20},
        },
        maxSpawn = 10,--How much props is cached
        propMax = 10,--Spawn max props on limit
        canGatherMore = 2,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"Bulrush", 5, "Jonc"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    },
}

Config.Animals = {
    [GetHashKey("a_c_alligator_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"g_piece_de_cuir", 3, "Grande peau"},
        }
    },    
    [GetHashKey("a_c_alligator_03")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"g_piece_de_cuir", 3, "Grande peau"},
        }
    },   
    [GetHashKey("a_c_armadillo_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_badger_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_bat_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_bear_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"g_piece_de_cuir", 3, "Grande peau"},
        }
    },    
    [GetHashKey("a_c_bearblack_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"g_piece_de_cuir", 3, "Grande peau"},
        }
    },    
    [GetHashKey("a_c_beaver_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_bighornram_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_boar_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_buck_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"g_piece_de_cuir", 3, "Grande peau"},
        }
    },    
    [GetHashKey("a_c_buffalo_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"g_piece_de_cuir", 3, "Grande peau"},
        }
    },    
    [GetHashKey("a_c_bull_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"g_piece_de_cuir", 3, "Grande peau"},
        }
    },    
    [GetHashKey("a_c_cardinal_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_californiacondor_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_carolinaparakeet_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_cedarwaxwing_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_chicken_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_chipmunk_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_cougar_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"g_piece_de_cuir", 3, "Grande peau"},
        }
    },    
    [GetHashKey("a_c_cormorant_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_cow")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"g_piece_de_cuir", 3, "Grande peau"},
        }
    },    
    [GetHashKey("a_c_coyote_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_crab_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_cranewhooping_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_crow_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_deer_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"g_piece_de_cuir", 3, "Grande peau"},
            {"os", 3, "os"},
        }
    },    
    [GetHashKey("a_c_duck_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_eagle_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_egret_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_elk_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"g_piece_de_cuir", 3, "Grande peau"},
        }
    },    
    [GetHashKey("a_c_fox_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_frogbull_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_gilamonster_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"g_piece_de_cuir", 3, "Grande peau"},
        }
    },    
    [GetHashKey("a_c_goat_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"g_piece_de_cuir", 3, "Grande peau"},
        }
    },    
    [GetHashKey("a_c_goosecanada_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_hawk_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_heron_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_iguana_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_iguanadesert_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_javelina_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_loon_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_moose_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_muskrat_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"g_piece_de_cuir", 3, "Grande peau"},
        }
    },    
    [GetHashKey("a_c_oriole_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_owl_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_ox_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"g_piece_de_cuir", 3, "Grande peau"},
        }
    },    
    [GetHashKey("a_c_panther_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"g_piece_de_cuir", 3, "Grande peau"},
        }
    },    
    [GetHashKey("a_c_parrot_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_pelican_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_pheasant_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_pig_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_pigeon")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_possum_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"g_piece_de_cuir", 3, "Grande peau"},
        }
    },    
    [GetHashKey("a_c_prairiechicken_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_pronghorn_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_quail_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_rabbit_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_raccoon_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_rat_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_raven_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_redfootedbooby_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_robin_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_rooster_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_roseatespoonbill_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_seagull_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_sheep_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_skunk_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_snake_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"piece_de_cuir", 3, "Petite peau"},
            {"Snake_Poison", 3, "Poison de serpents"},
        }
    },    
    [GetHashKey("a_c_snakeblacktailrattle_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"piece_de_cuir", 3, "Petite peau"},
            {"Snake_Poison", 3, "Poison de serpents"},
        }
    },    
    [GetHashKey("a_c_snakeferdelance_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"piece_de_cuir", 3, "Petite peau"},
            {"Snake_Poison", 3, "Poison de serpents"},
        }
    },    
    [GetHashKey("a_c_snakewater_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"piece_de_cuir", 3, "Petite peau"},
            {"Snake_Poison", 3, "Poison de serpents"},
        }
    },    
    [GetHashKey("a_c_songbird_01")] =   {
            randomized = false,
            items = {
                {"Meat", 3, "Viande"},
                {"Feather", 3, "Plume"},
        },
    },    
    [GetHashKey("a_c_sparrow_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },
    [GetHashKey("a_c_squirrel_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_toad_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_turkey_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_turkeywild_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_turtlesnapping_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_vulture_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_wolf")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_wolf_medium")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_wolf_small")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("a_c_woodpecker_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("a_c_woodpecker_02")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("mp_a_c_alligator_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"g_piece_de_cuir", 3, "Grande peau"},
        }
    },    
    [GetHashKey("mp_a_c_beaver_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("mp_a_c_bighornram_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"g_piece_de_cuir", 3, "Grande peau"},
        }
    },    
    [GetHashKey("mp_a_c_boar_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"piece_de_cuir", 3, "Petite peau"},
        }
    },    
    [GetHashKey("mp_a_c_buck_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"g_piece_de_cuir", 3, "Grande peau"},
        }
    },    
    [GetHashKey("mp_a_c_chicken_01")] =   {
        randomized = false,
        items = {
            {"Meat", 3, "Viande"},
            {"Feather", 3, "Plume"},
        }
    },    
    [GetHashKey("mp_a_c_cougar_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"g_piece_de_cuir", 3, "Grande peau"},
        }
    },  
    [GetHashKey("A_C_BigHornRam_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"g_piece_de_cuir", 3, "Grande peau"},
            {"os", 1, "Os"},
        }
    },  
    [GetHashKey("A_C_Deer_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 3, "Viande faisandée"},
            {"g_piece_de_cuir", 3, "Grande peau"},
            {"os", 1, "Os"},
        }
    },      
    [GetHashKey("a_c_chicken_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 1, "Viande faisandée"},
            {"Feather", 2, "Plumes"},
            {"os", 1, "Os"},
        }
    },  
    [GetHashKey("mp_a_c_chicken_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 1, "Viande faisandée"},
            {"Feather", 2, "Plumes"},
            {"os", 1, "Os"},
        }
    },  
    [GetHashKey("A_C_Buffalo_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 5, "Viande faisandée"},
            {"g_piece_de_cuir", 3, "Grande peau"},
            {"os", 10, "Os"},
        }
    },  
    [GetHashKey("a_c_buffalo_tatanka_01")] =   {
        randomized = false,
        items = {
            {"Gamey_Meat", 5, "Viande faisandée"},
            {"g_piece_de_cuir", 3, "Grande peau"},
            {"os", 10, "Os"},
        }
    },  
    
    
    
}


-- "COMPOSITE_LOOTABLE_AGARITA_DEF",                                             -- 0x35835260
-- "COMPOSITE_LOOTABLE_ALASKAN_GINSENG_ROOT_DEF",                                -- 0x791CB060
-- "COMPOSITE_LOOTABLE_AMERICAN_GINSENG_ROOT_DEF",                               -- 0xA8C87FE6
-- "COMPOSITE_LOOTABLE_BAY_BOLETE_DEF",                                          -- 0xD0EE5547
-- "COMPOSITE_LOOTABLE_BITTERWEED_DEF",                                          -- 0xC64C3DD6
-- "COMPOSITE_LOOTABLE_BLACK_BERRY_DEF",                                         -- 0x218ACC70
-- "COMPOSITE_LOOTABLE_BLACK_CURRANT_DEF",                                       -- 0x8A7249DF
-- "COMPOSITE_LOOTABLE_BLOOD_FLOWER_DEF",                                        -- 0x1387B755
-- "COMPOSITE_LOOTABLE_BLOODFLOWER_DEF",                                         -- 0x0325F1BB
-- "COMPOSITE_LOOTABLE_BURDOCK_ROOT_DEF",                                        -- 0xB12DCCFC
-- "COMPOSITE_LOOTABLE_CARDINAL_FLOWER_DEF",                                     -- 0x0CEE3AC1
-- "COMPOSITE_LOOTABLE_CHANTERELLES_DEF",                                        -- 0x52329977
-- "COMPOSITE_LOOTABLE_CHOC_DAISY_DEF",                                          -- 0x94CBA1BA
-- "COMPOSITE_LOOTABLE_COMMON_BULRUSH_DEF",                                      -- 0x0E008DF3
-- "COMPOSITE_LOOTABLE_CREEKPLUM_DEF",                                           -- 0x694E84DD
-- "COMPOSITE_LOOTABLE_CREEPING_THYME_DEF",                                      -- 0x58F87EA3
-- "COMPOSITE_LOOTABLE_CROWS_GARLIC_DEF",                                        -- 0x44139EB1
-- "COMPOSITE_LOOTABLE_DESERT_SAGE_DEF",                                         -- 0x934CDF53
-- "COMPOSITE_LOOTABLE_DUCK_EGG_5_DEF",                                          -- 0x1B14741F
-- "COMPOSITE_LOOTABLE_ENGLISH_MACE_DEF",                                        -- 0x131DAC12
-- "COMPOSITE_LOOTABLE_EVERGREEN_HUCKLEBERRY_DEF",                               -- 0xCFA5E0D2
-- "COMPOSITE_LOOTABLE_GATOR_EGG_3_DEF",                                         -- 0x2074D44F
-- "COMPOSITE_LOOTABLE_GATOR_EGG_4_DEF",                                         -- 0x5B2ACD7C
-- "COMPOSITE_LOOTABLE_GATOR_EGG_5_DEF",                                         -- 0xD7DBB4BC
-- "COMPOSITE_LOOTABLE_GOLDEN_CURRANT_DEF",                                      -- 0xC8B01F47
-- "COMPOSITE_LOOTABLE_GOOSE_EGG_4_DEF",                                         -- 0xA9F3EBD1
-- "COMPOSITE_LOOTABLE_HUMMINGBIRD_SAGE_DEF",                                    -- 0x2781F602
-- "COMPOSITE_LOOTABLE_INDIAN_TOBACCO_DEF",                                      -- 0x7C9228C5
-- "COMPOSITE_LOOTABLE_LOON_EGG_3_DEF",                                          -- 0xC8E21926
-- "COMPOSITE_LOOTABLE_MILKWEED_DEF",                                            -- 0x7E2FD03E
-- "COMPOSITE_LOOTABLE_OLEANDER_SAGE_DEF",                                       -- 0xAB009D3B
-- "COMPOSITE_LOOTABLE_ORCHID_ACUNA_STAR_DEF",                                   -- 0xB67F7FEA
-- "COMPOSITE_LOOTABLE_ORCHID_CIGAR_DEF",                                        -- 0x2729F09C
-- "COMPOSITE_LOOTABLE_ORCHID_CLAM_SHELL_DEF",                                   -- 0xC0304A5E
-- "COMPOSITE_LOOTABLE_ORCHID_DRAGONS_DEF",                                      -- 0x6083EBAD
-- "COMPOSITE_LOOTABLE_ORCHID_GHOST_DEF",                                        -- 0xE71B4B16
-- "COMPOSITE_LOOTABLE_ORCHID_LADY_NIGHT_DEF",                                   -- 0x528A26DA
-- "COMPOSITE_LOOTABLE_ORCHID_LADY_SLIPPER_DEF",                                 -- 0x1234C200
-- "COMPOSITE_LOOTABLE_ORCHID_MOCCASIN_DEF",                                     -- 0x40A3D479
-- "COMPOSITE_LOOTABLE_ORCHID_NIGHT_SCENTED_DEF",                                -- 0xD28A216B
-- "COMPOSITE_LOOTABLE_ORCHID_QUEENS_DEF",                                       -- 0xB33CCE55
-- "COMPOSITE_LOOTABLE_ORCHID_RAT_TAIL_DEF",                                     -- 0x2C2C6F30
-- "COMPOSITE_LOOTABLE_ORCHID_SPARROWS_DEF",                                     -- 0xCCA325A8
-- "COMPOSITE_LOOTABLE_ORCHID_SPIDER_DEF",                                       -- 0x77CDB9AC
-- "COMPOSITE_LOOTABLE_ORCHID_VANILLA_DEF",                                      -- 0x40DF2FB0
-- "COMPOSITE_LOOTABLE_OREGANO_DEF",                                             -- 0x52902D4F
-- "COMPOSITE_LOOTABLE_OREGANO_INTERACTABLE_DEF",                                -- 0x643D3BDA
-- "COMPOSITE_LOOTABLE_PARASOL_MUSHROOM_DEF",                                    -- 0xB716E0C5
-- "COMPOSITE_LOOTABLE_PRAIRIE_POPPY_DEF",                                       -- 0x22A9A3F5
-- "COMPOSITE_LOOTABLE_RAMS_HEAD_DEF",                                           -- 0xDBDD6BA6
-- "COMPOSITE_LOOTABLE_RED_RASPBERRY_DEF",                                       -- 0x1B68A274
-- "COMPOSITE_LOOTABLE_RED_SAGE_DEF",                                            -- 0xD3D1E587
-- "COMPOSITE_LOOTABLE_SALTBUSH_DEF",                                            -- 0xC5333EEE
-- "COMPOSITE_LOOTABLE_TEXAS_BONNET_DEF",                                        -- 0x86A0FBB0
-- "COMPOSITE_LOOTABLE_VIOLET_SNOWDROP_DEF",                                     -- 0x1F3E2AA9
-- "COMPOSITE_LOOTABLE_VULTURE_EGG_DEF",                                         -- 0xAD8C6F2D
-- "COMPOSITE_LOOTABLE_WILD_CARROT_DEF",                                         -- 0x22C2756C
-- "COMPOSITE_LOOTABLE_WILD_FEVERFEW_DEF",                                       -- 0xC528406F
-- "COMPOSITE_LOOTABLE_WILD_MINT_DEF",                                           -- 0x6B70E62C
-- "COMPOSITE_LOOTABLE_WILD_RHUBARB_DEF",                                        -- 0x16969442
-- "COMPOSITE_LOOTABLE_WINTERGREEN_BERRY_DEF",                                   -- 0x0B6751EF
-- "COMPOSITE_LOOTABLE_WISTERIA_DEF",                                            -- 0xD46AB32E
-- "COMPOSITE_LOOTABLE_YARROW_DEF",                                              -- 0x17C723C8
