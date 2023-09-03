Config = {}

Config.VORP = true								-- Choose your Framework here :) Set it to true.
Config.GUM = false
Config.RedEM = false
Config.RedEM2023 = false

Config.Webhook = false							-- Set to true, if you wanna enable the Webhook system! <3
Config.Webhooklink = "INSERT YOUR WEBHOOK HERE"
			
Config.Debug = false							-- Just for Debug Information for Server Owner.
Config.ReelSpeed = 0.0125						-- The Basic Reel Speed. I prefer dont change it. Because Player can increase the Speed Ingame :)
Config.Task = 1200								-- Just leave it at 1200. 

Config.SubBait = false							-- Enable or Disable the Subitem of your used Baits.

Config.Baits = {								-- Setup here your Bait Config. Wich Bait triggers wich Fish. You can Set it up however you like it.
    ["p_baitBread01x"] = {
        "A_C_FISHRAINBOWTROUT_01_LG",
        "A_C_FISHRAINBOWTROUT_01_MS",
        "A_C_FISHLAKESTURGEON_01_LG",
        "A_C_FISHMUSKIE_01_LG",
    },
    ["p_baitCorn01x"] = {
        "A_C_FISHBLUEGIL_01_MS",
        "A_C_FISHBLUEGIL_01_SM",
        "A_C_FISHLAKESTURGEON_01_LG",
        "A_C_FISHMUSKIE_01_LG",
        "A_C_FISHRAINBOWTROUT_01_LG",
        "A_C_FISHRAINBOWTROUT_01_MS",
    },
    ["p_baitCheese01x"] = {
        "A_C_FISHBLUEGIL_01_MS",
        "A_C_FISHBLUEGIL_01_SM",
        "A_C_FISHLAKESTURGEON_01_LG",
        "A_C_FISHMUSKIE_01_LG",
        "A_C_FISHRAINBOWTROUT_01_LG",
        "A_C_FISHRAINBOWTROUT_01_MS",
    },
    ["p_baitWorm01x"] = {
        "A_C_FISHBLUEGIL_01_MS",
        "A_C_FISHBLUEGIL_01_SM",
        "A_C_FISHCHAINPICKEREL_01_MS",
        "A_C_FISHCHAINPICKEREL_01_SM",
        "A_C_FISHLAKESTURGEON_01_LG",
        "A_C_FISHLARGEMOUTHBASS_01_LG",
        "A_C_FISHLARGEMOUTHBASS_01_MS",
        "A_C_FISHLONGNOSEGAR_01_LG",
        "A_C_FISHMUSKIE_01_LG",
        "A_C_FISHPERCH_01_MS",
        "A_C_FISHPERCH_01_SM",
        "A_C_FISHRAINBOWTROUT_01_LG",
        "A_C_FISHRAINBOWTROUT_01_MS",
        "A_C_FISHREDFINPICKEREL_01_MS",
        "A_C_FISHREDFINPICKEREL_01_SM",
        "A_C_FISHROCKBASS_01_MS",
        "A_C_FISHSALMONSOCKEYE_01_LG",
        "A_C_FISHSALMONSOCKEYE_01_ML",
        "A_C_FISHSALMONSOCKEYE_01_MS",
        "A_C_FISHSMALLMOUTHBASS_01_LG",
        "A_C_FISHSMALLMOUTHBASS_01_MS",
    },
    ["p_baitCricket01x"] = {
        "A_C_FISHBLUEGIL_01_MS",
        "A_C_FISHBLUEGIL_01_SM",
        "A_C_FISHLAKESTURGEON_01_LG",
        "A_C_FISHLARGEMOUTHBASS_01_LG",
        "A_C_FISHLARGEMOUTHBASS_01_MS",
        "A_C_FISHMUSKIE_01_LG",
        "A_C_FISHPERCH_01_MS",
        "A_C_FISHPERCH_01_SM",
        "A_C_FISHRAINBOWTROUT_01_LG",
        "A_C_FISHRAINBOWTROUT_01_MS",
        "A_C_FISHREDFINPICKEREL_01_MS",
        "A_C_FISHREDFINPICKEREL_01_SM",
        "A_C_FISHSMALLMOUTHBASS_01_LG",
    },
    ["p_baitcrawfish01x"] = {
        "A_C_FISHBLUEGIL_01_MS",
        "A_C_FISHBLUEGIL_01_SM",
        "A_C_FISHLAKESTURGEON_01_LG",
        "A_C_FISHMUSKIE_01_LG",
        "A_C_FISHPERCH_01_MS",
        "A_C_FISHPERCH_01_SM",
        "A_C_FISHREDFINPICKEREL_01_MS",
        "A_C_FISHREDFINPICKEREL_01_SM",
    },
    ["p_finishedragonfly01x"] = {
        "A_C_FISHBLUEGIL_01_MS",
        "A_C_FISHBLUEGIL_01_SM",
        "A_C_FISHBULLHEADCAT_01_MS",
        "A_C_FISHBULLHEADCAT_01_SM",
        "A_C_FISHLAKESTURGEON_01_LG",
        "A_C_FISHNORTHERNPIKE_01_LG",
        "A_C_FISHPERCH_01_MS",
        "A_C_FISHPERCH_01_SM",
        "A_C_FISHREDFINPICKEREL_01_MS",
        "A_C_FISHREDFINPICKEREL_01_SM",
        "A_C_FISHSALMONSOCKEYE_01_LG",
        "A_C_FISHSALMONSOCKEYE_01_ML",
        "A_C_FISHSALMONSOCKEYE_01_MS",
        "A_C_FISHSMALLMOUTHBASS_01_MS",
    },
    ["p_finishedragonfly01x_hf"] = {
        "A_C_FISHBLUEGIL_01_MS",
        "A_C_FISHBLUEGIL_01_SM",
        "A_C_FISHBULLHEADCAT_01_MS",
        "A_C_FISHBULLHEADCAT_01_SM",
        "A_C_FISHLAKESTURGEON_01_LG",
        "A_C_FISHNORTHERNPIKE_01_LG",
        "A_C_FISHPERCH_01_MS",
        "A_C_FISHPERCH_01_SM",
        "A_C_FISHREDFINPICKEREL_01_MS",
        "A_C_FISHREDFINPICKEREL_01_SM",
        "A_C_FISHSALMONSOCKEYE_01_LG",
        "A_C_FISHSALMONSOCKEYE_01_ML",
        "A_C_FISHSALMONSOCKEYE_01_MS",
        "A_C_FISHSMALLMOUTHBASS_01_MS",
    },
    ["p_FinisdFishlure01x"] = {
        "A_C_FISHBLUEGIL_01_MS",
        "A_C_FISHBLUEGIL_01_SM",
        "A_C_FISHBULLHEADCAT_01_MS",
        "A_C_FISHBULLHEADCAT_01_SM",
        "A_C_FISHLAKESTURGEON_01_LG",
        "A_C_FISHLONGNOSEGAR_01_LG",
        "A_C_FISHNORTHERNPIKE_01_LG",
        "A_C_FISHPERCH_01_MS",
        "A_C_FISHPERCH_01_SM",
        "A_C_FISHREDFINPICKEREL_01_MS",
        "A_C_FISHREDFINPICKEREL_01_SM",
        "A_C_FISHSALMONSOCKEYE_01_LG",
        "A_C_FISHSALMONSOCKEYE_01_ML",
        "A_C_FISHSALMONSOCKEYE_01_MS",
        "A_C_FISHSMALLMOUTHBASS_01_MS",
    },
    ["p_FinisdFishlure01x_ef"] = {
        "A_C_FISHBLUEGIL_01_MS",
        "A_C_FISHBLUEGIL_01_SM",
        "A_C_FISHBULLHEADCAT_01_MS",
        "A_C_FISHBULLHEADCAT_01_SM",
        "A_C_FISHLAKESTURGEON_01_LG",
        "A_C_FISHLONGNOSEGAR_01_LG",
        "A_C_FISHNORTHERNPIKE_01_LG",
        "A_C_FISHPERCH_01_MS",
        "A_C_FISHPERCH_01_SM",
        "A_C_FISHREDFINPICKEREL_01_MS",
        "A_C_FISHREDFINPICKEREL_01_SM",
        "A_C_FISHSALMONSOCKEYE_01_LG",
        "A_C_FISHSALMONSOCKEYE_01_ML",
        "A_C_FISHSALMONSOCKEYE_01_MS",
        "A_C_FISHSMALLMOUTHBASS_01_MS",
    },
    ["p_finishdcrawd01x"] = {
        "A_C_FISHBLUEGIL_01_MS",
        "A_C_FISHBLUEGIL_01_SM",
        "A_C_FISHBULLHEADCAT_01_MS",
        "A_C_FISHBULLHEADCAT_01_SM",
        "A_C_FISHCHAINPICKEREL_01_SM",
        "A_C_FISHLAKESTURGEON_01_LG",
        "A_C_FISHLONGNOSEGAR_01_LG",
        "A_C_FISHNORTHERNPIKE_01_LG",
        "A_C_FISHPERCH_01_MS",
        "A_C_FISHPERCH_01_SM",
        "A_C_FISHREDFINPICKEREL_01_MS",
        "A_C_FISHREDFINPICKEREL_01_SM",
        "A_C_FISHSALMONSOCKEYE_01_LG",
        "A_C_FISHSALMONSOCKEYE_01_ML",
        "A_C_FISHSALMONSOCKEYE_01_MS",
        "A_C_FISHSMALLMOUTHBASS_01_MS",
    },
    ["p_finishdcrawd01x_hf"] = {
        "A_C_FISHBLUEGIL_01_MS",
        "A_C_FISHBLUEGIL_01_SM",
        "A_C_FISHBULLHEADCAT_01_MS",
        "A_C_FISHBULLHEADCAT_01_SM",
        "A_C_FISHCHAINPICKEREL_01_SM",
        "A_C_FISHLAKESTURGEON_01_LG",
        "A_C_FISHLONGNOSEGAR_01_LG",
        "A_C_FISHNORTHERNPIKE_01_LG",
        "A_C_FISHPERCH_01_MS",
        "A_C_FISHPERCH_01_SM",
        "A_C_FISHREDFINPICKEREL_01_MS",
        "A_C_FISHREDFINPICKEREL_01_SM",
        "A_C_FISHSALMONSOCKEYE_01_LG",
        "A_C_FISHSALMONSOCKEYE_01_ML",
        "A_C_FISHSALMONSOCKEYE_01_MS",
        "A_C_FISHSMALLMOUTHBASS_01_MS",
    },
    ["p_finishedragonflylegendary01x"] = {
        "A_C_FISHBLUEGIL_01_MS",
        "A_C_FISHBLUEGIL_01_SM",
        "A_C_FISHBULLHEADCAT_01_MS",
        "A_C_FISHBULLHEADCAT_01_SM",
        "A_C_FISHCHAINPICKEREL_01_MS",
        "A_C_FISHCHAINPICKEREL_01_SM",
        "A_C_FISHCHANNELCATFISH_01_LG",
        "A_C_FISHCHANNELCATFISH_01_XL",
        "A_C_FISHLAKESTURGEON_01_LG",
        "A_C_FISHNORTHERNPIKE_01_LG",
        "A_C_FISHLONGNOSEGAR_01_LG",
        "A_C_FISHPERCH_01_MS",
        "A_C_FISHPERCH_01_SM",
        "A_C_FISHREDFINPICKEREL_01_MS",
        "A_C_FISHREDFINPICKEREL_01_SM",
        "A_C_FISHSALMONSOCKEYE_01_LG",
        "A_C_FISHSALMONSOCKEYE_01_ML",
        "A_C_FISHSALMONSOCKEYE_01_MS",
        "A_C_FISHSMALLMOUTHBASS_01_MS",
    },
    ["p_finisdfishlurelegendary01x"] = {
        "A_C_FISHBLUEGIL_01_MS",
        "A_C_FISHBLUEGIL_01_SM",
        "A_C_FISHBULLHEADCAT_01_MS",
        "A_C_FISHBULLHEADCAT_01_SM",
        "A_C_FISHCHAINPICKEREL_01_MS",
        "A_C_FISHCHAINPICKEREL_01_SM",
        "A_C_FISHCHANNELCATFISH_01_LG",
        "A_C_FISHCHANNELCATFISH_01_XL",
        "A_C_FISHLAKESTURGEON_01_LG",
        "A_C_FISHLONGNOSEGAR_01_LG",
        "A_C_FISHNORTHERNPIKE_01_LG",
        "A_C_FISHPERCH_01_MS",
        "A_C_FISHPERCH_01_SM",
        "A_C_FISHREDFINPICKEREL_01_MS",
        "A_C_FISHREDFINPICKEREL_01_SM",
        "A_C_FISHSALMONSOCKEYE_01_LG",
        "A_C_FISHSALMONSOCKEYE_01_ML",
        "A_C_FISHSALMONSOCKEYE_01_MS",
        "A_C_FISHSMALLMOUTHBASS_01_LG",
        "A_C_FISHSMALLMOUTHBASS_01_MS",
    },
    ["p_finishdcrawdlegendary01x"] = {
        "A_C_FISHBLUEGIL_01_MS",
        "A_C_FISHBLUEGIL_01_SM",
        "A_C_FISHBULLHEADCAT_01_MS",
        "A_C_FISHBULLHEADCAT_01_SM",
        "A_C_FISHCHAINPICKEREL_01_MS",
        "A_C_FISHCHAINPICKEREL_01_SM",
        "A_C_FISHCHANNELCATFISH_01_LG",
        "A_C_FISHCHANNELCATFISH_01_XL",
        "A_C_FISHLAKESTURGEON_01_LG",
        "A_C_FISHLONGNOSEGAR_01_LG",
        "A_C_FISHNORTHERNPIKE_01_LG",
        "A_C_FISHPERCH_01_MS",
        "A_C_FISHPERCH_01_SM",
        "A_C_FISHREDFINPICKEREL_01_MS",
        "A_C_FISHREDFINPICKEREL_01_SM",
        "A_C_FISHSALMONSOCKEYE_01_LG",
        "A_C_FISHSALMONSOCKEYE_01_ML",
        "A_C_FISHSALMONSOCKEYE_01_MS",
        "A_C_FISHSMALLMOUTHBASS_01_LG",
        "A_C_FISHSMALLMOUTHBASS_01_MS",
    },
    ["p_lgfwaterspinner01x"] = {
        "A_C_FISHBLUEGIL_01_MS",
        "A_C_FISHBLUEGIL_01_SM",
        "A_C_FISHBULLHEADCAT_01_SM",
        "A_C_FISHCHAINPICKEREL_01_MS",
        "A_C_FISHCHAINPICKEREL_01_SM",
        "A_C_FISHLARGEMOUTHBASS_01_LG",
        "A_C_FISHLARGEMOUTHBASS_01_MS",
        "A_C_FISHLONGNOSEGAR_01_LG",
        "A_C_FISHNORTHERNPIKE_01_LG",
        "A_C_FISHPERCH_01_MS",
        "A_C_FISHPERCH_01_SM",
        "A_C_FISHREDFINPICKEREL_01_MS",
        "A_C_FISHREDFINPICKEREL_01_SM",
        "A_C_FISHROCKBASS_01_MS",
        "A_C_FISHROCKBASS_01_SM",
        "A_C_FISHSALMONSOCKEYE_01_LG",
        "A_C_FISHSALMONSOCKEYE_01_ML",
        "A_C_FISHSALMONSOCKEYE_01_MS",
        "A_C_FISHSMALLMOUTHBASS_01_LG",
        "A_C_FISHSMALLMOUTHBASS_01_MS",
    },
    ["p_lgoc_spinner_v4"] = {
        "A_C_FISHBLUEGIL_01_MS",
        "A_C_FISHBLUEGIL_01_SM",
        "A_C_FISHBULLHEADCAT_01_SM",
        "A_C_FISHCHAINPICKEREL_01_MS",
        "A_C_FISHCHAINPICKEREL_01_SM",
        "A_C_FISHLARGEMOUTHBASS_01_LG",
        "A_C_FISHLARGEMOUTHBASS_01_MS",
        "A_C_FISHLONGNOSEGAR_01_LG",
        "A_C_FISHNORTHERNPIKE_01_LG",
        "A_C_FISHPERCH_01_MS",
        "A_C_FISHPERCH_01_SM",
        "A_C_FISHREDFINPICKEREL_01_MS",
        "A_C_FISHREDFINPICKEREL_01_SM",
        "A_C_FISHROCKBASS_01_MS",
        "A_C_FISHROCKBASS_01_SM",
        "A_C_FISHSALMONSOCKEYE_01_LG",
        "A_C_FISHSALMONSOCKEYE_01_ML",
        "A_C_FISHSALMONSOCKEYE_01_MS",
        "A_C_FISHSMALLMOUTHBASS_01_LG",
        "A_C_FISHSMALLMOUTHBASS_01_MS",
    },
    ["p_smoc_spinner_v4"] = {
        "A_C_FISHBLUEGIL_01_MS",
        "A_C_FISHBLUEGIL_01_SM",
        "A_C_FISHBULLHEADCAT_01_SM",
        "A_C_FISHCHAINPICKEREL_01_MS",
        "A_C_FISHCHAINPICKEREL_01_SM",
        "A_C_FISHLARGEMOUTHBASS_01_LG",
        "A_C_FISHLARGEMOUTHBASS_01_MS",
        "A_C_FISHLONGNOSEGAR_01_LG",
        "A_C_FISHNORTHERNPIKE_01_LG",
        "A_C_FISHPERCH_01_MS",
        "A_C_FISHPERCH_01_SM",
        "A_C_FISHREDFINPICKEREL_01_MS",
        "A_C_FISHREDFINPICKEREL_01_SM",
        "A_C_FISHROCKBASS_01_MS",
        "A_C_FISHROCKBASS_01_SM",
        "A_C_FISHSALMONSOCKEYE_01_LG",
        "A_C_FISHSALMONSOCKEYE_01_ML",
        "A_C_FISHSALMONSOCKEYE_01_MS",
        "A_C_FISHSMALLMOUTHBASS_01_LG",
        "A_C_FISHSMALLMOUTHBASS_01_MS",
    },
    ["p_lgoc_spinner_v6"] = {
        "A_C_FISHBLUEGIL_01_MS",
        "A_C_FISHBLUEGIL_01_SM",
        "A_C_FISHBULLHEADCAT_01_MS",
        "A_C_FISHBULLHEADCAT_01_SM",
        "A_C_FISHCHAINPICKEREL_01_MS",
        "A_C_FISHCHAINPICKEREL_01_SM",
        "A_C_FISHLARGEMOUTHBASS_01_LG",
        "A_C_FISHLARGEMOUTHBASS_01_MS",
        "A_C_FISHLONGNOSEGAR_01_LG",
        "A_C_FISHNORTHERNPIKE_01_LG",
        "A_C_FISHPERCH_01_MS",
        "A_C_FISHPERCH_01_SM",
        "A_C_FISHREDFINPICKEREL_01_MS",
        "A_C_FISHREDFINPICKEREL_01_SM",
        "A_C_FISHROCKBASS_01_MS",
        "A_C_FISHROCKBASS_01_SM",
        "A_C_FISHSALMONSOCKEYE_01_LG",
        "A_C_FISHSALMONSOCKEYE_01_ML",
        "A_C_FISHSALMONSOCKEYE_01_MS",
        "A_C_FISHSMALLMOUTHBASS_01_LG",
        "A_C_FISHSMALLMOUTHBASS_01_MS",
    },
    ["p_smoc_spinner_v6"] = {
        "A_C_FISHBLUEGIL_01_MS",
        "A_C_FISHBLUEGIL_01_SM",
        "A_C_FISHBULLHEADCAT_01_MS",
        "A_C_FISHBULLHEADCAT_01_SM",
        "A_C_FISHCHAINPICKEREL_01_MS",
        "A_C_FISHCHAINPICKEREL_01_SM",
        "A_C_FISHLARGEMOUTHBASS_01_LG",
        "A_C_FISHLARGEMOUTHBASS_01_MS",
        "A_C_FISHLONGNOSEGAR_01_LG",
        "A_C_FISHNORTHERNPIKE_01_LG",
        "A_C_FISHPERCH_01_MS",
        "A_C_FISHPERCH_01_SM",
        "A_C_FISHREDFINPICKEREL_01_MS",
        "A_C_FISHREDFINPICKEREL_01_SM",
        "A_C_FISHROCKBASS_01_MS",
        "A_C_FISHROCKBASS_01_SM",
        "A_C_FISHSALMONSOCKEYE_01_LG",
        "A_C_FISHSALMONSOCKEYE_01_ML",
        "A_C_FISHSALMONSOCKEYE_01_MS",
        "A_C_FISHSMALLMOUTHBASS_01_LG",
        "A_C_FISHSMALLMOUTHBASS_01_MS",
    },
    ["p_legendaryfwspinner"] = {
        "A_C_FISHBLUEGIL_01_MS",
        "A_C_FISHBLUEGIL_01_SM",
        "A_C_FISHBULLHEADCAT_01_MS",
        "A_C_FISHBULLHEADCAT_01_SM",
        "A_C_FISHCHAINPICKEREL_01_MS",
        "A_C_FISHCHAINPICKEREL_01_SM",
        "A_C_FISHLARGEMOUTHBASS_01_LG",
        "A_C_FISHLARGEMOUTHBASS_01_MS",
        "A_C_FISHLONGNOSEGAR_01_LG",
        "A_C_FISHNORTHERNPIKE_01_LG",
        "A_C_FISHPERCH_01_MS",
        "A_C_FISHPERCH_01_SM",
        "A_C_FISHREDFINPICKEREL_01_MS",
        "A_C_FISHREDFINPICKEREL_01_SM",
        "A_C_FISHROCKBASS_01_MS",
        "A_C_FISHROCKBASS_01_SM",
        "A_C_FISHSALMONSOCKEYE_01_LG",
        "A_C_FISHSALMONSOCKEYE_01_ML",
        "A_C_FISHSALMONSOCKEYE_01_MS",
        "A_C_FISHSMALLMOUTHBASS_01_LG",
        "A_C_FISHSMALLMOUTHBASS_01_MS",
    }
}


