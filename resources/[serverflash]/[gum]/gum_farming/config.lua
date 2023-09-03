Config = {}
Config.interaction = true -- if you enable you use herb -> click on position -> place herb -> pick or destroy, if you disable you automaticaly place herbs on your coords

Config.BannedCity = true
Config.Banned_Towns_List = {
	'Annesburg',
	'Armadillo', 
	'Blackwater', 
	'Rhodes', 
	'Siska', 
	'StDenis', 
	'Strawberry', 
	'Tumbleweed', 
	'Valentine', 
	'Vanhorn', 
	'Wapiti', 
}

Config.LocationAffect = false--Temperature affect on grow. (if hot -> more water, if cold -> slow grow)
Config.TemperatureDistrict = {--+- center of temperature in locations
	[2025841068] = {BayouNwa, 40},
	[822658194] = {bigvalley, 20},
	[1308232528] = {BluewaterMarsh, 40},
	[-108848014] = {ChollaSprings, 35},
	[1835499550] = {Cumberland, 25},
	[426773653] = {DiezCoronas, 40},
	[-2066240242] = {GaptoothRidge, 40},
	[476637847] = {greatPlains, 30},
	[-120156735] = {GrizzliesEast, 25},
	[1645618177] = {GrizzliesWest, -5},
	[-512529193] = {GuarmaD, 35},
	[131399519] = {Heartlands, 25},
	[892930832] = {HennigansStead, 30},
	[-1319956120] = {Perdido, 35},
	[1453836102] = {PuntaOrgullo, 40},
	[-2145992129] = {RioBravo, 40},
	[178647645] = {roanoke, 25},
	[-864275692] = {scarlettMeadows, 30},
	[1684533001] = {TallTrees, 20},
}

Config.Gum_Notify_NUI = true
Config.Image = "farming"

Config.Watering_Can_Item = "Watering_Can"
Config.TeaPot = "Teapot_Can"

Config.SQL_Farming_1 = "wagons"--Table with wagons
Config.SQL_Farming_2 = "model"--Column model in table
Config.SQL_Farming_3 = "charid"--Column for character id in stables
Config.SQL_Farming_4 = "selected"--Column for selected wagons

Config.Wagons_Support = {
	oilWagon01x = 200,
	oilWagon02x = 200,
	cart05 = 50,
}

Config.UpdateTime = 15--Every 15 min update state
Config.FertilizerOnUpdate = 5.0--Count down %
Config.WaterOnUpdate = 5.0--Count down %

Config.UnderQuality = 30--Under 30% Ferti or Water
Config.DownFertilizer = 2.5
Config.DownWater = 2.5
Config.ReviveUpperFertilizer = 0.5
Config.ReviveUpperWater = 0.5

Config.WaterCalcIfHot = 3
Config.GrowSlowIfCold = 1.5

Config.AddWaterOnBucket = 50
Config.AddFertilize = 100

Config.Fertilizer = "Fertilizer"

Config.Language = {
	[1] = "Agriculture",
	[2] = "Utiliser",
	[3] = "Que devez-vous faire ?",
	[4] = "Graines",
	[5] = "Vous ne pouvez pas faire cela à cheval ou en véhicule.",
	[6] = "Vous êtes en train d'arroser.",
	[7] = "Ma ferme",
	[8] = "Fertiliser",
	[9] = "Choisir",
	[10] = "Eau",
	[11] = "Détruire",
	[12] = "Planter",
	[13] = "Reprendre",
	[14] = "Remplir",
	[15] = "Ajouter de l'eau",
	[16] = "Prendre de l'eau",
	[17] = "Panier",
	[18] = "Pompe",
	[19] = "Eau",
	[20] = "Herbe",
	[21] = "Qualité",
	[22] = "Eau",
	[23] = "Fertilisant",
	[24] = "Temps de croissance",
	[25] = "Minutes",
	[26] = "Vous n'avez pas de travail d'agriculteur pour manipuler cette herbe",
	[27] = "Vous ne pouvez pas cela dans les villes",
	[28] = "Vous ne pouvez avoir que : ",
	[29] = "herbes",
	[30] = "Vous ne pouvez avoir qu'une seule ferme",
	[31] = "Si vous êtes agriculteur, vous devez être sur votre ferme",
	[32] = "Graines",
	[33] = "Vous ne pouvez pas planter d'herbes sur une autre ferme.",
	[34] = "Ici, vous ne pouvez pas planter cette herbe.",
	}

Config.HerbCountMax = 50
Config.FarmingJobCoords = {
	Farmar = {
		blipSprite = 0,
		coords = {2240.525146484375, -108.86055755615234, 46.04671478271484, 50.0},
		count = 100,
		protect = true,
	},
	ecurie = {
		blipSprite = 0,
		coords = {1440.80615234375, 307.4346923828125, 89.39686584472656, 50.0},
		count = 100,
		protect = true,
	}, 
	Farmar3 = {
		blipSprite = 0,
		coords = {-5178.11962890625, -2166.0849609375, 12.12596988677978, 50.0},
		count = 100,
		protect = true,
	},
	Farmar4 = {
		blipSprite = 0,
		coords = {2732.585205078125,2380.65283203125,165.2123260498047, 50.0},
		count = 100,
		protect = true,
	},
	Farmar5 = {
		blipSprite = 0,
		coords = {1721.82373046875,-1944.135009765625,46.65422058105469, 50.0},
		count = 100,
		protect = true,
	},
	sucrerie = {
		blipSprite = 0,
		coords = {1288.62, -7073.86, 49.15, 50.0},
		count = 100,
		protect = true,
	},
	f_cereale = {
		blipSprite = 0,
		coords = {1160.63427734375, 404.07220458984375, 92.87496185302736, 50.0},
		count = 100,
		protect = true,
	},

}

