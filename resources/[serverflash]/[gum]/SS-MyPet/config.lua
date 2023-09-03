-- Author '🆂🅸🆁🅴🅲#0336'
-- REPORT ANY BUGS ON https://discord.gg/9XNBaQSmMd --

Config = {
    
-- /mypets MANAGE YOUR PETS MENU
-- /mypet MANAGE ACTUAL PET MENU
-- IF USE KEY LIKE DEFAULT KEY "J" YOU CAN USE IT TO CALL THE PET, AFTER CALLED THE SAME KEY CAN BE USED FOR MANAGE ACTUAL PET MENU ! 
    
Framework = "vorp", -- DON'T TOUCH ON THIS VERSION
    
Button = "PRESS", -- BUTTON NAME
Key = 0xD9D0E1C0, -- KEY TO OPEN MENU/PARK
Distance = 2.0, -- DISTANCE TO INTERACT WITH NPC/MENU
Align = "left", -- ALIGN MENU POSITION
UseItem = false, -- USE ITEM TO CALL THE PET LIKE whistle
UseKey = 0xF3830D8E, -- KEY TO CALL THE PET / AND WHEN CALLED SHOW MENU PET   
Item = "", -- ITEM TO USE FOR CALL THE PET IF NOT LEAVE BLANK ""
IntervalStatus = 20000, -- CHECK STATUS TIMER 
Money ="💰", -- USE $ OR WHAT YOU WANT FOR MONEY    
Gold = "🪙", -- USE Gold OR WHAT YOU WANT FOR GOLD       
    
--AGE CONFIG
YearDuration = 24 * 3600, -- SET HOW MUCH HOURS DURATION FOR 1 YEAR ! DEFAULT 5     
DieYears = 25.0, -- SET HOW MUCH OLD TO SURVIVE A PET

--FOOD CONFIG    
Foods = {"bread", "wheat", "cereals"}, 
FoodAmount = 45, -- ADD AMOUNT OF FOOD WHEN EAT
    
--STATUS CONFIG
MaxTemperature = 25, --MAX TEMPERATURE
MaxRemoveExtra = 1, -- REMOVE EXTRA HEALTH IF OVER MAX TEMPERATURE ( HEALTH IS 100)    
MinTemperature = 5, -- MIN TEMPERATURE
MinRemoveExtra = 1, -- REMOVE EXTRA HEALTH IF UNDER MIN TEMPERATURE ( HEALTH IS 100)
    
AddHappyWhenRunning = 5, -- ADD HAPPY WHEN PET RUNNING    
AddHappyWhenWalk = 3, -- ADD HAPPY WHEN PET WALK
RemoveHappyWhenIdle = 0.5, -- REMOVE HAPPY WHEN PET IDLE
    
RemoveFoodWhenRunning = 0.5, -- REMOVE FOOD WHEN RUNNING
RemoveWaterWhenRunning = 0.5, -- REMOVE WATER WHEN RUNNING     
RemoveFoodWhenWalk = 0.5, -- REMOVE FOOD WHEN WALK
RemoveWaterWhenWalk = 0.5, -- REMOVE WATER WHEN WALK
RemoveFoodWhenIdle = 0.5, -- REMOVE FOOD WHEN IDLE
RemoveWaterWhenIdle = 0.5, -- REMOVE WATER WHEN IDLE

MinWaterAsk = 20, -- MIN WATER TO START ASK
MinFoodAsk = 20, -- MIN FOOD TO START ASK
RemoveHealth = 0.5, -- REMOVE HEALTH IF HUNGRY & THIRSTY UNDER MIN
RemoveHealth2 = 1.0, -- REMOVE HEALTH IF HUNGRY & THIRSTY IS 0
AddHealth = 2.0, -- ADD HEALTH IF HUNGRY & THIRSTY OVER MIN    
    
-- TALK CONFIG
HappyTalk = {
        "Go fuck yourself...",
        "Im not your slave dude !",
        "Lol... i don't want !",
        "NO !!!",
        "Pfff...",
},
    
HungryTalk = {
        "Hungry...",
        "Food, Food, Food...",
        "Hey... im still here !",
        "HELP !!!",
        "Pfff...",
}, 
    
ThirstyTalk = {
        "Dude, im thirsty...",
        "Water... Water... Water...",
        "Please God make rain !",
        "OMG OMG OMG",
        "Pfff...",
},     
    
PetMerchant = {
[1] = {
        Name = "Sweety's Pet's", -- NAME OF MERCHANT
        Desc = "Your Personal Love Pet", -- DESCRIPTION AND UNDER BUTTON TEXT
		Pos = {-741.13201904296, -1298.9727783204, 42.248504638672, 88.171012878418}, --POS NPC/MENU
        PetPos = {-741.83, -1298.76, 43.78, 0.0},  -- PREVIEW PET SPAWN  
        Cam = {-742.68, -1298.75, 43.80, 0.00}, -- PREVIEW CAMERA   
        NpcModel = "S_M_M_VHTDEALER_01", -- NPC MODEL
        Blip = -1944395098	, -- BLIP SPRITE
        Pets = { --PETS
            [1] = { 
                Model = "a_c_squirrel_01", -- ANIMAL TYPE
                Name =  "Squirrel", -- LABEL ANIMAL
                Price =  150, -- SET THE PRICE
                Gold = false, -- SET IF CASH OR GOLD
                Desc = "A sweet Squirrel",  
                Versions = {0xC72F4C45,0x7B0300E5,0x2EE73029,0xAEEBB030,0x179915E5,0x741A13DD}, -- ANIMAL COLORS  
                Type = "terrain",  -- terrain FOR WALKING PETS, bird FOR FLYING PETS                    
            },
            [2] = { 
                Model = "a_c_parrot_01",
                Name =  "Parrot",
                Price =  150,
                Gold = true,  
                Desc = "A big fucking Parrot",
                Versions = {0x5F46BA8E,0x2EF3D9E9,0xA2A6BF3E,0x5F46BA8E,0x2EF3D9E9,0xBB88CEC0,0x5F46BA8E,0x2EF3D9E9},                       
                Type = "bird",                      
            }, 
            [3] = { 
                Model = "a_c_bluejay_01",
                Name =  "BlueJay",
                Price =  150,
                Gold = false,  
                Versions = {},     
                Desc = "A blue BlueJay", 
                Type = "bird",                   
            }, 
            [4] = { 
                Model = "a_c_cardinal_01",
                Name =  "Cardinal",
                Price =  150,
                Gold = false,  
                Versions = {},     
                Desc = "An Cardinal Church",
                Type = "bird",                    
            }, 
            [5] = { 
                Model = "a_c_carolinaparakeet_01",
                Name =  "Carolina",
                Price =  150,
                Gold = true,  
                Versions = {},     
                Desc = "The famouse bitch Carolina",
                Type = "bird",                    
            }, 
            [6] = { 
                Model = "a_c_cedarwaxwing_01",
                Name =  "Cedar",
                Price =  150,
                Gold = false,  
                Versions = {},     
                Desc = "A Cedar, Cedar...",  
                Type = "bird",                    
            }, 
            [7] = { 
                Model = "a_c_chipmunk_01",
                Name =  "Chipmunk",
                Price =  150,
                Gold = false,  
                Versions = {},     
                Desc = "Most smart Chipmunk",
                Type = "terrain",
            }, 
            [8] = { 
                Model = "a_c_crow_01",
                Name =  "Crow",
                Price =  150,
                Gold = false,  
                Versions = {},     
                Desc = "Just a Crow",
                Type = "bird",
            },
            [9] = { 
                Model = "a_c_muskrat_01",
                Name =  "Mouse",
                Price =  150,
                Gold = false,  
                Desc = "Just a mouse",
                Versions = {0x5F46BA8E,0x2EF3D9E9,0x5F46BA8E,0x2EF3D9E9,0x5F46BA8E,0x2EF3D9E9},    
                Type = "terrain",
            }, 
             [10] = { 
                Model = "a_c_oriole_01",
                Name =  "Oriole",
                Price =  150,
                Gold = false,  
                Desc = "Just a oriole",
                Versions = {0x5F46BA8E,0x2EF3D9E9,0x5F46BA8E,0x2EF3D9E9,0x5F46BA8E,0x2EF3D9E9},    
                Type = "terrain",
            }, 
             [11] = { 
                Model = "a_c_owl_01",
                Name =  "Owl",
                Price =  150,
                Gold = true,  
                Desc = "Just a owl",
                Versions = {0x5F46BA8E,0x2EF3D9E9,0x40B17D64,0x12EB21D8,0xBAD389C2,0x5F46BA8E,0x2EF3D9E9,0x40B17D64,0x12EB21D8,0x3502208B,0x5F46BA8E,0x2EF3D9E9,0x40B17D64,0x12EB21D8},    
                Type = "bird",
            },      
             [12] = { 
                Model = "a_c_pigeon",
                Name =  "Pigeon",
                Price =  150,
                Gold = false,  
                Desc = "Just a owl",
                Versions = {0xE15B24E0},    
                Type = "bird",
            },  
             [13] = { 
                Model = "a_c_possum_01",
                Name =  "Possum",
                Price =  150,
                Gold = false,  
                Desc = "Just a owl",
                Versions = {0x5F46BA8E,0x2EF3D9E9,0x9D57CDAC,0x5F46BA8E,0x2EF3D9E9,0x7EA7904C,0x5F46BA8E,0x2EF3D9E9},   
                Type = "terrain",
            },
             [14] = { 
                Model = "a_c_rabbit_01",
                Name =  "Rabbit",
                Price =  150,
                Gold = false,  
                Desc = "Just a owl",
                Versions = {0x5F46BA8E,0x2EF3D9E9,0x527892CC,0x5F46BA8E,0x2EF3D9E9,0x60AAAF30,0x5F46BA8E,0x2EF3D9E9,0xB2873801,0x741A13DD,0xBB3F1024,0x5F46BA8E,0x2EF3D9E9},   
                Type = "terrain",
            },                
             [15] = { 
                Model = "a_c_rat_01",
                Name =  "Rat",
                Price =  150,
                Gold = false,  
                Desc = "Just a owl",
                Versions = {0xE0D0EE92,0xCFBEF518,0xBDFE5197},                     
                Type = "terrain",
            },                 
                
                
		},
},
},

Text = {
  ["buy_pets"] = "Acheter des animaux",
  ["buy_pets_desc"] = "Achetez un adorable animal personnel",
  ["buy_food"] = "Acheter de la nourriture",
  ["buy_food_desc"] = "Achetez de la nourriture pour vos animaux",
  ["buy_pet"] = "Achetez-le",
  ["buy_pet_desc"] = "Acheter l'animal sélectionné",
  ["retour"] = "Retour",
  ["back_desc"] = "Retour à la liste des animaux",
  ["you_buy"] = "Vous avez acheté un",
  ["you_buy1"] = "pour",
  ["no_money"] = "Vous n'avez pas assez d'argent",
  ["name_it"] = "Nommez-le",
  ["name_it1"] = "Nom de l'animal",
  ["i_wrong"] = "Entrée erronée",
  ["my_animals"] = "Mes animaux",
  ["my_animals_desc"] = "Tous vos animaux",
  ["set_active"] = "Définir l'animal de compagnie actif",
  ["set_active_desc"] = "Définissez-le comme animal de compagnie actif",
  ["free_it"] = "Libérez-le",
  ["free_it_desc"] = "Libérez-le à la nature",
  ["active_pet"] = "Vous avez activé le familier",
  ["you_free"] = "Vous avez libéré l'animal de compagnie dans la nature, bon choix !",
  ["no_pets"] = "Vous n'avez pas d'animaux !",
  ["no_pet_active"] = "Vous n'avez aucun animal actif !",
  ["no_pet_spawned"] = "Vous n'avez pas de familier généré !",
        
  ["go_around_me"] = "Fais le tour de moi",
  ["go_around_me_desc"] = "Faites tourner l'animal autour de vous",
        
  ["come_to_me"] = "Viens à moi",
  ["come_to_me_desc"] = "Rappelle le par",
  ["already_spawned"] = "Vous avez déjà créé un familier",
  ["go_home"] = "Aller à la maison",
  ["go_home_desc"] = "Renvoyez l'animal à la maison",
  ["fix_pos"] = "Fixer la position de l'animal",
  ["fix_position"] = "Position de l'animal",
  ["fix_position_desc"] = "Corrigez et enregistrez la position de l'animal",
  ["fix_pos_desc"] = "Fixer la position de l'animal",
  ["save_pos"] = "ENREGISTRER LA POSITION",
  ["save_pos_desc"] = "Enregistrer la position de cet animal",
  ["fix_up"] = "Monter",
  ["fix_left"] = "Se déplacer vers la GAUCHE",
  ["fix_right"] = "Déplacer vers la DROITE",
  ["fix_down"] = "Déplacer vers le BAS",
  ["fix_forward"] = "Avancer",
  ["fix_back"] = "Reculer",
  ["petstatus"] = "Statut de l'animal",
  ["santé"] = "Santé",
  ["nourriture"] = "Nourriture",
  ["eau"] = "Eau",
  ["heureux"] = "Heureux",
  ["pet_is_coming"] = "Attendez que l'animal vienne à vous !",
  ["send_to_drink"] = "Envoyer pour boire de l'eau",
  ["feed_it"] = "Nourrir l'animal",
  ["feed_it_desc"] = "Donner de la nourriture à l'animal",
  ["not_in_water"] = "Vous n'êtes pas dans/près de l'eau",
  ["version_pet"] = "Changer de couleur",
  ["no_food"] = "Vous n'avez pas de nourriture pour les animaux",
  ["or"] = "or",        
}    
    
} 

function NOTIFY(text) --SET YOUR NOTIFYCATIONS
TriggerEvent("vorp:TipBottom", text, 5000)       
end  