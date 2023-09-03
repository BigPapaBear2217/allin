Config = {}

-- TODO
-- CAMERA FACE NPC
-- NPC ANIMATION

--menu position
-- "center" / "top-left" / "top-right"
Config.Align = "top-left"

Config.defaultlang = "fr_lang"

-- open stores
Config.Key = 0xCEFD9220 --[E]

--- STORES ---
Config.Stores = {


    StDenis = {
        blipAllowed = true,
        BlipName = "Magasin de ST Denis",
        storeName = "ST Denis",
        PromptName = " Marchand divers",
        sprite = 1475879922,
        x = 2824.863, y = -1319.74, z = 45.755, h = -39.61,
        distanceOpenStore = 2.0,
        NpcAllowed = true,
        NpcModel = "U_M_M_NbxGeneralStoreOwner_01",
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        category = { "nourriture", "outil", "soin" },
        storeType = { "vendre", "acheter" }, -- only one type
        StoreHoursAllowed = false,
        RandomPrices = false,
        StoreOpen = 7, -- am
        StoreClose = 21, -- pm
        DynamicStore = true, -- set to true if you want to increase buy limit again when someone has sold the same item to the store
       --[[ LimitedItems = { --delete or leave empty if you don't want the store to to buy only a certain quantity of an item
            {itemName="apple", amount=10, type="vendre"},  --add as many items you want and set limit sell amount (obviously the item has to be in Config.SellItems)
            {itemName="bandage", amount=10, type="acheter"}  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
        }]]
    },


    Guarma = {
        blipAllowed = true,
        BlipName = "Magasin de Guarma",
        storeName = "Guarma",
        PromptName = "Magasin de Guarma",
        sprite = 1475879922,
        x = 1300.59, y = -7003.66, z = 50.69, h = -39.61,
        distanceOpenStore = 2.0,
        NpcAllowed = true,
        NpcModel = "U_M_M_NbxGeneralStoreOwner_01",
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        category = { "nourriture", "outil", "soin" },
        storeType = { "vendre", "acheter" }, -- only one type
        StoreHoursAllowed = false,
        RandomPrices = false,
        StoreOpen = 7, -- am
        StoreClose = 21, -- pm
        DynamicStore = true, -- set to true if you want to increase buy limit again when someone has sold the same item to the store
      --  LimitedItems = { --delete or leave empty if you don't want the store to to buy only a certain quantity of an item
        --    {itemName="apple", amount=10, type="vendre"},  --add as many items you want and set limit sell amount (obviously the item has to be in Config.SellItems)
         --   {itemName="bandage", amount=10, type="acheter"}  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
       -- }
    } 

}

