Config3 = {}
Config3.Stores = {
     -- money for houses bought goes here. sellers have it to collected from here. 
   
    ---------------------------
    SaintD = {	  
        Pos = {x=2717.5, y=-1286.74, z=48.20}, 
        blipsprite = 202506373,
        showblip = true,
        StoreHoursAllowed = false, -- if you want the stores to use opening and closed hours
        StoreOpen = 7, -- am
        StoreClose = 21, -- pm
        Name = 'Weapons Shop', -- Store name 
        PromptName = "Weapons Shop ",
        BlipName = "Armurerie", -- blip name
        SpawnNPC = true,
        NpcModel = "U_M_M_NbxGeneralStoreOwner_01",
        weapons = {
            ["Mêlée"] = {
                ["Couteau de chasse"] = {	
                    hashname = "WEAPON_MELEE_KNIFE_TRADER",
                    price = 10,    
                
                },
                ["Couteau"] = {	
                    hashname = "WEAPON_MELEE_KNIFE",  
                    price = 10,      
                
                },
                ["Couteau en os"] = {	
                    hashname = "WEAPON_MELEE_KNIFE_JAWBONE",  
                    price = 10,   
                
                },
                ["Couperet"] = {	
                    hashname = "WEAPON_MELEE_CLEAVER",    
                    price = 20, 
                
                },
                ["Hachette de chasseur"] = {	
                    hashname = "WEAPON_MELEE_HATCHET_HUNTER",  
                    price = 20,   
                },
                ["Machette"] = {	
                    hashname = "WEAPON_MELEE_MACHETE",   
                    price = 100,  
                },
                ["Machette Águila"] = {	
                    hashname = "WEAPON_MELEE_MACHETE_COLLECTOR",   
                    price = 200,  
                },
            },
            ["Arcs"] = {
                ["Arc"] = {	
                    hashname = "WEAPON_BOW",    
                    price = 45, 
                
                },
                ["Arc amélioré"] = {	
                    hashname = "WEAPON_BOW_IMPROVED",    
                    price = 100, 
                
                },
            },
            ["Fusils"] = {
                ["Fusil à éléphant"] = {	
                    hashname = "WEAPON_RIFLE_ELEPHANT",  
                    price = 900,   
                
                },
                ["Fusil à petit gibier"] = {	
                    hashname = "WEAPON_RIFLE_VARMINT",   
                    price = 60,  
                
                },
                ["Fusil Rollingblock"] = {	
                    hashname = "WEAPON_SNIPERRIFLE_ROLLINGBLOCK",    
                    price = 700, 
                
                },
                ["Fusil Carcano"] = {	
                    hashname = "WEAPON_SNIPERRIFLE_CARCANO",  
                    price = 1000,   
                
                },
                ["Fusil Springfield"] = {	
                    hashname = "WEAPON_RIFLE_SPRINGFIELD", 
                    price = 500,    
                
                },
                ["Fusil Boltaction"] = {	
                    hashname = "WEAPON_RIFLE_BOLTACTION",    
                    price = 700, 
                
                },
            },
            ["Carabines"] = {
                ["Carabine Winchester"] = {	
                    hashname = "WEAPON_REPEATER_WINCHESTER",   
                    price = 200,  
                
                },
                ["Carabine Henry"] = {
                    hashname = "WEAPON_REPEATER_HENRY",    
                    price = 400, 
                
                },
                ["Carabine Evans"] = {	
                    hashname = "WEAPON_REPEATER_EVANS",    
                    price = 350, 
                
                },
                ["Carabine à répétition"] = {	
                    hashname = "WEAPON_REPEATER_CARBINE",    
                    price = 300, 
                
                },
            },
            ["Pistolets"] = {
                ["Pistolet Volcanic"] = {	
                    hashname = "WEAPON_PISTOL_VOLCANIC",    
                    price = 350,
                
                },
                ["Pistolet Semi-automatique"] = {	
                    hashname = "WEAPON_PISTOL_MAUSER",    
                    price = 300,
                
                }, 
                 ["SemiAuto Pistol "] = {	
                    hashname = "WEAPON_PISTOL_SEMIAUTO",    
                    price = 1000, 
                
                }, 
                 ["Mauser Pistol "] = {	
                    hashname = "WEAPON_PISTOL_MAUSER",    
                    price = 1000, 
                
                },
                 

            },
            ["Revolvers"] = {
                ["Revolver Schofield"] = {	
                    hashname = "WEAPON_REVOLVER_SCHOFIELD",    
                    price = 100, 
                
                },
                ["Revolver Lemat"] = {	
                    hashname = "WEAPON_REVOLVER_LEMAT",    
                    price = 300, 
                
                },
                ["Revolver Double Action"] = {	
                    hashname = "WEAPON_REVOLVER_DOUBLEACTION",    
                    price = 100, 
                
                },
                ["Revolver Cattleman"] = {	
                    hashname = "WEAPON_REVOLVER_CATTLEMAN",    
                    price = 150, 
                
                },
                ["Revolver Navy"] = {	
                    hashname = "WEAPON_REVOLVER_NAVY",    
                    price = 150, 
                
                },
            },
            ["Armes à lancer"] = { -- Due to vorp bug, using this weapon never runs out of ammo if u requip. 
            -- in order for throwables to work. the player must buy the throwable weapon then buy and use the related ammo box
            -- only then will the throwable show up in their weapon wheel 
                ["Tomahawk"] = {	
                    hashname = "WEAPON_THROWN_TOMAHAWK",    
                    price = 100, 
                
                },
                ["Couteaux de lancer"] = {	
                    hashname = "WEAPON_THROWN_THROWING_KNIVES",    
                    price = 50, 
                
                },
                ["Bouteille de poison"] = {	
                    hashname = "WEAPON_THROWN_POISONBOTTLE",    
                    price = 200, 
                
                },
                ["Bolas"] = {	
                    hashname = "WEAPON_THROWN_BOLAS",    
                    price = 20, 
                
                },
                ["Dynamite"] = {	
                    hashname = "WEAPON_THROWN_DYNAMITE",    
                    price = 200, 
                
                },
                ["Molotov"] = {	
                    hashname = "WEAPON_THROWN_MOLOTOV",    
                    price = 200, 
                
                },

            },
            ["Fusil à pompe"] = {
                ["Fusil semi-automatique"] = {	
                    hashname = "WEAPON_SHOTGUN_SEMIAUTO",    
                    price = 800, 
                
                },
                ["Fusil à canon scié"] = {	
                    hashname = "WEAPON_SHOTGUN_SAWEDOFF",    
                    price = 400, 
                
                },
                ["Fusil à répétition"] = {	
                    hashname = "WEAPON_SHOTGUN_REPEATING",    
                    price = 700, 
                
                },
                ["Fusil à pompe"] = {	
                    hashname = "WEAPON_SHOTGUN_PUMP",    
                    price = 700, 
                
                },
                ["Fusil à double canon"] = {	
                    hashname = "WEAPON_SHOTGUN_DOUBLEBARREL",    
                    price = 500, 
                
                },
            },
            ["Divers"] = {
                ["Lasso"] = {	
                    hashname = "WEAPON_LASSO",    
                    price = 10, 
                
                },
                ["Lasso renforcé"] = {	
                    hashname = "WEAPON_LASSO_REINFORCED",    
                    price = 50, 
                
                },
                ["Jumelles Améliorées"] = {	
                    hashname = "WEAPON_KIT_BINOCULARS_IMPROVED",    
                    price = 100, 
                
                },
                ["Jumelles"] = {	
                    hashname = "WEAPON_kIT_BINOCULARS",    
                    price = 20, 
                
                },
                ["Canne à pêche"] = {	
                    hashname = "WEAPON_FISHINGROD",    
                    price = 15, 
                
                },
                ["Appareil Photo"] = {	
                    hashname = "WEAPON_KIT_CAMERA",    
                    price = 40, 
                
                },
                ["Appareil photo amélioré"] = {	
                    hashname = "WEAPON_kIT_CAMERA_ADVANCED",    
                    price = 200, 
                
                },
                ["Lanterne"] = {	
                    hashname = "WEAPON_MELEE_LANTERN",    
                    price = 15, 
                
                },
                ["Lanterne Davy"] = {	
                    hashname = "WEAPON_MELEE_DAVY_LANTERN",    
                    price = 25, 
                
                },
            },
        }, 
        ammo = {
            ["Carabine"] = {
                ["Standard"] = {
                    price = 10, 
                    item = "ammorepeaternormal",
                },
                ["Express"] = {
                    price = 15, 
                    item = "ammorepeaterexpress",
                    
                },
             --[[    ["Repeater Ammo Explosive"] = {
                    
                    price = 5, 
                    item = "ammorepeaterexplosive",
                    
                }, ]]
                ["Haute-vélocité"] = {
                    
                    price = 20, 
                    item = "ammorepeatervelocity",
                    
                },
                ["Tête fendue"] = {
                    
                    price = 25, 
                    item = "ammorepeatersplitpoint",
                   
                },
            },

            ["Revolver"] = {
                ["Standard"] = {
                   
                    price = 10, 
                    item = "ammorevolvernormal",
                    
                },
                ["Express"] = {
                    
                    price = 15, 
                    item = "ammorevolverexpress",
                    
                },
               --[[  ["Munitions de revolver explosives"] = {
                   
                    price = 5, 
                    item = "ammorevolverexplosive",
                    
                }, ]]
                ["Haute-vélocité"] = {
                    
                    price = 20, 
                    item = "ammorevolvervelocity",
                    
                },
                ["Tête fendue"] = {
                   
                    price = 25, 
                    item = "ammorevolversplitpoint",
                   
                },

            },
            ["Fusil"] = {
                ["Standard"] = {
                    
                    price = 10, 
                    item = "ammoriflenormal",
                    
                },
                --[[ ["Munitions de fusil à éléphant"] = {
                    
                    price = 5, 
                    item = "ammoelephant",
                    
                }, ]]
                ["Express"] = {
                   
                    price = 15, 
                    item = "ammorifleexpress",
                    
                },
                --[[ ["Munitions de fusil explosives"] = {
                    
                    price = 10, 
                    item = "ammorifleexplosive",
                    
                }, ]]
                ["Haute-vélocité"] = {
                   
                    price = 20, 
                    item = "ammoriflevelocity",
                   
                },
                ["Tête fendue"] = {
                    
                    price = 25, 
                    item = "ammoriflesplitpoint",
                   
                },

            },
            ["Fusil à pompe"] = {
                --[[ ["Munitions de pompe incendiaires"] = {
                   
                    price = 3, 
                    item = "ammoshotgunincendiary",
                   
                }, ]]
                --[[ ["Munitions de pompe explosives"] = {
                   
                    price = 5, 
                    item = "ammoshotgunexplosive",
                    
                }, ]]
                ["Standard"] = {
                   
                    price = 10, 
                    item = "ammoshotgunnormal",
                    
                },
                ["Balles"] = {
                   
                    price = 15, 
                    item = "ammoshotgunslug",
                   
                },
            },
            ["Pistolet"] = {
                ["Standard"] = {
                   
                    price = 10, 
                    item = "ammopistolnormal",
                    
                },
                ["Express"] = {
                   
                    price = 15, 
                    item = "ammopistolexpress",
                    
                },
               --[[  ["Pistol Ammo Explosive"] = {
                    
                    price = 5, 
                    item = "ammopistolexplosive",
                    
                }, ]]
                ["Haute-vélocité"] = {
                   
                    price = 20, 
                    item = "ammopistolvelocity",
                    
                },
                ["Tête-fendue"] = {
                   
                    price = 25, 
                    item = "ammopistolsplitpoint",
                   
                },

            },
            ["Flèche"] = {
                ["Standard"] = {
                   
                    price = 20, 
                    item = "ammoarrmownormal",
                    
                },
                --[[ ["Arrow Dynamite"] = {
                    
                    price = 5, 
                    item = "ammoarrowdynamite",
                    
                }, ]]
                --[[ ["Arrow Fire"] = {
                   
                    price = 10, 
                    item = "ammoarrowfire",
                    
                }, ]]
               --[[  ["Arrow Improved"] = {
                  
                    price = 8, 
                    item = "ammoarrowimproved",
                    
                }, ]]
                ["Petit-gibier"] = {
                   
                    price = 10, 
                    item = "ammoarrowsmallgame",
                    
                },
                --[[ ["Arrow Poison"] = {
                   
                    price = 5, 
                    item = "ammoarrowpoison",
                    
                }, ]]

            },
            ["Fusil à petit gibier"] = {
                ["Standard"] = {
                   
                    price = 10, 
                    item = "ammovarmint",
                    
                },
                ["Tranquilisant"] = {
                    
                    price = 30, 
                    item = "ammovarminttranq",
                    
                },

            },
            ["Armes de lancer"] = {
                ["Couteaux"] = {
                    
                    price = 10, 
                    item = "ammoknives",
                    
                },
                ["Tomahawk"] = {
                   
                    price = 20, 
                    item = "ammotomahawk",
                   
                },
                --[[ ["Poison Bottle Ammo"] = {
                   
                    price = 5, 
                    item = "ammopoisonbottle",
                   
                }, ]]
                ["Bollas"] = {
                   
                    price = 20, 
                    item = "ammobolla",
                    
                },
                --[[["Dynamite"] = {
                   
                    price = 5, 
                    item = "ammodynamite",
                    
                },
                --[[ ["Volatile Dynamite Ammo"] = {
                   
                    price = 5, 
                    item = "ammovoldynamite",
                    
                }, ]]
                --[[ ["Molotov Ammo"] = {
                   
                    price = 5, 
                    item = "ammomolotov",
                   
                }, ]]
                --[[ ["Volatile Molotov Ammo"] = {
                   
                    price = 5, 
                    item = "ammovolmolotov",
                   
                }, ]]

            },

        }
    },
} 
