Config4 = {}
Config4 = {
    weapons = {  
        ["Melee"] = {
            ["Knife"] = {	
                hashname = "WEAPON_MELEE_KNIFE",     
                letcraft = true, --show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                jobonly = true,
                jobs = {"weapon_j","g_weapons"},
                materials = {
                    item1 = {name = "meca_cac", amount = 2},
                    item2 = {name = "chasis_cac", amount = 1},
                }, 
            },
            ["Hunter Hatchet"] = {	
                hashname = "WEAPON_MELEE_HATCHET_HUNTER",  
                jobonly = true,
                jobs = {"g_weapons"},
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "meca_cac", amount = 4},
                    item2 = {name = "chasis_cac", amount = 1},
                }, 
            },
            ["Machete"] = {	
                hashname = "WEAPON_MELEE_MACHETE", 
                jobonly = true,
                jobs = {"g_weapons"},   
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "meca_cac", amount = 4},
                    item2 = {name = "chasis_cac", amount = 2},
                    item3 = {name = "g_piece_de_cuir", amount = 2},
                }, 
            },
            ["Collector Machete"] = {	
                hashname = "WEAPON_MELEE_MACHETE_COLLECTOR",    
                jobonly = true,
                jobs = {"g_weapons"},
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "meca_cac", amount = 4},
                    item2 = {name = "chasis_cac", amount = 2},
                    item3 = {name = "g_piece_de_cuir", amount = 4},
                }, 
            },
            
        },
        ["Rifles"] = {
            ["Elephant Rifle"] = {	
                hashname = "WEAPON_RIFLE_ELEPHANT",   
                jobonly = true,
                jobs = {"g_weapons"},
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable 
                craftcost = 0,
                materials = {
                    item1 = {name = "chasis_fusil", amount = 10},
                    item2 = {name = "meca_fusil", amount = 5},
                    item3 = {name = "meca_ame", amount = 2},
                }, 
            },
            ["Varmint Rifle"] = {	
                hashname = "WEAPON_RIFLE_VARMINT", 
                jobonly = true,
                jobs = {"weapon_j","g_weapons"},
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "chasis_fusil", amount = 2},
                    item2 = {name = "meca_fusil", amount = 2},
                }, 
            },
            ["Rollingblock Rifle"] = {	
                hashname = "WEAPON_SNIPERRIFLE_ROLLINGBLOCK", 
                jobonly = true,
                jobs = {"weapon_j"}, 
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable 
                craftcost = 0,
                materials = {
                    item1 = {name = "chasis_sniper", amount = 10},
                    item2 = {name = "meca_sniper", amount = 3},
                    item3 = {name = "meca_ame", amount = 5},
                }, 
            },
            ["Carcano Rifle"] = {	
                hashname = "WEAPON_SNIPERRIFLE_CARCANO",  
                jobonly = true,
                jobs = {"g_weapons"},
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "chasis_sniper", amount = 10},
                    item2 = {name = "meca_sniper", amount = 5},
                    item3 = {name = "meca_ame", amount = 5},
                }, 
            },
            ["Springfield Rifle"] = {	
                hashname = "WEAPON_RIFLE_SPRINGFIELD", 
                jobonly = true,
                jobs = {"weapon_j"}, 
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable  
                craftcost = 0,
                materials = {
                    item1 = {name = "chasis_fusil", amount = 12},
                    item2 = {name = "meca_fusil", amount = 5},
                    item3 = {name = "meca_ame", amount = 2},
                }, 
            },
            ["Boltaction Rifle"] = {	
                hashname = "WEAPON_RIFLE_BOLTACTION",  
                jobonly = true,
                jobs = {"weapon_j","g_weapons"},
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "chasis_fusil", amount = 4},
                    item2 = {name = "meca_fusil", amount = 5},
                    item3 = {name = "meca_ame", amount = 2},
                }, 
            },
        },
        ["Repeaters"] = {
            ["Winchester Repeater"] = {	
                hashname = "WEAPON_REPEATER_WINCHESTER",   
                jobonly = true,
                jobs = {"weapon_j","g_weapons"},
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable 
                craftcost = 0,
                materials = {
                    item1 = {name = "chasis_repeter", amount = 11},
                    item2 = {name = "meca_repeter", amount = 10},
                }, 
            },
            ["Henry Repeater"] = {	
                hashname = "WEAPON_REPEATER_HENRY", 
                jobonly = true,
                jobs = {"g_weapons"},  
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "chasis_repeter", amount = 11},
                    item2 = {name = "meca_repeter", amount = 10},
                }, 
            },
            ["Evans Repeater"] = {	
                hashname = "WEAPON_REPEATER_EVANS",
                jobonly = true,
                jobs = {"weapon_j"},     
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "chasis_repeter", amount = 10},
                    item2 = {name = "meca_repeter", amount = 8},

                }, 
            },
            ["Carbine Repeater"] = {	
                hashname = "WEAPON_REPEATER_CARBINE",   
                jobonly = true,
                jobs = {"weapon_j","g_weapons"},
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable 
                craftcost = 0,
                materials = {
                    item1 = {name = "chasis_repeter", amount = 5},
                    item2 = {name = "meca_repeter", amount = 5},
                }, 
            },
        },
        ["Pistols"] = {
            ["Mauser Pistol "] = {	
                hashname = "WEAPON_PISTOL_MAUSER",  
                jobonly = true,
                jobs = {"weapon_j"},  
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "chasis_pistolet", amount = 5},
                    item2 = {name = "meca_pistolet", amount = 6},
                }, 
            },
            ["Volcanic Pistol "] = {	
                hashname = "WEAPON_PISTOL_VOLCANIC",   
                jobonly = true,
                jobs = {"g_weapons"}, 
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "chasis_pistolet", amount = 5},
                    item2 = {name = "meca_pistolet", amount = 6},
                }, 
            },    
        }, 
        ["Revolvers"] = {
            ["Schofield Revolver"] = {	
                hashname = "WEAPON_REVOLVER_SCHOFIELD",  
                jobonly = true,
                jobs = {"weapon_j"},
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable  
                craftcost = 0,
                materials = {
                    item1 = {name = "chasis_revolver", amount = 8},
                    item2 = {name = "meca_revoler", amount = 12},
                }, 
            },
            ["Lemat Revolver"] = {	
                hashname = "WEAPON_REVOLVER_LEMAT",   
                jobonly = true,
                jobs = {"weapon_j","g_weapons"}, 
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "chasis_revolver", amount = 15},
                    item2 = {name = "meca_revoler", amount = 12},
                }, 
            },
            ["Double Action Revolver"] = {	
                hashname = "WEAPON_REVOLVER_DOUBLEACTION", 
                jobonly = true,
                jobs = {"weapon_j"}, 
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable   
                craftcost = 0,
                materials = {
                    item1 = {name = "chasis_revolver", amount = 2},
                    item2 = {name = "meca_revoler", amount = 3},
                }, 
            },
            ["Cattleman Revolver"] = {	
                hashname = "WEAPON_REVOLVER_CATTLEMAN",  
                jobonly = true,
                jobs = {"weapon_j","g_weapons"},   
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "chasis_revolver", amount = 7},
                    item2 = {name = "meca_revoler", amount = 8},
                }, 
            },
            ["Navy Revolver"] = {	
                hashname = "WEAPON_REVOLVER_NAVY",     
                jobonly = true,
                jobs = {"weapon_j"},
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "chasis_revolver", amount = 8},
                    item2 = {name = "meca_revoler", amount = 12},
                }, 
            },
        },
        ["Shotguns"] = {
            ["Semiauto Shotgun"] = {	
                hashname = "WEAPON_SHOTGUN_SEMIAUTO",  
                jobonly = true,
                jobs = {"weapon_j","g_weapons"},
                letcraft = false, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable   
                craftcost = 0,
                materials = {
                    item1 = {name = "chasis_chasse", amount = 4},
                    item2 = {name = "meca_fusil", amount = 3},
                    item3 = {name = "meca_ame", amount = 1},
                }, 
            },
            ["Sawedoff Shotgun"] = {	
                hashname = "WEAPON_SHOTGUN_SAWEDOFF",  
                jobonly = true,
                jobs = {"weapon_j","g_weapons"}, 
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable  
                craftcost = 0,
                materials = {
                    item1 = {name = "chasis_chasse", amount = 7},
                    item2 = {name = "meca_fusil", amount = 3},
                }, 
            },
            ["Repeating Shotgun"] = {	
                hashname = "WEAPON_SHOTGUN_REPEATING",   
                jobonly = true,
                jobs = {"weapon_j","g_weapons"},  
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "chasis_chasse", amount = 5},
                    item2 = {name = "meca_fusil", amount = 3},
                    item3 = {name = "meca_ame", amount = 1},
                }, 
            },
            ["Pump Shotgun"] = {	
                hashname = "WEAPON_SHOTGUN_PUMP",  
                jobonly = true,
                jobs = {"weapon_j"},  
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "chasis_chasse", amount = 4},
                    item2 = {name = "meca_fusil", amount = 3},
                    item3 = {name = "meca_ame", amount = 1},
                }, 
            },
            ["Doublebarrel Shotgun"] = {	
                hashname = "WEAPON_SHOTGUN_DOUBLEBARREL",   
                jobonly = true,
                jobs = {"g_weapons"},
                letcraft = true, -- show in crafting u can toggle this to false if you want to make this weapon sellable but not craftable
                craftcost = 0,
                materials = {
                    item1 = {name = "chasis_chasse", amount = 5},
                    item2 = {name = "meca_fusil", amount = 7},
                    item3 = {name = "meca_ame", amount = 1},
                }, 
            },
        }, 
    }
}   