Config.QualitySystem = true--Quality is based for more rewards or more work on famr

Config.FarmHerbs = {
	["Hop_Seed"] = {
		multipleUse = true,
		multipleEvent = "gum_farming:useSeed",--argument is herbSeed, herbName, herbCount
		herbToSeed = 3,
		herbName = "Chmel",
		herbItem = "Hop",
		coordLockEnable = false,
		coordLock = {
			[1] = {-5454.130859375, -2899.43505859375, 0.95581465959548, 20.0},
			[2] = {-5604.67529296875, -2888.024658203125, 0.8768013715744, 20.0},
		},
		potStageProps = {--Stage is calculated automaticaly from grow time
			[1] = {"s_inv_milkweed01bx", 301},
			[2] = {"s_inv_milkweed01cx", 250},
			[3] = {"s_inv_milkweed01x", 100},
			[4] = {"s_milkweed01x", -1},
		},
		weatherAffect = true,--If is rain -> automaticaly water herb
		growTime = 15,--300 min time without affecting temp
		temperatureSlow = 5,--Slow for grow
		temperatureGood = {5, 30},--Good for grow
		temperatureHot = 30,--2x more watering
		fertilizer = {1, 2},--Empty is disabled,
		quality = 100,--if Disabled quality system is 100 
		rewardItem = {--If you have disabled quality set [XX] to [0]
			[80] = {"Hop", 5},--Upper 80% to 100
			[50] = {"Hop", 3},--Upper 50% to 80
			[25] = {"Hop", 2},--Upper 25% to 50
			[0] = {"Hop", 1},--Upper 0% to 25
		},
		grounded = 0.0,--downgrade under ground
	},
	["Wild_Carrot_Seed"] = {
		multipleUse = true,
		multipleEvent = "gum_stables:eatFunctionForFarming",--argument is herbSeed, herbName, herbCount
		herbToSeed = 3,
		herbName = "Mrkev",
		herbItem = "Wild_Carrot",
		potStageProps = {--Stage is calculated automaticaly from grow time
			[1] = {"s_inv_wildcarrot01x", 301},
			[2] = {"s_inv_wildcarrot01x", 250},
			[3] = {"s_inv_wildcarrot01x", 100},
			[4] = {"s_inv_wildcarrot01x", -1},
		},
		weatherAffect = true,--If is rain -> automaticaly water herb
		growTime = 15,--480 min time without affecting temp
		temperatureSlow = 5,--Slow for grow
		temperatureGood = {5, 30},--Good for grow
		temperatureHot = 30,--2x more watering
		fertilizer = {1, 2},--Empty is disabled,
		quality = 100,--if Disabled quality system is 100 
		rewardItem = {--If you have disabled quality set [XX] to [0]
			[80] = {"Wild_Carrot", 5},--Upper 80% to 100
			[50] = {"Wild_Carrot", 3},--Upper 50% to 80
			[25] = {"Wild_Carrot", 2},--Upper 25% to 50
			[0] = {"Wild_Carrot", 1},--Upper 0% to 50
		},
		grounded = 0.0,--downgrade under ground
	},
	["Indian_Tobbaco_Seed"] = {
		multipleUse = true,
		herbToSeed = 3,
		multipleEvent = "gum_farming:useSeed",--argument is herbSeed, herbName, herbCount
		herbName = "Tabak",
		herbItem = "Indian_Tobbaco",
		potStageProps = {--Stage is calculated automaticaly from grow time
			[1] = {"s_indiantobacco01x", 301},
			[2] = {"s_indiantobacco01x", 250},
			[3] = {"s_indiantobacco01x", 100},
			[4] = {"s_indiantobacco01x", -1},
		},
		weatherAffect = true,--If is rain -> automaticaly water herb
		growTime = 15,--480 min time without affecting temp
		temperatureSlow = 5,--Slow for grow
		temperatureGood = {5, 30},--Good for grow
		temperatureHot = 30,--2x more watering
		fertilizer = {1, 2},--Empty is disabled,
		quality = 100,--if Disabled quality system is 100 
		rewardItem = {--If you have disabled quality set [XX] to [0]
			[80] = {"Indian_Tobbaco", 5},--Upper 80% to 100
			[50] = {"Indian_Tobbaco", 3},--Upper 50% to 80
			[25] = {"Indian_Tobbaco", 2},--Upper 25% to 50
			[0] = {"Indian_Tobbaco", 1},--Upper 0% to 50
		},
		grounded = 0.0,--downgrade under ground
	},
	["Corn_Seed"] = {
		multipleUse = true,
		herbToSeed = 3,
		multipleEvent = "gum_farming:useSeed",--argument is herbSeed, herbName, herbCount
		herbName = "Kukurice",
		herbItem = "Corn",
		potStageProps = {--Stage is calculated automaticaly from grow time
			[1] = {"crp_cornstalks_bb_sim", 16},
			[2] = {"crp_cornstalks_bd_sim", 10},
			[3] = {"crp_cornstalks_bc_sim", 5},
			[4] = {"crp_cornstalks_bc_sim", -1},
		},
		weatherAffect = true,--If is rain -> automaticaly water herb
		growTime = 15,--480 min time without affecting temp
		temperatureSlow = 5,--Slow for grow
		temperatureGood = {5, 30},--Good for grow
		temperatureHot = 30,--2x more watering
		fertilizer = {1, 2},--Empty is disabled,
		quality = 100,--if Disabled quality system is 100 
		rewardItem = {--If you have disabled quality set [XX] to [0]
			[80] = {"corn", 5},--Upper 80% to 100
			[50] = {"corn", 3},--Upper 50% to 80
			[25] = {"corn", 2},--Upper 25% to 50
			[0] = {"corn", 1},--Upper 0% to 50
		},
		grounded = 1.15,--downgrade under ground
	},
	["Wild_Mint_Seed"] = {
		multipleUse = true,
		herbToSeed = 3,
		multipleEvent = "gum_farming:useSeed",--argument is herbSeed, herbName, herbCount
		herbName = "Wild Mint",
		herbItem = "Wild_Mint",
		potStageProps = {--Stage is calculated automaticaly from grow time
			[1] = {"s_inv_wildmint01bx", 301},
			[2] = {"s_inv_wildmint01x", 250},
			[3] = {"s_inv_wildmint01x", 100},
			[4] = {"s_inv_wildmint01cx", -1},
		},
		weatherAffect = true,--If is rain -> automaticaly water herb
		growTime = 15,--480 min time without affecting temp
		temperatureSlow = 5,--Slow for grow
		temperatureGood = {5, 30},--Good for grow
		temperatureHot = 30,--2x more watering
		fertilizer = {1, 2},--Empty is disabled,
		quality = 100,--if Disabled quality system is 100 
		rewardItem = {--If you have disabled quality set [XX] to [0]
			[80] = {"Wild_Mint", 5},--Upper 80% to 100
			[50] = {"Wild_Mint", 3},--Upper 50% to 80
			[25] = {"Wild_Mint", 2},--Upper 25% to 50
			[0] = {"Wild_Mint", 1},--Upper 0% to 50
		},
		grounded = 0.0,--downgrade under ground
	},
	["Rams_Head_Seed"] = {
		multipleUse = true,
		herbToSeed = 3,
		multipleEvent = "gum_farming:useSeed",--argument is herbSeed, herbName, herbCount
		herbName = "Rams Head",
		herbItem = "Rams_Head",
		potStageProps = {--Stage is calculated automaticaly from grow time
			[1] = {"s_inv_ramshead", 301},
			[2] = {"s_inv_ramshead", 250},
			[3] = {"s_inv_ramshead", 100},
			[4] = {"s_inv_ramshead", -1},
		},
		weatherAffect = true,--If is rain -> automaticaly water herb
		growTime = 15,--480 min time without affecting temp
		temperatureSlow = 5,--Slow for grow
		temperatureGood = {5, 30},--Good for grow
		temperatureHot = 30,--2x more watering
		fertilizer = {1, 2},--Empty is disabled,
		quality = 100,--if Disabled quality system is 100 
		rewardItem = {--If you have disabled quality set [XX] to [0]
			[80] = {"Rams_Head", 5},--Upper 80% to 100
			[50] = {"Rams_Head", 3},--Upper 50% to 80
			[25] = {"Rams_Head", 2},--Upper 25% to 50
			[0] = {"Rams_Head", 1},--Upper 0% to 50
		},
		grounded = 0.0,--downgrade under ground
	},
	["Parasol_Mushroom_Seed"] = {
		multipleUse = true,
		herbToSeed = 3,
		multipleEvent = "gum_farming:useSeed",--argument is herbSeed, herbName, herbCount
		herbName = "Parasol Mushroom",
		herbItem = "Parasol_Mushroom",
		potStageProps = {--Stage is calculated automaticaly from grow time
			[1] = {"s_inv_parasol", 301},
			[2] = {"s_inv_parasol", 250},
			[3] = {"s_inv_parasol", 100},
			[4] = {"s_inv_parasol", -1},
		},
		weatherAffect = true,--If is rain -> automaticaly water herb
		growTime = 15,--480 min time without affecting temp
		temperatureSlow = 5,--Slow for grow
		temperatureGood = {5, 30},--Good for grow
		temperatureHot = 30,--2x more watering
		fertilizer = {1, 2},--Empty is disabled,
		quality = 100,--if Disabled quality system is 100 
		rewardItem = {--If you have disabled quality set [XX] to [0]
			[80] = {"Parasol_Mushroom", 3},--Upper 80% to 100
			[50] = {"Parasol_Mushroom", 2},--Upper 50% to 80
			[0] = {"Parasol_Mushroom", 1},--Upper 0% to 50
		},
		grounded = 0.0,--downgrade under ground
	},
	["Hummingbird_Sage_Seed"] = {
		multipleUse = true,
		herbToSeed = 3,
		multipleEvent = "gum_farming:useSeed",--argument is herbSeed, herbName, herbCount
		herbName = "Hummingbird sage",
		herbItem = "Hummingbird_Sage",
		potStageProps = {--Stage is calculated automaticaly from grow time
			[1] = {"s_hummingbirdsage01x", 301},
			[2] = {"s_hummingbirdsage01x", 250},
			[3] = {"s_hummingbirdsage01x", 100},
			[4] = {"s_hummingbirdsage01x", -1},
		},
		weatherAffect = true,--If is rain -> automaticaly water herb
		growTime = 15,--480 min time without affecting temp
		temperatureSlow = 5,--Slow for grow
		temperatureGood = {5, 30},--Good for grow
		temperatureHot = 30,--2x more watering
		fertilizer = {1, 2},--Empty is disabled,
		quality = 100,--if Disabled quality system is 100 
		rewardItem = {--If you have disabled quality set [XX] to [0]
			[80] = {"Hummingbird_Sage", 5},--Upper 80% to 100
			[50] = {"Hummingbird_Sage", 3},--Upper 50% to 80
			[25] = {"Hummingbird_Sage", 2},--Upper 25% to 50
			[0] = {"Hummingbird_Sage", 1},--Upper 0% to 50
		},
		grounded = 0.0,--downgrade under ground
	},
	["Evergreen_Huckleberry_Seed"] = {
		multipleUse = true,
		herbToSeed = 3,
		multipleEvent = "gum_farming:useSeed",--argument is herbSeed, herbName, herbCount
		herbName = "Evergreen Huckleberry",
		herbItem = "Evergreen_Huckleberry",
		potStageProps = {--Stage is calculated automaticaly from grow time
			[1] = {"s_inv_huckleberry01x", 301},
			[2] = {"s_inv_huckleberry01x", 250},
			[3] = {"s_inv_huckleberry01x", 100},
			[4] = {"s_inv_huckleberry01x", -1},
		},
		weatherAffect = true,--If is rain -> automaticaly water herb
		growTime = 15,--480 min time without affecting temp
		temperatureSlow = 5,--Slow for grow
		temperatureGood = {5, 30},--Good for grow
		temperatureHot = 30,--2x more watering
		fertilizer = {1, 2},--Empty is disabled,
		quality = 100,--if Disabled quality system is 100 
		rewardItem = {--If you have disabled quality set [XX] to [0]
			[80] = {"Evergreen_Huckleberry", 5},--Upper 80% to 100
			[50] = {"Evergreen_Huckleberry", 3},--Upper 50% to 80
			[25] = {"Evergreen_Huckleberry", 2},--Upper 25% to 50
			[0] = {"Evergreen_Huckleberry", 1},--Upper 0% to 50
		},
		grounded = 0.0,--downgrade under ground
	},
	["Alaskan_Ginseng_Seed"] = {
		multipleUse = true,
		herbToSeed = 3,
		multipleEvent = "gum_farming:useSeed",--argument is herbSeed, herbName, herbCount
		herbName = "Alaskan Ginseng",
		herbItem = "Alaskan_Ginseng",
		potStageProps = {--Stage is calculated automaticaly from grow time
			[1] = {"alaskanginseng_p", 301},
			[2] = {"alaskanginseng_p", 250},
			[3] = {"alaskanginseng_p", 100},
			[4] = {"alaskanginseng_p", -1},
		},
		weatherAffect = true,--If is rain -> automaticaly water herb
		growTime = 15,--480 min time without affecting temp
		temperatureSlow = 5,--Slow for grow
		temperatureGood = {5, 30},--Good for grow
		temperatureHot = 30,--2x more watering
		fertilizer = {1, 2},--Empty is disabled,
		quality = 100,--if Disabled quality system is 100 
		rewardItem = {--If you have disabled quality set [XX] to [0]
			[80] = {"Alaskan_Ginseng", 5},--Upper 80% to 100
			[50] = {"Alaskan_Ginseng", 3},--Upper 50% to 80
			[25] = {"Alaskan_Ginseng", 2},--Upper 25% to 50
			[0] = {"Alaskan_Ginseng", 1},--Upper 0% to 50
		},
		grounded = 0.0,--downgrade under ground
	},
	["Grain_Seed"] = {
		multipleUse = true,
		herbToSeed = 3,
		multipleEvent = "gum_farming:useSeed",--argument is herbSeed, herbName, herbCount
		herbName = "Blé",
		herbItem = "Grain",
		potStageProps = {--Stage is calculated automaticaly from grow time
			[1] = {"crp_wheat_dry_aa_sim", 16},
			[2] = {"crp_wheat_dry_aa_sim", 10},
			[3] = {"crp_wheat_dry_aa_sim", 5},
			[4] = {"crp_wheat_dry_aa_sim", -1},
		},
		weatherAffect = true,--If is rain -> automaticaly water herb
		growTime = 15,--480 min time without affecting temp
		temperatureSlow = 5,--Slow for grow
		temperatureGood = {5, 30},--Good for grow
		temperatureHot = 30,--2x more watering
		fertilizer = {1, 2},--Empty is disabled,
		quality = 100,--if Disabled quality system is 100 
		rewardItem = {--If you have disabled quality set [XX] to [0]
			[80] = {"Grain", 5},--Upper 80% to 100
			[50] = {"Grain", 3},--Upper 50% to 80
			[25] = {"Grain", 2},--Upper 25% to 50
			[0] = {"Grain", 1},--Upper 0% to 50
		},
		grounded = 1.15,--downgrade under ground
	},
	["Coca_Seed"] = {
		multipleUse = true,
		herbToSeed = 3,
		multipleEvent = "gum_farming:useSeed",--argument is herbSeed, herbName, herbCount
		herbName = "Koka",
		herbItem = "Coca",
		potStageProps = {--Stage is calculated automaticaly from grow time
			[1] = {"s_indiantobaccopicked01x", 16},
			[2] = {"s_indiantobaccopicked01x", 10},
			[3] = {"s_indiantobaccopicked01x", 5},
			[4] = {"s_indiantobaccopicked01x", -1},
		},
		weatherAffect = true,--If is rain -> automaticaly water herb
		growTime = 15,--480 min time without affecting temp
		temperatureSlow = 5,--Slow for grow
		temperatureGood = {5, 30},--Good for grow
		temperatureHot = 30,--2x more watering
		fertilizer = {1, 2},--Empty is disabled,
		quality = 100,--if Disabled quality system is 100 
		rewardItem = {--If you have disabled quality set [XX] to [0]
			[80] = {"Coca", 5},--Upper 80% to 100
			[50] = {"Coca", 3},--Upper 50% to 80
			[25] = {"Coca", 2},--Upper 25% to 50
			[0] = {"Coca", 1},--Upper 0% to 25
		},
		grounded = 0.0,--downgrade under ground
	},
	["Sugarcane_Seed"] = {
		multipleUse = true,
		herbToSeed = 3,
		multipleEvent = "gum_farming:useSeed",--argument is herbSeed, herbName, herbCount
		herbName = "Cukrova trtina",
		herbItem = "Sugarcane",
		potStageProps = {--Stage is calculated automaticaly from grow time
			[1] = {"crp_sugarcane_ac_sim", 16},
			[2] = {"crp_sugarcane_ac_sim", 10},
			[3] = {"crp_sugarcane_ac_sim", 5},
			[4] = {"crp_sugarcane_ac_sim", -1},
		},
		weatherAffect = true,--If is rain -> automaticaly water herb
		growTime = 15,--480 min time without affecting temp
		temperatureSlow = 5,--Slow for grow
		temperatureGood = {5, 30},--Good for grow
		temperatureHot = 30,--2x more watering
		fertilizer = {1, 2},--Empty is disabled,
		quality = 100,--if Disabled quality system is 100 
		rewardItem = {--If you have disabled quality set [XX] to [0]
			[80] = {"Sugarcane", 5},--Upper 80% to 100
			[50] = {"Sugarcane", 3},--Upper 50% to 80
			[25] = {"Sugarcane", 2},--Upper 25% to 50
			[0] = {"Sugarcane", 1},--Upper 0% to 25
		},
		grounded = 0.25,--downgrade under ground
	},
	["Grape_Seed"] = {
		multipleUse = true,
		herbToSeed = 3,
		multipleEvent = "gum_farming:useSeed",--argument is herbSeed, herbName, herbCount
		herbName = "Vinná Réva",
		herbItem = "Grape",
		potStageProps = {--Stage is calculated automaticaly from grow time
			[1] = {"rdr_bush_hedgecore_aa", 301},
			[2] = {"rdr_bush_hedgecore_aa", 250},
			[3] = {"rdr_bush_hedgecore_aa", 100},
			[4] = {"rdr_bush_hedgecore_aa", -1},
		},
		weatherAffect = true,--If is rain -> automaticaly water herb
		growTime = 15,--480 min time without affecting temp
		temperatureSlow = 5,--Slow for grow
		temperatureGood = {5, 30},--Good for grow
		temperatureHot = 30,--2x more watering
		fertilizer = {1, 2},--Empty is disabled,
		quality = 100,--if Disabled quality system is 100 
		rewardItem = {--If you have disabled quality set [XX] to [0]
			[80] = {"Grape", 5},--Upper 80% to 100
			[50] = {"Grape", 3},--Upper 50% to 80
			[25] = {"Grape", 2},--Upper 25% to 50
			[0] = {"Grape", 1},--Upper 0% to 25
		},
		grounded = 0.0,--downgrade under ground
	},
	["Indigo_Seed"] = {
		multipleUse = true,
		herbToSeed = 3,
		multipleEvent = "gum_farming:useSeed",--argument is herbSeed, herbName, herbCount
		herbName = "Indigo",
		herbItem = "Indigo",
		potStageProps = {--Stage is calculated automaticaly from grow time
			[1] = {"s_indiantobaccopicked01x", 301},
			[2] = {"s_indiantobaccopicked01x", 250},
			[3] = {"s_indiantobaccopicked01x", 100},
			[4] = {"s_indiantobaccopicked01x", -1},
		},
		weatherAffect = true,--If is rain -> automaticaly water herb
		growTime = 15,--480 min time without affecting temp
		temperatureSlow = 5,--Slow for grow
		temperatureGood = {5, 30},--Good for grow
		temperatureHot = 30,--2x more watering
		fertilizer = {1, 2},--Empty is disabled,
		quality = 100,--if Disabled quality system is 100 
		rewardItem = {--If you have disabled quality set [XX] to [0]
			[80] = {"Indigo", 3},--Upper 80% to 100
			[50] = {"Indigo", 2},--Upper 50% to 80
			[0] = {"Indigo", 1},--Upper 0% to 50
		},
		grounded = 0.0,--downgrade under ground
	},

	["Tomato_Seed"] = {
		multipleUse = true,
		herbToSeed = 3,
		multipleEvent = "gum_farming:useSeed",--argument is herbSeed, herbName, herbCount
		herbName = "Rajče",
		herbItem = "tomato",
		potStageProps = {--Stage is calculated automaticaly from grow time
			[1] = {"crp_tomatoes_aa_sim", 16},
			[2] = {"crp_tomatoes_aa_sim", 10},
			[3] = {"crp_tomatoes_aa_sim", 5},
			[4] = {"crp_tomatoes_aa_sim", -1},
		},
		weatherAffect = true,--If is rain -> automaticaly water herb
		growTime = 15,--480 min time without affecting temp
		temperatureSlow = 5,--Slow for grow
		temperatureGood = {5, 30},--Good for grow
		temperatureHot = 30,--2x more watering
		fertilizer = {1, 2},--Empty is disabled,
		quality = 100,--if Disabled quality system is 100 
		rewardItem = {--If you have disabled quality set [XX] to [0]
			[80] = {"tomato", 5},--Upper 80% to 100
			[50] = {"tomato", 3},--Upper 50% to 80
			[25] = {"tomato", 2},--Upper 25% to 50
			[0] = {"tomato", 1},--Upper 0% to 25
		},
		grounded = 1.15,--downgrade under ground
	},
	["Cabbage_Seed"] = {
		multipleUse = true,
		herbToSeed = 3,
		multipleEvent = "gum_farming:useSeed",--argument is herbSeed, herbName, herbCount
		herbName = "Zelí",
		herbItem = "Cabbage",
		potStageProps = {--Stage is calculated automaticaly from grow time
			[1] = {"crp_broccoli_aa_sim", 301},
			[2] = {"crp_broccoli_aa_sim", 250},
			[3] = {"crp_broccoli_aa_sim", 100},
			[4] = {"crp_broccoli_aa_sim", -1},
		},
		weatherAffect = true,--If is rain -> automaticaly water herb
		growTime = 15,--480 min time without affecting temp
		temperatureSlow = 5,--Slow for grow
		temperatureGood = {5, 30},--Good for grow
		temperatureHot = 30,--2x more watering
		fertilizer = {1, 2},--Empty is disabled,
		quality = 100,--if Disabled quality system is 100 
		rewardItem = {--If you have disabled quality set [XX] to [0]
			[80] = {"Cabbage", 3},--Upper 80% to 100
			[50] = {"Cabbage", 2},--Upper 50% to 80
			[0] = {"Cabbage", 1},--Upper 0% to 50
		},
		grounded = 0.0,--downgrade under ground
	},
	["Onion_Seed"] = {
		multipleUse = true,
		herbToSeed = 3,
		multipleEvent = "gum_farming:useSeed",--argument is herbSeed, herbName, herbCount
		herbName = "Cibule",
		herbItem = "Onion",
		potStageProps = {--Stage is calculated automaticaly from grow time
			[1] = {"crp_tomatoes_sap_aa_sim", 301},
			[2] = {"crp_tomatoes_sap_aa_sim", 250},
			[3] = {"crp_tomatoes_sap_aa_sim", 100},
			[4] = {"crp_tomatoes_sap_aa_sim", -1},
		},
		weatherAffect = true,--If is rain -> automaticaly water herb
		growTime = 15,--480 min time without affecting temp
		temperatureSlow = 5,--Slow for grow
		temperatureGood = {5, 30},--Good for grow
		temperatureHot = 30,--2x more watering
		fertilizer = {1, 2},--Empty is disabled,
		quality = 100,--if Disabled quality system is 100 
		rewardItem = {--If you have disabled quality set [XX] to [0]
			[80] = {"Onion", 5},--Upper 80% to 100
			[50] = {"Onion", 3},--Upper 50% to 80
			[25] = {"Onion", 2},--Upper 25% to 50
			[0] = {"Onion", 1},--Upper 0% to 25
		},
		grounded = 0.0,--downgrade under ground
	},
	["Pepper_Seed"] = {
		multipleUse = true,
		herbToSeed = 3,
		multipleEvent = "gum_farming:useSeed",--argument is herbSeed, herbName, herbCount
		herbName = "Paprika",
		herbItem = "Pepper",
		potStageProps = {--Stage is calculated automaticaly from grow time
			[1] = {"crp_tomatoes_sap_aa_sim", 301},
			[2] = {"crp_tomatoes_sap_aa_sim", 250},
			[3] = {"crp_tomatoes_sap_aa_sim", 100},
			[4] = {"crp_tomatoes_sap_aa_sim", -1},
		},
		weatherAffect = true,--If is rain -> automaticaly water herb
		growTime = 15,--480 min time without affecting temp
		temperatureSlow = 5,--Slow for grow
		temperatureGood = {5, 30},--Good for grow
		temperatureHot = 30,--2x more watering
		fertilizer = {1, 2},--Empty is disabled,
		quality = 100,--if Disabled quality system is 100 
		rewardItem = {--If you have disabled quality set [XX] to [0]
			[80] = {"Pepper", 5},--Upper 80% to 100
			[50] = {"Pepper", 3},--Upper 50% to 80
			[25] = {"Pepper", 2},--Upper 25% to 50
			[0] = {"Pepper", 1},--Upper 0% to 25
		},
		grounded = 0.0,--downgrade under ground
	},
	["Apple_Seed"] = {
		multipleUse = true,
		herbToSeed = 3,
		multipleEvent = "gum_stables:eatFunctionForFarming",--argument is herbSeed, herbName, herbCount
		herbName = "Jablko",
		herbItem = "Apple",
		potStageProps = {--Stage is calculated automaticaly from grow time
			[1] = {"p_sap_maple_ba_sim", 301},
			[2] = {"p_tree_maple_s_03", 250},
			[3] = {"p_tree_apple_01", 100},
			[4] = {"p_tree_apple_01", -1},
		},
		weatherAffect = true,--If is rain -> automaticaly water herb
		growTime = 15,--480 min time without affecting temp
		temperatureSlow = 5,--Slow for grow
		temperatureGood = {5, 30},--Good for grow
		temperatureHot = 30,--2x more watering
		fertilizer = {1, 2},--Empty is disabled,
		quality = 100,--if Disabled quality system is 100 
		rewardItem = {--If you have disabled quality set [XX] to [0]
			[80] = {"Apple", 4},--Upper 80% to 100
			[50] = {"Apple", 3},--Upper 50% to 80
			[25] = {"Apple", 2},--Upper 0% to 50
			[0] = {"Apple", 1},--Upper 0% to 25
		},
		grounded = 0.5,--downgrade under ground
	},
--
--
--
--
--
--
----
--
--
--
--
--

--
--
--
--
--
--


	["graine_carotte"] = {
		multipleUse = true,
		herbToSeed = 3,
		multipleEvent = "gum_farming:useSeed",--argument is herbSeed, herbName, herbCount
		herbName = "Carottes",
		herbItem = "Carottes",
		potStageProps = {--Stage is calculated automaticaly from grow time
			[1] = {"s_inv_wildcarrot01x", 16},
			[2] = {"s_inv_wildcarrot01x", 10},
			[3] = {"s_inv_wildcarrot01x", 5},
			[4] = {"s_inv_wildcarrot01x", -1},
		},
		weatherAffect = true,--If is rain -> automaticaly water herb
		growTime = 15,--480 min time without affecting temp
		temperatureSlow = 5,--Slow for grow
		temperatureGood = {5, 30},--Good for grow
		temperatureHot = 30,--2x more watering
		fertilizer = {1, 2},--Empty is disabled,
		quality = 100,--if Disabled quality system is 100 
		rewardItem = {--If you have disabled quality set [XX] to [0]
			[80] = {"Carottes", 5},--Upper 80% to 100
			[50] = {"Carottes", 3},--Upper 50% to 80
			[25] = {"Carottes", 2},--Upper 25% to 50
			[0] = {"Carottes", 1},--Upper 0% to 25
		},
		grounded = 1.15,--downgrade under ground
	},

	["graine_oignon"] = {
		multipleUse = true,
		herbToSeed = 3,
		multipleEvent = "gum_farming:useSeed",--argument is herbSeed, herbName, herbCount
		herbName = "Oignon",
		herbItem = "Oignon",
		potStageProps = {--Stage is calculated automaticaly from grow time
			[1] = {"s_inv_wildcarrot01x", 16},
			[2] = {"s_inv_wildcarrot01x", 10},
			[3] = {"s_inv_wildcarrot01x", 5},
			[4] = {"s_inv_wildcarrot01x", -1},
		},
		weatherAffect = true,--If is rain -> automaticaly water herb
		growTime = 15,--480 min time without affecting temp
		temperatureSlow = 5,--Slow for grow
		temperatureGood = {5, 30},--Good for grow
		temperatureHot = 30,--2x more watering
		fertilizer = {1, 2},--Empty is disabled,
		quality = 100,--if Disabled quality system is 100 
		rewardItem = {--If you have disabled quality set [XX] to [0]
			[80] = {"Oignon", 5},--Upper 80% to 100
			[50] = {"Oignon", 3},--Upper 50% to 80
			[25] = {"Oignon", 2},--Upper 25% to 50
			[0] = {"Oignon", 1},--Upper 0% to 25
		},
		grounded = 0.25,--downgrade under ground
	},

	["graine_navet"] = {
		multipleUse = true,
		herbToSeed = 3,
		multipleEvent = "gum_farming:useSeed",--argument is herbSeed, herbName, herbCount
		herbName = "Navet",
		herbItem = "Navet",
		potStageProps = {--Stage is calculated automaticaly from grow time
			[1] = {"s_inv_wildcarrot01x", 16},
			[2] = {"s_inv_wildcarrot01x", 10},
			[3] = {"s_inv_wildcarrot01x", 5},
			[4] = {"s_inv_wildcarrot01x", -1},
		},
		weatherAffect = true,--If is rain -> automaticaly water herb
		growTime = 15,--480 min time without affecting temp
		temperatureSlow = 5,--Slow for grow
		temperatureGood = {5, 30},--Good for grow
		temperatureHot = 30,--2x more watering
		fertilizer = {1, 2},--Empty is disabled,
		quality = 100,--if Disabled quality system is 100 
		rewardItem = {--If you have disabled quality set [XX] to [0]
			[80] = {"Navet", 5},--Upper 80% to 100
			[50] = {"Navet", 3},--Upper 50% to 80
			[25] = {"Navet", 2},--Upper 25% to 50
			[0] = {"Navet", 1},--Upper 0% to 25
		},
		grounded = 1.15,--downgrade under ground
	},

    ["patate_graine"] = {
		multipleUse = true,
		herbToSeed = 3,
		multipleEvent = "gum_farming:useSeed",--argument is herbSeed, herbName, herbCount
		herbName = "Patate",
		herbItem = "Patate",
		potStageProps = {--Stage is calculated automaticaly from grow time
			[1] = {"crp_potato_aa_sim", 16},
			[2] = {"crp_potato_aa_sim", 10},
			[3] = {"crp_potato_aa_sim", 5},
			[4] = {"crp_potato_aa_sim", -1},
		},
		weatherAffect = true,--If is rain -> automaticaly water herb
		growTime = 15,--480 min time without affecting temp
		temperatureSlow = 5,--Slow for grow
		temperatureGood = {5, 30},--Good for grow
		temperatureHot = 30,--2x more watering
		fertilizer = {1, 2},--Empty is disabled,
		quality = 100,--if Disabled quality system is 100 
		rewardItem = {--If you have disabled quality set [XX] to [0]
			[80] = {"Patate", 5},--Upper 80% to 100
			[50] = {"Patate", 3},--Upper 50% to 80
			[25] = {"Patate", 2},--Upper 25% to 50
			[0] = {"Patate", 1},--Upper 0% to 25
		},
		grounded = 0.25,--downgrade under ground
	},

	["graine_avoine"] = {
		multipleUse = true,
		herbToSeed = 3,
		multipleEvent = "gum_farming:useSeed",--argument is herbSeed, herbName, herbCount
		herbName = "avoine",
		herbItem = "avoine",
		potStageProps = {--Stage is calculated automaticaly from grow time
			[1] = {"crp_potato_aa_sim", 16},
			[2] = {"crp_potato_aa_sim", 10},
			[3] = {"crp_potato_aa_sim", 5},
			[4] = {"crp_potato_aa_sim", -1},
		},
		weatherAffect = true,--If is rain -> automaticaly water herb
		growTime = 15,--480 min time without affecting temp
		temperatureSlow = 5,--Slow for grow
		temperatureGood = {5, 30},--Good for grow
		temperatureHot = 30,--2x more watering
		fertilizer = {1, 2},--Empty is disabled,
		quality = 100,--if Disabled quality system is 100 
		rewardItem = {--If you have disabled quality set [XX] to [0]
			[80] = {"avoine", 5},--Upper 80% to 100
			[50] = {"avoine", 3},--Upper 50% to 80
			[25] = {"avoine", 2},--Upper 25% to 50
			[0] = {"avoine", 1},--Upper 0% to 25
		},
		grounded = 0.25,--downgrade under ground
	},

		["graine_thym"] = {
		multipleUse = true,
		herbToSeed = 3,
		multipleEvent = "gum_farming:useSeed",--argument is herbSeed, herbName, herbCount
		herbName = "thym",
		herbItem = "thym",
		potStageProps = {--Stage is calculated automaticaly from grow time
			[1] = {"crp_potato_aa_sim", 16},
			[2] = {"crp_potato_aa_sim", 10},
			[3] = {"crp_potato_aa_sim", 5},
			[4] = {"crp_potato_aa_sim", -1},
		},
		weatherAffect = true,--If is rain -> automaticaly water herb
		growTime = 15,--480 min time without affecting temp
		temperatureSlow = 5,--Slow for grow
		temperatureGood = {5, 30},--Good for grow
		temperatureHot = 30,--2x more watering
		fertilizer = {1, 2},--Empty is disabled,
		quality = 100,--if Disabled quality system is 100 
		rewardItem = {--If you have disabled quality set [XX] to [0]
			[80] = {"thym", 5},--Upper 80% to 100
			[50] = {"thym", 3},--Upper 50% to 80
			[25] = {"thym", 2},--Upper 25% to 50
			[0] = {"thym", 1},--Upper 0% to 25
		},
		grounded = 0.25,--downgrade under ground
	},
}