-------------------------------------------------------------
------------------- Implement this Items in your Server :) --
-------------------------------------------------------------
-- Database Items:
-- Fishes:
-- a_c_fishbluegil_01_ms
-- a_c_fishbluegil_01_sm
-- a_c_fishbullheadcat_01_ms
-- a_c_fishbullheadcat_01_sm
-- a_c_fishchainpickerel_01_ms
-- a_c_fishchainpickerel_01_sm
-- a_c_fishchannelcatfish_01_lg
-- a_c_fishchannelcatfish_01_xl
-- a_c_fishlakesturgeon_01_lg
-- a_c_fishlargemouthbass_01_lg
-- a_c_fishlargemouthbass_01_ms
-- a_c_fishlongnosegar_01_lg
-- a_c_fishmuskie_01_lg
-- a_c_fishnorthernpike_01_lg
-- a_c_fishperch_01_ms
-- a_c_fishperch_01_sm
-- a_c_fishrainbowtrout_01_lg
-- a_c_fishrainbowtrout_01_ms
-- a_c_fishredfinpickerel_01_ms
-- a_c_fishredfinpickerel_01_sm
-- a_c_fishrockbass_01_ms
-- a_c_fishrockbass_01_sm
-- a_c_fishsalmonsockeye_01_lg
-- a_c_fishsalmonsockeye_01_ml
-- a_c_fishsalmonsockeye_01_ms
-- a_c_fishsmallmouthbass_01_lg
-- a_c_fishsmallmouthbass_01_ms
-- Baits:
-- p_baitBread01x
-- p_baitCorn01x
-- p_baitCheese01x
-- p_baitWorm01x
-- p_baitCricket01x
-- p_baitcrawfish01x
-- p_finishedragonfly01x
-- p_finishedragonfly01x_hf
-- p_FinisdFishlure01x
-- p_FinisdFishlure01x_ef
-- p_finishdcrawd01x
-- p_finishdcrawd01x_hf
-- p_finishedragonflylegendary01x
-- p_finisdfishlurelegendary01x
-- p_finishdcrawdlegendary01x
-- p_lgfwaterspinner01x
-- p_lgoc_spinner_v4
-- p_lgoc_spinner_v6
-- p_smoc_spinner_v4
-- p_smoc_spinner_v6
-- p_legendaryfwspinner