--[[
    Rhodes = {
        blipAllowed = true,
        BlipName = "Rhodes Store",
        storeName = "Rhodes",
        PromptName = "  Marchand divers",
        sprite = 1475879922,
        x = 1330.227, y = -1293.41, z = 76.021, h = 68.88,
        distanceOpenStore = 5.0,
        NpcAllowed = true,
        NpcModel = "S_M_M_UNIBUTCHERS_01",
        AllowedJobs = { "police", "sheriff" }, -- jobs allowed as many as you want
        JobGrade = 0,
        category = { "food", "tools", "meds" },
        storeType = { "vendre", "acheter" },
        StoreHoursAllowed = true,
        RandomPrices = true,
        StoreOpen = 8, -- am
        StoreClose = 20, -- pm
        DynamicStore = true, -- set to true if you want to increase buy limit again when someone has sold the same item to the store
        LimitedItems = { --delete or leave empty if you don't want the store to to buy only a certain quantity of an item
            {itemName="apple", amount=10, type="vendre"},  --add as many items you want and set limit sell amount (obviously the item has to be in Config.SellItems)
            {itemName="bandage", amount=10, type="acheter"}  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
        }
    },


	
	
	Guarma = {
        blipAllowed = true,
        BlipName = "Almacén general",
        storeName = "Almacén general",
        PromptName = " Marchand divers",
        sprite = 1475879922,
        x = 1369.19, y = -6989.42, z = 57.3, h = 56.36,
        distanceOpenStore = 2.0,
        NpcAllowed = true,
        NpcModel = "U_M_M_NbxGeneralStoreOwner_01",
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        category = { "food", "tools", "meds" },
        storeType = { "vendre", "acheter" }, -- only one type
        StoreHoursAllowed = false,
        RandomPrices = false,
        StoreOpen = 7, -- am
        StoreClose = 21, -- pm
        DynamicStore = true, -- set to true if you want to increase buy limit again when someone has sold the same item to the store
        LimitedItems = { --delete or leave empty if you don't want the store to to buy only a certain quantity of an item
            {itemName="apple", amount=10, type="vendre"},  --add as many items you want and set limit sell amount (obviously the item has to be in Config.SellItems)
            {itemName="bandage", amount=10, type="acheter"}  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
        }
    }


]]
	--[[
    Valentine = {
        blipAllowed = true,
        BlipName = "valentine store",
        storeName = "valentine",
        PromptName = " Marchand diverssssss",
        sprite = 1475879922,
        x = -324.628, y = 803.9818, z = 116.88, h = -81.17, --blip/ prompt and npc positions
        distanceOpenStore = 3.0,
        NpcAllowed = true,
        NpcModel = "U_M_M_NbxGeneralStoreOwner_01",
        AllowedJobs = {}, -- empty everyone can use
        JobGrade = 0, -- rank allowed
        category = { "food", "tools", "meds" }, -- you need to add the same words to the sellitems and buyitems category you can add new categories as long the items have the category names
        storeType = { "sell", "buy" }, -- choose the storetype if you translate this you must do the same in the client.lua file
        StoreHoursAllowed = true, -- if you want the stores to use opening and closed hours
        RandomPrices = true,
        StoreOpen = 7, -- am
        StoreClose = 21, -- pm
        DynamicStore = true, -- set to true if you want to increase buy limit again when someone has sold the same item to the store
        LimitedItems = { --delete or leave empty if you don't want the store to to buy only a certain quantity of an item
            {itemName="apple", amount=10, type="sell"},  --add as many items you want and set limit sell amount (obviously the item has to be in Config.SellItems)
            {itemName="bandage", amount=10, type="buy"}  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
        }
    }, --]]
	
	--[[
    Strawberry = {
        blipAllowed = true,
        BlipName = "Strawberry Store",
        storeName = "Strawberry",
        PromptName = " Marchand diverssssss",
        sprite = 1475879922,
        x = -1789.66, y = -387.918, z = 159.32, h = 56.96,
        distanceOpenStore = 5.0,
        NpcAllowed = true,
        NpcModel = "S_M_M_UNIBUTCHERS_01",
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        category = { "food", "tools", "meds" },
        storeType = { "sell", "buy" },
        StoreHoursAllowed = true,
        RandomPrices = true,
        StoreOpen = 6, -- am
        StoreClose = 23, -- pm
        DynamicStore = true, -- set to true if you want to increase buy limit again when someone has sold the same item to the store
        LimitedItems = { --delete or leave empty if you don't want the store to to buy only a certain quantity of an item
            {itemName="apple", amount=10, type="sell"},  --add as many items you want and set limit sell amount (obviously the item has to be in Config.SellItems)
            {itemName="bandage", amount=10, type="buy"}  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
        }
    },
    Blackwater = {
        blipAllowed = true,
        BlipName = "Blackwater Store",
        storeName = "Blackwater",
        PromptName = " Marchand diverssssss",
        sprite = 1475879922,
        x = -784.738, y = -1321.73, z = 42.884, h = 179.63,
        distanceOpenStore = 5.0,
        NpcAllowed = true,
        NpcModel = "S_M_M_UNIBUTCHERS_01",
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        category = { "food", "tools", "meds" },
        storeType = { "sell", "buy" }, -- only one type
        StoreHoursAllowed = true,
        RandomPrices = true,
        StoreOpen = 7, -- am
        StoreClose = 21, -- pm
        DynamicStore = true, -- set to true if you want to increase buy limit again when someone has sold the same item to the store
        LimitedItems = { --delete or leave empty if you don't want the store to to buy only a certain quantity of an item
            {itemName="apple", amount=10, type="sell"},  --add as many items you want and set limit sell amount (obviously the item has to be in Config.SellItems)
            {itemName="bandage", amount=10, type="buy"}  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
        }
    },
    Armadillo = {
        blipAllowed = true,
        BlipName = "Armadillo Store",
        storeName = "Armadillo",
        PromptName = " Marchand diverssssss",
        sprite = 1475879922,
        x = -3687.34, y = -2623.53, z = -13.43, h = -85.32,
        distanceOpenStore = 3.0,
        NpcAllowed = true,
        NpcModel = "U_M_M_NbxGeneralStoreOwner_01",
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        category = { "food", "tools", "meds" },
        storeType = { "sell", "buy" },
        StoreHoursAllowed = true,
        RandomPrices = true,
        StoreOpen = 7, -- am
        StoreClose = 21, -- pm
        DynamicStore = true, -- set to true if you want to increase buy limit again when someone has sold the same item to the store
        LimitedItems = { --delete or leave empty if you don't want the store to to buy only a certain quantity of an item
            {itemName="apple", amount=10, type="sell"},  --add as many items you want and set limit sell amount (obviously the item has to be in Config.SellItems)
            {itemName="bandage", amount=10, type="buy"}  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
        }
    },
    Tumbleweed = {
        blipAllowed = true,
        BlipName = "Tumbleweed Store",
        storeName = "Tumbleweed",
        PromptName = " Marchand diverssssss",
        sprite = 1475879922,
        x = -5485.70, y = -2938.08, z = -0.299, h = 127.72,
        distanceOpenStore = 3.0,
        NpcAllowed = true,
        NpcModel = "U_M_M_NbxGeneralStoreOwner_01",
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        category = { "food", "tools", "meds" },
        storeType = { "sell", "buy" }, -- only one type
        StoreHoursAllowed = true,
        RandomPrices = true,
        StoreOpen = 7, -- am
        StoreClose = 21, -- pm
        DynamicStore = true, -- set to true if you want to increase buy limit again when someone has sold the same item to the store
        LimitedItems = { --delete or leave empty if you don't want the store to to buy only a certain quantity of an item
            {itemName="apple", amount=10, type="sell"},  --add as many items you want and set limit sell amount (obviously the item has to be in Config.SellItems)
            {itemName="bandage", amount=10, type="buy"}  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
        }
    },
	]]--
	--[[
    Vanhorn = {
        blipAllowed = true,
        BlipName = "Vanhorn Store",
        storeName = "Vanhorn",
        PromptName = " Marchand diverssssss",
        sprite = 1475879922,
        x = 3025.420, y = 561.7910, z = 43.722, h = -99.20,
        distanceOpenStore = 2.5,
        NpcAllowed = true,
        NpcModel = "U_M_M_NbxGeneralStoreOwner_01",
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        category = { "food", "tools", "meds" },
        storeType = { "sell", "buy" }, -- only one type
        StoreHoursAllowed = true,
        RandomPrices = true,
        StoreOpen = 7, -- am
        StoreClose = 21, -- pm
        DynamicStore = true, -- set to true if you want to increase buy limit again when someone has sold the same item to the store
        LimitedItems = { --delete or leave empty if you don't want the store to to buy only a certain quantity of an item
            {itemName="apple", amount=10, type="sell"},  --add as many items you want and set limit sell amount (obviously the item has to be in Config.SellItems)
            {itemName="bandage", amount=10, type="buy"}  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
        }
    },
    BlackwaterFishing = {
        blipAllowed = true,
        BlipName = "Fishing store",
        storeName = "Bait Shop",
        PromptName = "fishing store",
        sprite = 3442726182,
        x = -757.069, y = -1360.76, z = 43.724, h = -90.80,
        distanceOpenStore = 2.5,
        NpcAllowed = false,
        NpcModel = "U_M_M_NbxGeneralStoreOwner_01",
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        category = { "bait", "tools", },
        storeType = { "sell", "buy" }, -- only one type
        StoreHoursAllowed = true,
        RandomPrices = true,
        StoreOpen = 7, -- am
        StoreClose = 21, -- pm
        DynamicStore = true, -- set to true if you want to increase buy limit again when someone has sold the same item to the store
        LimitedItems = { --delete or leave empty if you don't want the store to to buy only a certain quantity of an item
            {itemName="bait", amount=10, type="sell"},  --add as many items you want and set limit sell amount (obviously the item has to be in Config.SellItems)
            {itemName="bait", amount=10, type="buy"}  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
        }
    },
    Wapiti = {
        blipAllowed = true,
        BlipName = "Wapiti store",
        storeName = "Wapiti Shop",
        PromptName = "Native store",
        sprite = 1475879922,
        x = 449.7435, y = 2216.437, z = 245.30, h = -73.78,
        distanceOpenStore = 2.5,
        NpcAllowed = true,
        NpcModel = "CS_EagleFlies",
        AllowedJobs = {}, -- jobs allowed
        JobGrade = 0,
        category = { "food", "tools", },
        storeType = { "sell", "buy" }, -- only one type
        StoreHoursAllowed = true,
        RandomPrices = true,
        StoreOpen = 7, -- am
        StoreClose = 21, -- pm
        DynamicStore = true, -- set to true if you want to increase buy limit again when someone has sold the same item to the store
        LimitedItems = { --delete or leave empty if you don't want the store to to buy only a certain quantity of an item
            {itemName="bait", amount=10, type="sell"},  --add as many items you want and set limit sell amount (obviously the item has to be in Config.SellItems)
            {itemName="bait", amount=10, type="buy"}  --add as many items you want and set limit buy amount (obviously the item has to be in Config.BuyItems)
        }
		
		
    }]]--

