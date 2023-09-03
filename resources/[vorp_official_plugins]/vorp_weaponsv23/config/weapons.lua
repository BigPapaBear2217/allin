Config4 = {}
Config4 = {
    weapons = {  
        ["Mêlée"] = {
            ["Couteau de chasse"] = {	
                hashname = "WEAPON_MELEE_KNIFE_TRADER",   
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false, -- turn this to true if you want crafting this weapon to only be allowed for a certain job
                jobs = {"police","gunsmith"}, -- jobs that can craft this weapon is job only is true 
                materials = {
                    item1 = {name = "iron", amount = 3},
                    item2 = {name = "wood", amount = 2},
                    item3 = {name = "Small_Leather", amount = 2},
                }, 
            },
            ["Couteau"] = {	
                hashname = "WEAPON_MELEE_KNIFE",     
                letcraft = true, --show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = false,
                jobs = {"police","gunsmith"},
                materials = {
                    item1 = {name = "iron", amount = 2},
                    item2 = {name = "wood", amount = 1},
                    item3 = {name = "Small_Leather", amount = 1},
                }, 
            },
            ["Couteau en os"] = {	
                hashname = "WEAPON_MELEE_KNIFE_JAWBONE",    
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 2},
                    item2 = {name = "wood", amount = 1},
                    item3 = {name = "Small_Leather", amount = 2},
                }, 
            },
            ["Couperet"] = {	
                hashname = "WEAPON_MELEE_CLEAVER", 
                jobonly = false,
                jobs = {"police","gunsmith"},    
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 3},
                    item2 = {name = "wood", amount = 1},
                    item3 = {name = "Big_Leather", amount = 1},
                }, 
            },
            ["Hachette de chasseur"] = {	
                hashname = "WEAPON_MELEE_HATCHET_HUNTER",  
                jobonly = false,
                jobs = {"police","gunsmith"},
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 4},
                    item2 = {name = "wood", amount = 1},
                    item3 = {name = "Big_Leather", amount = 2},
                }, 
            },
            ["Machette"] = {	
                hashname = "WEAPON_MELEE_MACHETE", 
                jobonly = true,
                jobs = {"police","gunsmith","rguns"},    
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 4},
                    item2 = {name = "wood", amount = 1},
                    item3 = {name = "Big_Leather", amount = 2},
                }, 
            },
            ["Machette Águila"] = {	
                hashname = "WEAPON_MELEE_MACHETE_COLLECTOR",    
                jobonly = true,
                jobs = {"police","gunsmith","rguns"},
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 4},
                    item2 = {name = "wood", amount = 2},
                    item3 = {name = "Big_Leather", amount = 2},
                }, 
            },
            
        },
        ["Arcs"] = {
            ["Arc"] = {	
                hashname = "WEAPON_BOW",
                jobonly = false,
                jobs = {"police","gunsmith"},     
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "Small_Leather", amount = 2},
                    item2 = {name = "wood", amount = 4},
                    item3 = {name = "Big_Leather", amount = 2},
                }, 
            },
            ["Arc Improvisé"] = {	
                hashname = "WEAPON_BOW_IMPROVED",   
                jobonly = false,
                jobs = {"police","gunsmith"},  
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 1},
                    item2 = {name = "wood", amount = 3},
                    item3 = {name = "rock", amount = 1},
                }, 
            },
        },
        ["Fusils"] = {
            ["Fusil à bisons"] = {	
                hashname = "WEAPON_RIFLE_ELEPHANT",   
                jobonly = true,
                jobs = {"police","gunsmith","rguns"},
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable 
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 30},
                    item2 = {name = "Big_Leather", amount = 5},
                    item3 = {name = "copper", amount = 10},
                }, 
            },
            ["Fusil à petit gibier"] = {	
                hashname = "WEAPON_RIFLE_VARMINT", 
                jobonly = true,
                jobs = {"police","gunsmith","rguns"},  
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 20},
                    item2 = {name = "Big_Leather", amount = 2},
                    item3 = {name = "copper", amount = 5},
                }, 
            },
            ["Fusil Rollingblock"] = {	
                hashname = "WEAPON_SNIPERRIFLE_ROLLINGBLOCK", 
                jobonly = true,
                jobs = {"police","gunsmith","rguns"}, 
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable 
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 25},
                    item2 = {name = "Big_Leather", amount = 4},
                    item3 = {name = "copper", amount = 8},
                }, 
            },
            ["Fusil Carcano"] = {	
                hashname = "WEAPON_SNIPERRIFLE_CARCANO",  
                jobonly = true,
                jobs = {"police","gunsmith","rguns"},
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 20},
                    item2 = {name = "Big_Leather", amount = 8},
                    item3 = {name = "copper", amount = 10},
                }, 
            },
            ["Fusil Springfield"] = {	
                hashname = "WEAPON_RIFLE_SPRINGFIELD", 
                jobonly = true,
                jobs = {"police","gunsmith","rguns"},  
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable  
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 20},
                    item2 = {name = "Big_Leather", amount = 10},
                    item3 = {name = "wood", amount = 10},
                }, 
            },
            ["Fusil Boltaction"] = {	
                hashname = "WEAPON_RIFLE_BOLTACTION",  
                jobonly = true,
                jobs = {"police","gunsmith","rguns"},
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 25},
                    item2 = {name = "wood", amount = 12},
                    item3 = {name = "Big_Leather", amount = 5},
                }, 
            },
        },
        ["Carabines"] = {
            ["Carabine Winchester"] = {	
                hashname = "WEAPON_REPEATER_WINCHESTER",   
                jobonly = true,
                jobs = {"police","gunsmith","rguns"}, 
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable 
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 20},
                    item2 = {name = "wood", amount = 8},
                    item3 = {name = "copper", amount = 5},
                }, 
            },
            ["Carabine Henry"] = {	
                hashname = "WEAPON_REPEATER_HENRY", 
                jobonly = true,
                jobs = {"police","gunsmith","rguns"},    
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 20},
                    item2 = {name = "wood", amount = 10},
                    item3 = {name = "copper", amount = 8},
                }, 
            },
            ["Carabine Evans"] = {	
                hashname = "WEAPON_REPEATER_EVANS",
                jobonly = true,
                jobs = {"police","gunsmith","rguns"},     
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 20},
                    item2 = {name = "wood", amount = 6},
                    item3 = {name = "copper", amount = 12},
                }, 
            },
            ["Carabine à répétition"] = {	
                hashname = "WEAPON_REPEATER_CARBINE",   
                jobonly = true,
                jobs = {"police","gunsmith","rguns"}, 
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable 
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 20},
                    item2 = {name = "wood", amount = 5},
                    item3 = {name = "copper", amount = 8},
                }, 
            },
        },
        ["Pistolets"] = {
                    ["Pistolet Semi-automatique"] = {	
                hashname = "WEAPON_PISTOL_SEMIAUTO",   
                jobonly = false,
                jobs = {"police","gunsmith","rguns"},  
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 2},
                    item2 = {name = "wood", amount = 2},
                    item3 = {name = "rock", amount = 2},
                }, 
            },
            ["Pistolet Mauser"] = {	
                hashname = "WEAPON_PISTOL_MAUSER",  
                jobonly = false,
                jobs = {"police","gunsmith","rguns"},   
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 2},
                    item2 = {name = "wood", amount = 2},
                    item3 = {name = "rock", amount = 2},
                }, 
            },
            ["Pistolet Volcanic"] = {	
                hashname = "WEAPON_PISTOL_VOLCANIC",   
                jobonly = false,
                jobs = {"police","gunsmith","rguns"}, 
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 2},
                    item2 = {name = "wood", amount = 2},
                    item3 = {name = "rock", amount = 2},
                }, 
            },
            ["Pislotet M1899"] = {	
                hashname = "WEAPON_PISTOL_M1899",  
                jobonly = false,
                jobs = {"police","gunsmith","rguns"},   
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 2},
                    item2 = {name = "wood", amount = 2},
                    item3 = {name = "rock", amount = 2},
                }, 
            },
            
        }, 
        ["Revolvers"] = {
            ["Revolver Schofield"] = {	
                hashname = "WEAPON_REVOLVER_SCHOFIELD",  
                jobonly = true,
                jobs = {"police","gunsmith","rguns"}, 
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable  
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 14},
                    item2 = {name = "wood", amount = 2},
                    item3 = {name = "copper", amount = 5},
                }, 
            },
            ["Revolver Lemat"] = {	
                hashname = "WEAPON_REVOLVER_LEMAT",   
                jobonly = true,
                jobs = {"police","gunsmith","rguns"}, 
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 20},
                    item2 = {name = "wood", amount = 2},
                    item3 = {name = "copper", amount = 8},
                }, 
            },
            ["Revolver Double Action"] = {	
                hashname = "WEAPON_REVOLVER_DOUBLEACTION", 
                jobonly = true,
                jobs = {"police","gunsmith","rguns"}, 
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable   
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 18},
                    item2 = {name = "wood", amount = 3},
                    item3 = {name = "copper", amount = 8},
                }, 
            },
            ["Revolver Cattleman"] = {	
                hashname = "WEAPON_REVOLVER_CATTLEMAN",  
                jobonly = true,
                jobs = {"police","gunsmith","rguns"},   
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 10},
                    item2 = {name = "wood", amount = 2},
                    item3 = {name = "copper", amount = 4},
                }, 
            },
            ["Revolver Navy"] = {	
                hashname = "WEAPON_REVOLVER_NAVY",     
                jobonly = true,
                jobs = {"police","gunsmith","rguns"},
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 15},
                    item2 = {name = "wood", amount = 4},
                    item3 = {name = "copper", amount = 5},
                }, 
            },
        },
        ["Armes de lancer"] = { -- Due to vorp bug, using this weapon never runs out of ammo if u requip. 
        -- in order for throwables to work. the player must buy the throwable weapon then buy and use the related ammo box
        -- only then will the throwable show up in their weapon wheel 
            ["Tomahawk"] = {	
                hashname = "WEAPON_THROWN_TOMAHAWK",  
                jobonly = false,
                jobs = {"police","gunsmith","rguns"},  
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 3},
                    item2 = {name = "wood", amount = 2},
                    item3 = {name = "Small_Leather", amount = 2},
                }, 
            },
            ["Couteau de lancer"] = {	
                hashname = "WEAPON_THROWN_THROWING_KNIVES", 
                jobonly = false,
                jobs = {"police","gunsmith","rguns"},   
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 3},
                    item2 = {name = "wood", amount = 2},
                    item3 = {name = "Small_Leather", amount = 1},
                }, 
            },
            ["Bouteille de poison"] = {	
                hashname = "WEAPON_THROWN_POISONBOTTLE", 
                jobonly = false,
                jobs = {"police","gunsmith","rguns"},   
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "alcohol", amount = 2},
                    item2 = {name = "SongbirdCarcass", amount = 1},
                    item3 = {name = "acid", amount = 5},
                }, 
            },
            ["Bolas"] = {	
                hashname = "WEAPON_THROWN_BOLAS",  
                jobonly = false,
                jobs = {"police","gunsmith","rguns"},   
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "Small_Leather", amount = 4},
                    item2 = {name = "wood", amount = 2},
                    item3 = {name = "rock", amount = 2},
                }, 
            },
            ["Dynamite"] = {	
                hashname = "WEAPON_THROWN_DYNAMITE",  
                jobonly = true,
                jobs = {"police","gunsmith","rguns"},   
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "dynamite", amount = 5},
                    item2 = {name = "Small_Leather", amount = 5},
                    item3 = {name = "rock", amount = 5},
                }, 
            },
            ["Molotov"] = {	
                hashname = "WEAPON_THROWN_MOLOTOV",
                jobonly = true,
                jobs = {"police","gunsmith","rguns"},    
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "alcohol", amount = 4},
                    item2 = {name = "Small_Leather", amount = 4},
                    item3 = {name = "acid", amount = 4},
                }, 
            },

        },
        ["Fusil à pompe"] = {
            ["Fusil semi-automatique"] = {	
                hashname = "WEAPON_SHOTGUN_SEMIAUTO",  
                jobonly = false,
                jobs = {"police","gunsmith","rguns"},
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable   
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 2},
                    item2 = {name = "wood", amount = 2},
                    item3 = {name = "rock", amount = 2},
                }, 
            },
            ["Fusil à canon scié"] = {	
                hashname = "WEAPON_SHOTGUN_SAWEDOFF",  
                jobonly = true,
                jobs = {"police","gunsmith","rguns"}, 
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable  
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 15},
                    item2 = {name = "wood", amount = 5},
                    item3 = {name = "copper", amount = 10},
                }, 
            },
            ["Fusil à répétition"] = {	
                hashname = "WEAPON_SHOTGUN_REPEATING",   
                jobonly = false,
                jobs = {"police","gunsmith","rguns"},  
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 20},
                    item2 = {name = "wood", amount = 8},
                    item3 = {name = "copper", amount = 10},
                }, 
            },
            ["Fusil à pompe"] = {	
                hashname = "WEAPON_SHOTGUN_PUMP",  
                jobonly = false,
                jobs = {"police","gunsmith","rguns"},   
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 15},
                    item2 = {name = "wood", amount = 15},
                    item3 = {name = "copper", amount = 8},
                }, 
            },
            ["Fusil à double canon"] = {	
                hashname = "WEAPON_SHOTGUN_DOUBLEBARREL",   
                jobonly = false,
                jobs = {"police","gunsmith","rguns"},
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 25},
                    item2 = {name = "wood", amount = 5},
                    item3 = {name = "copper", amount = 5},
                }, 
            },
        },
        ["Divers"] = {
            ["Lasso"] = {	
                hashname = "WEAPON_LASSO",   
                jobonly = true,
                jobs = {"police","gunsmith","rguns"},  
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "Small_Leather", amount = 2},
                    item2 = {name = "Big_Leather", amount = 2},
                -- item3 = {name = "", amount = },
                }, 
            },
            ["Lasso renforcé"] = {	
                hashname = "WEAPON_LASSO_REINFORCED",   
                jobonly = true,
                jobs = {"police","gunsmith","rguns"},
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "Small_Leather", amount = 5},
                    item2 = {name = "Big_Leather", amount = 5},
                    item3 = {name = "copper", amount = 2},
                }, 
            },
            ["Jumelles Améliorées"] = {	
                hashname = "WEAPON_KIT_BINOCULARS_IMPROVED",  
                jobonly = true,
                jobs = {"police","gunsmith"},
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 8},
                    item2 = {name = "copper", amount = 8},
                    item3 = {name = "Small_Leather", amount = 4},
                }, 
            },
            ["Jumelles"] = {	
                hashname = "WEAPON_kIT_BINOCULARS",  
                jobonly = true,
                jobs = {"police","gunsmith"}, 
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 4},
                    item2 = {name = "copper", amount = 4},
                    item3 = {name = "Small_Leather", amount = 4},
                }, 
            },
            ["Canne à pêche"] = {	
                hashname = "WEAPON_FISHINGROD",   
                jobonly = true,
                jobs = {"police","gunsmith","rguns"},  
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 1},
                    item2 = {name = "wood", amount = 4},
                    item3 = {name = "Small_Leather", amount = 1},
                }, 
            },
            ["Appareil Photo"] = {	
                hashname = "WEAPON_KIT_CAMERA", 
                jobonly = false,
                jobs = {"police","gunsmith"},    
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 2},
                    item2 = {name = "wood", amount = 2},
                    item3 = {name = "rock", amount = 2},
                }, 
            },
            ["Appareil photo amélioré"] = {	
                hashname = "WEAPON_kIT_CAMERA_ADVANCED",    
                jobonly = false,
                jobs = {"police","gunsmith"},
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 2},
                    item2 = {name = "wood", amount = 2},
                    item3 = {name = "rock", amount = 2},
                }, 
            },
            ["Lanterne"] = {	
                hashname = "WEAPON_MELEE_LANTERN",     
                jobonly = false,
                jobs = {"police","gunsmith","rguns"},
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 10},
                    item2 = {name = "provision_coal", amount = 2},
                    item3 = {name = "Small_Leather", amount = 4},
                }, 
            },
            ["Lanterne Davy"] = {	
                hashname = "WEAPON_MELEE_DAVY_LANTERN",    
                jobonly = false,
                jobs = {"police","gunsmith","rguns"}, 
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "iron", amount = 12},
                    item2 = {name = "provision_coal", amount = 2},
                    item3 = {name = "Small_Leather", amount = 5},
                },
            },
        },  
    }
}