-- Shop Config.

Config.Shop = true															-- If you wanna use the Shop System. Set it to true. othweise set to false.

Config.MenuData = "menuapi:getData"								-- Insert your MenuAPI here.
Config.InputData = "guminputs:getInput"										-- Insert your InputAPI here.
		
Config.Location = { x = 2083.44, y = -596.31, z = 43.10, h = 261.87 }		-- The Location of the Fishing Shop.		
															

Config.OpenShopKey = 0xD9D0E1C0

Config.Blip = true						-- If you wanna give the Shop a Map Marker. Set to true.
Config.BlipDesign = -852241114			-- Add your Blip Icon here.
Config.Blipname = "Greg"			-- Choose your Blipname
Config.BlipSize = 0.2

Config.Model = true						-- Set to true for a cool Fisher NPC x)
Config.ModelSkin = "mp_dr_u_m_m_pikesbasin_02" 

-- PriceList
-- Naturals								-- Setup all the Prices up here! :)
Config.BreadPrice = 0.05
Config.CornPrice = 0.05
Config.CheesePrice = 0.05
Config.WormPrice = 0.05
Config.CricketPrice = 0.05
Config.Crabprice = 0.08
-- Fakebaits
Config.SmallLib = 0.20
Config.BigLib = 0.30
Config.SmallWood = 0.15
Config.BigWood = 0.25
Config.SmallIns2 = 0.15
Config.BigIns = 0.25
Config.RedBlink = 0.35
Config.SmallV4 = 0.35
Config.BigV4 = 0.45
Config.SmallV6 = 0.35
Config.BigV6 = 0.45