----------------------------------------------- STORE ITEMS --------------------------------------------------------------

-- ItemLable = translate here
-- itemName = same as in your databse
-- curencytype = "cash" or "gold" only use one.
-- price = numbers only
-- desc = a description of the item
-- category = where the item will be displayed at

---------------------------------------------------- SELL ITEMS --------------------------------------------------------------
Config.SellItems = {
    StDenis = {

    }
}

------------------------------------------------------ BUY ITEMS ---------------------------------------------------------
Config.BuyItems = {
    StDenis = {
        { itemLabel = "Conserve légumes", itemName = "conserve_de_legumes", currencyType = "cash", buyprice = 0.2, randomprice = math.random(30, 52), desc = "Acheter", category = "nourriture" },
        { itemLabel = "Conserve viandes", itemName = "conserve_de_viande", currencyType = "cash", buyprice = 0.3, randomprice = math.random(12), desc = "Acheter", category = "nourriture" },
        { itemLabel = "Boisson fruits", itemName = "boisson_fruits", currencyType = "cash", buyprice = 0.15, randomprice = math.random(30, 40), desc = "Acheter", category = "nourriture" },
        { itemLabel = "Boisson fruits2", itemName = "consumable_raspberrywater", currencyType = "cash", buyprice = 0.15, randomprice = math.random(30, 40), desc = "Acheter", category = "nourriture" },
        { itemLabel = "Café", itemName = "consumable_coffee", currencyType = "cash", buyprice = 0.15, randomprice = math.random(30, 40), desc = "Acheter", category = "nourriture" },
        { itemLabel = "bandage", itemName = "Bandage", currencyType = "cash", buyprice = 10, randomprice = math.random(30, 40), desc = "Acheter", category = "soin" },
        { itemLabel = "Pigeon de détresse", itemName = "birdalert", currencyType = "cash", buyprice = 1, randomprice = math.random(30, 40), desc = "Acheter", category = "outil" },
        { itemLabel = "Gourde", itemName = "empty_can", currencyType = "cash", buyprice = 1, randomprice = math.random(30, 40), desc = "Acheter", category = "outil" },
    },
    Guarma = {
        { itemLabel = "Conserve de légumes", itemName = "conserve_de_legumes", currencyType = "cash", buyprice = 0.2, randomprice = math.random(30, 52), desc = "Acheter", category = "nourriture" },
        { itemLabel = "Conserve de viande", itemName = "conserve_de_viande", currencyType = "cash", buyprice = 0.3, randomprice = math.random(12), desc = "Acheter", category = "nourriture" },
        { itemLabel = "Boisson aux fruits", itemName = "boisson_fruits", currencyType = "cash", buyprice = 0.15, randomprice = math.random(30, 40), desc = "Acheter", category = "nourriture" },
        { itemLabel = "Conserve de chillis", itemName = "b_harricot", currencyType = "cash", buyprice = 0.15, randomprice = math.random(30, 40), desc = "Acheter", category = "nourriture" },
        { itemLabel = "Boisson aux fruits2", itemName = "consumable_raspberrywater", currencyType = "cash", buyprice = 0.15, randomprice = math.random(30, 40), desc = "Acheter", category = "nourriture" },
        { itemLabel = "Café", itemName = "consumable_coffee", currencyType = "cash", buyprice = 0.15, randomprice = math.random(30, 40), desc = "Acheter", category = "nourriture" },
        { itemLabel = "bandage", itemName = "Bandage", currencyType = "cash", buyprice = 10, randomprice = math.random(30, 40), desc = "Acheter", category = "soin" },
        { itemLabel = "Pigeon de détresse", itemName = "birdalert", currencyType = "cash", buyprice = 1, randomprice = math.random(30, 40), desc = "Acheter", category = "outil" },
        { itemLabel = "Gourde", itemName = "empty_can", currencyType = "cash", buyprice = 1, randomprice = math.random(30, 40), desc = "Acheter", category = "outil" },
        
    }
}
