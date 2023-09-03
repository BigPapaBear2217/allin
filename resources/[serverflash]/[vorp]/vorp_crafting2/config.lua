Config = {}

Config.defaultlang = "en_lang"
Config.DevMode = false -- enable this if you want to make testes, dont leave true in live servers
Config.Webhook = '' -- WEBHOOK VORPCORE

-- Crafting Key
Config.Keys = {
    G = 0x760A9C6F
}

-- Options: s, m, l
Config.Styles = {
    fontSize = 'm',
    descriptionsidebar = true
}

Config.Commands = {
    campfire = true,
    extinguish = true
}

-- distance to interact with Locations and campfires
Config.Distances = {
    campfire = 1.5,
    locations = 2.5
}

-- Craftable Locations
--EXAMPLE: 
-- {
--     name = 'Blackwater Crafting Express',
--     id = 'blackwater',
--     Job = { 'butcher' }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
--     x = -872.222, 
--     y = -1390.924, 
--     z = 43.573
-- }
Config.Locations = {
    {
        name = 'Craft ecurie',
        id = 'blackwater',
        Job = { "ecurie" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = 1448.47, 
        y = 327.39, 
        z = 89.24,
        Blip = {
            enable = true,
            Hash = -1456209806
        },
        Categories = { "ecurie" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Forge Armes',
        id = 'blackwater',
        Job = { "miner" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = 2913.76, 
        y = 1392.53, 
        z = 59.68,
        Blip = {
            enable = true,
            Hash = 2107754879
        },
        Categories = { "miner" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Forge Armes',
        id = 'blackwater',
        Job = { "miner" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = 2913.76, 
        y = 1392.53, 
        z = 59.68,
        Blip = {
            enable = true,
            Hash = 2107754879
        },
        Categories = { "miner" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Traitement de bois',
        id = 'blackwater',
        Job = { "scierie" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = 2853.01, 
        y = 1438.8, 
        z = 69.17,
        Blip = {
            enable = true,
            Hash = -758970771
        },
        Categories = { "scierie" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Ebulition',
        id = 'blackwater',
        Job = { "us_distillerie" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = 1794.36,  
        y = -818.89, 
        z = 189.45,
        Blip = {
            enable = true,
            Hash = 773587962
        },
        Categories = { "us_distillerie" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Mise en bouteille',
        id = 'blackwater',
        Job = { "us_distillerie" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = 1787.36, 
        y = -818.79, 
        z = 189.45,
        Blip = {
            enable = true,
            Hash = 773587962
        },
        Categories = { "miseenb" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Mise en bouteille',
        id = 'blackwater',
        Job = { "sucrerie_g" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = 1787.36, 
        y = -818.79,  
        z = 189.45,
        Blip = {
            enable = true,
            Hash = -1236018085
        },
        Categories = { "sucrerie_g" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Lakota',
        id = 'blackwater',
        Job = { "lakota" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = 2482.73,  
        y = 1752.65, 
        z = 87.09,
        Blip = {
            enable = true,
            Hash = -758970771
        },
        Categories = { "lakota" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },    
    {
        name = 'Kwanita',
        id = 'blackwater',
        Job = { "kwanita" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = -152.86,  
        y = 1493.17, 
        z = 115.68,
        Blip = {
            enable = true,
            Hash = -758970771
        },
        Categories = { "kwanita" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Craft Distillerie',
        id = 'g_distillerie',
        Job = { "g_distillerie" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x = 1482.994873046875,  
        y = -7163.33154296875, 
        z = 72.78141784667969,
        Blip = {
            enable = true,
            Hash = -758970771
        },
        Categories = { "g_distillerie" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Craft Sucrerie',
        id = 'sucrerie',
        Job = { "sucrerie" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x =  1507.11,  
        y = -7095.51, 
        z = 76.4,
        Blip = {
            enable = true,
            Hash = -758970771
        },
        Categories = { "sucrerie" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Craft Kiowa',
        id = 'kiowa',
        Job = { "kiowa" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x =  -2696.41,  
        y = -1471.02, 
        z = 148.55,
        Blip = {
            enable = true,
            Hash = -758970771
        },
        Categories = { "kiowa" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },

    {
        name = 'Craft saloon',
        id = 's_demo',
        Job = { "s_demo" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x =  2639.94,  
        y = -1227.15, 
        z = 53.43,
        Blip = {
            enable = true,
            Hash = -758970771
        },
        Categories = { "s_demo" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },

    {
        name = 'Craft chippewa',
        id = 'chippewa',
        Job = { "chippewa" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x =  663.5116,  
        y = -1271.11, 
        z =  43.851,
        Blip = {
            enable = true,
            Hash = -758970771
        },
        Categories = { "chippewa" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },

    {
        name = 'Craft ferme',
        id = 'f_cereale',
        Job = { "f_cereale" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x =  982.85,  
        y = -2031.44, 
        z =  53.06,
        Blip = {
            enable = true,
            Hash = -758970771
        },
        Categories = { "f_cereale" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
    {
        name = 'Craft ferme2',
        id = 'f_cereale',
        Job = { "f_cereale" }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        x =  982.70,  
        y = -2022.13, 
        z =  48.89,
        Blip = {
            enable = true,
            Hash = -758970771
        },
        Categories = { "f_cereale2" }, -- set to 0 to allow all categories or like {"food"} to restrict
    },
}

Config.PlaceableCampfire = "p_campfire05x"

-- Restrict campfire usage to specific roles or set to 0 to allow any role
-- Example: { "butcher" }
-- set to 0 to allow any jobs, or like { "butcher" } to job restriction
Config.CampfireJobLock = 0

-- Disables/Enables the kneeling animation when crafting
Config.KneelingAnimation = true

-- Crafting Prop Location is resource intensive, turn this to false if you want to use less resources.
-- Disables/Enables Crafting Props
Config.CraftingPropsEnabled = true

-- Props for the player to craft at
-- List of porps you can use for crafting
-- "P_CAMPFIRECOMBINED01X","p_campfirefresh01x","p_fireplacelogs01x","p_woodstove01x","p_stove04x","p_campfire04x","p_campfire05x","p_campfire02x","p_campfirecombined02x","p_campfirecombined03x","p_kettle03x","p_campfirecombined04x", "P_CAMPFIRECOOK02X","P_CAMPFIRE_WIN2_01X","P_CRAFTINGPOT01X"
Config.CraftingProps = {
    {
        title = "Campfire",
        prop = "p_campfire05x"
    },
    {
        title = "Oven",
        prop = "p_furnace01x"
    },
    {
        title = "Oven",
        prop = "p_furnace01x"
    }
}
-- How long the progressbar will show when crafting
Config.CraftTime = 15000

-- Craftable item categories. ident and Config.crafting.Category must equal eachother.
--EXAMPLE: 
-- {
--     ident = 'food', 
--     text = 'Craft Food',
--     Location = { 'campfire' }, -- set to 0 to allow any locations from Config.Locations
--     Job = { 'butcher' } -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
-- },
Config.Categories = {
    {
        ident = 'ecurie', 
        text = 'Craft ecurie',
        Location = 0,
        Job = { "ecurie" }
    }, 
    {
        ident = 'viande', 
        text = 'cuire viande',
        Location = 0,
        Job = 0
    }, 
    {
        ident = 'autres', 
        text = 'craft autres',
        Location = 0,
        Job = 0
    }, 
    {
        ident = 'miner', 
        text = 'Traitement Minerais',
        Location = 0,
        Job = { "miner" }
    },
    {
        ident = 'scierie', 
        text = 'Traitement de bois',
        Location = 0,
        Job = { "scierie" }
    },
    {
        ident = 'us_distillerie', 
        text = 'Ebulition',
        Location = 0,
        Job = { "us_distillerie" }
    },
    {
        ident = 'miseenb', 
        text = 'Mise en bouteille',
        Location = 0,
        Job = { "us_distillerie" }
    },
    {
        ident = 'sucrerie_g', 
        text = 'Sucre',
        Location = 0,
        Job = { "sucrerie_g" }
    },
    {
        ident = 'lakota', 
        text = 'Craft Lakota',
        Location = 0,
        Job = { "lakota" }
    },
    {
        ident = 'kwanita', 
        text = 'Craft kwanita',
        Location = 0,
        Job = { "kwanita" }
    },
    {
        ident = 'g_distillerie', 
        text = 'Craft distillerie',
        Location = 0,
        Job = { "g_distillerie" }
    },
    {
        ident = 'sucrerie', 
        text = 'Craft sucrerie',
        Location = 0,
        Job = { "sucrerie" }
    },
    {
        ident = 'kiowa', 
        text = 'Craft kiowa',
        Location = 0,
        Job = { "kiowa" }
    },
    {
        ident = 's_demo', 
        text = 'Craft s_demo',
        Location = 0,
        Job = { "s_demo" }
    },
    {
        ident = 'chippewa', 
        text = 'Craft chippewa',
        Location = 0,
        Job = { "chippewa" }
    },
    {
        ident = 'f_cereale', 
        text = 'Craft ferme',
        Location = 0,
        Job = { "f_cereale" }
    },
    {
        ident = 'f_cereale2', 
        text = 'Craft ferme',
        Location = 0,
        Job = { "f_cereale" }
    },
    {
        ident = 'natif_sauv', 
        text = 'Craft natif',
        Location = 0,
        Job = { "natif_sauv" }
    },
}

-- Craftable Items/Rewards And their Recipes
--EXAMPLE: 
-- {
--     Text = "Meat Bfast ",
--     SubText = "InvMax = 10",
--     Desc = "Recipe: 1x Meat, 1x Salt",
--     Items = {
--         {
--             name = "meat",
--             count = 1
--         },
--         {
--             name = "salt",
--             count = 1
--         }
--     },
--     Reward = {
--         {
--             name = "consumable_breakfast", -- if you use the currency mode, you don't need a name section inside the reward section
--             count = 1
--         }
--     },
--     Job = { 'butcher' }, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
--     Location = { 'blackwater' }, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
--     UseCurrencyMode = false, -- true if you want to use the currency mode otherwise set this to false
--     CurrencyType = 0, -- 0 => money, 1 => gold
--     Category = "food",
--     Animation = 'knifecooking' -- set what animation should play when crafting (if this is not set it has a default animation). Animations can be found below in Config.Animations
-- }
Config.Crafting = {

    {
        Text = "Sac de sucre",
        SubText = "1xSac de Sucre",
        Desc = "1xSac de Sucre",
        Items = {
            {
                name = "sac_sucre",
                count = 1
            },
        },
        Reward = {
            {
                name = "sugar",
                count = 50
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'autres',
        Animation = 'craft'
    },
        --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    ----------------ferme
    --------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------


    {
        Text = "Craft de Graines de Tomates 2xGraines",
        SubText = "1x tomate ",
        Desc = "1x tomate ",
        Items = {
            {
                name = "tomato",
                count = 1
            },
        },
        Reward = {
            {
                name = "Tomato_Seed",
                count = 5
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'f_cereale',
        Animation = 'craft'
    },
    {
        Text = "Craft de Graines avoine 2xGraines",
        SubText = "1x avoine ",
        Desc = "1x avoine ",
        Items = {
            {
                name = "avoine",
                count = 1
            },
        },
        Reward = {
            {
                name = "graine_avoine",
                count = 2
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'f_cereale',
        Animation = 'craft'
    },
    {
        Text = "Craft de Graines thym 2xGraines",
        SubText = "1x thym ",
        Desc = "1x thym ",
        Items = {
            {
                name = "thym",
                count = 1
            },
        },
        Reward = {
            {
                name = "graine_thym",
                count = 2
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'f_cereale',
        Animation = 'craft'
    },
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    {
        Text = "Craft de Graines Carottes 2xGraines",
        SubText = "1x Carottes ",
        Desc = "1x Carottes ",
        Items = {
            {
                name = "Carottes",
                count = 1
            },
        },
        Reward = {
            {
                name = "graine_carotte",
                count = 2
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'f_cereale',
        Animation = 'craft'
    },

    {
        Text = "Craft de Graines Oignon 2xGraines",
        SubText = "1x Oignon ",
        Desc = "1x Oignon ",
        Items = {
            {
                name = "Oignon",
                count = 1
            },
        },
        Reward = {
            {
                name = "graine_oignon",
                count = 2
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'f_cereale',
        Animation = 'craft'
    },

    {
        Text = "Craft de Graines Navet 2xGraines",
        SubText = "1x Navet ",
        Desc = "1x Navet ",
        Items = {
            {
                name = "Navet",
                count = 1
            },
        },
        Reward = {
            {
                name = "graine_navet",
                count = 2
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'f_cereale',
        Animation = 'craft'
    },
    {
        Text = "Craft de Graines Patate 2xGraines",
        SubText = "1x Patate ",
        Desc = "1x Patate ",
        Items = {
            {
                name = "Patate",
                count = 1
            },
        },
        Reward = {
            {
                name = "patate_graine",
                count = 2
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'f_cereale',
        Animation = 'craft'
    },








    {
        Text = "Craft de Graines Blé 2xGraines",
        SubText = "1x Blé ",
        Desc = "1x Blé ",
        Items = {
            {
                name = "Grain",
                count = 1
            },
        },
        Reward = {
            {
                name = "Grain_Seed",
                count = 2
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'f_cereale',
        Animation = 'craft'
    },

    {
        Text = "Craft de Graines Mais 2xGraines",
        SubText = "1x Mais ",
        Desc = "1x Mais ",
        Items = {
            {
                name = "corn",
                count = 1
            },
        },
        Reward = {
            {
                name = "Corn_Seed",
                count = 2
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'f_cereale',
        Animation = 'craft'
    },



    {
        Text = "Craft de 1xsac farine mais",
        SubText = "5x Mais ",
        Desc = "5x Mais ",
        Items = {
            {
                name = "corn",
                count = 5
            },
        },
        Reward = {
            {
                name = "sac_farine_mais",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'f_cereale2',
        Animation = 'craft'
    },
    {
        Text = "Craft de 1xsac farine blé",
        SubText = "5x Grain ",
        Desc = "5x Grain ",
        Items = {
            {
                name = "Grain",
                count = 5
            },
        },
        Reward = {
            {
                name = "sac_farine_ble",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'f_cereale2',
        Animation = 'craft'
    },
 

        --------------------------------------------------------------------
    --------------------------------------------------------------------


    {
        Text = "Craft de 1xsac farine avoine",
        SubText = "5x avoine ",
        Desc = "5x avoine ",
        Items = {
            {
                name = "avoine",
                count = 5
            },
        },
        Reward = {
            {
                name = "sac_farine_avoine",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'f_cereale2',
        Animation = 'craft'
    },

    {
        Text = "Levure de boulangerie",
        SubText = "1x sac farine ble +1 x Bouteille + 1xsucre ",
        Desc = "1x sac farine ble +1 x Bouteille + 1xsucre ",
        Items = {
            {
                name = "sac_farine_ble",
                count = 1
            },
            {
                name = "water",
                count = 1
            },
            {
                name = "sugar",
                count = 1
            },
        },
        Reward = {
            {
                name = "levure_boulangere",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'f_cereale2',
        Animation = 'craft'
    },

    {
        Text = "Levure de distillerie",
        SubText = "1x sac farine mais +1 x Bouteille + 1xsucre ",
        Desc = "1x sac farine mais +1 x Bouteille + 1xsucre ",
        Items = {
            {
                name = "sac_farine_mais",
                count = 2
            },
            {
                name = "water",
                count = 1
            },
            {
                name = "sugar",
                count = 1
            },
        },
        Reward = {
            {
                name = "levure_p_dis",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'f_cereale2',
        Animation = 'craft'
    },

    {
        Text = "Levure Forte",
        SubText = "2x sac farine mais +1 x Bouteille + 2xsucre ",
        Desc = "2x sac farine mais +1 x Bouteille + 2xsucre ",
        Items = {
            {
                name = "sac_farine_mais",
                count = 2
            },
            {
                name = "water",
                count = 1
            },
            {
                name = "sugar",
                count = 2
            },
        },
        Reward = {
            {
                name = "levure_g_dis",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'f_cereale2',
        Animation = 'craft'
    },



    {
        Text = "Mélange de levures",
        SubText = "5x sac farine ble/mais/avoine +2 x Bouteille + 5xsucre/mais ",
        Desc = "5x sac farine ble/mais/avoine +2 x Bouteille + 5xsucre/mais ",
        Items = {
            {
                name = "sac_farine_ble",
                count = 5
            },
            {
                name = "sac_farine_mais",
                count = 5
            },
            {
                name = "sac_farine_avoine",
                count = 5
            },
            {
                name = "water",
                count = 2
            },
            {
                name = "sugar",
                count = 5
            },            
            {
                name = "corn",
                count = 5
            },
        },
        Reward = {
            {
                name = "levure_d",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'f_cereale2',
        Animation = 'craft'
    },












        --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    ----------------SALOON
    --------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------


    {
        Text = "Ragout du Cowboy",
        SubText = "2x Sanglier + 5x Whisky + 1 x Bouteille eau + 1x Base de ragout",
        Desc = "2x Sanglier + 5x Whisky + 1 x Bouteille eau + 1x Base de ragout",
        Items = {
            {
                name = "sanglier",
                count = 2
            },
            {
                name = "whisky",
                count = 1
            },
            {
                name = "water",
                count = 1
            },   
            {
                name = "base_ragout",
                count = 1
            },     
        },
        Reward = {
            {
                name = "ragout_cowboy",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 's_demo',
        Animation = 'craft'
    },
    {
        Text = "Base de ragout",
        SubText = "1x Oignon + 1x Tomate + 1 x Patate + 1xOs",
        Desc = "2x Oignon + 5x Tomate + 1 x Patate + 1xOs",
        Items = {
            {
                name = "Oignon",
                count = 1
            },
            {
                name = "tomato",
                count = 1
            },
            {
                name = "Patate",
                count = 1
            },      
            {
                name = "os",
                count = 1
            },  
        },
        Reward = {
            {
                name = "base_ragout",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 's_demo',
        Animation = 'craft'
    },




    {
        Text = "Cocktail pastèque",
        SubText = "1x Whisky + 1xPasteque",
        Desc = "1x Whisky + 1xPasteque",
        Items = {
            {
                name = "Whisky",
                count = 1
            },
            {
                name = "Melone",
                count = 1
            },
        },
        Reward = {
            {
                name = "cocktail1",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 's_demo',
        Animation = 'craft'
    },


    {
        Text = "Cocktail bannane",
        SubText = "1x Whisky + 1xBannane",
        Desc = "1x Whisky + 1xBannane",
        Items = {
            {
                name = "Whisky",
                count = 1
            },
            {
                name = "Bannana",
                count = 1
            },
        },
        Reward = {
            {
                name = "cocktail2",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 's_demo',
        Animation = 'craft'
    },


    {
        Text = "Sanglier au thym",
        SubText = "1x sanglier + 1x thym",
        Desc = "1x sanglier + 1x thym",
        Items = {
            {
                name = "sanglier",
                count = 1
            },
            {
                name = "thym",
                count = 1
            },
        },
        Reward = {
            {
                name = "sanglier_thym",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 's_demo',
        Animation = 'craft'
    },
































    {
        Text = "Perche au thym",
        SubText = "1x Perche + 1x thym",
        Desc = "1x Perche + 1x thym",
        Items = {
            {
                name = "a_c_fishperch_01_ms",
                count = 1
            },
            {
                name = "thym",
                count = 1
            },
        },
        Reward = {
            {
                name = "poisson_thym",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 's_demo',
        Animation = 'craft'
    },
    {
        Text = "Sanglier au thym",
        SubText = "1x Perche + 1x thym",
        Desc = "1x Perche + 1x thym",
        Items = {
            {
                name = "a_c_fishperch_01_sm",
                count = 1
            },
            {
                name = "thym",
                count = 1
            },
        },
        Reward = {
            {
                name = "poisson_thym",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 's_demo',
        Animation = 'craft'
    },

    -- 
-- 

{
    Text = "Poisson au thym",
    SubText = "1x Saumon + 1x thym",
    Desc = "1x Saumon + 1x thym",
    Items = {
        {
            name = "a_c_fishsalmonsockeye_01_lg",
            count = 1
        },
        {
            name = "thym",
            count = 1
        },
    },
    Reward = {
        {
            name = "poisson_thym",
            count = 1
        }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 's_demo',
    Animation = 'craft'
},
{
    Text = "Poisson au thym",
    SubText = "1x Saumon + 1x thym",
    Desc = "1x Saumon + 1x thym",
    Items = {
        {
            name = "a_c_fishsalmonsockeye_01_ml",
            count = 1
        },
        {
            name = "thym",
            count = 1
        },
    },
    Reward = {
        {
            name = "poisson_thym",
            count = 1
        }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 's_demo',
    Animation = 'craft'
},
{
    Text = "Poisson au thym",
    SubText = "1x Saumon + 1x thym",
    Desc = "1x Saumon + 1x thym",
    Items = {
        {
            name = "a_c_fishsalmonsockeye_01_ms",
            count = 1
        },
        {
            name = "thym",
            count = 1
        },
    },
    Reward = {
        {
            name = "poisson_thym",
            count = 1
        }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 's_demo',
    Animation = 'craft'
},
-- 
-- 
-- 
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    ----------------ECURIE
    --------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    {
        Text = "Brosse",
        SubText = "1xChassis brosse + 10xFibre",
        Desc = "1xChassis brosse + 10xFibre",
        Items = {
            {
                name = "fibres_1",
                count = 10
            },
            {
                name = "chasis_brosse",
                count = 1
            },
        },
        Reward = {
            {
                name = "brush",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'ecurie',
        Animation = 'craft'
    },


    {
        Text = "Kit de reparation",
        SubText = "5x lingot de fer + 1x lingot argent + 5x clou + 5x bois ",
        Desc = "1xChassis brosse + 10xFibre",
        Items = {
            {
                name = "fer",
                count = 5
            },
            {
                name = "argent",
                count = 1
            },
            {
                name = "clou",
                count = 5
            },
            {
                name = "bois",
                count = 5
            },
        },
        Reward = {
            {
                name = "Repair_Kit",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'ecurie',
        Animation = 'craft'
    },
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    ----------------VIANDES LIBRE
    --------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    {
        Text = "Chillis d'iguane ",
        SubText = "1xViandes d'iguane + 1x boite de chillis",
        Desc = "1xViandes d'iguane + 1x boite de chillis",
        Items = {
            {
                name = "v_iguane",
                count = 1
            },
            {
                name = "b_harricot",
                count = 1
            },
        },
        Reward = {
            {
                name = "c_iguane",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'viande',
        Animation = 'craft'
    },

    {
        Text = "Viande cuite",
        SubText = "1xViandes faisandé",
        Desc = "1xViandes faisandé",
        Items = {
            {
                name = "Gamey_Meat",
                count = 1
            },
        },
        Reward = {
            {
                name = "viande_cuite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'viande',
        Animation = 'craft'
    },
    {
        Text = "Viande cuite",
        SubText = "1xViandes filandreuse",
        Desc = "1xViandes filandreuse",
        Items = {
            {
                name = "filandreuse",
                count = 1
            },
        },
        Reward = {
            {
                name = "viande_cuite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'viande',
        Animation = 'craft'
    },
    {
        Text = "Viande cuite",
        SubText = "1xCuisse De Grenouille",
        Desc = "1xCuisse De Grenouille",
        Items = {
            {
                name = "cuisse_de_grenouille",
                count = 1
            },
        },
        Reward = {
            {
                name = "viande_cuite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'viande',
        Animation = 'craft'
    },
    {
        Text = "Viande cuite",
        SubText = "1xViandes au choix",
        Desc = "1xViandes au choix",
        Items = {
            {
                name = "venaison",
                count = 1
            },
        },
        Reward = {
            {
                name = "viande_cuite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'viande',
        Animation = 'craft'
    },
    {
        Text = "Viande cuite",
        SubText = "1xVenaison",
        Desc = "1xVenaison",
        Items = {
            {
                name = "venaison",
                count = 1
            },
        },
        Reward = {
            {
                name = "viande_cuite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'viande',
        Animation = 'craft'
    },
    {
        Text = "Viande cuite",
        SubText = "1xViandes de serpent",
        Desc = "1xViandes de serpent",
        Items = {
            {
                name = "serpent",
                count = 1
            },
        },
        Reward = {
            {
                name = "viande_cuite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'viande',
        Animation = 'craft'
    },
    {
        Text = "Viande cuite",
        SubText = "1xViandes a sang froid",
        Desc = "1xViandes a sang froid",
        Items = {
            {
                name = "sangfroid",
                count = 1
            },
        },
        Reward = {
            {
                name = "viande_cuite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'viande',
        Animation = 'craft'
    },
    {
        Text = "Viande cuite",
        SubText = "1xViandes gros gibier",
        Desc = "1xViandes gros gibier",
        Items = {
            {
                name = "grosgibier",
                count = 1
            },
        },
        Reward = {
            {
                name = "viande_cuite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'viande',
        Animation = 'craft'
    },
    {
        Text = "Viande cuite",
        SubText = "1xGigot",
        Desc = "1xGigot",
        Items = {
            {
                name = "gigot",
                count = 1
            },
        },
        Reward = {
            {
                name = "viande_cuite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'viande',
        Animation = 'craft'
    },
    {
        Text = "Viande cuite",
        SubText = "1xViandes de sanglier",
        Desc = "1xViandes de sanglier",
        Items = {
            {
                name = "sanglier",
                count = 1
            },
        },
        Reward = {
            {
                name = "viande_cuite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'viande',
        Animation = 'craft'
    },
    {
        Text = "Viande cuite",
        SubText = "1xViandes de cerf",
        Desc = "1xViandes de cerf",
        Items = {
            {
                name = "cerf",
                count = 1
            },
        },
        Reward = {
            {
                name = "viande_cuite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'viande',
        Animation = 'craft'
    },
    {
        Text = "Viande cuite",
        SubText = "1xViandes exotic",
        Desc = "1xViandes exotic",
        Items = {
            {
                name = "exotic",
                count = 1
            },
        },
        Reward = {
            {
                name = "viande_cuite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'viande',
        Animation = 'craft'
    },
    {
        Text = "Viande cuite",
        SubText = "1xViandes de volaille",
        Desc = "1xViandes de volaille",
        Items = {
            {
                name = "coin",
                count = 1
            },
        },
        Reward = {
            {
                name = "viande_cuite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'viande',
        Animation = 'craft'
    },
    {
        Text = "Viande cuite",
        SubText = "1xgibier a plume",
        Desc = "1xgibier a plume",
        Items = {
            {
                name = "gibierplume",
                count = 1
            },
        },
        Reward = {
            {
                name = "viande_cuite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'viande',
        Animation = 'craft'
    },


    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------
    --------------------------      mine          ----------------------
    --------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    {
        Text = "Fer à dada",
        SubText = "",
        Desc = "x3 fer = fer a cheval",
        Items = {
            {
                name = "fer",
                count = 3
            },
        },
        Reward = {
            {
                name = "Horse_Shoe",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = "miner",
        Animation = 'craft'
    },
    {
        Text = "Traitement Fer",
        SubText = "InvMax = 10",
        Desc = "x5 Minerai fer = lingot de fer",
        Items = {
            {
                name = "minerai_fer",
                count = 2
            },
        },
        Reward = {
            {
                name = "fer",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = "miner",
        Animation = 'craft'
    },
	    {
        Text = "Traitement Cuivre",
        SubText = "InvMax = 10",
        Desc = "x5 Minerai Cuivre = lingot de Cuivre",
        Items = {
            {
                name = "minerai_cuivre",
                count = 5
            },
        },
        Reward = {
            {
                name = "cuivre",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = "miner",
        Animation = 'craft'
    },
	    {
        Text = "Traitement Argent",
        SubText = "InvMax = 10",
        Desc = "x5 Minerai Argent = lingot d'Argent",
        Items = {
            {
                name = "minerai_argent",
                count = 5
            },
        },
        Reward = {
            {
                name = "argent",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = "miner",
        Animation = 'craft'
    },

    {
        Text = "Clou",
        SubText = "InvMax = 10",
        Desc = "x1 fer = 10 clou",
        Items = {
            {
                name = "fer",
                count = 1
            },
        },
        Reward = {
            {
                name = "clou",
                count = 10
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = "miner",
        Animation = 'craft'
    },

    {
        Text = "Bouteille en verre",
        SubText = "x15 sable",
        Desc = "x15 sable",
        Items = {
            {
                name = "sable",
                count = 15
            },
        },
        Reward = {
            {
                name = "glassbottle",
                count = 2
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = "miner",
        Animation = 'craft'
    },



    {
        Text = "Pioche",
        SubText = "x1 fer + x1 manche",
        Desc = "x1 fer + x1 manche",
        Items = {
            {
                name = "fer",
                count = 1
            },
            {
                name = "manche",
                count = 1
            },
        },
        Reward = {
            {
                name = "pickaxe",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = "miner",
        Animation = 'craft'
    },

    {
        Text = "Hache",
        SubText = "x1 fer + x1 manche",
        Desc = "x1 fer + x1 manche",
        Items = {
            {
                name = "fer",
                count = 1
            },
            {
                name = "manche",
                count = 1
            },
        },
        Reward = {
            {
                name = "axe",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = "miner",
        Animation = 'craft'
    },

    {
        Text = "Lame d armes blanches",
        SubText = "InvMax = 10",
        Desc = "x5 Minerai fer = lingot de fer",
        Items = {
            {
                name = "fer",
                count = 2
            },
			            {
                name = "charbon",
                count = 5
            }
        },
        Reward = {
            {
                name = "meca_cac",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = "miner",
        Animation = 'craft'
    },
	{
        Text = "Mecanisme de sniper",
        SubText = "InvMax = 10",
        Desc = "x5 Minerai fer = lingot de fer",
        Items = {
            {
                name = "fer",
                count = 10
            },
			            {
                name = "charbon",
                count = 5
            }
        },
        Reward = {
            {
                name = "meca_sniper",
                count = 5
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = "miner",
        Animation = 'craft'
    },
	{
        Text = "Mecanisme de pistolet",
        SubText = "InvMax = 10",
        Desc = "x5 Minerai fer = lingot de fer",
        Items = {
            {
                name = "fer",
                count = 5
            },
			            {
                name = "charbon",
                count = 5
            }
        },
        Reward = {
            {
                name = "meca_pistolet",
                count = 5
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = "miner",
        Animation = 'craft'
    },
	{
        Text = "Mecanisme de repeter",
        SubText = "InvMax = 10",
        Desc = "x5 Minerai fer = lingot de fer",
        Items = {
            {
                name = "fer",
                count = 7
            },
			            {
                name = "charbon",
                count = 5
            }
        },
        Reward = {
            {
                name = "meca_repeter",
                count = 5
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = "miner",
        Animation = 'craft'
    },
	{
        Text = "Mecanisme de fusil",
        SubText = "InvMax = 10",
        Desc = "x5 Minerai fer = lingot de fer",
        Items = {
            {
                name = "fer",
                count = 8
            },
			            {
                name = "charbon",
                count = 5
            }
        },
        Reward = {
            {
                name = "meca_fusil",
                count = 5
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = "miner",
        Animation = 'craft'
    },
    {
        Text = "Mecanisme de revolver",
        SubText = "InvMax = 10",
        Desc = "x5 Minerai fer = lingot de fer",
        Items = {
            {
                name = "fer",
                count = 5
            },
			            {
                name = "charbon",
                count = 5
            }
        },
        Reward = {
            {
                name = "meca_revoler",
                count = 5
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = "miner",
        Animation = 'craft'
    },
	{
        Text = "meca_chasse",
        SubText = "Mec",
        Desc = "x7 Minerai fer = lingot de fer",
        Items = {
            {
                name = "fer",
                count = 7
            },
			            {
                name = "charbon",
                count = 5
            }
        },
        Reward = {
            {
                name = "meca_chasse",
                count = 5
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = "miner",
        Animation = 'craft'
    },

	{
        Text = "meca_ame",
        SubText = "10x Fer +2xCharbon +10xargent",
        Desc = "10x Fer +2xCharbon +10xargent",
        Items = {
            {
                name = "fer",
                count = 10
            },
			{
                name = "charbon",
                count = 2
            },
            {
                name = "argent",
                count = 10
            }
        },
        Reward = {
            {
                name = "meca_ame",
                count = 5
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = "miner",
        Animation = 'craft'
    },
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------
    --------------------------      scierie       ----------------------
    --------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    {
        Text = "Traitement à bois",
        SubText = "2xfibre 1xsève",
        Desc = "2xfibre 1xsève",
        Items = {
            {
                name = "fibres_1",
                count = 2
            },
            {
                name = "sap",
                count = 1
            },        
        },
        Reward = {
            {
                name = "melange_bois",
                count = 2
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = "scierie",
        Animation = 'craft'
    },

        
    {
        Text = "Traitement du bois",
        SubText = "2xbois 1xmelange_bois",
        Desc = "2xbois 1xmelange_bois",
        Items = {
            {
                name = "bois",
                count = 2
            },
            {
                name = "melange_bois",
                count = 1
            },
        },
        Reward = {
            {
                name = "t_bois",
                count = 6
            }
        },  
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = "scierie",
        Animation = 'craft'
    },



    {
        Text = "Traitement des planches",
        SubText = "1xBois",
        Desc = "1xBois",
        Items = {
            {
                name = "bois",
                count = 1
            },
        },
        Reward = {
            {
                name = "t_planche",
                count = 5
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = "scierie",
        Animation = 'craft'
    },
    
        {
        Text = "Traitement des planches",
        SubText = "1xGrosse branche",
        Desc = "1xGrosse branche",
        Items = {
            {
                name = "p_bois",
                count = 1
            },
        },
        Reward = {
            {
                name = "manche",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = "scierie",
        Animation = 'craft'
    },
    
    {
        Text = "Base a outils",
        SubText = "1xGrosse branche",
        Desc = "1xGrosse branche",
        Items = {
            {
                name = "p_bois",
                count = 1
            },
        },
        Reward = {
            {
                name = "manche",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = "scierie",
        Animation = 'craft'
    },
    
        {
            Text = "Chassis de revolver",
            SubText = "3xclou + 4xplanches + 2xbois traité",
            Desc = "3xclou + 4xplanches + 2xbois traité",
            Items = {
                {
                    name = "clou",
                    count = 3
                },
                {
                    name = "t_planche",
                    count = 4
                },
                {
                    name = "t_bois",
                    count = 2
                },
            },
            Reward = {
                {
                    name = "chasis_revolver",
                    count = 1
                }
            },
            Type = "item", -- indicate if it is 'weapon' or 'item'
            Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
            Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
            Category = "scierie",
            Animation = 'craft'
            },
            
            {
                Text = "Chassis de fusil",
                SubText = "5xclou + 7xplanches + 6xbois",
                Desc = "5xclou + 7xplanches + 6xbois",
                Items = {
                    {
                        name = "clou",
                        count = 5
                    },
                    {
                        name = "t_planche",
                        count = 7
                    },
                    {
                        name = "t_bois",
                        count = 6
                    },
                },
                Reward = {
                    {
                        name = "chasis_fusil",
                        count = 1
                    }
                },
                Type = "item", -- indicate if it is 'weapon' or 'item'
                Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
                Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
                Category = "scierie",
                Animation = 'craft'
                },
                {
                    Text = "Chassis de repeter",
                    SubText = "5xclou + 7xplanches + 6xbois",
                    Desc = "5xclou + 7xplanches + 6xbois",
                    Items = {
                        {
                            name = "clou",
                            count = 5
                        },
                        {
                            name = "t_planche",
                            count = 7
                        },
                        {
                            name = "t_bois",
                            count = 6
                        },
                    },
                    Reward = {
                        {
                            name = "chasis_repeter",
                            count = 1
                        }
                    },
                    Type = "item", -- indicate if it is 'weapon' or 'item'
                    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
                    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
                    Category = "scierie",
                    Animation = 'craft'
                    },
                    {
                        Text = "Chassis de pistolet",
                        SubText = "10xclou + 10xplanches + 5xbois",
                        Desc = "10xclou + 10xplanches + 5xbois",
                        Items = {
                            {
                                name = "clou",
                                count = 10
                            },
                            {
                                name = "t_planche",
                                count = 10
                            },
                            {
                                name = "t_bois",
                                count = 5
                            },
                        },
                        Reward = {
                            {
                                name = "chasis_pistolet",
                                count = 1
                            }
                        },
                        Type = "item", -- indicate if it is 'weapon' or 'item'
                        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
                        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
                        Category = "scierie",
                        Animation = 'craft'
                        },
                        {
                            Text = "Chassis de chasse",
                            SubText = "5xclou + 5xplanches + 5xbois",
                            Desc = "5xclou + 5xplanches + 5xbois",
                            Items = {
                                {
                                    name = "clou",
                                    count = 5
                                },
                                {
                                    name = "t_planche",
                                    count = 5
                                },
                                {
                                    name = "t_bois",
                                    count = 5
                                },
                            },
                            Reward = {
                                {
                                    name = "chasis_chasse",
                                    count = 1
                                }
                            },
                            Type = "item", -- indicate if it is 'weapon' or 'item'
                            Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
                            Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
                            Category = "scierie",
                            Animation = 'craft'
                            },
                    
                            {
                                Text = "Chassis de sniper",
                                SubText = "12xclou + 13xplanches + 5xbois",
                                Desc = "12xclou + 13xplanches + 5xbois",
                                Items = {
                                    {
                                        name = "clou",
                                        count = 12
                                    },
                                    {
                                        name = "t_planche",
                                        count = 13
                                    },
                                    {
                                        name = "t_bois",
                                        count = 5
                                    },
                                },
                                Reward = {
                                    {
                                        name = "chasis_sniper",
                                        count = 1
                                    }
                                },
                                Type = "item", -- indicate if it is 'weapon' or 'item'
                                Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
                                Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
                                Category = "scierie",
                                Animation = 'craft'
                                },
                    
                                {
                                    Text = "Chassis d'arme blanches",
                                    SubText = "10xclou + 10xplanches + 5xbois",
                                    Desc = "10xclou + 10xplanches + 5xbois",
                                    Items = {
                                        {
                                            name = "clou",
                                            count = 2
                                        },
                                        {
                                            name = "t_planche",
                                            count = 2
                                        },
                                        {
                                            name = "t_bois",
                                            count = 2
                                        },
                                    },
                                    Reward = {
                                        {
                                            name = "chasis_cac",
                                            count = 1
                                        }
                                    },
                                    Type = "item", -- indicate if it is 'weapon' or 'item'
                                    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
                                    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
                                    Category = "scierie",
                                    Animation = 'craft'
                                    },


                                    {
                                        Text = "Chassis de brosse",
                                        SubText = "10xclou + 10xplanches + 5xbois",
                                        Desc = "10xclou + 10xplanches + 5xbois",
                                        Items = {
                                            {
                                                name = "clou",
                                                count = 2
                                            },
                                            {
                                                name = "t_planche",
                                                count = 1
                                            },
                                        },
                                        Reward = {
                                            {
                                                name = "chasis_brosse",
                                                count = 1
                                            }
                                        },
                                        Type = "item", -- indicate if it is 'weapon' or 'item'
                                        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
                                        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
                                        Category = "scierie",
                                        Animation = 'craft'
                                        },










                                        
                                        ---------CAMPING
                                        {
                                            Text = "Feu de camp",
                                            SubText = "10xBois + 10xClou",
                                            Desc = "10xBois + 10xClou",
                                            Items = {
                                                {
                                                    name = "pierre",
                                                    count = 5
                                                },
                                                {
                                                    name = "ecorce",
                                                    count = 2
                                                },
                                                {
                                                    name = "p_bois",
                                                    count = 3
                                                },
                                            },
                                            Reward = {
                                                {
                                                    name = "campfire",
                                                    count = 1
                                                }
                                            },
                                            Type = "item",
                                            Job = 0, 
                                            Location = 0, 
                                            Category = "scierie",
                                            Animation = 'craft'
                                        },
                                        {
                                            Text = "Caisse en bois",
                                            SubText = "10xBois + 10xClou",
                                            Desc = "10xBois + 10xClou",
                                            Items = {
                                                {
                                                    name = "t_bois",
                                                    count = 10
                                                },
                                                {
                                                    name = "clou",
                                                    count = 10
                                                },
                                            },
                                            Reward = {
                                                {
                                                    name = "caisse_en_bois",
                                                    count = 1
                                                }
                                            },
                                            Type = "item",
                                            Job = 0, 
                                            Location = 0, 
                                            Category = "scierie",
                                            Animation = 'craft'
                                        },
                                        {
                                            Text = "Tente",
                                            SubText = "5xCuir + 10xBois 3xCorde",
                                            Desc = "5xCuir + 10xBois 3xCorde",
                                            Items = {
                                                {
                                                    name = "cuir_traiter",
                                                    count = 5
                                                },
                                                {
                                                    name = "t_bois",
                                                    count = 10
                                                },
                                                {
                                                    name = "corde",
                                                    count = "3"
                                                }
                                            },
                                            Reward = {
                                                {
                                                    name = "tente",
                                                    count = 1
                                                }
                                            },
                                            Type = "item",
                                            Job = 0, 
                                            Location = 0, 
                                            Category = "scierie",
                                            Animation = 'craft'
                                        },     
                                        {
                                            Text = "Tente de chasse",
                                            SubText = "5xCuir + 10xBois 1xCorde",
                                            Desc = "5xCuir + 10xBois 3xCorde",
                                            Items = {
                                                {
                                                    name = "cuir_traiter",
                                                    count = 5
                                                },
                                                {
                                                    name = "t_bois",
                                                    count = 10
                                                },
                                                {
                                                    name = "corde",
                                                    count = "1"
                                                }
                                            },
                                            Reward = {
                                                {
                                                    name = "tente_de_chasse",
                                                    count = 1
                                                }
                                            },
                                            Type = "item",
                                            Job = 0, 
                                            Location = 0, 
                                            Category = "scierie",
                                            Animation = 'craft'
                                        },
                                        {
                                            Text = "Poste d'attelage",
                                            SubText = "4x Bois + 2xCorde",
                                            Desc = "4x Bois + 2xCorde",
                                            Items = {
                                                {
                                                    name = "t_bois",
                                                    count = 4
                                                },
                                                {
                                                    name = "corde",
                                                    count = 2
                                                },
                                            },
                                            Reward = {
                                                {
                                                    name = "poste_d_attelage",
                                                    count = 1
                                                }
                                            },
                                            Type = "item",
                                            Job = 0, 
                                            Location = 0, 
                                            Category = "scierie",
                                            Animation = 'craft'
                                        },
                                        {
                                            Text = "Table en bois",
                                            SubText = "5xBois + 8xClou",
                                            Desc = "5xBois + 8xClou",
                                            Items = {
                                                {
                                                    name = "t_bois",
                                                    count = 5
                                                },
                                                {
                                                    name = "clou",
                                                    count = 8
                                                },
                                            },
                                            Reward = {
                                                {
                                                    name = "table_bois",
                                                    count = 1
                                                }
                                            },
                                            Type = "item",
                                            Job = 0, 
                                            Location = 0, 
                                            Category = "scierie",
                                            Animation = 'craft'
                                        },
                                        {
                                            Text = "Chaise en bois",
                                            SubText = "5xBois 4xClou",
                                            Desc = "5xBois 4xClou",
                                            Items = {
                                                {
                                                    name = "t_bois",
                                                    count = 5
                                                },
                                                {
                                                    name = "clou",
                                                    count = 4
                                                },
                                            },
                                            Reward = {
                                                {
                                                    name = "chaise_bois",
                                                    count = 1
                                                }
                                            },
                                            Type = "item",
                                            Job = 0, 
                                            Location = 0, 
                                            Category = "scierie",
                                            Animation = 'craft'
                                        },
                                        {
                                            Text = "",
                                            SubText = "",
                                            Desc = "",
                                            Items = {
                                                {
                                                    name = "t_bois",
                                                    count = 5
                                                },
                                                {
                                                    name = "clou",
                                                    count = 4
                                                },
                                            },
                                            Reward = {
                                                {
                                                    name = "banc_en_bois",
                                                    count = 1
                                                }
                                            },
                                            Type = "item",
                                            Job = 0, 
                                            Location = 0, 
                                            Category = "scierie",
                                            Animation = 'craft'
                                        },
                                        {
                                            Text = "Lanterne",
                                            SubText = "3xFer 2xVerre",
                                            Desc = "3xFer 2xVerre",
                                            Items = {
                                                {
                                                    name = "fer",
                                                    count = 3
                                                },
                                                {
                                                    name = "verre",
                                                    count = 2
                                                },
                                            },
                                            Reward = {
                                                {
                                                    name = "lanterne",
                                                    count = 1
                                                }
                                            },
                                            Type = "item",
                                            Job = 0, 
                                            Location = 0, 
                                            Category = "scierie",
                                            Animation = 'craft'
                                        },
                                        {
                                            Text = "",
                                            SubText = "",
                                            Desc = "",
                                            Items = {
                                                {
                                                    name = "t_bois",
                                                    count = 10
                                                },
                                                {
                                                    name = "cuir",
                                                    count = 2
                                                },
                                                {
                                                    name = "foin",
                                                    count = 1
                                                },
                                            },
                                            Reward = {
                                                {
                                                    name = "lit",
                                                    count = 20
                                                }
                                            },
                                            Type = "item",
                                            Job = 0, 
                                            Location = 0, 
                                            Category = "scierie",
                                            Animation = 'craft'
                                        },
                                        {
                                            Text = "Grande Tente",
                                            SubText = "",
                                            Desc = "",
                                            Items = {
                                                {
                                                    name = "cuir",
                                                    count = 15
                                                },
                                                {
                                                    name = "corde",
                                                    count = 6
                                                },
                                                {
                                                    name = "t_bois",
                                                    count = 4
                                                },
                                            },
                                            Reward = {
                                                {
                                                    name = "g_tente",
                                                    count = 1
                                                }
                                            },
                                            Type = "item",
                                            Job = 0, 
                                            Location = 0, 
                                            Category = "scierie",
                                            Animation = 'craft'
                                        },
                                        {
                                            Text = "Banc de munitions ",
                                            SubText = "",
                                            Desc = "",
                                            Items = {
                                                {
                                                    name = "t_bois",
                                                    count = 10
                                                },
                                                {
                                                    name = "clou",
                                                    count = 10
                                                },
                                            },
                                            Reward = {
                                                {
                                                    name = "banc_munitions",
                                                    count = 1
                                                }
                                            },
                                            Type = "item",
                                            Job = 0, 
                                            Location = 0, 
                                            Category = "scierie",
                                            Animation = 'craft'
                                        },
                                        {
                                            Text = "Table 2",
                                            SubText = "",
                                            Desc = "",
                                            Items = {
                                                {
                                                    name = "t_bois",
                                                    count = 5
                                                },
                                                {
                                                    name = "clou",
                                                    count = 4
                                                },
                                            },
                                            Reward = {
                                                {
                                                    name = "table_2",
                                                    count = 1
                                                }
                                            },
                                            Type = "item",
                                            Job = 0, 
                                            Location = 0, 
                                            Category = "scierie",
                                            Animation = 'craft'
                                        },
                                        {
                                            Text = "Tabouret",
                                            SubText = "",
                                            Desc = "",
                                            Items = {
                                                {
                                                    name = "t_bois",
                                                    count = 3
                                                },
                                                {
                                                    name = "clou",
                                                    count = 4
                                                },
                                            },
                                            Reward = {
                                                {
                                                    name = "tabouret",
                                                    count = 1
                                                }
                                            },
                                            Type = "item",
                                            Job = 0, 
                                            Location = 0, 
                                            Category = "scierie",
                                            Animation = 'craft'
                                        },
                                        {
                                            Text = "Cible d'entrainement",
                                            SubText = "",
                                            Desc = "",
                                            Items = {
                                                {
                                                    name = "t_bois",
                                                    count = 2
                                                },
                                                {
                                                    name = "clou",
                                                    count = 2
                                                },
                                            },
                                            Reward = {
                                                {
                                                    name = "cible",
                                                    count = 1
                                                }
                                            },
                                            Type = "item",
                                            Job = 0, 
                                            Location = 0, 
                                            Category = "scierie",
                                            Animation = 'craft'
                                        },
                                        {
                                            Text = "chaise_3",
                                            SubText = "",
                                            Desc = "",
                                            Items = {
                                                {
                                                    name = "t_bois",
                                                    count = 5
                                                },
                                                {
                                                    name = "clou",
                                                    count = 4
                                                },
                                            },
                                            Reward = {
                                                {
                                                    name = "chaise_3",
                                                    count = 1
                                                }
                                            },
                                            Type = "item",
                                            Job = 0, 
                                            Location = 0, 
                                            Category = "scierie",
                                            Animation = 'craft'
                                        },
                                        {
                                            Text = "chaise_3",
                                            SubText = "",
                                            Desc = "",
                                            Items = {
                                                {
                                                    name = "t_bois",
                                                    count = 50
                                                },
                                                {
                                                    name = "clou",
                                                    count = 4
                                                },
                                            },
                                            Reward = {
                                                {
                                                    name = "caravane",
                                                    count = 1
                                                }
                                            },
                                            Type = "item",
                                            Job = 0, 
                                            Location = 0, 
                                            Category = "scierie",
                                            Animation = 'craft'
                                        },
                                        {
                                            Text = "Tronc",
                                            SubText = "",
                                            Desc = "",
                                            Items = {
                                                {
                                                    name = "bois",
                                                    count = 20
                                                },
                                                {
                                                    name = "clou",
                                                    count = 25
                                                },
                                                {
                                                    name = "planche",
                                                    count = 15
                                                },
    
                                            },
                                            Reward = {
                                                {
                                                    name = "tronc",
                                                    count = 1
                                                }
                                            },
                                            Type = "item",
                                            Job = 0, 
                                            Location = 0, 
                                            Category = "scierie",
                                            Animation = 'craft'
                                        },
                                        {
                                            Text = "Tronc",
                                            SubText = "",
                                            Desc = "",
                                            Items = {
                                                {
                                                    name = "t_bois",
                                                    count = 5
                                                },
                                                {
                                                    name = "clou",
                                                    count = 4
                                                },
                                                {
                                                    name = "t_planche",
                                                    count = 3
                                                },
    
                                            },
                                            Reward = {
                                                {
                                                    name = "recipient_2",
                                                    count = 1
                                                }
                                            },
                                            Type = "item",
                                            Job = 0, 
                                            Location = 0, 
                                            Category = "scierie",
                                            Animation = 'craft'
                                        },
                                        {
                                            Text = "Conteneur Corde",
                                            SubText = "",
                                            Desc = "",
                                            Items = {
                                                {
                                                    name = "clou",
                                                    count = 4
                                                },
                                                {
                                                    name = "t_planche",
                                                    count = 3
                                                },
                                                {
                                                    name = "corde",
                                                    count = 5
                                                },
    
                                            },
                                            Reward = {
                                                {
                                                    name = "conteneur_corde",
                                                    count = 1
                                                }
                                            },
                                            Type = "item",
                                            Job = 0, 
                                            Location = 0, 
                                            Category = "scierie",
                                            Animation = 'craft'
                                        },
                                        {
                                            Text = "Sceau d'eau",
                                            SubText = "",
                                            Desc = "",
                                            Items = {
                                                {
                                                    name = "clou",
                                                    count = 6
                                                },
                                                {
                                                    name = "t_planche",
                                                    count = 5
                                                },
                                            },
                                            Reward = {
                                                {
                                                    name = "sceau_eau",
                                                    count = 1
                                                }
                                            },
                                            Type = "item",
                                            Job = 0, 
                                            Location = 0, 
                                            Category = "scierie",
                                            Animation = 'craft'
                                        },
                                        {
                                            Text = "Sac Grain",
                                            SubText = "",
                                            Desc = "",
                                            Items = {
                                                {
                                                    name = "clou",
                                                    count = 6
                                                },
                                                {
                                                    name = "t_planche",
                                                    count = 5
                                                },
                                            },
                                            Reward = {
                                                {
                                                    name = "sac_grain",
                                                    count = 1
                                                }
                                            },
                                            Type = "item",
                                            Job = 0, 
                                            Location = 0, 
                                            Category = "scierie",
                                            Animation = 'craft'
                                        },
                                        {
                                            Text = "Sac de cereales",
                                            SubText = "",
                                            Desc = "",
                                            Items = {
                                                {
                                                    name = "clou",
                                                    count = 6
                                                },
                                                {
                                                    name = "t_planche",
                                                    count = 5
                                                },
                                            },
                                            Reward = {
                                                {
                                                    name = "sac_grain",
                                                    count = 1
                                                }
                                            },
                                            Type = "item",
                                            Job = 0, 
                                            Location = 0, 
                                            Category = "scierie",
                                            Animation = 'craft'
                                        },
                                        {
                                            Text = "Barricade",
                                            SubText = "",
                                            Desc = "",
                                            Items = {
                                                {
                                                    name = "clou",
                                                    count = 10
                                                },
                                                {
                                                    name = "t_planche",
                                                    count = 15
                                                },
                                                {
                                                    name = "t_bois",
                                                    count = 15
                                                },
                                            },
                                            Reward = {
                                                {
                                                    name = "barricade",
                                                    count = 1
                                                }
                                            },
                                            Type = "item",
                                            Job = 0, 
                                            Location = 0, 
                                            Category = "scierie",
                                            Animation = 'craft'
                                        },
                                        {
                                            Text = "Caisse",
                                            SubText = "",
                                            Desc = "",
                                            Items = {
                                                {
                                                    name = "clou",
                                                    count = 8
                                                },
                                                {
                                                    name = "t_planche",
                                                    count = 5
                                                },
                                                {
                                                    name = "t_bois",
                                                    count = 5
                                                },
                                            },
                                            Reward = {
                                                {
                                                    name = "caisse",
                                                    count = 1
                                                }
                                            },
                                            Type = "item",
                                            Job = 0, 
                                            Location = 0, 
                                            Category = "scierie",
                                            Animation = 'craft'
                                        },
    --
    --
    --DISTILLERIE
    --
    
    
                                        {
                                            Text = "Base Bière",
                                            SubText = "1x:Mais + 1xcharbon + 1xsucre + 1x levure distillerie",
                                            Desc = "1x:Mais + 1xcharbon + 1xsucre + 1x levure distillerie",
                                            Items = {
                                                
                                                {
                                                    name = "levure_p_dis",
                                                    count = 1
                                                },
                                                {
                                                    name = "corn",
                                                    count = 1
                                                },
                                                {
                                                    name = "charbon",
                                                    count = 1
                                                },
                                                {
                                                    name = "sugar",
                                                    count = 1
                                                },
                                            },
                                            Reward = {
                                                {
                                                    name = "base_biere",
                                                    count = 1
                                                }
                                            },
                                            Type = "item", -- indicate if it is 'weapon' or 'item'
                                            Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
                                            Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
                                            Category = "us_distillerie",
                                            Animation = 'craft'
                                        },
                                        {
                                            Text = "Base Whisky",
                                            SubText = "1xBlé + 1xCharbon + 2xSucre  + 1x levure Forte",
                                            Desc = "1xBlé + 1xCharbon + 2xSucre  + 1x levure Forte",
                                            Items = {
                                                {
                                                    name = "Grain",
                                                    count = 1
                                                },
                                                {
                                                    name = "charbon",
                                                    count = 1
                                                },
                                                {
                                                    name = "sugar",
                                                    count = 2
                                                },
                                                {
                                                    name = "levure_g_dis",
                                                    count = 1
                                                },
                                            },
                                            Reward = {
                                                {
                                                    name = "base_whisky",
                                                    count = 1
                                                }
                                            },
                                            Type = "item", -- indicate if it is 'weapon' or 'item'
                                            Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
                                            Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
                                            Category = "us_distillerie",
                                            Animation = 'craft'
                                        },
                                        {
                                            Text = "Base vin",
                                            SubText = "2xAvoine + 1xCharbon +1xRaisi + 1xSucre +1xRaisin + 1x levure distillerie ",
                                            Desc = "2xAvoine + 1xCharbon +1xRaisi + n 1xSucre +1xRaisin + 1x levure distillerie ",
                                            Items = {
                                                {
                                                    name = "avoine",
                                                    count = 2
                                                },
                                                {
                                                    name = "charbon",
                                                    count = 1
                                                },
                                                {
                                                    name = "raisin",
                                                    count = 1
                                                },
                                                {
                                                    name = "sugar",
                                                    count = 1
                                                },
                                                {
                                                    name = "levure_p_dis",
                                                    count = 1
                                                },
                                            },
                                            Reward = {
                                                {
                                                    name = "base_vin",
                                                    count = 1
                                                }
                                            },
                                            Type = "item", -- indicate if it is 'weapon' or 'item'
                                            Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
                                            Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
                                            Category = "us_distillerie",
                                            Animation = 'craft'
                                        },
                                    
                                    
                                    
                                    
                                        {
                                            Text = "Vin",
                                            SubText = "1xBouteille en verre + 1xBase Vin",
                                            Desc = "1xBouteille en verre + 1xBase Vin",
                                            Items = {
                                                {
                                                    name = "glassbottle",
                                                    count = 1
                                                },
                                                {
                                                    name = "base_vin",
                                                    count = 1
                                                },
                                            },
                                            Reward = {
                                                {
                                                    name = "vin",
                                                    count = 1
                                                }
                                            },
                                            Type = "item", -- indicate if it is 'weapon' or 'item'
                                            Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
                                            Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
                                            Category = "miseenb",
                                            Animation = 'craft'
                                        },
                                        {
                                            Text = "Whisky",
                                            SubText = "1xBouteille en verre + 1xBase Whisky",
                                            Desc = "1xBouteille en verre +  1xBase Whisky",
                                            Items = {
                                                {
                                                    name = "glassbottle",
                                                    count = 1
                                                },
                                                {
                                                    name = "base_whisky",
                                                    count = 1
                                                },
                                            },
                                            Reward = {
                                                {
                                                    name = "whisky",
                                                    count = 1
                                                }
                                            },
                                            Type = "item", -- indicate if it is 'weapon' or 'item'
                                            Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
                                            Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
                                            Category = "miseenb",
                                            Animation = 'craft'
                                        },
                                    
                                        {
                                            Text = "Bière",
                                            SubText = "1xBouteille en verre+ 1xBase Biere",
                                            Desc = "1xBouteille en verre + 1xBase Biere",
                                            Items = {
                                                {
                                                    name = "glassbottle",
                                                    count = 1
                                                },
                                                {
                                                    name = "base_biere",
                                                    count = 1
                                                },
                                            },
                                            Reward = {
                                                {
                                                    name = "biere",
                                                    count = 1
                                                }
                                            },
                                            Type = "item", -- indicate if it is 'weapon' or 'item'
                                            Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
                                            Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
                                            Category = "miseenb",
                                            Animation = 'craft'
                                        },
                                        {
                                            Text = "Bière pomme",
                                            SubText =  "1xBouteille en verre +1xBase Biere + 1xPomme",
                                            Desc = "1xBouteille en verre +1xBase Biere + 1xPomme",
                                            Items = {
                                                {
                                                    name = "glassbottle",
                                                    count = 1
                                                },
                                                {
                                                    name = "base_biere",
                                                    count = 1
                                                },
                                                {
                                                    name = "pomme",
                                                    count = 1
                                                },
                                            },
                                            Reward = {
                                                {
                                                    name = "biere_pomme",
                                                    count = 1
                                                }
                                            },
                                            Type = "item", -- indicate if it is 'weapon' or 'item'
                                            Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
                                            Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
                                            Category = "miseenb",
                                            Animation = 'craft'
                                        },
                                        {
                                            Text = "Bière citron",
                                            SubText ="1xBouteille en verre + 1xBase Biere + 1xCitron",
                                            Desc = "1xBouteille en verre +1xBase Biere + 1xCitron",
                                            Items = {
                                                {
                                                    name = "glassbottle",
                                                    count = 1
                                                },
                                                {
                                                    name = "base_biere",
                                                    count = 1
                                                },
                                                {
                                                    name = "citron",
                                                    count = 1
                                                }
                                            },
                                            Reward = {
                                                {
                                                    name = "biere_citron",
                                                    count = 1
                                                }
                                            },
                                            Type = "item", -- indicate if it is 'weapon' or 'item'
                                            Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
                                            Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
                                            Category = "miseenb",
                                            Animation = 'craft'
                                        },
    
                                        
                                        
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------
    --------------------------     Natif      sans tribu    ----------------------
    --------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------


    {
        Text = "Viande séchée",
        SubText = "2xViande rouge + 1 Bois",
        Desc = "2xViande rouge + 1 Bois",
        Items = {
            {
                name = "vianderouge",
                count = 2
            },
            {
                name = "bois",
                count = 1
            },
        },
        Reward = {
            {
                name = "v_sechee",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'natif_sauv',
        Animation = 'craft'
    },
    
    {
        Text = "Viande séchée",
        SubText = "2xGamey_Meat + 1 Bois",
        Desc = "2xGamey_Meat + 1 Bois",
        Items = {
            {
                name = "Gamey_Meat",
                count = 2
            },
            {
                name = "bois",
                count = 1
            },
        },
        Reward = {
            {
                name = "v_sechee",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'natif_sauv',
        Animation = 'craft'
    },
    
    {
        Text = "Baie sauvages",
        SubText = "1xAirelle Ovale +1xBaie de gaulthière couchée",
        Desc = "1xAirelle Ovale +1xBaie de gaulthière couchée",
        Items = {
            {
                name = "consumable_herb_evergreen_huckleberry",
                count = 1
            },
            {
                name = "consumable_herb_wintergreen_berry",
                count = 1
            },
        },
        Reward = {
            {
                name = "baiesauv",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'natif_sauv',
        Animation = 'craft'
    },
    
    
    
    {
        Text = "Baie sauvages",
        SubText = "1xCassis +1xGroseille odorante",
        Desc ="1xCassis +1xGroseille odorante",
        Items = {
            {
                name = "Black_Currant",
                count = 1
            },
            {
                name = "Golden_Currant",
                count = 1
            },
        },
        Reward = {
            {
                name = "baiesauv",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'natif_sauv',
        Animation = 'craft'
    },
    {
        Text = "Ficelle 1",
        SubText = "2x Jonc Commun ",
        Desc = "2x Jonc Commun ",
        Items = {
            {
                name = "Bulrush",
                count = 2
            },
        },
        Reward = {
            {
                name = "ficelles",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'natif_sauv',
        Animation = 'craft'
    },
  --[[  {
        Text = "Ficelle 2",
        SubText = "5x Fibre ",
        Desc = "5x Fibre ",
        Items = {
            {
                name = "fibres_1",
                count = 5
            },
        },
        Reward = {
            {
                name = "ficelles",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'natif_sauv',
        Animation = 'craft'
    }, ]]

    {
        Text = "Ficelle en fibres",
        SubText = "3xfibres_1 ",
        Desc = "3xfibres_1 ",
        Items = {
            {
                name = "fibres_1",
                count = 3
            },
        },
        Reward = {
            {
                name = "ficelles",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'natif_sauv',
        Animation = 'craft'
    },

    --
    {
        Text = "Baie sauvages",
        SubText = "1xMûre +1xFramboise",
        Desc = "1xMûre +1xFramboise",
        Items = {
            {
                name = "Black_Berry",
                count = 1
            },
            {
                name = "Red_Raspberry",
                count = 1
            },
        },
        Reward = {
            {
                name = "baiesauv",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'natif_sauv',
        Animation = 'craft'
    },
    
    
    
    
    
    
    {
        Text = "Pemmican",
        SubText = "1xViande sechee +1xbaie sauvages",
        Desc = "1xViande sechee +1xbaie sauvages",
        Items = {
            {
                name = "v_sechee",
                count = 1
            },
            {
                name = "baiesauv",
                count = 1
            },
        },
        Reward = {
            {
                name = "pemmican",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'natif_sauv',
        Animation = 'craft'
    },
    
    
    
    {
        Text = "Bouillie de mais",
        SubText = "1xmais +1xGourde pleine",
        Desc = "1xmais +1xGourde pleine",
        Items = {
            {
                name = "corn",
                count = 1
            },
            {
                name = "can_100",
                count = 1
            },
        },
        Reward = {
            {
                name = "b_mais",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'natif_sauv',
        Animation = 'craft'
    },
    {
        Text = "Sagamité",
        SubText = "1xviande rouge +1xBouillie de mais +1xgraisse",
        Desc = "1xviande rouge +1xBouillie de mais +1xgraisse",
        Items = {
            {
                name = "vianderouge",
                count = 1
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "sagamite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'natif_sauv',
        Animation = 'craft'
    },
    
    
    
    {
        Text = "Sagamité",
        SubText = "1xvolaile +1xBouillie de mais +1xgraisse",
        Desc = "1xvolaile rouge +1xBouillie de mais +1xgraisse",
        Items = {
            {
                name = "volaille",
                count = 2
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "sagamite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'natif_sauv',
        Animation = 'craft'
    },
    
    
    {
        Text = "Sagamité",
        SubText = "1xvenaison +1xBouillie de mais +1xgraisse",
        Desc = "1xvenaison +1xGourde pleine",
        Items = {
            {
                name = "venaison",
                count = 2
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "sagamite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'natif_sauv',
        Animation = 'craft'
    },
    {
        Text = "Sagamité",
        SubText = "1x salamelle +1xBouillie de mais +1xgraisse",
        Desc = "1x salamelle +1xGourde pleine",
        Items = {
            {
                name = "salamelle",
                count = 2
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "salamelle",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'natif_sauv',
        Animation = 'craft'
    },
    
    {
        Text = "Sagamité",
        SubText = "1x filandreuse +1xBouillie de mais +1xgraisse",
        Desc = "1x filandreuse +1xBouillie de mais +1xgraisse",
        Items = {
            {
                name = "filandreuse",
                count = 3
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "salamelle",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'natif_sauv',
        Animation = 'craft'
    },
    
    
    {
        Text = "Sagamité",
        SubText = "1x gibierplume +1xBouillie de mais +1xgraisse",
        Desc = "1x gibierplume +1xBouillie de mais +1xgraisse",
        Items = {
            {
                name = "gibierplume",
                count = 3
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "salamelle",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'natif_sauv',
        Animation = 'craft'
    },
    
    
    
    
    {
        Text = "Sagamité",
        SubText = "1x gibierplume +1xBouillie de mais +1xgraisse",
        Desc = "1x gibierplume +1xBouillie de mais +1xgraisse",
        Items = {
            {
                name = "fish",
                count = 1
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "salamelle",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'natif_sauv',
        Animation = 'craft'
    },
    
    
    
    
    
    
    
    {
        Text = "Soupe de baies",
        SubText = "1xBaies sauvages +1xFarine de maïs 1xGourde",
        Desc = "1xBaies sauvages +1xFarine de maïs 1xGourde",
        Items = {
            {
                name = "baiesauv",
                count = 1
            },
            {
                name = "farine_mais",
                count = 1
            },
            {
                name = "can_100",
                count = 1
            },
        },
        Reward = {
            {
                name = "soupe_baies",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'natif_sauv',
        Animation = 'craft'
    },
    
    
    {
        Text = "Infusion aux herbes sauvages",
        SubText = "1xCamomille sauvage +1xMenthe sauvage 1xGourde",
        Desc = "1xCamomille sauvage +1xMenthe sauvage 1xGourde",
        Items = {
            {
                name = "Wild_Feverfew",
                count = 1
            },
            {
                name = "Wild_Mint",
                count = 1
            },
            {
                name = "can_100",
                count = 1
            },
        },
        Reward = {
            {
                name = "infusion_nat",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'natif_sauv',
        Animation = 'craft'
    },
    {
        Text = "Farine de mais",
        SubText = "3xmais",
        Desc = "3xmais",
        Items = {
            {
                name = "corn",
                count = 3
            },
        },
        Reward = {
            {
                name = "farine_mais",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'natif_sauv',
        Animation = 'craft'
    },
    
    {
        Text = "Pain natif",
        SubText = "1xfarine de mais +1xBai Bollete",
        Desc = "1xmais +1xGourde pleine",
        Items = {
            {
                name = "farine_mais",
                count = 1
            },
        },
        Reward = {
            {
                name = "Bay_Bolete",
                count = 2
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'natif_sauv',
        Animation = 'craft'
    },
    
    {
        Text = "Pain natif",
        SubText = "1xfarine de mais+ 2xChanterelles",
        Desc = "1xfarine de mais+ 2xChanterelles",
        Items = {
            {
                name = "farine_mais",
                count = 1
            },
        },
        Reward = {
            {
                name = "Parasol_Mushroom",
                count = 2
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'natif_sauv',
        Animation = 'craft'
    },
    
    
    {
        Text = "Pain natif",
        SubText = "1xmais + 2xPoules des Bois",
        Desc = "1xmais + 2xPoules des Bois",
        Items = {
            {
                name = "farine_mais",
                count = 1
            },
        },
        Reward = {
            {
                name = "Rams_Head",
                count = 2
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'natif_sauv',
        Animation = 'craft'
    },
 




    {
        Text = "Cuir Cousu 1",
        SubText = "2xCuirs + 1xFicelle",
        Desc = "2xCuirs + 1xFicelle",
        Items = {
            {
                name = "ficelles",
                count = 1
            },
            {
                name = "piece_de_cuir",
                count = 2
            },
        },
        Reward = {
            {
                name = "cuir_cousu",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'natif_sauv',
        Animation = 'craft'
        },
    
        {
        Text = "Cuir Cousu 2",
        SubText = "2xGros cuirs + 1xFicelle",
        Desc = "2xGros cuirs + 1xFicelle",
        Items = {
            {
                name = "g_piece_de_cuir",
                count = 2
            },
            {
                name = "ficelles",
                count = 1
            },
        },
        Reward = {
            {
                name = "cuir_cousu",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'natif_sauv',
        Animation = 'craft'
    },
    









    {
    Text = "Tissu",
    SubText = "3xFicelles",
    Desc = "3xFicelles",
    Items = {
    {
        name = "ficelles",
        count = 2
    },
    },
    Reward = {
    {
        name = "tissu",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'natif_sauv',
    Animation = 'craft'
    },
 
    {
    Text = "Carquois",
    SubText = "2xGrosse Branche+ 1xPlume + 1xPierre",
    Desc = "2xGrosse Branche+ 1xPlume + 1xPierre",
    Items = {
    {
        name = "p_bois",
        count = 2
    },
    {
        name = "Feather",
        count = 1
    },
    {
        name = "pierre",
        count = 1
    },
    },
    Reward = {
    {
        name = "ammoarrownormal",
        count = 1
    }
    
    
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'natif_sauv',
    Animation = 'craft'
    },
    {
    Text = "Carquois de poison",
    SubText = "1xCarquois + 5xPoisons de serpent",
    Desc = "1xCarquois + 5xPoisons de serpent",
    Items = {
    {
        name = "ammoarrownormal",
        count = 1
    },
    {
        name = "Snake_Poison",
        count = 5   
    },
    },
    Reward = {
    {
        name = "ammoarrowpoison",
        count = 1
    }
    
    
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'natif_sauv',
    Animation = 'craft'
    },
    
    {
    Text = "Carquois explosif",
    SubText = "1xCarquois + 5xAlcools natif + 1xNitroglycérine",
    Desc = "1xCarquois + 5xAlcools natif + 1xNitroglycérine",
    Items = {
    {
        name = "ammoarrownormal",
        count = 1
    },
    {
        name = "alcool_nat",
        count = 5
    },
    {
        name = "nitroglyserolia",
        count = 1
    },
    },
    Reward = {
    {
        name = "ammoarrowdynamite",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'natif_sauv',
    Animation = 'craft'
    },
    
    {
    Text = "Carquois de feu",
    SubText = "1xCarquois + 5xTissus + x5 seve",
    Desc = "1xCarquois + 5xTissus + x5 seve",
    Items = {
    {
        name = "ammoarrownormal",
        count = 1
    },
    {
        name = "tissu",
        count = 5
    },
    {
        name = "sap",
        count = 5
    },
    },
    Reward = {
    {
        name = "ammoarrowfire",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'natif_sauv',
    Animation = 'craft'
    },
    
    {
    Text = "Carquois de chasse gibier",
    SubText = "1xCarquois +5xPlumes",
    Desc = "1xCarquois +5xPlumes",
    Items = {
    {
        name = "ammoarrownormal",
        count = 1
    },
    {
        name = "Feather",
        count = 5
    },
    },
    Reward = {
    {
        name = "ammoarrowsmallgame",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'natif_sauv',
    Animation = 'craft'
    },

 
    
    {
        Text = "Tomahawk",
        SubText = "2xBois + 2xCuirs cousus + 3xPierres",
        Desc = "2xBois + 2xCuirs cousus + 3xPierres",
        Items = {
            {
                name = "bois",
                count = 2
            },
            {
                name = "cuir_cousu",
                count = 2
            },
            {
                name = "pierre",
                count = 3
            },
            },
            Reward = {
            {
                name = "ammotomahawk",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'natif_sauv',
        Animation = 'craft'
        },




        {
            Text = "Pioche Native",
            SubText = "2xOs + 1 Grande Piece de cuir ",
            Desc = "2xOs + 1 Grande Piece de cuir ",
            Items = {
                {
                    name = "os",
                    count = 2
                },
                {
                    name = "g_piece_de_cuir",
                    count = 2
                },
                },
                Reward = {
                {
                    name = "pioche_os",
                    count = 1
                }
            },
            Type = "item", -- indicate if it is 'weapon' or 'item'
            Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
            Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
            Category = 'natif_sauv',
            Animation = 'craft'
            },



            {
                Text = "Hache Native",
                SubText = "2xOs + 1x pierre ",
                Desc = "2xOs + 1x pierre",
                Items = {
                    {
                        name = "os",
                        count = 2
                    },
                    {
                        name = "pierre",
                        count = 1
                    },
                    },
                    Reward = {
                    {
                        name = "hache_os",
                        count = 1
                    }
                },
                Type = "item", -- indicate if it is 'weapon' or 'item'
                Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
                Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
                Category = 'natif_sauv',
                Animation = 'craft'
            },
        


    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------
    --------------------------     Natif    kwanita      ----------------------
    --------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------



    {
        Text = "Viande séchée",
        SubText = "2xViande rouge + 1 Bois",
        Desc = "2xViande rouge + 1 Bois",
        Items = {
            {
                name = "vianderouge",
                count = 2
            },
            {
                name = "bois",
                count = 1
            },
        },
        Reward = {
            {
                name = "v_sechee",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kwanita',
        Animation = 'craft'
    },
    
    {
        Text = "Viande séchée",
        SubText = "2xGamey_Meat + 1 Bois",
        Desc = "2xGamey_Meat + 1 Bois",
        Items = {
            {
                name = "Gamey_Meat",
                count = 2
            },
            {
                name = "bois",
                count = 1
            },
        },
        Reward = {
            {
                name = "v_sechee",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kwanita',
        Animation = 'craft'
    },
    
    {
        Text = "Baie sauvages",
        SubText = "1xAirelle Ovale +1xBaie de gaulthière couchée",
        Desc = "1xAirelle Ovale +1xBaie de gaulthière couchée",
        Items = {
            {
                name = "consumable_herb_evergreen_huckleberry",
                count = 1
            },
            {
                name = "consumable_herb_wintergreen_berry",
                count = 1
            },
        },
        Reward = {
            {
                name = "baiesauv",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kwanita',
        Animation = 'craft'
    },
    
    
    
    {
        Text = "Baie sauvages",
        SubText = "1xCassis +1xGroseille odorante",
        Desc ="1xCassis +1xGroseille odorante",
        Items = {
            {
                name = "Black_Currant",
                count = 1
            },
            {
                name = "Golden_Currant",
                count = 1
            },
        },
        Reward = {
            {
                name = "baiesauv",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kwanita',
        Animation = 'craft'
    },
    {
        Text = "Ficelle 1",
        SubText = "2x Jonc Commun ",
        Desc = "2x Jonc Commun ",
        Items = {
            {
                name = "Bulrush",
                count = 2
            },
        },
        Reward = {
            {
                name = "ficelles",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kwanita',
        Animation = 'craft'
    },
  --[[  {
        Text = "Ficelle 2",
        SubText = "5x Fibre ",
        Desc = "5x Fibre ",
        Items = {
            {
                name = "fibres_1",
                count = 5
            },
        },
        Reward = {
            {
                name = "ficelles",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kwanita',
        Animation = 'craft'
    }, ]]

    {
        Text = "Ficelle en fibres",
        SubText = "3xfibres_1 ",
        Desc = "3xfibres_1 ",
        Items = {
            {
                name = "fibres_1",
                count = 3
            },
        },
        Reward = {
            {
                name = "ficelles",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kwanita',
        Animation = 'craft'
    },

    --
    {
        Text = "Baie sauvages",
        SubText = "1xMûre +1xFramboise",
        Desc = "1xMûre +1xFramboise",
        Items = {
            {
                name = "Black_Berry",
                count = 1
            },
            {
                name = "Red_Raspberry",
                count = 1
            },
        },
        Reward = {
            {
                name = "baiesauv",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kwanita',
        Animation = 'craft'
    },
    
    
    
    
    
    
    {
        Text = "Pemmican",
        SubText = "1xViande sechee +1xbaie sauvages",
        Desc = "1xViande sechee +1xbaie sauvages",
        Items = {
            {
                name = "v_sechee",
                count = 1
            },
            {
                name = "baiesauv",
                count = 1
            },
        },
        Reward = {
            {
                name = "pemmican",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kwanita',
        Animation = 'craft'
    },
    
    
    
    {
        Text = "Bouillie de mais",
        SubText = "1xmais +1xGourde pleine",
        Desc = "1xmais +1xGourde pleine",
        Items = {
            {
                name = "corn",
                count = 1
            },
            {
                name = "can_100",
                count = 1
            },
        },
        Reward = {
            {
                name = "b_mais",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kwanita',
        Animation = 'craft'
    },
    {
        Text = "Sagamité",
        SubText = "1xviande rouge +1xBouillie de mais +1xgraisse",
        Desc = "1xviande rouge +1xBouillie de mais +1xgraisse",
        Items = {
            {
                name = "vianderouge",
                count = 1
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "sagamite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kwanita',
        Animation = 'craft'
    },
    
    
    
    {
        Text = "Sagamité",
        SubText = "1xvolaile +1xBouillie de mais +1xgraisse",
        Desc = "1xvolaile rouge +1xBouillie de mais +1xgraisse",
        Items = {
            {
                name = "volaille",
                count = 2
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "sagamite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kwanita',
        Animation = 'craft'
    },
    
    
    {
        Text = "Sagamité",
        SubText = "1xvenaison +1xBouillie de mais +1xgraisse",
        Desc = "1xvenaison +1xGourde pleine",
        Items = {
            {
                name = "venaison",
                count = 2
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "sagamite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kwanita',
        Animation = 'craft'
    },
    {
        Text = "Sagamité",
        SubText = "1x salamelle +1xBouillie de mais +1xgraisse",
        Desc = "1x salamelle +1xGourde pleine",
        Items = {
            {
                name = "salamelle",
                count = 2
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "salamelle",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kwanita',
        Animation = 'craft'
    },
    
    {
        Text = "Sagamité",
        SubText = "1x filandreuse +1xBouillie de mais +1xgraisse",
        Desc = "1x filandreuse +1xBouillie de mais +1xgraisse",
        Items = {
            {
                name = "filandreuse",
                count = 3
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "salamelle",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kwanita',
        Animation = 'craft'
    },
    
    
    {
        Text = "Sagamité",
        SubText = "1x gibierplume +1xBouillie de mais +1xgraisse",
        Desc = "1x gibierplume +1xBouillie de mais +1xgraisse",
        Items = {
            {
                name = "gibierplume",
                count = 3
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "salamelle",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kwanita',
        Animation = 'craft'
    },
    
    
    
    
    {
        Text = "Sagamité",
        SubText = "1x gibierplume +1xBouillie de mais +1xgraisse",
        Desc = "1x gibierplume +1xBouillie de mais +1xgraisse",
        Items = {
            {
                name = "fish",
                count = 1
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "salamelle",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kwanita',
        Animation = 'craft'
    },
    
    
    
    
    
    
    
    {
        Text = "Soupe de baies",
        SubText = "1xBaies sauvages +1xFarine de maïs 1xGourde",
        Desc = "1xBaies sauvages +1xFarine de maïs 1xGourde",
        Items = {
            {
                name = "baiesauv",
                count = 1
            },
            {
                name = "farine_mais",
                count = 1
            },
            {
                name = "can_100",
                count = 1
            },
        },
        Reward = {
            {
                name = "soupe_baies",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kwanita',
        Animation = 'craft'
    },
    
    
    {
        Text = "Infusion aux herbes sauvages",
        SubText = "1xCamomille sauvage +1xMenthe sauvage 1xGourde",
        Desc = "1xCamomille sauvage +1xMenthe sauvage 1xGourde",
        Items = {
            {
                name = "Wild_Feverfew",
                count = 1
            },
            {
                name = "Wild_Mint",
                count = 1
            },
            {
                name = "can_100",
                count = 1
            },
        },
        Reward = {
            {
                name = "infusion_nat",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kwanita',
        Animation = 'craft'
    },
    {
        Text = "Farine de mais",
        SubText = "3xmais",
        Desc = "3xmais",
        Items = {
            {
                name = "corn",
                count = 3
            },
        },
        Reward = {
            {
                name = "farine_mais",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kwanita',
        Animation = 'craft'
    },
    
    {
        Text = "Pain natif",
        SubText = "1xfarine de mais +1xBai Bollete",
        Desc = "1xmais +1xGourde pleine",
        Items = {
            {
                name = "farine_mais",
                count = 1
            },
        },
        Reward = {
            {
                name = "Bay_Bolete",
                count = 2
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kwanita',
        Animation = 'craft'
    },
    
    {
        Text = "Pain natif",
        SubText = "1xfarine de mais+ 2xChanterelles",
        Desc = "1xfarine de mais+ 2xChanterelles",
        Items = {
            {
                name = "farine_mais",
                count = 1
            },
        },
        Reward = {
            {
                name = "Parasol_Mushroom",
                count = 2
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kwanita',
        Animation = 'craft'
    },
    
    
    {
        Text = "Pain natif",
        SubText = "1xmais + 2xPoules des Bois",
        Desc = "1xmais + 2xPoules des Bois",
        Items = {
            {
                name = "farine_mais",
                count = 1
            },
        },
        Reward = {
            {
                name = "Rams_Head",
                count = 2
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kwanita',
        Animation = 'craft'
    },
    
    {
    Text = "Herbes médicinales",
    SubText = "3xMillefeuille + 1xGinseng d'Alaska + 2xAchillées visqueuses",
    Desc = "3xMillefeuille + 1xGinseng d'Alaska + 2xAchillées visqueuses",
    Items = {
    {
        name = "English_Mace",
        count = 3
    },
    {
        name = "ginseng",
        count = 1
    },
    {
        name = "Yarrow",
        count = 2
    },
    },
    Reward = {
    {
        name = "herbe_med",
        count = 2
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'kwanita',
    Animation = 'craft'
    },
    {
    Text = "Décoction revigorante",
    SubText = "1xSauge du colibri + 2xBardanes + 1xPerce-neige violet",
    Desc = "1xSauge du colibri + 2xBardanes + 1xPerce-neige violet",
    Items = {
    {
        name = "Hummingbird_Sage",
        count = 1
    },
    {
        name = "Burdock_Root",
        count = 2
    },
    {
        name = "Violet_Snowdrop",
        count = 1
    },
    },
    Reward = {
    {
        name = "decoction_revigorante",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'kwanita',
    Animation = 'craft'
    },
    {
    Text = "Elixir vivifiant",
    SubText = "5xTabacs Indien + 2xGinsengs Américain + 1xSauge du colibri",
    Desc = "5xTabacs Indien + 2xGinsengs Américain + 1xSauge du colibri",
    Items = {
    {
        name = "Indian_Tobbaco",
        count = 5
    },
    {
        name = "American_Ginseng",
        count = 2
    },
    {
        name = "Hummingbird_Sage",
        count = 1
    },
    },
    Reward = {
    {
        name = "elixir_vivifiant",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'kwanita',
    Animation = 'craft'
    },
    {
    Text = "Premiers soins niv III",
    SubText = "1xelixir_vivifiant + 2xAsclépiades + 1xPavot des champs",
    Desc = "1xelixir_vivifiant + 2xAsclépiades + 1xPavot des champs",
    Items = {
    {
        name = "elixir_vivifiant",
        count = 1
    },
    {
        name = "Blood_Flower",
        count = 2
    },
    {
        name = "Prairie_Poppy",
        count = 1
    },
    },
    Reward = {
    {
        name = "p_soins_natif3",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'kwanita',
    Animation = 'craft'
    },
    {
    Text = "Foin natif",
    SubText = "2xLuzernes",
    Desc = "2xLuzernes",
    Items = {
    {
        name = "luzerne",
        count = 2
    },
    },
    Reward = {
    {
        name = "foin_nat",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'kwanita',
    Animation = 'craft'
    },
    {
    Text = "Calumet",
    SubText = "1xpipe indienne + 1xPavot de champ + 1xAsclépiade",
    Desc = "1xpipe indienne + 1xPavot de champ + 1xAsclépiade",
    Items = {
    {
        name = "pipe_indienne",
        count = 1
    },
    {
        name = "Prairie_Poppy",
        count = 1
    },
    {
        name = "Blood_Flower",
        count = 1
    },
    },
    Reward = {
    {
        name = "calumet",
        count = 1
    }
    },

    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'kwanita',
    Animation = 'craft'
    },
    













    {
        Text = "Cuir Cousu 1",
        SubText = "2xCuirs + 1xFicelle",
        Desc = "2xCuirs + 1xFicelle",
        Items = {
            {
                name = "ficelles",
                count = 1
            },
            {
                name = "piece_de_cuir",
                count = 2
            },
        },
        Reward = {
            {
                name = "cuir_cousu",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kwanita',
        Animation = 'craft'
        },
    
        {
        Text = "Cuir Cousu 2",
        SubText = "2xGros cuirs + 1xFicelle",
        Desc = "2xGros cuirs + 1xFicelle",
        Items = {
            {
                name = "g_piece_de_cuir",
                count = 2
            },
            {
                name = "ficelles",
                count = 1
            },
        },
        Reward = {
            {
                name = "cuir_cousu",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kwanita',
        Animation = 'craft'
    },
    









    {
    Text = "Tissu",
    SubText = "3xFicelles",
    Desc = "3xFicelles",
    Items = {
    {
        name = "ficelles",
        count = 2
    },
    },
    Reward = {
    {
        name = "tissu",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'kwanita',
    Animation = 'craft'
    },
    {
    Text = "Arc",
    SubText = "3xBois + 1xFicelle",
    Desc = "3xBois + 1xFicelle",
    Items = {
    {
        name = "bois",
        count = 3
    },
    {
        name = "ficelles",
        count = 1
    },
},
    Reward = {
    {
        name = "WEAPON_BOW",
        count = 1
    }
    
    
    },
    Type = "weapon", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'kwanita',
    Animation = 'craft'
    },
    {
    Text = "Carquois",
    SubText = "2xGrosse Branche+ 1xPlume + 1xPierre",
    Desc = "2xGrosse Branche+ 1xPlume + 1xPierre",
    Items = {
    {
        name = "p_bois",
        count = 2
    },
    {
        name = "Feather",
        count = 1
    },
    {
        name = "pierre",
        count = 1
    },
    },
    Reward = {
    {
        name = "ammoarrownormal",
        count = 1
    }
    
    
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'kwanita',
    Animation = 'craft'
    },
    {
    Text = "Carquois de poison",
    SubText = "1xCarquois + 5xPoisons de serpent",
    Desc = "1xCarquois + 5xPoisons de serpent",
    Items = {
    {
        name = "ammoarrownormal",
        count = 1
    },
    {
        name = "Snake_Poison",
        count = 5   
    },
    },
    Reward = {
    {
        name = "ammoarrowpoison",
        count = 1
    }
    
    
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'kwanita',
    Animation = 'craft'
    },
    
    {
    Text = "Carquois explosif",
    SubText = "1xCarquois + 5xAlcools natif + 1xNitroglycérine",
    Desc = "1xCarquois + 5xAlcools natif + 1xNitroglycérine",
    Items = {
    {
        name = "ammoarrownormal",
        count = 1
    },
    {
        name = "alcool_nat",
        count = 5
    },
    {
        name = "nitroglyserolia",
        count = 1
    },
    },
    Reward = {
    {
        name = "ammoarrowdynamite",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'kwanita',
    Animation = 'craft'
    },
    
    {
    Text = "Carquois de feu",
    SubText = "1xCarquois + 5xTissus + x5 seve",
    Desc = "1xCarquois + 5xTissus + x5 seve",
    Items = {
    {
        name = "ammoarrownormal",
        count = 1
    },
    {
        name = "tissu",
        count = 5
    },
    {
        name = "sap",
        count = 5
    },
    },
    Reward = {
    {
        name = "ammoarrowfire",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'kwanita',
    Animation = 'craft'
    },
    
    {
    Text = "Carquois de chasse gibier",
    SubText = "1xCarquois +5xPlumes",
    Desc = "1xCarquois +5xPlumes",
    Items = {
    {
        name = "ammoarrownormal",
        count = 1
    },
    {
        name = "Feather",
        count = 5
    },
    },
    Reward = {
    {
        name = "ammoarrowsmallgame",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'kwanita',
    Animation = 'craft'
    },

    {
    Text = "Ceinture de Tomahawk",
    SubText = "5xCuirs cousus + 2xFicelles",
    Desc = "Ceinture de Tomahawk pour equipez les munitions",
    Items = {
    {
        name = "cuir_cousu",
        count = 5
    },
    {
        name = "ficelles",
        count = 2
    },
    },
    Reward = {
    {
        name = "WEAPON_THROWN_TOMAHAWK",
        count = 1
    }
    },
    Type = "weapon", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'kwanita',
    Animation = 'craft'
    },
    
    {
        Text = "Tomahawk",
        SubText = "2xBois + 2xCuirs cousus + 3xPierres",
        Desc = "2xBois + 2xCuirs cousus + 3xPierres",
        Items = {
            {
                name = "bois",
                count = 2
            },
            {
                name = "cuir_cousu",
                count = 2
            },
            {
                name = "pierre",
                count = 3
            },
            },
            Reward = {
            {
                name = "ammotomahawk",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kwanita',
        Animation = 'craft'
        },




        {
            Text = "Pioche Native",
            SubText = "2xOs + 1 Grande Piece de cuir ",
            Desc = "2xOs + 1 Grande Piece de cuir ",
            Items = {
                {
                    name = "os",
                    count = 2
                },
                {
                    name = "g_piece_de_cuir",
                    count = 2
                },
                },
                Reward = {
                {
                    name = "pioche_os",
                    count = 1
                }
            },
            Type = "item", -- indicate if it is 'weapon' or 'item'
            Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
            Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
            Category = 'kwanita',
            Animation = 'craft'
            },



            {
                Text = "Hache Native",
                SubText = "2xOs + 1x pierre ",
                Desc = "2xOs + 1x pierre",
                Items = {
                    {
                        name = "os",
                        count = 2
                    },
                    {
                        name = "pierre",
                        count = 1
                    },
                    },
                    Reward = {
                    {
                        name = "hache_os",
                        count = 1
                    }
                },
                Type = "item", -- indicate if it is 'weapon' or 'item'
                Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
                Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
                Category = 'kwanita',
                Animation = 'craft'
            },
--




    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------
    --------------------------     Natif    kiowa      ----------------------
    --------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------



    {
        Text = "Viande séchée",
        SubText = "2xViande rouge + 1 Bois",
        Desc = "2xViande rouge + 1 Bois",
        Items = {
            {
                name = "vianderouge",
                count = 2
            },
            {
                name = "bois",
                count = 1
            },
        },
        Reward = {
            {
                name = "v_sechee",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kiowa',
        Animation = 'craft'
    },
    
    {
        Text = "Viande séchée",
        SubText = "2xGamey_Meat + 1 Bois",
        Desc = "2xGamey_Meat + 1 Bois",
        Items = {
            {
                name = "Gamey_Meat",
                count = 2
            },
            {
                name = "bois",
                count = 1
            },
        },
        Reward = {
            {
                name = "v_sechee",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kiowa',
        Animation = 'craft'
    },
    
    {
        Text = "Baie sauvages",
        SubText = "1xAirelle Ovale +1xBaie de gaulthière couchée",
        Desc = "1xAirelle Ovale +1xBaie de gaulthière couchée",
        Items = {
            {
                name = "consumable_herb_evergreen_huckleberry",
                count = 1
            },
            {
                name = "consumable_herb_wintergreen_berry",
                count = 1
            },
        },
        Reward = {
            {
                name = "baiesauv",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kiowa',
        Animation = 'craft'
    },
    
    
    
    {
        Text = "Baie sauvages",
        SubText = "1xCassis +1xGroseille odorante",
        Desc ="1xCassis +1xGroseille odorante",
        Items = {
            {
                name = "Black_Currant",
                count = 1
            },
            {
                name = "Golden_Currant",
                count = 1
            },
        },
        Reward = {
            {
                name = "baiesauv",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kiowa',
        Animation = 'craft'
    },
    {
        Text = "Ficelle 1",
        SubText = "2x Jonc Commun ",
        Desc = "2x Jonc Commun ",
        Items = {
            {
                name = "Bulrush",
                count = 2
            },
        },
        Reward = {
            {
                name = "ficelles",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kiowa',
        Animation = 'craft'
    },
  --[[  {
        Text = "Ficelle 2",
        SubText = "5x Fibre ",
        Desc = "5x Fibre ",
        Items = {
            {
                name = "fibres_1",
                count = 5
            },
        },
        Reward = {
            {
                name = "ficelles",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kiowa',
        Animation = 'craft'
    }, ]]

    {
        Text = "Ficelle en fibres",
        SubText = "3xfibres_1 ",
        Desc = "3xfibres_1 ",
        Items = {
            {
                name = "fibres_1",
                count = 3
            },
        },
        Reward = {
            {
                name = "ficelles",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kiowa',
        Animation = 'craft'
    },

    --
    {
        Text = "Baie sauvages",
        SubText = "1xMûre +1xFramboise",
        Desc = "1xMûre +1xFramboise",
        Items = {
            {
                name = "Black_Berry",
                count = 1
            },
            {
                name = "Red_Raspberry",
                count = 1
            },
        },
        Reward = {
            {
                name = "baiesauv",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kiowa',
        Animation = 'craft'
    },
    
    
    
    
    
    
    {
        Text = "Pemmican",
        SubText = "1xViande sechee +1xbaie sauvages",
        Desc = "1xViande sechee +1xbaie sauvages",
        Items = {
            {
                name = "v_sechee",
                count = 1
            },
            {
                name = "baiesauv",
                count = 1
            },
        },
        Reward = {
            {
                name = "pemmican",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kiowa',
        Animation = 'craft'
    },
    
    
    
    {
        Text = "Bouillie de mais",
        SubText = "1xmais +1xGourde pleine",
        Desc = "1xmais +1xGourde pleine",
        Items = {
            {
                name = "corn",
                count = 1
            },
            {
                name = "can_100",
                count = 1
            },
        },
        Reward = {
            {
                name = "b_mais",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kiowa',
        Animation = 'craft'
    },
    {
        Text = "Sagamité",
        SubText = "1xviande rouge +1xBouillie de mais +1xgraisse",
        Desc = "1xviande rouge +1xBouillie de mais +1xgraisse",
        Items = {
            {
                name = "vianderouge",
                count = 1
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "sagamite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kiowa',
        Animation = 'craft'
    },
    
    
    
    {
        Text = "Sagamité",
        SubText = "1xvolaile +1xBouillie de mais +1xgraisse",
        Desc = "1xvolaile rouge +1xBouillie de mais +1xgraisse",
        Items = {
            {
                name = "volaille",
                count = 2
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "sagamite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kiowa',
        Animation = 'craft'
    },
    
    
    {
        Text = "Sagamité",
        SubText = "1xvenaison +1xBouillie de mais +1xgraisse",
        Desc = "1xvenaison +1xGourde pleine",
        Items = {
            {
                name = "venaison",
                count = 2
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "sagamite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kiowa',
        Animation = 'craft'
    },
    {
        Text = "Sagamité",
        SubText = "1x salamelle +1xBouillie de mais +1xgraisse",
        Desc = "1x salamelle +1xGourde pleine",
        Items = {
            {
                name = "salamelle",
                count = 2
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "salamelle",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kiowa',
        Animation = 'craft'
    },
    
    {
        Text = "Sagamité",
        SubText = "1x filandreuse +1xBouillie de mais +1xgraisse",
        Desc = "1x filandreuse +1xBouillie de mais +1xgraisse",
        Items = {
            {
                name = "filandreuse",
                count = 3
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "salamelle",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kiowa',
        Animation = 'craft'
    },
    
    
    {
        Text = "Sagamité",
        SubText = "1x gibierplume +1xBouillie de mais +1xgraisse",
        Desc = "1x gibierplume +1xBouillie de mais +1xgraisse",
        Items = {
            {
                name = "gibierplume",
                count = 3
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "salamelle",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kiowa',
        Animation = 'craft'
    },
    
    
    
    
    {
        Text = "Sagamité",
        SubText = "1x gibierplume +1xBouillie de mais +1xgraisse",
        Desc = "1x gibierplume +1xBouillie de mais +1xgraisse",
        Items = {
            {
                name = "fish",
                count = 1
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "salamelle",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kiowa',
        Animation = 'craft'
    },
    
    
    
    
    
    
    
    {
        Text = "Soupe de baies",
        SubText = "1xBaies sauvages +1xFarine de maïs 1xGourde",
        Desc = "1xBaies sauvages +1xFarine de maïs 1xGourde",
        Items = {
            {
                name = "baiesauv",
                count = 1
            },
            {
                name = "farine_mais",
                count = 1
            },
            {
                name = "can_100",
                count = 1
            },
        },
        Reward = {
            {
                name = "soupe_baies",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kiowa',
        Animation = 'craft'
    },
    
    
    {
        Text = "Infusion aux herbes sauvages",
        SubText = "1xCamomille sauvage +1xMenthe sauvage 1xGourde",
        Desc = "1xCamomille sauvage +1xMenthe sauvage 1xGourde",
        Items = {
            {
                name = "Wild_Feverfew",
                count = 1
            },
            {
                name = "Wild_Mint",
                count = 1
            },
            {
                name = "can_100",
                count = 1
            },
        },
        Reward = {
            {
                name = "infusion_nat",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kiowa',
        Animation = 'craft'
    },
    {
        Text = "Farine de mais",
        SubText = "3xmais",
        Desc = "3xmais",
        Items = {
            {
                name = "corn",
                count = 3
            },
        },
        Reward = {
            {
                name = "farine_mais",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kiowa',
        Animation = 'craft'
    },
    
    {
        Text = "Pain natif",
        SubText = "1xfarine de mais +1xBai Bollete",
        Desc = "1xmais +1xGourde pleine",
        Items = {
            {
                name = "farine_mais",
                count = 1
            },
        },
        Reward = {
            {
                name = "Bay_Bolete",
                count = 2
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kiowa',
        Animation = 'craft'
    },
    
    {
        Text = "Pain natif",
        SubText = "1xfarine de mais+ 2xChanterelles",
        Desc = "1xfarine de mais+ 2xChanterelles",
        Items = {
            {
                name = "farine_mais",
                count = 1
            },
        },
        Reward = {
            {
                name = "Parasol_Mushroom",
                count = 2
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kiowa',
        Animation = 'craft'
    },
    
    
    {
        Text = "Pain natif",
        SubText = "1xmais + 2xPoules des Bois",
        Desc = "1xmais + 2xPoules des Bois",
        Items = {
            {
                name = "farine_mais",
                count = 1
            },
        },
        Reward = {
            {
                name = "Rams_Head",
                count = 2
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kiowa',
        Animation = 'craft'
    },
    
    {
    Text = "Herbes médicinales",
    SubText = "3xMillefeuille + 1xGinseng d'Alaska + 2xAchillées visqueuses",
    Desc = "3xMillefeuille + 1xGinseng d'Alaska + 2xAchillées visqueuses",
    Items = {
    {
        name = "English_Mace",
        count = 3
    },
    {
        name = "ginseng",
        count = 1
    },
    {
        name = "Yarrow",
        count = 2
    },
    },
    Reward = {
    {
        name = "herbe_med",
        count = 2
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'kiowa',
    Animation = 'craft'
    },
    {
    Text = "Décoction revigorante",
    SubText = "1xSauge du colibri + 2xBardanes + 1xPerce-neige violet",
    Desc = "1xSauge du colibri + 2xBardanes + 1xPerce-neige violet",
    Items = {
    {
        name = "Hummingbird_Sage",
        count = 1
    },
    {
        name = "Burdock_Root",
        count = 2
    },
    {
        name = "Violet_Snowdrop",
        count = 1
    },
    },
    Reward = {
    {
        name = "decoction_revigorante",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'kiowa',
    Animation = 'craft'
    },
    {
    Text = "Elixir vivifiant",
    SubText = "5xTabacs Indien + 2xGinsengs Américain + 1xSauge du colibri",
    Desc = "5xTabacs Indien + 2xGinsengs Américain + 1xSauge du colibri",
    Items = {
    {
        name = "Indian_Tobbaco",
        count = 5
    },
    {
        name = "American_Ginseng",
        count = 2
    },
    {
        name = "Hummingbird_Sage",
        count = 1
    },
    },
    Reward = {
    {
        name = "elixir_vivifiant",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'kiowa',
    Animation = 'craft'
    },
    {
    Text = "Premiers soins niv III",
    SubText = "1xelixir_vivifiant + 2xAsclépiades + 1xPavot des champs",
    Desc = "1xelixir_vivifiant + 2xAsclépiades + 1xPavot des champs",
    Items = {
    {
        name = "elixir_vivifiant",
        count = 1
    },
    {
        name = "Blood_Flower",
        count = 2
    },
    {
        name = "Prairie_Poppy",
        count = 1
    },
    },
    Reward = {
    {
        name = "p_soins_natif3",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'kiowa',
    Animation = 'craft'
    },
    {
    Text = "Foin natif",
    SubText = "2xLuzernes",
    Desc = "2xLuzernes",
    Items = {
    {
        name = "luzerne",
        count = 2
    },
    },
    Reward = {
    {
        name = "foin_nat",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'kiowa',
    Animation = 'craft'
    },
    {
    Text = "Calumet",
    SubText = "1xpipe indienne + 1xPavot de champ + 1xAsclépiade",
    Desc = "1xpipe indienne + 1xPavot de champ + 1xAsclépiade",
    Items = {
    {
        name = "pipe_indienne",
        count = 1
    },
    {
        name = "Prairie_Poppy",
        count = 1
    },
    {
        name = "Blood_Flower",
        count = 1
    },
    },
    Reward = {
    {
        name = "calumet",
        count = 1
    }
    },

    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'kiowa',
    Animation = 'craft'
    },
    













    {
        Text = "Cuir Cousu 1",
        SubText = "2xCuirs + 1xFicelle",
        Desc = "2xCuirs + 1xFicelle",
        Items = {
            {
                name = "ficelles",
                count = 1
            },
            {
                name = "piece_de_cuir",
                count = 2
            },
        },
        Reward = {
            {
                name = "cuir_cousu",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kiowa',
        Animation = 'craft'
        },
    
        {
        Text = "Cuir Cousu 2",
        SubText = "2xGros cuirs + 1xFicelle",
        Desc = "2xGros cuirs + 1xFicelle",
        Items = {
            {
                name = "g_piece_de_cuir",
                count = 2
            },
            {
                name = "ficelles",
                count = 1
            },
        },
        Reward = {
            {
                name = "cuir_cousu",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kiowa',
        Animation = 'craft'
    },
    









    {
    Text = "Tissu",
    SubText = "3xFicelles",
    Desc = "3xFicelles",
    Items = {
    {
        name = "ficelles",
        count = 2
    },
    },
    Reward = {
    {
        name = "tissu",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'kiowa',
    Animation = 'craft'
    },
    {
    Text = "Arc",
    SubText = "3xBois + 1xFicelle",
    Desc = "3xBois + 1xFicelle",
    Items = {
    {
        name = "bois",
        count = 3
    },
    {
        name = "ficelles",
        count = 1
    },
},
    Reward = {
    {
        name = "WEAPON_BOW",
        count = 1
    }
    
    
    },
    Type = "weapon", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'kiowa',
    Animation = 'craft'
    },
    {
    Text = "Carquois",
    SubText = "2xGrosse Branche+ 1xPlume + 1xPierre",
    Desc = "2xGrosse Branche+ 1xPlume + 1xPierre",
    Items = {
    {
        name = "p_bois",
        count = 2
    },
    {
        name = "Feather",
        count = 1
    },
    {
        name = "pierre",
        count = 1
    },
    },
    Reward = {
    {
        name = "ammoarrownormal",
        count = 1
    }
    
    
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'kiowa',
    Animation = 'craft'
    },
    {
    Text = "Carquois de poison",
    SubText = "1xCarquois + 5xPoisons de serpent",
    Desc = "1xCarquois + 5xPoisons de serpent",
    Items = {
    {
        name = "ammoarrownormal",
        count = 1
    },
    {
        name = "Snake_Poison",
        count = 5   
    },
    },
    Reward = {
    {
        name = "ammoarrowpoison",
        count = 1
    }
    
    
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'kiowa',
    Animation = 'craft'
    },
    
    {
    Text = "Carquois explosif",
    SubText = "1xCarquois + 5xAlcools natif + 1xNitroglycérine",
    Desc = "1xCarquois + 5xAlcools natif + 1xNitroglycérine",
    Items = {
    {
        name = "ammoarrownormal",
        count = 1
    },
    {
        name = "alcool_nat",
        count = 5
    },
    {
        name = "nitroglyserolia",
        count = 1
    },
    },
    Reward = {
    {
        name = "ammoarrowdynamite",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'kiowa',
    Animation = 'craft'
    },
    
    {
    Text = "Carquois de feu",
    SubText = "1xCarquois + 5xTissus + x5 seve",
    Desc = "1xCarquois + 5xTissus + x5 seve",
    Items = {
    {
        name = "ammoarrownormal",
        count = 1
    },
    {
        name = "tissu",
        count = 5
    },
    {
        name = "sap",
        count = 5
    },
    },
    Reward = {
    {
        name = "ammoarrowfire",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'kiowa',
    Animation = 'craft'
    },
    
    {
    Text = "Carquois de chasse gibier",
    SubText = "1xCarquois +5xPlumes",
    Desc = "1xCarquois +5xPlumes",
    Items = {
    {
        name = "ammoarrownormal",
        count = 1
    },
    {
        name = "Feather",
        count = 5
    },
    },
    Reward = {
    {
        name = "ammoarrowsmallgame",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'kiowa',
    Animation = 'craft'
    },

    {
    Text = "Ceinture de Tomahawk",
    SubText = "5xCuirs cousus + 2xFicelles",
    Desc = "Ceinture de Tomahawk pour equipez les munitions",
    Items = {
    {
        name = "cuir_cousu",
        count = 5
    },
    {
        name = "ficelles",
        count = 2
    },
    },
    Reward = {
    {
        name = "WEAPON_THROWN_TOMAHAWK",
        count = 1
    }
    },
    Type = "weapon", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'kiowa',
    Animation = 'craft'
    },
    
    {
        Text = "Tomahawk",
        SubText = "2xBois + 2xCuirs cousus + 3xPierres",
        Desc = "2xBois + 2xCuirs cousus + 3xPierres",
        Items = {
            {
                name = "bois",
                count = 2
            },
            {
                name = "cuir_cousu",
                count = 2
            },
            {
                name = "pierre",
                count = 3
            },
            },
            Reward = {
            {
                name = "ammotomahawk",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'kiowa',
        Animation = 'craft'
        },




        {
            Text = "Pioche Native",
            SubText = "2xOs + 1 Grande Piece de cuir ",
            Desc = "2xOs + 1 Grande Piece de cuir ",
            Items = {
                {
                    name = "os",
                    count = 2
                },
                {
                    name = "g_piece_de_cuir",
                    count = 2
                },
                },
                Reward = {
                {
                    name = "pioche_os",
                    count = 1
                }
            },
            Type = "item", -- indicate if it is 'weapon' or 'item'
            Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
            Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
            Category = 'kiowa',
            Animation = 'craft'
            },



            {
                Text = "Hache Native",
                SubText = "2xOs + 1x pierre ",
                Desc = "2xOs + 1x pierre",
                Items = {
                    {
                        name = "os",
                        count = 2
                    },
                    {
                        name = "pierre",
                        count = 1
                    },
                    },
                    Reward = {
                    {
                        name = "hache_os",
                        count = 1
                    }
                },
                Type = "item", -- indicate if it is 'weapon' or 'item'
                Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
                Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
                Category = 'kiowa',
                Animation = 'craft'
            },
--




 








--------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------
    --------------------------     Distillerie Guarma         ----------------------
    --------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    {
        Text = "Sucre pour chevaux",
        SubText = "5xSucre",
        Desc = "5xSucre",
        Items = {
            {
                name = "sugar",
                count = 5
            },
        },
        Reward = {
            {
                name = "consumable_sugarcube",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = "sucrerie",
        Animation = 'craft'
    },
    {
        Text = "Rhum",
        SubText = "2xSucre x1bouteille d'eau",
        Desc = "2xSucre x1bouteille d'eau",
        Items = {
            {
                name = "sugar",
                count = 2
            },
            {
                name = "water",
                count = 2
            },
        },
        Reward = {
            {
                name = "rhum",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = "sucrerie",
        Animation = 'craft'
    },
    {
        Text = "Rhum à la bannane",
        SubText = "2xRhum + 1Bannane",
        Desc = "2xRhum + 1Bannane",
        Items = {
            {
                name = "Rhum",
                count = 2
            },
            {
                name = "bannana",
                count = 1
            },
        },
        Reward = {
            {
                name = "rhum_bannane",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = "sucrerie",
        Animation = 'craft'
    },
    {
        Text = "Rhum a la pastèque",
        SubText = "2xRhum + 1 pastèque",
        Desc = "2xRhum + 1 pastèque",
        Items = {
            {
                name = "Rhum",
                count = 2
            },
            {
                name = "Melone",
                count = 2
            },
        },
        Reward = {
            {
                name = "rhum_pasteque",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = "sucrerie_g",
        Animation = 'craft'
    },
    {
        Text = "Vin",
        SubText = "2x Raison 2x levure",
        Desc = "2x Raison 2x levure",
        Items = {
            {
                name = "raisin",
                count = 2
            },
            {
                name = "levure",
                count = 2
            },
        },
        Reward = {
            {
                name = "vin",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = "sucrerie",
        Animation = 'craft'
    },

    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------Sucrerie Guarma---------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    {
        Text = "Sucre",
        SubText = "2xCannes a sucre",
        Desc = "2xCannes a sucre",
        Items = {
            {
                name = "Sugarcane",
                count = 2
            },
        },
        Reward = {
            {
                name = "sugar",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'sucrerie',
        Animation = 'craft'
    },


    {
        Text = "Sac de sucre",
        SubText = "50xSucre",
        Desc = "50xSucre",
        Items = {
            {
                name = "sugar",
                count = 50
            },
        },
        Reward = {
            {
                name = "sac_sucre",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'sucrerie',
        Animation = 'craft'
    },


    {
        Text = "Plant de canne a sucre",
        SubText = "2x Canne a sucre = 5 plant",
        Desc = "2x Canne a sucre = 5 plant",
        Items = {
            {
                name = "Sugarcane",
                count = 2
            },
        },
        Reward = {
            {
                name = "Sugarcane_Seed",
                count = 5
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'sucrerie',
        Animation = 'craft'
    },

    {
        Text = "Graine raisin",
        SubText = "1x raisin = 5 graines",
        Desc = "1x raisin = 5 graines",
        Items = {
            {
                name = "raisin",
                count = 1
            },
        },
        Reward = {
            {
                name = "raisin_Seed",
                count = 5
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'sucrerie',
        Animation = 'craft'
    },


   --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------
    --------------------------     Natif    chippewa      ----------------------
    --------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    {
        Text = "Viande séchée",
        SubText = "2xViande rouge + 1 Bois",
        Desc = "2xViande rouge + 1 Bois",
        Items = {
            {
                name = "vianderouge",
                count = 2
            },
            {
                name = "bois",
                count = 1
            },
        },
        Reward = {
            {
                name = "v_sechee",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'chippewa',
        Animation = 'craft'
    },
    
    {
        Text = "Viande séchée",
        SubText = "2xGamey_Meat + 1 Bois",
        Desc = "2xGamey_Meat + 1 Bois",
        Items = {
            {
                name = "Gamey_Meat",
                count = 2
            },
            {
                name = "bois",
                count = 1
            },
        },
        Reward = {
            {
                name = "v_sechee",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'chippewa',
        Animation = 'craft'
    },
    
    {
        Text = "Baie sauvages",
        SubText = "1xAirelle Ovale +1xBaie de gaulthière couchée",
        Desc = "1xAirelle Ovale +1xBaie de gaulthière couchée",
        Items = {
            {
                name = "consumable_herb_evergreen_huckleberry",
                count = 1
            },
            {
                name = "consumable_herb_wintergreen_berry",
                count = 1
            },
        },
        Reward = {
            {
                name = "baiesauv",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'chippewa',
        Animation = 'craft'
    },
    
    
    
    {
        Text = "Baie sauvages",
        SubText = "1xCassis +1xGroseille odorante",
        Desc ="1xCassis +1xGroseille odorante",
        Items = {
            {
                name = "Black_Currant",
                count = 1
            },
            {
                name = "Golden_Currant",
                count = 1
            },
        },
        Reward = {
            {
                name = "baiesauv",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'chippewa',
        Animation = 'craft'
    },
    {
        Text = "Ficelle 1",
        SubText = "2x Jonc Commun ",
        Desc = "2x Jonc Commun ",
        Items = {
            {
                name = "Bulrush",
                count = 2
            },
        },
        Reward = {
            {
                name = "ficelles",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'chippewa',
        Animation = 'craft'
    },
  --[[  {
        Text = "Ficelle 2",
        SubText = "5x Fibre ",
        Desc = "5x Fibre ",
        Items = {
            {
                name = "fibres_1",
                count = 5
            },
        },
        Reward = {
            {
                name = "ficelles",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'chippewa',
        Animation = 'craft'
    }, ]]

    {
        Text = "Ficelle en fibres",
        SubText = "3xfibres_1 ",
        Desc = "3xfibres_1 ",
        Items = {
            {
                name = "fibres_1",
                count = 3
            },
        },
        Reward = {
            {
                name = "ficelles",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'chippewa',
        Animation = 'craft'
    },

    --
    {
        Text = "Baie sauvages",
        SubText = "1xMûre +1xFramboise",
        Desc = "1xMûre +1xFramboise",
        Items = {
            {
                name = "Black_Berry",
                count = 1
            },
            {
                name = "Red_Raspberry",
                count = 1
            },
        },
        Reward = {
            {
                name = "baiesauv",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'chippewa',
        Animation = 'craft'
    },
    
    
    
    
    
    
    {
        Text = "Pemmican",
        SubText = "1xViande sechee +1xbaie sauvages",
        Desc = "1xViande sechee +1xbaie sauvages",
        Items = {
            {
                name = "v_sechee",
                count = 1
            },
            {
                name = "baiesauv",
                count = 1
            },
        },
        Reward = {
            {
                name = "pemmican",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'chippewa',
        Animation = 'craft'
    },
    
    
    
    {
        Text = "Bouillie de mais",
        SubText = "1xmais +1xGourde pleine",
        Desc = "1xmais +1xGourde pleine",
        Items = {
            {
                name = "corn",
                count = 1
            },
            {
                name = "can_100",
                count = 1
            },
        },
        Reward = {
            {
                name = "b_mais",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'chippewa',
        Animation = 'craft'
    },
    {
        Text = "Sagamité",
        SubText = "1xviande rouge +1xBouillie de mais +1xgraisse",
        Desc = "1xviande rouge +1xBouillie de mais +1xgraisse",
        Items = {
            {
                name = "vianderouge",
                count = 1
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "sagamite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'chippewa',
        Animation = 'craft'
    },
    
    
    
    {
        Text = "Sagamité",
        SubText = "1xvolaile +1xBouillie de mais +1xgraisse",
        Desc = "1xvolaile rouge +1xBouillie de mais +1xgraisse",
        Items = {
            {
                name = "volaille",
                count = 2
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "sagamite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'chippewa',
        Animation = 'craft'
    },
    
    
    {
        Text = "Sagamité",
        SubText = "1xvenaison +1xBouillie de mais +1xgraisse",
        Desc = "1xvenaison +1xGourde pleine",
        Items = {
            {
                name = "venaison",
                count = 2
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "sagamite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'chippewa',
        Animation = 'craft'
    },
    {
        Text = "Sagamité",
        SubText = "1x salamelle +1xBouillie de mais +1xgraisse",
        Desc = "1x salamelle +1xGourde pleine",
        Items = {
            {
                name = "salamelle",
                count = 2
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "salamelle",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'chippewa',
        Animation = 'craft'
    },
    
    {
        Text = "Sagamité",
        SubText = "1x filandreuse +1xBouillie de mais +1xgraisse",
        Desc = "1x filandreuse +1xBouillie de mais +1xgraisse",
        Items = {
            {
                name = "filandreuse",
                count = 3
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "salamelle",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'chippewa',
        Animation = 'craft'
    },
    
    
    {
        Text = "Sagamité",
        SubText = "1x gibierplume +1xBouillie de mais +1xgraisse",
        Desc = "1x gibierplume +1xBouillie de mais +1xgraisse",
        Items = {
            {
                name = "gibierplume",
                count = 3
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "salamelle",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'chippewa',
        Animation = 'craft'
    },
    
    
    
    
    {
        Text = "Sagamité",
        SubText = "1x gibierplume +1xBouillie de mais +1xgraisse",
        Desc = "1x gibierplume +1xBouillie de mais +1xgraisse",
        Items = {
            {
                name = "fish",
                count = 1
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "salamelle",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'chippewa',
        Animation = 'craft'
    },
    
    
    
    
    
    
    
    {
        Text = "Soupe de baies",
        SubText = "1xBaies sauvages +1xFarine de maïs 1xGourde",
        Desc = "1xBaies sauvages +1xFarine de maïs 1xGourde",
        Items = {
            {
                name = "baiesauv",
                count = 1
            },
            {
                name = "farine_mais",
                count = 1
            },
            {
                name = "can_100",
                count = 1
            },
        },
        Reward = {
            {
                name = "soupe_baies",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'chippewa',
        Animation = 'craft'
    },
    
    
    {
        Text = "Infusion aux herbes sauvages",
        SubText = "1xCamomille sauvage +1xMenthe sauvage 1xGourde",
        Desc = "1xCamomille sauvage +1xMenthe sauvage 1xGourde",
        Items = {
            {
                name = "Wild_Feverfew",
                count = 1
            },
            {
                name = "Wild_Mint",
                count = 1
            },
            {
                name = "can_100",
                count = 1
            },
        },
        Reward = {
            {
                name = "infusion_nat",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'chippewa',
        Animation = 'craft'
    },
    {
        Text = "Farine de mais",
        SubText = "3xmais",
        Desc = "3xmais",
        Items = {
            {
                name = "corn",
                count = 3
            },
        },
        Reward = {
            {
                name = "farine_mais",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'chippewa',
        Animation = 'craft'
    },
    
    {
        Text = "Pain natif",
        SubText = "1xfarine de mais +1xBai Bollete",
        Desc = "1xfarine de mais +1xBai Bollete",
        Items = {
            {
                name = "farine_mais",
                count = 1
            },
            {
                name = "Bay_Bolete",
                count = 2
            },
        },
        Reward = {
            {
                name = "pain_natif",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'chippewa',
        Animation = 'craft'
    },
    
    {
        Text = "Pain natif",
        SubText = "1xfarine de mais+ 2xChanterelles",
        Desc = "1xfarine de mais+ 2xChanterelles",
        Items = {
            {
                name = "farine_mais",
                count = 1
            },
            {
                name = "Parasol_Mushroom",
                count = 2
            },
        },
        Reward = {

            {
                name = "pain_natif",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'chippewa',
        Animation = 'craft'
    },

    {
        Text = "Pain natif",
        SubText = "1xmais + 2xPoules des Bois",
        Desc = "1xmais + 2xPoules des Bois",
        Items = {
            {
                name = "farine_mais",
                count = 1
            },
            {
                name = "Rams_Head",
                count = 2
            },
        },
    Reward = {

                {
                    name = "pain_natif",
                    count = 1
                }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'chippewa',
        Animation = 'craft'
    },
    
    {
    Text = "Herbes médicinales",
    SubText = "3xMillefeuille + 1xGinseng d'Alaska + 2xAchillées visqueuses",
    Desc = "3xMillefeuille + 1xGinseng d'Alaska + 2xAchillées visqueuses",
    Items = {
    {
        name = "English_Mace",
        count = 3
    },
    {
        name = "ginseng",
        count = 1
    },
    {
        name = "Yarrow",
        count = 2
    },
    },
    Reward = {
    {
        name = "herbe_med",
        count = 2
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'chippewa',
    Animation = 'craft'
    },
    {
    Text = "Décoction revigorante",
    SubText = "1xSauge du colibri + 2xBardanes + 1xPerce-neige violet",
    Desc = "1xSauge du colibri + 2xBardanes + 1xPerce-neige violet",
    Items = {
    {
        name = "Hummingbird_Sage",
        count = 1
    },
    {
        name = "Burdock_Root",
        count = 2
    },
    {
        name = "Violet_Snowdrop",
        count = 1
    },
    },
    Reward = {
    {
        name = "decoction_revigorante",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'chippewa',
    Animation = 'craft'
    },
    {
    Text = "Elixir vivifiant",
    SubText = "5xTabacs Indien + 2xGinsengs Américain + 1xSauge du colibri",
    Desc = "5xTabacs Indien + 2xGinsengs Américain + 1xSauge du colibri",
    Items = {
    {
        name = "Indian_Tobbaco",
        count = 5
    },
    {
        name = "American_Ginseng",
        count = 2
    },
    {
        name = "Hummingbird_Sage",
        count = 1
    },
    },
    Reward = {
    {
        name = "elixir_vivifiant",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'chippewa',
    Animation = 'craft'
    },
    {
    Text = "Premiers soins niv III",
    SubText = "1xelixir_vivifiant + 2xAsclépiades + 1xPavot des champs",
    Desc = "1xelixir_vivifiant + 2xAsclépiades + 1xPavot des champs",
    Items = {
    {
        name = "elixir_vivifiant",
        count = 1
    },
    {
        name = "Blood_Flower",
        count = 2
    },
    {
        name = "Prairie_Poppy",
        count = 1
    },
    },
    Reward = {
    {
        name = "p_soins_natif3",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'chippewa',
    Animation = 'craft'
    },
    {
    Text = "Foin natif",
    SubText = "2xLuzernes",
    Desc = "2xLuzernes",
    Items = {
    {
        name = "luzerne",
        count = 2
    },
    },
    Reward = {
    {
        name = "foin_nat",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'chippewa',
    Animation = 'craft'
    },
    {
    Text = "Calumet",
    SubText = "1xpipe indienne + 1xPavot de champ + 1xAsclépiade",
    Desc = "1xpipe indienne + 1xPavot de champ + 1xAsclépiade",
    Items = {
    {
        name = "pipe_indienne",
        count = 1
    },
    {
        name = "Prairie_Poppy",
        count = 1
    },
    {
        name = "Blood_Flower",
        count = 1
    },
    },
    Reward = {
    {
        name = "calumet",
        count = 1
    }
    },

    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'chippewa',
    Animation = 'craft'
    },
    



    {
        Text = "Tabac pour pipe",
        SubText = " 1xPavot de champ + 1xAsclépiade",
        Desc = " 1xPavot de champ + 1xAsclépiade",
        Items = {
        {
            name = "Prairie_Poppy",
            count = 1
        },
        {
            name = "Blood_Flower",
            count = 1
        },
        },
        Reward = {
        {
            name = "syn",
            count = 1
        }
        },
    
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'chippewa',
        Animation = 'craft'
        },
        

        {
            Text = "Calumet",
            SubText = "1xpipe indienne + 1xPavot de champ + 1xAsclépiade",
            Desc = "1xpipe indienne + 1xPavot de champ + 1xAsclépiade",
            Items = {
            {
                name = "bois",
                count = 1
            },
            {
                name = "t_bois",
                count = 1
            },
            {
                name = "ficelles",
                count = 1
            },
            {
                name = "sap",
                count = 1
            },
            {
                name = "sap",
                count = 1
            },
            {
                name = "Feather",
                count = 2
            },
            },
            Reward = {
            {
                name = "pipe",
                count = 1
            }
            },
        
            Type = "item", -- indicate if it is 'weapon' or 'item'
            Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
            Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
            Category = 'chippewa',
            Animation = 'craft'
            },




        







    {
        Text = "Cuir Cousu 1",
        SubText = "2xCuirs + 1xFicelle",
        Desc = "2xCuirs + 1xFicelle",
        Items = {
            {
                name = "ficelles",
                count = 1
            },
            {
                name = "piece_de_cuir",
                count = 2
            },
        },
        Reward = {
            {
                name = "cuir_cousu",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'chippewa',
        Animation = 'craft'
        },
    
        {
        Text = "Cuir Cousu 2",
        SubText = "2xGros cuirs + 1xFicelle",
        Desc = "2xGros cuirs + 1xFicelle",
        Items = {
            {
                name = "g_piece_de_cuir",
                count = 2
            },
            {
                name = "ficelles",
                count = 1
            },
        },
        Reward = {
            {
                name = "cuir_cousu",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'chippewa',
        Animation = 'craft'
    },
    









    {
    Text = "Tissu",
    SubText = "3xFicelles",
    Desc = "3xFicelles",
    Items = {
    {
        name = "ficelles",
        count = 2
    },
    },
    Reward = {
    {
        name = "tissu",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'chippewa',
    Animation = 'craft'
    },
    {
    Text = "Arc",
    SubText = "3xBois + 1xFicelle",
    Desc = "3xBois + 1xFicelle",
    Items = {
    {
        name = "bois",
        count = 3
    },
    {
        name = "ficelles",
        count = 1
    },
},
    Reward = {
    {
        name = "WEAPON_BOW",
        count = 1
    }
    
    
    },
    Type = "weapon", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'chippewa',
    Animation = 'craft'
    },
    {
    Text = "Carquois",
    SubText = "2xGrosse Branche+ 1xPlume + 1xPierre",
    Desc = "2xGrosse Branche+ 1xPlume + 1xPierre",
    Items = {
    {
        name = "p_bois",
        count = 2
    },
    {
        name = "Feather",
        count = 1
    },
    {
        name = "pierre",
        count = 1
    },
    },
    Reward = {
    {
        name = "ammoarrownormal",
        count = 1
    }
    
    
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'chippewa',
    Animation = 'craft'
    },
    {
    Text = "Carquois de poison",
    SubText = "1xCarquois + 5xPoisons de serpent",
    Desc = "1xCarquois + 5xPoisons de serpent",
    Items = {
    {
        name = "ammoarrownormal",
        count = 1
    },
    {
        name = "Snake_Poison",
        count = 5   
    },
    },
    Reward = {
    {
        name = "ammoarrowpoison",
        count = 1
    }
    
    
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'chippewa',
    Animation = 'craft'
    },
    
    {
    Text = "Carquois explosif",
    SubText = "1xCarquois + 5xAlcools natif + 1xNitroglycérine",
    Desc = "1xCarquois + 5xAlcools natif + 1xNitroglycérine",
    Items = {
    {
        name = "ammoarrownormal",
        count = 1
    },
    {
        name = "alcool_nat",
        count = 5
    },
    {
        name = "nitroglyserolia",
        count = 1
    },
    },
    Reward = {
    {
        name = "ammoarrowdynamite",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'chippewa',
    Animation = 'craft'
    },
    
    {
    Text = "Carquois de feu",
    SubText = "1xCarquois + 5xTissus + x5 seve",
    Desc = "1xCarquois + 5xTissus + x5 seve",
    Items = {
    {
        name = "ammoarrownormal",
        count = 1
    },
    {
        name = "tissu",
        count = 5
    },
    {
        name = "sap",
        count = 5
    },
    },
    Reward = {
    {
        name = "ammoarrowfire",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'chippewa',
    Animation = 'craft'
    },
    
    {
    Text = "Carquois de chasse gibier",
    SubText = "1xCarquois +5xPlumes",
    Desc = "1xCarquois +5xPlumes",
    Items = {
    {
        name = "ammoarrownormal",
        count = 1
    },
    {
        name = "Feather",
        count = 5
    },
    },
    Reward = {
    {
        name = "ammoarrowsmallgame",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'chippewa',
    Animation = 'craft'
    },

    {
    Text = "Ceinture de Tomahawk",
    SubText = "5xCuirs cousus + 2xFicelles",
    Desc = "Ceinture de Tomahawk pour equipez les munitions",
    Items = {
    {
        name = "cuir_cousu",
        count = 5
    },
    {
        name = "ficelles",
        count = 2
    },
    },
    Reward = {
    {
        name = "WEAPON_THROWN_TOMAHAWK",
        count = 1
    }
    },
    Type = "weapon", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'chippewa',
    Animation = 'craft'
    },
    
    {
        Text = "Tomahawk",
        SubText = "2xBois + 2xCuirs cousus + 3xPierres",
        Desc = "2xBois + 2xCuirs cousus + 3xPierres",
        Items = {
            {
                name = "bois",
                count = 2
            },
            {
                name = "cuir_cousu",
                count = 2
            },
            {
                name = "pierre",
                count = 3
            },
            },
            Reward = {
            {
                name = "ammotomahawk",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'chippewa',
        Animation = 'craft'
        },




        {
            Text = "Pioche Native",
            SubText = "2xOs + 1 Grande Piece de cuir ",
            Desc = "2xOs + 1 Grande Piece de cuir ",
            Items = {
                {
                    name = "os",
                    count = 2
                },
                {
                    name = "g_piece_de_cuir",
                    count = 2
                },
                },
                Reward = {
                {
                    name = "pioche_os",
                    count = 1
                }
            },
            Type = "item", -- indicate if it is 'weapon' or 'item'
            Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
            Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
            Category = 'chippewa',
            Animation = 'craft'
            },



            {
                Text = "Hache Native",
                SubText = "2xOs + 1x pierre ",
                Desc = "2xOs + 1x pierre",
                Items = {
                    {
                        name = "os",
                        count = 2
                    },
                    {
                        name = "pierre",
                        count = 1
                    },
                    },
                    Reward = {
                    {
                        name = "hache_os",
                        count = 1
                    }
                },
                Type = "item", -- indicate if it is 'weapon' or 'item'
                Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
                Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
                Category = 'chippewa',
                Animation = 'craft'
            },
        

   --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------
    --------------------------     Natif    lakota      ----------------------
    --------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    --------------------------------------------------------------------
    {
        Text = "Viande séchée",
        SubText = "2xViande rouge + 1 Bois",
        Desc = "2xViande rouge + 1 Bois",
        Items = {
            {
                name = "vianderouge",
                count = 2
            },
            {
                name = "bois",
                count = 1
            },
        },
        Reward = {
            {
                name = "v_sechee",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'lakota',
        Animation = 'craft'
    },
    
    {
        Text = "Viande séchée",
        SubText = "2xGamey_Meat + 1 Bois",
        Desc = "2xGamey_Meat + 1 Bois",
        Items = {
            {
                name = "Gamey_Meat",
                count = 2
            },
            {
                name = "bois",
                count = 1
            },
        },
        Reward = {
            {
                name = "v_sechee",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'lakota',
        Animation = 'craft'
    },
    
    {
        Text = "Baie sauvages",
        SubText = "1xAirelle Ovale +1xBaie de gaulthière couchée",
        Desc = "1xAirelle Ovale +1xBaie de gaulthière couchée",
        Items = {
            {
                name = "consumable_herb_evergreen_huckleberry",
                count = 1
            },
            {
                name = "consumable_herb_wintergreen_berry",
                count = 1
            },
        },
        Reward = {
            {
                name = "baiesauv",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'lakota',
        Animation = 'craft'
    },
    
    
    
    {
        Text = "Baie sauvages",
        SubText = "1xCassis +1xGroseille odorante",
        Desc ="1xCassis +1xGroseille odorante",
        Items = {
            {
                name = "Black_Currant",
                count = 1
            },
            {
                name = "Golden_Currant",
                count = 1
            },
        },
        Reward = {
            {
                name = "baiesauv",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'lakota',
        Animation = 'craft'
    },
    {
        Text = "Ficelle 1",
        SubText = "2x Jonc Commun ",
        Desc = "2x Jonc Commun ",
        Items = {
            {
                name = "Bulrush",
                count = 2
            },
        },
        Reward = {
            {
                name = "ficelles",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'lakota',
        Animation = 'craft'
    },
  --[[  {
        Text = "Ficelle 2",
        SubText = "5x Fibre ",
        Desc = "5x Fibre ",
        Items = {
            {
                name = "fibres_1",
                count = 5
            },
        },
        Reward = {
            {
                name = "ficelles",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'lakota',
        Animation = 'craft'
    }, ]]

    {
        Text = "Ficelle en fibres",
        SubText = "3xfibres_1 ",
        Desc = "3xfibres_1 ",
        Items = {
            {
                name = "fibres_1",
                count = 3
            },
        },
        Reward = {
            {
                name = "ficelles",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'lakota',
        Animation = 'craft'
    },

    --
    {
        Text = "Baie sauvages",
        SubText = "1xMûre +1xFramboise",
        Desc = "1xMûre +1xFramboise",
        Items = {
            {
                name = "Black_Berry",
                count = 1
            },
            {
                name = "Red_Raspberry",
                count = 1
            },
        },
        Reward = {
            {
                name = "baiesauv",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'lakota',
        Animation = 'craft'
    },
    
    
    
    
    
    
    {
        Text = "Pemmican",
        SubText = "1xViande sechee +1xbaie sauvages",
        Desc = "1xViande sechee +1xbaie sauvages",
        Items = {
            {
                name = "v_sechee",
                count = 1
            },
            {
                name = "baiesauv",
                count = 1
            },
        },
        Reward = {
            {
                name = "pemmican",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'lakota',
        Animation = 'craft'
    },
    
    
    
    {
        Text = "Bouillie de mais",
        SubText = "1xmais +1xGourde pleine",
        Desc = "1xmais +1xGourde pleine",
        Items = {
            {
                name = "corn",
                count = 1
            },
            {
                name = "can_100",
                count = 1
            },
        },
        Reward = {
            {
                name = "b_mais",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'lakota',
        Animation = 'craft'
    },
    {
        Text = "Sagamité",
        SubText = "1xviande rouge +1xBouillie de mais +1xgraisse",
        Desc = "1xviande rouge +1xBouillie de mais +1xgraisse",
        Items = {
            {
                name = "vianderouge",
                count = 1
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "sagamite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'lakota',
        Animation = 'craft'
    },
    
    
    
    {
        Text = "Sagamité",
        SubText = "1xvolaile +1xBouillie de mais +1xgraisse",
        Desc = "1xvolaile rouge +1xBouillie de mais +1xgraisse",
        Items = {
            {
                name = "volaille",
                count = 2
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "sagamite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'lakota',
        Animation = 'craft'
    },
    
    
    {
        Text = "Sagamité",
        SubText = "1xvenaison +1xBouillie de mais +1xgraisse",
        Desc = "1xvenaison +1xGourde pleine",
        Items = {
            {
                name = "venaison",
                count = 2
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "sagamite",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'lakota',
        Animation = 'craft'
    },
    {
        Text = "Sagamité",
        SubText = "1x salamelle +1xBouillie de mais +1xgraisse",
        Desc = "1x salamelle +1xGourde pleine",
        Items = {
            {
                name = "salamelle",
                count = 2
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "salamelle",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'lakota',
        Animation = 'craft'
    },
    
    {
        Text = "Sagamité",
        SubText = "1x filandreuse +1xBouillie de mais +1xgraisse",
        Desc = "1x filandreuse +1xBouillie de mais +1xgraisse",
        Items = {
            {
                name = "filandreuse",
                count = 3
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "salamelle",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'lakota',
        Animation = 'craft'
    },
    
    
    {
        Text = "Sagamité",
        SubText = "1x gibierplume +1xBouillie de mais +1xgraisse",
        Desc = "1x gibierplume +1xBouillie de mais +1xgraisse",
        Items = {
            {
                name = "gibierplume",
                count = 3
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "salamelle",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'lakota',
        Animation = 'craft'
    },
    
    
    
    
    {
        Text = "Sagamité",
        SubText = "1x gibierplume +1xBouillie de mais +1xgraisse",
        Desc = "1x gibierplume +1xBouillie de mais +1xgraisse",
        Items = {
            {
                name = "fish",
                count = 1
            },
            {
                name = "b_mais",
                count = 1
            },
            {
                name = "Fat",
                count = 1
            },
        },
        Reward = {
            {
                name = "salamelle",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'lakota',
        Animation = 'craft'
    },
    
    
    
    
    
    
    
    {
        Text = "Soupe de baies",
        SubText = "1xBaies sauvages +1xFarine de maïs 1xGourde",
        Desc = "1xBaies sauvages +1xFarine de maïs 1xGourde",
        Items = {
            {
                name = "baiesauv",
                count = 1
            },
            {
                name = "farine_mais",
                count = 1
            },
            {
                name = "can_100",
                count = 1
            },
        },
        Reward = {
            {
                name = "soupe_baies",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'lakota',
        Animation = 'craft'
    },
    
    
    {
        Text = "Infusion aux herbes sauvages",
        SubText = "1xCamomille sauvage +1xMenthe sauvage 1xGourde",
        Desc = "1xCamomille sauvage +1xMenthe sauvage 1xGourde",
        Items = {
            {
                name = "Wild_Feverfew",
                count = 1
            },
            {
                name = "Wild_Mint",
                count = 1
            },
            {
                name = "can_100",
                count = 1
            },
        },
        Reward = {
            {
                name = "infusion_nat",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'lakota',
        Animation = 'craft'
    },
    {
        Text = "Farine de mais",
        SubText = "3xmais",
        Desc = "3xmais",
        Items = {
            {
                name = "corn",
                count = 3
            },
        },
        Reward = {
            {
                name = "farine_mais",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'lakota',
        Animation = 'craft'
    },
    
    {
        Text = "Pain natif",
        SubText = "1xfarine de mais +1xBai Bollete",
        Desc = "1xfarine de mais +1xBai Bollete",
        Items = {
            {
                name = "farine_mais",
                count = 1
            },
            {
                name = "Bay_Bolete",
                count = 2
            },
        },
        Reward = {
            {
                name = "pain_natif",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'lakota',
        Animation = 'craft'
    },
    
    {
        Text = "Pain natif",
        SubText = "1xfarine de mais+ 2xChanterelles",
        Desc = "1xfarine de mais+ 2xChanterelles",
        Items = {
            {
                name = "farine_mais",
                count = 1
            },
            {
                name = "Parasol_Mushroom",
                count = 2
            },
        },
        Reward = {

            {
                name = "pain_natif",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'lakota',
        Animation = 'craft'
    },

    {
        Text = "Pain natif",
        SubText = "1xmais + 2xPoules des Bois",
        Desc = "1xmais + 2xPoules des Bois",
        Items = {
            {
                name = "farine_mais",
                count = 1
            },
            {
                name = "Rams_Head",
                count = 2
            },
        },
    Reward = {

                {
                    name = "pain_natif",
                    count = 1
                }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'lakota',
        Animation = 'craft'
    },
    
    {
    Text = "Herbes médicinales",
    SubText = "3xMillefeuille + 1xGinseng d'Alaska + 2xAchillées visqueuses",
    Desc = "3xMillefeuille + 1xGinseng d'Alaska + 2xAchillées visqueuses",
    Items = {
    {
        name = "English_Mace",
        count = 3
    },
    {
        name = "ginseng",
        count = 1
    },
    {
        name = "Yarrow",
        count = 2
    },
    },
    Reward = {
    {
        name = "herbe_med",
        count = 2
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'lakota',
    Animation = 'craft'
    },
    {
    Text = "Décoction revigorante",
    SubText = "1xSauge du colibri + 2xBardanes + 1xPerce-neige violet",
    Desc = "1xSauge du colibri + 2xBardanes + 1xPerce-neige violet",
    Items = {
    {
        name = "Hummingbird_Sage",
        count = 1
    },
    {
        name = "Burdock_Root",
        count = 2
    },
    {
        name = "Violet_Snowdrop",
        count = 1
    },
    },
    Reward = {
    {
        name = "decoction_revigorante",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'lakota',
    Animation = 'craft'
    },
    {
    Text = "Elixir vivifiant",
    SubText = "5xTabacs Indien + 2xGinsengs Américain + 1xSauge du colibri",
    Desc = "5xTabacs Indien + 2xGinsengs Américain + 1xSauge du colibri",
    Items = {
    {
        name = "Indian_Tobbaco",
        count = 5
    },
    {
        name = "American_Ginseng",
        count = 2
    },
    {
        name = "Hummingbird_Sage",
        count = 1
    },
    },
    Reward = {
    {
        name = "elixir_vivifiant",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'lakota',
    Animation = 'craft'
    },
    {
    Text = "Premiers soins niv III",
    SubText = "1xelixir_vivifiant + 2xAsclépiades + 1xPavot des champs",
    Desc = "1xelixir_vivifiant + 2xAsclépiades + 1xPavot des champs",
    Items = {
    {
        name = "elixir_vivifiant",
        count = 1
    },
    {
        name = "Blood_Flower",
        count = 2
    },
    {
        name = "Prairie_Poppy",
        count = 1
    },
    },
    Reward = {
    {
        name = "p_soins_natif3",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'lakota',
    Animation = 'craft'
    },
    {
    Text = "Foin natif",
    SubText = "2xLuzernes",
    Desc = "2xLuzernes",
    Items = {
    {
        name = "luzerne",
        count = 2
    },
    },
    Reward = {
    {
        name = "foin_nat",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'lakota',
    Animation = 'craft'
    },
    {
    Text = "Calumet",
    SubText = "1xpipe indienne + 1xPavot de champ + 1xAsclépiade",
    Desc = "1xpipe indienne + 1xPavot de champ + 1xAsclépiade",
    Items = {
    {
        name = "pipe_indienne",
        count = 1
    },
    {
        name = "Prairie_Poppy",
        count = 1
    },
    {
        name = "Blood_Flower",
        count = 1
    },
    },
    Reward = {
    {
        name = "calumet",
        count = 1
    }
    },

    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'lakota',
    Animation = 'craft'
    },
    



    {
        Text = "Tabac pour pipe",
        SubText = " 1xPavot de champ + 1xAsclépiade",
        Desc = " 1xPavot de champ + 1xAsclépiade",
        Items = {
        {
            name = "Prairie_Poppy",
            count = 1
        },
        {
            name = "Blood_Flower",
            count = 1
        },
        },
        Reward = {
        {
            name = "syn",
            count = 1
        }
        },
    
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'lakota',
        Animation = 'craft'
        },
        

        {
            Text = "Calumet",
            SubText = "1xpipe indienne + 1xPavot de champ + 1xAsclépiade",
            Desc = "1xpipe indienne + 1xPavot de champ + 1xAsclépiade",
            Items = {
            {
                name = "bois",
                count = 1
            },
            {
                name = "t_bois",
                count = 1
            },
            {
                name = "ficelles",
                count = 1
            },
            {
                name = "sap",
                count = 1
            },
            {
                name = "sap",
                count = 1
            },
            {
                name = "Feather",
                count = 2
            },
            },
            Reward = {
            {
                name = "pipe",
                count = 1
            }
            },
        
            Type = "item", -- indicate if it is 'weapon' or 'item'
            Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
            Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
            Category = 'lakota',
            Animation = 'craft'
            },



        







    {
        Text = "Cuir Cousu 1",
        SubText = "2xCuirs + 1xFicelle",
        Desc = "2xCuirs + 1xFicelle",
        Items = {
            {
                name = "ficelles",
                count = 1
            },
            {
                name = "piece_de_cuir",
                count = 2
            },
        },
        Reward = {
            {
                name = "cuir_cousu",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'lakota',
        Animation = 'craft'
        },
    
        {
        Text = "Cuir Cousu 2",
        SubText = "2xGros cuirs + 1xFicelle",
        Desc = "2xGros cuirs + 1xFicelle",
        Items = {
            {
                name = "g_piece_de_cuir",
                count = 2
            },
            {
                name = "ficelles",
                count = 1
            },
        },
        Reward = {
            {
                name = "cuir_cousu",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'lakota',
        Animation = 'craft'
    },
    









    {
    Text = "Tissu",
    SubText = "3xFicelles",
    Desc = "3xFicelles",
    Items = {
    {
        name = "ficelles",
        count = 2
    },
    },
    Reward = {
    {
        name = "tissu",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'lakota',
    Animation = 'craft'
    },
    {
    Text = "Arc",
    SubText = "3xBois + 1xFicelle",
    Desc = "3xBois + 1xFicelle",
    Items = {
    {
        name = "bois",
        count = 3
    },
    {
        name = "ficelles",
        count = 1
    },
},
    Reward = {
    {
        name = "WEAPON_BOW",
        count = 1
    }
    
    
    },
    Type = "weapon", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'lakota',
    Animation = 'craft'
    },
    {
    Text = "Carquois",
    SubText = "2xGrosse Branche+ 1xPlume + 1xPierre",
    Desc = "2xGrosse Branche+ 1xPlume + 1xPierre",
    Items = {
    {
        name = "p_bois",
        count = 2
    },
    {
        name = "Feather",
        count = 1
    },
    {
        name = "pierre",
        count = 1
    },
    },
    Reward = {
    {
        name = "ammoarrownormal",
        count = 1
    }
    
    
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'lakota',
    Animation = 'craft'
    },
    {
    Text = "Carquois de poison",
    SubText = "1xCarquois + 5xPoisons de serpent",
    Desc = "1xCarquois + 5xPoisons de serpent",
    Items = {
    {
        name = "ammoarrownormal",
        count = 1
    },
    {
        name = "Snake_Poison",
        count = 5   
    },
    },
    Reward = {
    {
        name = "ammoarrowpoison",
        count = 1
    }
    
    
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'lakota',
    Animation = 'craft'
    },
    
    {
    Text = "Carquois explosif",
    SubText = "1xCarquois + 5xAlcools natif + 1xNitroglycérine",
    Desc = "1xCarquois + 5xAlcools natif + 1xNitroglycérine",
    Items = {
    {
        name = "ammoarrownormal",
        count = 1
    },
    {
        name = "alcool_nat",
        count = 5
    },
    {
        name = "nitroglyserolia",
        count = 1
    },
    },
    Reward = {
    {
        name = "ammoarrowdynamite",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'lakota',
    Animation = 'craft'
    },
    
    {
    Text = "Carquois de feu",
    SubText = "1xCarquois + 5xTissus + x5 seve",
    Desc = "1xCarquois + 5xTissus + x5 seve",
    Items = {
    {
        name = "ammoarrownormal",
        count = 1
    },
    {
        name = "tissu",
        count = 5
    },
    {
        name = "sap",
        count = 5
    },
    },
    Reward = {
    {
        name = "ammoarrowfire",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'lakota',
    Animation = 'craft'
    },
    
    {
    Text = "Carquois de chasse gibier",
    SubText = "1xCarquois +5xPlumes",
    Desc = "1xCarquois +5xPlumes",
    Items = {
    {
        name = "ammoarrownormal",
        count = 1
    },
    {
        name = "Feather",
        count = 5
    },
    },
    Reward = {
    {
        name = "ammoarrowsmallgame",
        count = 1
    }
    },
    Type = "item", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'lakota',
    Animation = 'craft'
    },

    {
    Text = "Ceinture de Tomahawk",
    SubText = "5xCuirs cousus + 2xFicelles",
    Desc = "Ceinture de Tomahawk pour equipez les munitions",
    Items = {
    {
        name = "cuir_cousu",
        count = 5
    },
    {
        name = "ficelles",
        count = 2
    },
    },
    Reward = {
    {
        name = "WEAPON_THROWN_TOMAHAWK",
        count = 1
    }
    },
    Type = "weapon", -- indicate if it is 'weapon' or 'item'
    Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
    Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
    Category = 'lakota',
    Animation = 'craft'
    },
    
    {
        Text = "Tomahawk",
        SubText = "2xBois + 2xCuirs cousus + 3xPierres",
        Desc = "2xBois + 2xCuirs cousus + 3xPierres",
        Items = {
            {
                name = "bois",
                count = 2
            },
            {
                name = "cuir_cousu",
                count = 2
            },
            {
                name = "pierre",
                count = 3
            },
            },
            Reward = {
            {
                name = "ammotomahawk",
                count = 1
            }
        },
        Type = "item", -- indicate if it is 'weapon' or 'item'
        Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
        Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
        Category = 'lakota',
        Animation = 'craft'
        },




        {
            Text = "Pioche Native",
            SubText = "2xOs + 1 Grande Piece de cuir ",
            Desc = "2xOs + 1 Grande Piece de cuir ",
            Items = {
                {
                    name = "os",
                    count = 2
                },
                {
                    name = "g_piece_de_cuir",
                    count = 2
                },
                },
                Reward = {
                {
                    name = "pioche_os",
                    count = 1
                }
            },
            Type = "item", -- indicate if it is 'weapon' or 'item'
            Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
            Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
            Category = 'lakota',
            Animation = 'craft'
            },



            {
                Text = "Hache Native",
                SubText = "2xOs + 1x pierre ",
                Desc = "2xOs + 1x pierre",
                Items = {
                    {
                        name = "os",
                        count = 2
                    },
                    {
                        name = "pierre",
                        count = 1
                    },
                    },
                    Reward = {
                    {
                        name = "hache_os",
                        count = 1
                    }
                },
                Type = "item", -- indicate if it is 'weapon' or 'item'
                Job = 0, -- set to 0 to allow any jobs, or like { "butcher" } to job restriction
                Location = 0, -- set to 0 to allow any locations from Config.Locations, or like { "butcher" } to job restriction
                Category = 'lakota',
                Animation = 'craft'
            },
        





















    
}


Config.Animations = {
    ["craft"] = { --Default Animation
        dict = "mech_inventory@crafting@fallbacks",
        name = "full_craft_and_stow", 
        flag = 27,
        type = 'standard'
    },
    ["spindlecook"] = {
        dict = "amb_camp@world_camp_fire_cooking@male_d@wip_base",
        name = "wip_base",
        flag = 17,
        type = 'standard',
        prop = {
            model = 'p_stick04x',
            coords = {
                x = 0.2, 
                y = 0.04,
                z = 0.12,
                xr = 170.0,
                yr = 50.0,
                zr = 0.0
            },
            bone = 'SKEL_R_Finger13',
            subprop = {
                model = 's_meatbit_chunck_medium01x',
                coords = {
                    x = -0.30, 
                    y = -0.08,
                    z = -0.30,
                    xr = 0.0,
                    yr = 0.0,
                    zr = 70.0
                }
            }
        }
    },
    ["knifecooking"] = {
        dict = "amb_camp@world_player_fire_cook_knife@male_a@wip_base",
        name = "wip_base", 
        flag = 17,
        type = 'standard',
        prop = {
            model = 'w_melee_knife06',
            coords = {
                x = -0.01, 
                y = -0.02,
                z = 0.02,
                xr = 190.0,
                yr = 0.0,
                zr = 0.0
            },
            bone = 'SKEL_R_Finger13',
            subprop = {
                model = 'p_redefleshymeat01xa',
                coords = {
                    x = 0.00, 
                    y = 0.02,
                    z = -0.20,
                    xr = 0.0,
                    yr = 0.0,
                    zr = 0.0
                }
            }
        }
    },
    ["campfire"] = {
        dict = "script_campfire@lighting_fire@male_male",
        name = "light_fire_b_p2_male_b", 
        flag = 17,
        type = 'standard'
	}
}