-------------------------
-- Translation Config. --
-------------------------
Config.Language = {
	-- Fishnames:
	A_C_FISHBLUEGIL_01_MS = "Crapet arlequin Moyen",
	A_C_FISHBLUEGIL_01_SM = "Crapet arlequin Petit",
	A_C_FISHBULLHEADCAT_01_MS = "poisson-chat Moyen",
	A_C_FISHBULLHEADCAT_01_SM = "poisson-chat Petit",
	A_C_FISHCHAINPICKEREL_01_MS = "Brochet Maillé moyen",
	A_C_FISHCHAINPICKEREL_01_SM = "Brochet Maillé petit",
	A_C_FISHCHANNELCATFISH_01_LG = "Poisson-chat à la fourche tachetée",
	A_C_FISHCHANNELCATFISH_01_XL = "Poisson-chat à la fourche tachetée",
	A_C_FISHLAKESTURGEON_01_LG = "esturgeon de mer",
	A_C_FISHLARGEMOUTHBASS_01_LG = "Achigan à grande bouche",
	A_C_FISHLARGEMOUTHBASS_01_MS = "Achigan à grande bouche",
	A_C_FISHLONGNOSEGAR_01_LG = "Gar a nez long",
	A_C_FISHMUSKIE_01_LG = "poumon musculaire",
	A_C_FISHNORTHERNPIKE_01_LG = "brochet de l'amour",
	A_C_FISHPERCH_01_MS = "Perche moyenne",
	A_C_FISHPERCH_01_SM = "Perche petite",
	A_C_FISHRAINBOWTROUT_01_LG = "Gramde Truite arc-en-ciel",
	A_C_FISHRAINBOWTROUT_01_MS = "Petite Truite arc-en-ciel",
	A_C_FISHREDFINPICKEREL_01_MS = "Brochet D'Amérique moyen",
	A_C_FISHREDFINPICKEREL_01_SM = "Petit Brochet d'Amérique",
	A_C_FISHROCKBASS_01_MS = "Crapet de Roche moyen",
	A_C_FISHROCKBASS_01_SM = "Petit Crapet de Roche",
	A_C_FISHSALMONSOCKEYE_01_LG = "saumon rouge",
	A_C_FISHSALMONSOCKEYE_01_ML = "saumon rouge",
	A_C_FISHSALMONSOCKEYE_01_MS = "saumon rouge",
	A_C_FISHSMALLMOUTHBASS_01_LG = "achigan à petite bouche",
	A_C_FISHSMALLMOUTHBASS_01_MS = "achigan à petite bouche",
	
	-- Translations Bottom
	Prepare = "Préparation",
	Fishing = "pecher",
	Fight = "tirer",
	Interaction = "interaction",
	
-- Translation Notify
	Header = "Pêche",
	ImageFirst = "INVENTORY_ITEMS",
	ImageLast = "weapon_fishingrod",
	Youbuy = "Tu as acheter des articles",
	For = " pour ",
	Currency = " $",
	NotEnoughMoney = "Tu n'a pas assez d'or",
	WrongAmoung = "Entrée invalide!",
	NotEnoughSpace = "Tu n'a pas assez d'argent",
	
	-- Translations Input Bottom	
	Aim = "But",
	Speed = "Vitesse",
	Throw = "Éjecter",
	Hit = "Attaques",
	Stop = "Récuperer la ligne",
	Slow = "Récupérer la ligne lentement",
	Pull = "Sortir",
	Cut = "Couper",
	Catch = "Attrapper",
	Release = "retour",	
	
	-- Shop Translations
	
	Interact = 'Parler',
	Underline = "Ouai c'est Greg",
	Title = "Pêche",
	Naturalbaits = "appât naturel",
	FakeBaits = "faux appât",
	
	Confirm = "Confirmer",
	Amount = "Combien en voulez-vous acheter?",
	Singleprice = "Prix:",
	
	-- Shop Label
	-- Natural
	Bread = "Pain",
	Corn = "Mais",
	Cheese = "Fromage",
	Worm = "Ver",
	Cricket = "Cricket",
	Crab = "Crabe",
	-- Fake		
	SmallLib = "Petite libellule",
	BigLib = "Grande libellule",
	SmallWood = "Petit poisson en bois",
	BigWood = "Gros poisson en bois",
	SmallIns = "Appât pour petits insectes",
	BigIns = "Grand appât à insectes",
	RedBlink = "Appat rouge",
	SmallV4 = "Petit indicateur V4",
	BigV4 = "Grand indicateur V4",
	SmallV6 = "Petit indicateur V6",
	BigV6 = "Grand indicateur V6",
	
	-- Notification
	YouCollected = "Tu as 1x",
	-- Webhook
	Collected = "collecté 1x",
	With = "avec",
}


