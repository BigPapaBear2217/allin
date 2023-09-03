-------------------------------
-- DOCUMENTATION : https://docs.kaddarem.com/
--------------------------------

Config = {}

Config.Debug = false
Config.BlipSprite = `blip_shop_tailor`	 -- Clothing shop sprite
Config.BlipSpriteWardrobes = `blip_shop_wardrobe`
Config.DisplayOutfitId = false
Config.PercentResell = 0.33 -- Use 0 tu turn off the resell feature : 0.5 = 50% of the initial price
Config.OpenStoreNewCharacter = true
Config.EnablePrompt = true
Config.ExtraLightIntensity = 10.0 -- Light added in the store to see better the character
Config.OffsetRoutingBucket = 0 --value added to the serverID of the player to define the instance ID

Config.oldVORPChar = false --(Only for VORP users) to use the C# version of VORP Character

Config.Keys = {
	enter = "INPUT_FRONTEND_RB",
	buyGold = "INPUT_INTERACT_ANIMAL",
	turn = "INPUT_CONTEXT_X",
	delete = "INPUT_FRONTEND_RS",
	resell = "INPUT_LOOK_BEHIND"
}

Config.KeysDisabled = {
	`INPUT_MOVE_UD`,
	`INPUT_MOVE_LR`,
	`INPUT_MOVE_LB`,
	`INPUT_COVER`
}

Config.Stores = {
	{ -- VALENTINE
		book = vector4(-326.17, 773.757, 117.5, -170.0),
		fittingRoom = vector4(-329.31, 775.11, 120.63, 294.79),
		pedCoords = vector4(-325.67, 772.63, 116.44, 11.3),
		pedModel = `S_M_M_Tailor_01`,
		blip = true,
		distancePrompt = 2.0
	},
	{ -- SAINT DENIS
		book = vector4(2554.619, -1167.834, 53.746,0.0),
		fittingRoom = vector4(2555.89, -1161.23, 52.7, 12.85),
		pedCoords = vector4(2554.6, -1166.83, 52.7, 180.95),
		pedModel = `S_M_M_Tailor_01`,
		blip = true,
		distancePrompt = 2.0
	},
	{ -- BLACK WATER
		book = vector4(-761.98,-1292.61,43.885,180.0),
		fittingRoom = vector4(-767.74, -1295.17, 42.84, 304.87),
		pedCoords = vector4(-761.75, -1293.92, 42.84, 357.16),
		pedModel = `S_M_M_Tailor_01`,
		blip = true,
		distancePrompt = 2.0
	},
	{ -- Tumbleweed
		book = vector4(-5486.660, -2936.75, -0.346, -144.0),
		fittingRoom = vector4(-5479.77, -2933.07, -1.36, 181.29),
		pedCoords = false,
		blip = true,
		distancePrompt = 2.0
	},
	
}

Config.Wardrobes = {
	{
		location = vector3(1223.55, -1288.67, 76.9),
		blip = true,
		distancePrompt = 2.0,
		needInstance = false
	},
	{
		location = vector3(-184.5, 625.02, 114.09),
		blip = true,
		distancePrompt = 2.0,
		needInstance = false
	},
	{
		location = vector3(2549.82, -1169.58, 53.68),
		blip = true,
		distancePrompt = 2.0,
		needInstance = false
	},
	{
		location = vector3(674.29, -1222.14, 44.93),
		blip = true,
		distancePrompt = 2.0,
		needInstance = false
	},
	{
		location = vector3(1355.82, -6954.32, 61.24),
		blip = true,
		distancePrompt = 2.0,
		needInstance = false
	},
}

-- Price for each category
-- use -1 to turn off the category
Config.Prices = {
	coats_closed = 5,
	chaps = 4,
	spats = 5,
	ponchos = 4.25,
	holsters_left = 3.12,
	masks = 10,
	neckwear = 2.15,
	armor = 20,
	jewelry_rings_left = 1.25,
	jewelry_rings_right = 1.25,
	boot_accessories = 3.55,
	gloves = 4.25,
	badges = 2,
	gunbelts = 5,
	loadouts = 6.7,
	vests = 5,
	shirts_full = 5,
	pants = 5,
	suspenders = 1.5,
	gunbelt_accs = 1,
	hats = 3.5,
	cloaks = 5,
	coats = 5,
	belts = 2,
	gauntlets = 3,
	eyewear = 6,
	boots = 5,
	jewelry_bracelets = 2,
	satchels = 10,
	accessories = 2,
	neckties = 2,
	skirts = 5,
	belt_buckles = 1,
	dresses = 5
}

Config.modelPrices = {}
Config.modelPrices["male"] = {}
Config.modelPrices["female"] = {}
for category in pairs (Config.Prices) do
	Config.modelPrices["male"][category] = {}
	Config.modelPrices["female"][category] = {}
end
--Config.modelPrices[<sexe>][<category>][<number>] = <price>
Config.modelPrices["male"]["hats"][2] = Config.Prices.hats * 1.25
Config.modelPrices["male"]["hats"][3] = {money=2.75, gold = 2}
Config.modelPrices["male"]["hats"][4] = 5.5
Config.modelPrices["male"]["hats"][5] = 4.25
Config.modelPrices["male"]["hats"][6] = Config.Prices.hats * 2
Config.modelPrices["female"]["skirts"][6] = Config.Prices.hats * 2

--Function to buy item with gold for framework without native way to do it
Config.CanBuyWithGold = function (source,price)
	return false
end