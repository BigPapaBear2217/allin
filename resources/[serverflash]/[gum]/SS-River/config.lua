-- Author '🅱🅻🆄🅴🆈🅴🆂#1364' by Sirec Studio -- 
-- REPORT ANY BUGS ON https://discord.gg/9XNBaQSmMd --

local VorpCore = {}
TriggerEvent("getCore",function(core)
    VorpCore = core
end)

Config = {

progressBars = true, -- if you have progressBars !
FredMetabolism = true, -- if you have Fred Metabolism!
TpRealistic = false, -- if you tp_realistic_flieswamping !
GoldPanning = true, -- if you have SS-GoldPanning !
    
PressKey = 0x760A9C6F, -- (G) Key to press when you are near Water
WashKey = 0x07CE1E61, -- (MOUSE1) to wash yourself
DrinkKey = 0xF84FA74F, -- (MOUSE2) Key to drink water
FillKey = 0xCEFD9220, -- (E) Key to fill the canteen
FillBotKey = 0xE30CD707, -- (R) to fill the bottle
SearchGold = 0xD9D0E1C0, -- (SPACE) to search gold
FillBucket = 0xCEE12B50, -- (MOUSE 3) to fill the bucket
    
WashDict = "amb_misc@world_human_wash_face_bucket@ground@male_a@idle_d",
WashAnim = "idle_l",
DrinkCanDict = "amb_rest_drunk@world_human_drinking@male_a@idle_a",
DrinkCanAnim = "idle_a",
DrinkScene = "WORLD_HUMAN_BUCKET_DRINK_GROUND",
DrinkTime = 17, -- 17 seconds
FillScene = "WORLD_HUMAN_CROUCH_INSPECT",
FillTime = 5, -- 5 seconds
-------------------------------------------
Can100 = "can_100",
Can75 = "can_75",
Can50 = "can_50",
Can25 = "can_25",
EmptyCan = "empty_can",
EmptyBottle = "glassbottle",
FullBottle = "water",
--------------------------------------------    
Text = {
    ["tittle_notification"] = "Riviere",
    ["riv_txt"] = "Utilisé",
    ["riv_wash"] = "se laver",
    ["riv_drink"] = "boire",
    ["riv_fill"] = "Remplir la gourde",
    ["riv_fillbot"] = "Remplir la bouteille",
    ["riv_fillbucket"] = "Remplir un seau",
    ["riv_drinkwater"] = "Tu avez bu l'eau de",
    ["riv_washface"] = "Tu es propre maintenant !",
    ["riv_fillcanteen"] = "Tu viens de remplir ta gourde !",
    ["riv_fillbottle"] = "Vous venez de remplir votre bouteille !",
    ["riv_noempcan"] = "Vous n'avez pas de bidon vide à remplir !",
    ["riv_noempbot"] = "Vous n'avez pas de bouteille vide à remplir !",
    ["riv_fillb"] = "Remplir la bouteille...",
    ["riv_fillb1"] = "Remplir la bouteille en verre...",
    ["riv_searchgold"] = "RECHERCHE OR",
        },
}

function NOTIFY(text) --SET YOUR NOTIFYCATIONS
VorpCore.NotifyLeft(Config.Text["tittle_notification"], text, "generic_textures", "tick", 7000, "COLOR_WHITE")
end