Config3 = {}
Config3.Stores = {
    SaintD = {	  
        Pos = {x = 2712.79, y = -1290.36, z = 49.68}, 
        blipsprite = 202506373,
        showblip = true,
        StoreHoursAllowed = true, -- if you want the stores to use opening and closed hours
        StoreOpen = 7, -- am
        StoreClose = 21, -- pm
        Name = 'Weapons Shop', -- Store name 
        PromptName = "Weapons Shop ",
        BlipName = "Saint`s Weapons", -- blip name
        SpawnNPC = true,
        NpcModel = "U_M_M_NbxGeneralStoreOwner_01",
        weapons = {
            ["Melee"] = {
                ["Tradders Knife"] = {	
                    hashname = "WEAPON_MELEE_KNIFE_TRADER",
                    price = 5,    
                
                },
                ["Knife"] = {	
                    hashname = "WEAPON_MELEE_KNIFE",  
                    price = 5,      
                
                },
            },
            },
            ["Revolvers"] = {
                ["Double Action Revolver"] = {	
                    hashname = "WEAPON_REVOLVER_DOUBLEACTION",    
                    price = 55, 
                
                },

            },
            },
            ["Misc."] = {
                ["Lasso"] = {	
                    hashname = "WEAPON_LASSO",    
                    price = 2, 
                
                },
                ["Reinforced Lasso"] = {	
                    hashname = "WEAPON_LASSO_REINFORCED",    
                    price = 10, 
                
                },
                ["Improved Binoculars"] = {	
                    hashname = "WEAPON_KIT_BINOCULARS_IMPROVED",    
                    price = 10, 
                
                },
                ["Binoculars"] = {	
                    hashname = "WEAPON_kIT_BINOCULARS",    
                    price = 5, 
                
                },
                ["Fishing Rod"] = {	
                    hashname = "WEAPON_FISHINGROD",    
                    price = 3, 
                
                },
                ["Camera"] = {	
                    hashname = "WEAPON_KIT_CAMERA",    
                    price = 40, 
                
                },
                ["Advanced Camera"] = {	
                    hashname = "WEAPON_kIT_CAMERA_ADVANCED",    
                    price = 200, 
                
                },
                ["Lantern"] = {	
                    hashname = "WEAPON_MELEE_LANTERN",    
                    price = 9.75, 
                
                },
                ["Davy Lantern"] = {	
                    hashname = "WEAPON_MELEE_DAVY_LANTERN",    
                    price = 15, 
                
                },
            },
        
        ammo = {
            ["Repeater"] = {
                ["Repeater Ammo Normal"] = {
                    price = 1, 
                    item = "ammorepeaternormal",
                },
                ["Repeater Ammo Express"] = {
                    price = 2, 
                    item = "ammorepeaterexpress",
                    
                },

            },

            ["Revolver"] = {
                ["Revolver Ammo Normal"] = {
                   
                    price = 1, 
                    item = "ammorevolvernormal",
                    
                },
                ["Revolver Ammo Express"] = {
                    
                    price = 2, 
                    item = "ammorevolverexpress",
                    
                },


            },
            ["Rifle"] = {
                ["Rifle Ammo Normal"] = {
                    
                    price = 2, 
                    item = "ammoriflenormal",
                    
                },

                ["Rifle Ammo Express"] = {
                   
                    price = 8, 
                    item = "ammorifleexpress",
                    
                },


            },
            ["Shotgun"] = {

                ["Shotgun Ammo Normal"] = {
                   
                    price = 3, 
                    item = "ammoshotgunnormal",
                    
                },
                ["Shotgun Ammo Slug"] = {
                   
                    price = 5, 
                    item = "ammoshotgunslug",
                   
                },
            },
            ["Pistol"] = {
                ["Pistol Ammo Normal"] = {
                   
                    price = 5, 
                    item = "ammopistolnormal",
                    
                },
                ["Pistol Ammo Express"] = {
                   
                    price = 5, 
                    item = "ammopistolexpress",
                    
                },

            },
            ["Varmint Ammo"] = {
                ["Varmint ammo"] = {
                   
                    price = 5, 
                    item = "ammovarmint",
                    
                },

            }

        }

}
