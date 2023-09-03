-- Author '🆂🅸🆁🅴🅲#0336'
-- REPORT ANY BUGS ON https://discord.gg/9XNBaQSmMd --

Config = {
DEV = false, -- Put true to check info in F8 when restart script in GAME !
Framework = "vorp", -- DON'T CHANGE IT IN THIS VERSION   
    
--### ADDONS ###
SSArchives = true, -- Put true TO MAKE PEOPLE PAY FINES / false IF YOU DON'T HAVE SS-ARCHIVES
SSLicenses = true, -- PUT true IF YOU HAVE SS-Licenses / false IF YOU DON'T HAVE

--### IDENTITY CARD CONFIG ###
IdentityCardItem = "identitycard", -- ITEM NAME OF IDENTITY CARD TO USE
PayRegistration = 5, -- TURN OFF WITH false OR INSERT PRICE OF IDENTITY CARD   
PayCopyRegistration = 1, -- TURN OFF WITH false OR INSERT PRICE OF IDENTITY CARD WHEN ASK FOR COPY
PayInfoUpdate = 1, --TURN OFF WITH false OR INSERT PROCE FOR CHANGINF IDENTITY CARD INFOS    

FakeIdentityCardItem = "salt", -- ITEM NAME OF FAKE IDENTITY CARD TO USE
PayFakeId = 250, -- TURN OFF WITH false OR INSERT PRICE OF IDENTITY CARD
PayFakeCopyId = 150, --  -- TURN OFF WITH false OR INSERT PRICE OF IDENTITY CARD WHEN ASK FOR FAKE COPY
--### IDENTITY CARD CONFIG ###
    
NXTInventory = false, -- if you have NXTInventory!
ServerName = "Sirec Studio", -- WILL BE THE SIGN ID ON IDENTITY CARD BOTTOM RIGHT
SynSociety = "police", -- WHERE TO GO THE MONEY FROM FINES ? PUT THE JOB OR false TO TURN OFF
BlackListJobs = {"police", "marshal"}, -- What job's to don't show in IDENTITY CARD ?
ReplaceBlackListJobs = "Unemployed", -- What job to show if they have BlackListJobs ?
FakeIdDefaultJob = "unemployed", -- What job to show on FAKE IDENTITY JOB ?    

ServerYear = 1890, -- ID CARDS WILL BE RELEASED IN THIS YEAR
MaxYears =  80, -- THE MAX YEARS A PLAYER CAN HAVE
MinYears =  5, -- THE MIN YEARS A PLAYER CAN HAVE  
Button = "Appuyer", -- BUTTON NAME
Key = 0xD9D0E1C0, -- KEY TO OPEN MENU
Align = "right", -- ALIGN MENU
    
UseAnimProp = true, -- DO ANIMATION AND PROP WHEN SHOW THE IDENTITY CARD

WebHook = "https://discord.com/api/webhooks/1092504299449352202/Be6Czl8j3hdIggVv9_OXQBf02GD0zLkqVzEuGx-RWA-XTid8J_yDlmZB-Uj_PLBqlDhl", -- FOR LOGS
WebHookInfo = "HAS REGISTERED HIS IDENTITY CARD ID WITH NR",    
WebHookUpdate = "HAS UPDATED HIS IDENTITY CARD",
    
NationalRegistration = {
	[1] = { 
        City = "Saint Denis",
		FakeServices = false,
        Name = "Saint Denis NR Office",
        Desc = "IDENTITY REGISTRATION",             
        NpcModel = "S_M_M_VHTDEALER_01",
        Pos = {2747.9025878906, -1396.4379882812, 46.183067321778, 24.291278839112},
        Distance = 3.0,
        Blip = 587827268,
	},
    [2] = { 
        City = "Guarma", -- CITY NAME WILL SHOW ON ID WHERE WAS REGISTERED PUT ONLY CITY NAME
		FakeServices = false, -- PROVIDE FAKE SERVICES
        Name = "Guarma NR Office", -- BLIP NAME AND TITTLE MENU
        Desc = "IDENTITY REGISTRATION", -- SUBMENU DESCRIPTION   
        NpcModel = "S_M_M_VHTDEALER_01", -- NPC MODEL
        Pos = {1381.24, -6934.70, 60.94, 129.48}, -- POS NPC/BLIP 2919921875, 41015625, 929885864258
        Distance = 2.0, -- DISTANCE TO OPEN MENU
        Blip = 587827268, -- Blip model or false to hide
	},
--[[	[2] = { 
        City = "Blackwater",
		FakeServices = false,              
        Name = "BlackWater NR Office",
        Desc = "IDENTITY REGISTRATION",             
        NpcModel = "S_M_M_VHTDEALER_01",
        Pos = {-762.0810546875, -1272.1394042968, 43.050540924072, 86.552299499512},
        Distance = 3.0,
        Blip = 587827268,
	},  
	[3] = { 
        City = "Rhodes",
		FakeServices = false,
        Name = "Rhodes NR Office",
        Desc = "IDENTITY REGISTRATION",             
        NpcModel = "S_M_M_VHTDEALER_01",
        Pos = {1230.1987304688, -1298.5638427734, 75.904258728028, 232.19049072266},
        Distance = 3.0,
        Blip = 587827268,
	},         
	[4] = { 
        City = "Saint Denis",
		FakeServices = false,
        Name = "Saint Denis NR Office",
        Desc = "IDENTITY REGISTRATION",             
        NpcModel = "S_M_M_VHTDEALER_01",
        Pos = {2747.9025878906, -1396.4379882812, 46.183067321778, 24.291278839112},
        Distance = 3.0,
        Blip = 587827268,
	},
	[5] = { 
        City = "Saint Denis",
		FakeServices = true,            
        Name = "Mrs Thomson",
        Desc = "IDENTITY REGISTRATION",             
        NpcModel = "S_M_M_VHTDEALER_01",
        Pos = {2859.19140625, -1202.2645263672, 48.590869903564, 1.381891965866},
        Distance = 3.0,
        Blip = false,
	},	]]



},
Texts = {
--MENU TRANSLATE
["reg_id"] = "Enregistrement d'identité",
["reg_id_desc"] = "Enregistrer votre identité",        
["ask_copy"] = "Copie d'identité",  
["ask_copy_desc"] = "Demander une copie d'identité",
["updateinfo"] = "Mise à jour",  
        
["manage_licenses"] = "Manage Licenses",
["renewlicense"] = "Renew Licenses",
["licenses_desc"] = "Buy / Renew / Copy Your Licenses",
        
--MENU BUTTONS FAKE ID    
["reg_fakeid"] = "REGISTER FAKE IDENTITY",
["reg_fakeid_desc"] = "Register an fake identity",           
["deleteinfo_desc"] = "Delete your fake id, so you can create a new one !",          
["updateinfo_desc"] = "Update your info like hair, eyes, weight, etc...",
["ask_fakecopy"] = "ASK FAKE ID COPY",
["ask_fakecopy_desc"] = "Ask a copy of your fake ID Card",        
["deleteinfo"] = "DELETE FAKE ID",
--REGISTRATION        
["info"] = "FOURNIR DES INFORMATIONS",
["fake_city"] = "Ville d'inscription",
["fake_firstname"] = "Prénom ( FAUX )",
["fake_lastname"] = "Nom de famille ( FAUX )",
["dob"] = "Date de naissance EX :(05-01-1845)",
["rday"] = "Votre anniversaire ? EX( 04 )",
["rmonth"] = "Votre mois de naissance ? EX( 07 )",
["ryears"] = "Quel est votre âge ? EX( 32 ans)",
["rkg"] = "Combien de kg avez-vous ? EX( 68 )",
["reyes"] = "La couleur de vos yeux ? EX( bleu )",
["rhair"] = "Votre couleur de cheveux ? EX( noir )",
["rcm"] = "Quelle est votre taille ? EX( 176 )",
["rimage"] = "Insérer le lien de la photo de votre jouers en 200x200.png TROLL=BAN |TICKET| ",
["wrongage"] = "Votre âge est supérieur ou inférieur à d'habitude !",
["wrongdates"] = "Le mois ou le jour est trop haut ou trop bas que d'habitude",
["check_fines"] = "VÉRIFIER LES AMENDES",
["check_finesdesc"] = "Vérifiez et payez vos amendes !",

--NOTIFICATIONS   
["deletedfakeid"] = "Nous avons supprimé votre FAKE ID et masqué toutes les fausses informations",
["no_id"] = "Vous n'avez pas de CARTE D'IDENTITE à mettre à jour, veuillez d'abord vous enregistrer !",
["no_fakeid"] = "Vous n'avez pas de FAUSSE CARTE D'IDENTITÉ à supprimer, veuillez d'abord en acheter une !",
["no_fakeid1"] = "Vous n'avez pas de FAUSSE CARTE D'IDENTITÉ pour en demander une copie, veuillez d'abord en acheter une !",
["i_wrong"] = "Certaines informations manquent ou sont erronées !",
["already_id"] = "Vous êtes déjà inscrit !",
["not_reg"] = "Cette pièce d'identité n'est pas encore enregistrée, veuillez vous rendre au bureau national d'enregistrement le plus proche !",
["nobody_around"] = "Il n'y a personne autour, vous seul le voyez",
["alreadyhave"] = "Vous avez déjà une CARTE D'IDENTITÉ !",
["register_fakeidcard1"] = "Vous avez enregistré votre FAUSSE CARTE D'IDENTITÉ et payé",
["register_idcard1"] = "Vous avez enregistré votre CARTE D'IDENTITE et payé",
["register_idcard"] = "Vous enregistrez votre CARTE D'IDENTITÉ !",
["take_fakecopy1"] = "Vous avez reçu une copie de votre FAUSSE CARTE D'IDENTITÉ et avez payé",
["take_copy1"] = "Vous avez reçu une copie de votre CARTE D'IDENTITE et avez payé",
["take_copy"] = "Vous avez reçu une copie de votre CARTE D'IDENTITÉ !",
["update1"] = "Vos informations personnelles ont été mises à jour et vous avez payé",
["update"] = "Vos informations personnelles ont été mises à jour !",
["no_money"] = "Vous n'avez pas assez d'argent pour payer !",
["you_payed_fine"] = "Vous avez payé l'amende",
["no_fines"] = "Vous n'avez aucune amende à payer !",
--OTHERS
["kg"] = "kg",
["cm"] = "cm",
},
}

function NOTIFY(text) --SET YOUR NOTIFYCATIONS
TriggerEvent("vorp:TipBottom", text, 5000)       
end  