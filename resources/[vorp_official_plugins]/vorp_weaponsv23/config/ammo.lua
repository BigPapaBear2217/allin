Config5 = {}
Config5.ammo = { -- both crafting and shops
        ["Carabine"] = {
            ["Standard"] = {
                key = "AMMO_REPEATER",-- DO NOT CHANGE THESE  
                item = "ammorepeaternormal",
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 200, -- max ammo allowed by game 
                guncheck = 0xDDB2578E95EF7138,-- DO NOT CHANGE THESE 
                qt = 100, -- number of bullets in box 
                materials = {
                    item1 = {name = "iron", amount = 1},
                    item2 = {name = "copper", amount = 1},
                    item3 = {name = "nitrite", amount = 1},
                }, 
            },
            ["Express"] = {
                key = "AMMO_REPEATER_EXPRESS", 
                item = "ammorepeaterexpress",
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 200,
                guncheck = 0xDDB2578E95EF7138,
                qt = 100, -- number of bullets in box    
                materials = {
                    item1 = {name = "iron", amount = 5},
                    item2 = {name = "copper", amount = 5},
                    item3 = {name = "nitrite", amount = 5},
                }, 
            },
            ["Explosive"] = {
                key = "AMMO_REPEATER_EXPRESS_EXPLOSIVE", 
                item = "ammorepeaterexplosive",
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 10,
                guncheck = 0xDDB2578E95EF7138,
                qt = 30, -- number of bullets in box
                materials = {
                    item1 = {name = "iron", amount = 5},
                    item2 = {name = "copper", amount = 5},
                    item3 = {name = "dynamite", amount = 5},
                }, 
            },
            ["Haute-vélocité"] = {
                key = "AMMO_REPEATER_HIGH_VELOCITY", 
                item = "ammorepeatervelocity",
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 200,
                guncheck = 0xDDB2578E95EF7138,
                qt = 100, -- number of bullets in box	    
                materials = {
                    item1 = {name = "iron", amount = 8},
                    item2 = {name = "copper", amount = 8},
                    item3 = {name = "nitrite", amount = 8},
                }, 
            },
            ["Tête-fendue"] = {
                key = "AMMO_REPEATER_SPLIT_POINT", 
                item = "ammorepeatersplitpoint",
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = true, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 100,
                guncheck = 0xDDB2578E95EF7138,
                qt = 50, -- number of bullets in box	    
                materials = {
                    item1 = {name = "iron", amount = 5},
                    item2 = {name = "copper", amount = 5},
                    item3 = {name = "nitrite", amount = 5},
                }, 
            },
        },

        ["Revolver"] = {
            ["Standard"] = {
                key = "AMMO_REVOLVER",-- DO NOT CHANGE THESE  
                item = "ammorevolvernormal",
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 200, -- max ammo allowed by game 
                guncheck = 0xC212F1D05A8232BB ,-- DO NOT CHANGE THESE 
                qt = 100, -- number of bullets in box 
                materials = {
                    item1 = {name = "iron", amount = 1},
                    item2 = {name = "copper", amount = 1},
                    item3 = {name = "nitrite", amount = 1},
                }, 
            },
            ["Express"] = {
                key = "AMMO_REVOLVER_EXPRESS", 
                item = "ammorevolverexpress",
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 200,
                guncheck = 0xC212F1D05A8232BB ,
                qt = 100, -- number of bullets in box    
                materials = {
                    item1 = {name = "iron", amount = 3},
                    item2 = {name = "copper", amount = 3},
                    item3 = {name = "nitrite", amount = 3},
                }, 
            },
            ["Explosive"] = {
                key = "AMMO_REVOLVER_EXPRESS_EXPLOSIVE", 
                item = "ammorevolverexplosive",
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 30,
                guncheck = 0xC212F1D05A8232BB ,
                qt = 5, -- number of bullets in box
                materials = {
                    item1 = {name = "iron", amount = 5},
                    item2 = {name = "copper", amount = 5},
                    item3 = {name = "dynamite", amount = 5},
                }, 
            },
            ["Haute-vélocité"] = {
                key = "AMMO_REVOLVER_HIGH_VELOCITY", 
                item = "ammorevolvervelocity",
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 200,
                guncheck = 0xC212F1D05A8232BB ,
                qt = 100, -- number of bullets in box	    
                materials = {
                    item1 = {name = "iron", amount = 8},
                    item2 = {name = "copper", amount = 8},
                    item3 = {name = "nitrite", amount = 8},
                }, 
            },
            ["Tête-fendue"] = {
                key = "AMMO_REVOLVER_SPLIT_POINT", 
                item = "ammorevolversplitpoint",
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 100,
                guncheck = 0xC212F1D05A8232BB ,
                qt = 50, -- number of bullets in box	    
                materials = {
                    item1 = {name = "iron", amount = 8},
                    item2 = {name = "copper", amount = 8},
                    item3 = {name = "nitrite", amount = 8},
                }, 
            },

        },
        ["Fusil"] = {
            ["Standard"] = {
                key = "AMMO_RIFLE",-- DO NOT CHANGE THESE  
                item = "ammoriflenormal",
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 200, -- max ammo allowed by game 
                guncheck = 0x0A82317B7EBFC420 ,-- DO NOT CHANGE THESE 
                guncheck2 = 0x6AD66548840472E5,
                qt = 100, -- number of bullets in box 
                materials = {
                    item1 = {name = "iron", amount = 1},
                    item2 = {name = "copper", amount = 1},
                    item3 = {name = "nitrite", amount = 1},
                }, 
            },
            ["Fusil à éléphant"] = {
                key = "AMMO_RIFLE_ELEPHANT",-- DO NOT CHANGE THESE  
                item = "ammoelephant",
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 20, -- max ammo allowed by game 
                guncheck = 0x0A82317B7EBFC420 ,-- DO NOT CHANGE THESE 
                guncheck2 = 0x6AD66548840472E5,
                qt = 10, -- number of bullets in box 
                materials = {
                    item1 = {name = "iron", amount = 4},
                    item2 = {name = "copper", amount = 4},
                    item3 = {name = "nitrite", amount = 4},
                }, 
            },
            ["Express"] = {
                key = "AMMO_RIFLE_EXPRESS", 
                item = "ammorifleexpress",
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 200,
                guncheck = 0x0A82317B7EBFC420 ,
                guncheck2 = 0x6AD66548840472E5,
                qt = 100, -- number of bullets in box    
                materials = {
                    item1 = {name = "iron", amount = 5},
                    item2 = {name = "copper", amount = 5},
                    item3 = {name = "nitrite", amount = 5},
                }, 
            },
            ["Explosive"] = {
                key = "AMMO_RIFLE_EXPRESS_EXPLOSIVE", 
                item = "ammorifleexplosive",
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 10,
                guncheck = 0x0A82317B7EBFC420 ,
                guncheck2 = 0x6AD66548840472E5,
                qt = 5, -- number of bullets in box
                materials = {
                    item1 = {name = "iron", amount = 5},
                    item2 = {name = "copper", amount = 5},
                    item3 = {name = "dynamite", amount = 5},
                }, 
            },
            ["Haute-vélocité"] = {
                key = "AMMO_RIFLE_HIGH_VELOCITY", 
                item = "ammoriflevelocity",
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 200,
                guncheck = 0x0A82317B7EBFC420 ,
                guncheck2 = 0x6AD66548840472E5,
                qt = 100, -- number of bullets in box	    
                materials = {
                    item1 = {name = "iron", amount = 6},
                    item2 = {name = "copper", amount = 6},
                    item3 = {name = "nitrite", amount = 6},
                }, 
            },
            ["Tête-fendue"] = {
                key = "AMMO_RIFLE_SPLIT_POINT", 
                item = "ammoriflesplitpoint",
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 100,
                guncheck = 0x0A82317B7EBFC420 ,
                guncheck2 = 0x6AD66548840472E5,
                qt = 50, -- number of bullets in box	    
                materials = {
                    item1 = {name = "iron", amount = 8},
                    item2 = {name = "copper", amount = 8},
                    item3 = {name = "nitrite", amount = 8},
                }, 
            },

        },
        ["Fusil à pompe"] = {
            ["Incendiaire"] = {
                key = "AMMO_SHOTGUN_BUCKSHOT_INCENDIARY",-- DO NOT CHANGE THESE  
                item = "ammoshotgunincendiary",
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 200, -- max ammo allowed by game 
                guncheck = 0xC75386174ECE95D5  ,-- DO NOT CHANGE THESE 
                qt = 100, -- number of bullets in box 
                materials = {
                    item1 = {name = "iron", amount = 1},
                    item2 = {name = "wood", amount = 1},
                    item3 = {name = "rock", amount = 1},
                }, 
            },
            ["Explosive"] = {
                key = "AMMO_SHOTGUN_EXPRESS_EXPLOSIVE", 
                item = "ammoshotgunexplosive",
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 200,
                guncheck = 0xC75386174ECE95D5  ,
                qt = 100, -- number of bullets in box    
                materials = {
                    item1 = {name = "iron", amount = 1},
                    item2 = {name = "wood", amount = 1},
                    item3 = {name = "roche", amount = 1},
                }, 
            },
            ["Standard"] = {
                key = "AMMO_SHOTGUN", 
                item = "ammoshotgunnormal",
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 10,
                guncheck = 0xC75386174ECE95D5  ,
                qt = 5, -- number of bullets in box
                materials = {
                    item1 = {name = "iron", amount = 2},
                    item2 = {name = "rock", amount = 2},
                    item3 = {name = "nitrite", amount = 2},
                }, 
            },
            ["Balles"] = {
                key = "AMMO_SHOTGUN_SLUG", 
                item = "ammoshotgunslug",
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 200,
                guncheck = 0xC75386174ECE95D5  ,
                qt = 100, -- number of bullets in box	    
                materials = {
                    item1 = {name = "iron", amount = 5},
                    item2 = {name = "rock", amount = 1},
                    item3 = {name = "nitrite", amount = 3},
                }, 
            },
        },
        ["Pistolet"] = {
            ["Standard"] = {
                key = "AMMO_PISTOL",-- DO NOT CHANGE THESE  
                item = "ammopistolnormal",
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 200, -- max ammo allowed by game 
                guncheck = 0xDDC64F5E31EEDAB6  ,-- DO NOT CHANGE THESE 
                qt = 100, -- number of bullets in box 
                materials = {
                    item1 = {name = "iron", amount = 1},
                    item2 = {name = "wood", amount = 1},
                    item3 = {name = "rock", amount = 1},
                }, 
            },
            ["Express"] = {
                key = "AMMO_PISTOL_EXPRESS", 
                item = "ammopistolexpress",
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 200,
                guncheck = 0xDDC64F5E31EEDAB6  ,
                qt = 100, -- number of bullets in box    
                materials = {
                    item1 = {name = "iron", amount = 1},
                    item2 = {name = "wood", amount = 1},
                    item3 = {name = "rock", amount = 1},
                }, 
            },
            ["Explosive"] = {
                key = "AMMO_PISTOL_EXPRESS_EXPLOSIVE", 
                item = "ammopistolexplosive",
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 10,
                guncheck = 0xDDC64F5E31EEDAB6  ,
                qt = 5, -- number of bullets in box
                materials = {
                    item1 = {name = "iron", amount = 1},
                    item2 = {name = "wood", amount = 1},
                    item3 = {name = "rock", amount = 1},
                }, 
            },
            ["Haute-vélocité"] = {
                key = "AMMO_PISTOL_HIGH_VELOCITY", 
                item = "ammopistolvelocity",
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 200,
                guncheck = 0xDDC64F5E31EEDAB6  ,
                qt = 100, -- number of bullets in box	    
                materials = {
                    item1 = {name = "iron", amount = 1},
                    item2 = {name = "wood", amount = 1},
                    item3 = {name = "rock", amount = 1},
                }, 
            },
            ["Tête-fendue"] = {
                key = "AMMO_PISTOL_SPLIT_POINT", 
                item = "ammopistolsplitpoint",
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 100,
                guncheck = 0xDDC64F5E31EEDAB6  ,
                qt = 50, -- number of bullets in box	    
                materials = {
                    item1 = {name = "iron", amount = 1},
                    item2 = {name = "wood", amount = 1},
                    item3 = {name = "rock", amount = 1},
                }, 
            },

        },
        ["Flèche"] = {
            ["Standard"] = {
                key = "AMMO_ARROW",-- DO NOT CHANGE THESE  
                item = "ammoarrownormal",
                playeritem = {"WEAPON_BOW", "WEAPON_BOW_IMPROVED"},
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 40, -- max ammo allowed by game 
                guncheck = 0 ,-- DO NOT CHANGE THESE 
                qt = 20, -- number of bullets in box 
                materials = {
                    item1 = {name = "iron", amount = 2},
                    item2 = {name = "wood", amount = 2},
                    item3 = {name = "feathers", amount = 2},
                }, 
            },
            ["Dynamite"] = {
                key = "AMMO_ARROW_DYNAMITE", 
                item = "ammoarrowdynamite",
                playeritem = {"WEAPON_BOW", "WEAPON_BOW_IMPROVED"},
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 8,
                guncheck = 0  ,
                qt = 4, -- number of bullets in box    
                materials = {
                    item1 = {name = "feathers", amount = 2},
                    item2 = {name = "wood", amount = 2},
                    item3 = {name = "dynamite", amount = 2},
                }, 
            },
            ["Emflammée"] = {
                key = "AMMO_ARROW_FIRE", 
                item = "ammoarrowfire",
                playeritem = {"WEAPON_BOW", "WEAPON_BOW_IMPROVED"},
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 10,
                guncheck = 0  ,
                qt = 4, -- number of bullets in box
                materials = {
                    item1 = {name = "iron", amount = 2},
                    item2 = {name = "wood", amount = 2},
                    item3 = {name = "Small_Leather", amount = 2},
                }, 
            },
            ["Améliorée"] = {
                key = "AMMO_ARROW_IMPROVED", 
                item = "ammoarrowimproved",
                playeritem = {"WEAPON_BOW", "WEAPON_BOW_IMPROVED"},
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 40,
                guncheck = 0  ,
                qt = 20, -- number of bullets in box	    
                materials = {
                    item1 = {name = "iron", amount = 1},
                    item2 = {name = "wood", amount = 1},
                    item3 = {name = "rock", amount = 1},
                }, 
            },
            ["Petit-gibier"] = {
                key = "AMMO_ARROW_SMALL_GAME", 
                item = "ammoarrowsmallgame",
                playeritem = {"WEAPON_BOW", "WEAPON_BOW_IMPROVED"},
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 40,
                guncheck = 0  ,
                qt = 20, -- number of bullets in box	    
                materials = {
                    item1 = {name = "iron", amount = 1},
                    item2 = {name = "wood", amount = 1},
                    item3 = {name = "feathers", amount = 1},
                }, 
            },
            ["Empoisonnée"] = {
                key = "AMMO_ARROW_POISON", 
                item = "ammoarrowpoison",
                playeritem = {"WEAPON_BOW", "WEAPON_BOW_IMPROVED"},
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 10,
                guncheck = 0  ,
                qt = 10, -- number of bullets in box	    
                materials = {
                    item1 = {name = "iron", amount = 2},
                    item2 = {name = "wood", amount = 2},
                    item3 = {name = "Snake_Poison", amount = 2},
                }, 
            },

        },
        ["Fusil petit-gibier"] = {
            ["Standard"] = {
                key = "AMMO_22",-- DO NOT CHANGE THESE  
                item = "ammovarmint",
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 100, -- max ammo allowed by game 
                guncheck = 0x0A82317B7EBFC420 ,-- DO NOT CHANGE THESE 
                qt = 50, -- number of bullets in box 
                materials = {
                    item1 = {name = "iron", amount = 2},
                    item2 = {name = "rock", amount = 2},
                    item3 = {name = "sulfur", amount = 2},
                }, 
            },
            ["Tranquilisante"] = {
                key = "AMMO_22_TRANQUILIZER",-- DO NOT CHANGE THESE  
                item = "ammovarminttranq",
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 200, -- max ammo allowed by game 
                guncheck = 0x0A82317B7EBFC420 ,-- DO NOT CHANGE THESE 
                qt = 100, -- number of bullets in box 
                materials = {
                    item1 = {name = "iron", amount = 1},
                    item2 = {name = "wood", amount = 1},
                    item3 = {name = "rock", amount = 1},
                }, 
            },

        },
        ["Armes de lancer"] = {
            ["Couteaux"] = {
                key = "AMMO_THROWING_KNIVES",-- DO NOT CHANGE THESE  
                item = "ammoknives",
                playeritem = {"WEAPON_THROWN_THROWING_KNIVES"},
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 3, -- max ammo allowed by game 
                guncheck = 0  ,-- DO NOT CHANGE THESE 
                qt = 3, -- number of bullets in box 
                materials = {
                    item1 = {name = "iron", amount = 5},
                    item2 = {name = "wood", amount = 2},
                    item3 = {name = "Small_Leather", amount = 2},
                }, 
            },
            ["Tomahawk"] = {
                key = "AMMO_TOMAHAWK",-- DO NOT CHANGE THESE  
                item = "ammotomahawk",
                playeritem = {"WEAPON_THROWN_TOMAHAWK"},
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 3, -- max ammo allowed by game 
                guncheck = 0  ,-- DO NOT CHANGE THESE 
                qt = 3, -- number of bullets in box 
                materials = {
                    item1 = {name = "iron", amount = 5},
                    item2 = {name = "wood", amount = 2},
                    item3 = {name = "Small_Leather", amount = 2},
                }, 
            },
            ["Bouteille de poison"] = {
                key = "AMMO_POISONBOTTLE",-- DO NOT CHANGE THESE  
                item = "ammopoisonbottle",
                playeritem = {"weapon_thrown_poisonbottle"},
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 3, -- max ammo allowed by game 
                guncheck = 0  ,-- DO NOT CHANGE THESE 
                qt = 3, -- number of bullets in box 
                materials = {
                    item1 = {name = "iron", amount = 5},
                    item2 = {name = "Snake_Poison", amount = 2},
                    item3 = {name = "Small_Leather", amount = 2},
                }, 
            },
            ["Bolla"] = {
                key = "AMMO_BOLAS",-- DO NOT CHANGE THESE  
                item = "ammobolla",
                playeritem = {"weapon_thrown_bolas"},
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 3, -- max ammo allowed by game 
                guncheck = 0  ,-- DO NOT CHANGE THESE 
                qt = 3, -- number of bullets in box 
                materials = {
                    item1 = {name = "iron", amount = 1},
                    item2 = {name = "wood", amount = 1},
                    item3 = {name = "rock", amount = 1},
                }, 
            },
            ["Dynamite"] = {
                key = "AMMO_DYNAMITE",-- DO NOT CHANGE THESE  
                item = "ammodynamite",
                playeritem = {"weapon_thrown_dynamite"},
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 3, -- max ammo allowed by game 
                guncheck = 0  ,-- DO NOT CHANGE THESE 
                qt = 3, -- number of bullets in box 
                materials = {
                    item1 = {name = "clay", amount = 4},
                    item2 = {name = "dynamite", amount = 4},
                    item3 = {name = "small_leather", amount = 4},
                }, 
            },
            ["Dynamite instable"] = {
                key = "AMMO_DYNAMITE_VOLATILE",-- DO NOT CHANGE THESE  
                item = "ammovoldynamite",
                playeritem = {"weapon_thrown_dynamite"},
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 3, -- max ammo allowed by game 
                guncheck = 0  ,-- DO NOT CHANGE THESE 
                qt = 3, -- number of bullets in box 
                materials = {
                    item1 = {name = "iron", amount = 1},
                    item2 = {name = "wood", amount = 1},
                    item3 = {name = "rock", amount = 1},
                }, 
            },
            ["Molotov"] = {
                key = "AMMO_MOLOTOV",-- DO NOT CHANGE THESE  
                item = "ammomolotov",
                playeritem = {"weapon_thrown_molotov"},
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 3, -- max ammo allowed by game 
                guncheck = 0  ,-- DO NOT CHANGE THESE 
                qt = 3, -- number of bullets in box 
                materials = {
                    item1 = {name = "iron", amount = 1},
                    item2 = {name = "wood", amount = 1},
                    item3 = {name = "rock", amount = 1},
                }, 
            },
            ["Molotov Instable"] = {
                key = "AMMO_MOLOTOV_VOLATILE",-- DO NOT CHANGE THESE  
                item = "ammovolmolotov",
                playeritem = {"weapon_thrown_molotov"},
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith","rguns"}, -- jobs that can craft this weapon is job only is true 
                maxammo = 3, -- max ammo allowed by game 
                guncheck = 0  ,-- DO NOT CHANGE THESE 
                qt = 3, -- number of bullets in box 
                materials = {
                    item1 = {name = "iron", amount = 1},
                    item2 = {name = "wood", amount = 1},
                    item3 = {name = "rock", amount = 1},
                }, 
            },

        },
    
    
    
}
