-- Author '🅱🅻🆄🅴🆈🅴🆂#1364' by Sirec Studio -- 
-- REPORT ANY BUGS ON https://discord.gg/9XNBaQSmMd --

Config = {

WebhookAvatar = "https://i.imgur.com/OAE8DpR.png",
WebhookSetJob = "",
WebhookItems = "",
WebhookDead = "",

FredMetabolism = true, -- If you have Fred Metabolism set TRUE
    
Key = 0xD9D0E1C0, -- Key to press
Align = "right", -- Align for Menu
AllowedJobs = {"medicval", "medicguarma", "medicstrawb", "medicsd", "medicannes"}, -- Add what job's you want to do this job!
FireMedic = "unemployed", -- Job received when a player is fired, the jobgrade is set to 0!
JobGrade = 4, -- Job Grade allowed to employ/ fire players
UseCommand = true, -- Use command to set on duty!
MedicInventory = 700, -- SET LIMIT FOR MEDIC INVENTORY
WagonInventory = 200, -- SET LIMIT FOR WAGON INVENTORY
----------------------------------------------------------------------------------------------------------------------------
UsePayment = false, -- IF YOU WANT TO RECEIVE PAYMENT
PaymentTime = 1800, -- 1800 seconds (30 minutes)
PaymentGrade1 = 2.5, -- PAYMENT FOR GRADE 1
PaymentGrade2 = 3.0, -- PAYMENT FOR GRADE 2
PaymentGrade3 = 4.0, -- PAYMENT FOR GRADE 3
PaymentGrade4 = 5.0, -- PAYMENT FOR GRADE 4
----------------------------------------------------------------------------------------------------------------------------
UseNotify = true, -- IF YOU WANT TO RECEIVE DOCTOR ALERT AND BLIP
DeadBodyBlip = 1109348405, -- When a player is dead, show you the blip on the map!
DeadBlipTime = 90, -- 90 seconds before Delete Blip for Dead Player!
AlertItem = "birdalert", -- Item need to have in inventory if want to send notify to medic! Don't work after restart script, only after char selection!
BirdModel = "a_c_pigeon", -- Bird Model to spawn when you die and have the AlertItem in your inventory!
----------------------------------------------------------------------------------------------------------------------------
BedTime = 10, -- 10 seconds to stay in bed after registration
BedScenario = "PROP_HUMAN_SLEEP_BED_PILLOW_RIGHT", -- Scenario when you register at cabinet office!
RegisterPrice = 5, -- Price to heal/ revive!
----------------------------------------------------------------------------------------------------------------------------
Distance = 1.5, -- distance you can check a dead body/ heal or revive
InspectTime = 10, -- 10 seconds to check how the player died
HealTime = 10, -- 10 seconds to do the animation when Heal
ReviveTime = 10, -- 10 seconds to do the animation when Revive
----------------------------------------------------------------------------------------------------------------------------
InspectDict = 'mini_games@story@mob4@heal_jules@bandage@arthur', -- Dictionary Anim When Inspect
InspectAnim = 'bandage_add_start', -- Animation selected from Dictionary!
ItemCheck = "docverify", -- Item to use when check a dead body!
----------------------------------------------------------------------------------------------------------------------------
HealDict = "mech_grapple@rifle@_male@_ambient@_healthy@front@_streamed", -- Dictionary Anim When Heal
HealAnim = "robbery_pocket_att", -- Animation selected from Dictionary!
ItemHeal = "docbandage", -- Item to use when heal a nearby player!
----------------------------------------------------------------------------------------------------------------------------
ReviveDict = 'mini_games@story@mob4@heal_jules@bandage@arthur',
ReviveAnim = 'bandage_slow',
AnimalWound = "docanimalkit", -- Wolf, FerociousAnimal, Bear, Crocodile
SnakeBite = "docsnakekit", -- Snake Bite
UnarmedWound = "docunarmedkit", -- Unarmed
BurnedWound = "docburnedkit", -- Burned
HitWound = "dochitkit", -- Falling, Vehicles, Horses
WeaponsWound = "docweaponskit", -- Shotgun, Rifle, One Hand Gun, Weapon Thrown, Gatling Gun, Turret, Cannon
MeleeWound = "docmeleekit", -- Melee, Bow
OtherCause = "docfirstaidkit", -- Other cause
----------------------------------------------------------------------------------------------------------------------------
    
Doctors = {
--[[
	[1] = {
		Name = "Valentine Doctor", -- Doctor Name
        Pos = {-288.127, 804.810, 118.385, 275.109}, -- Position where players can come to heal, and blip position!
        ChangeDuty = {-289.890, 816.298, 118.385, 20.510}, -- Position where medic can be on-duty/ off-duty
        DocMenu = {-282.725, 817.417, 118.386, 302.820}, -- Position where medic can open the menu
		WagonPos = {-292.747, 828.574, 118.807, 268.404}, -- Position to spawn/ park the Wagon as a doctor
		BedCoords = {-282.460, 814.449, 118.915, 102.839}, -- Position to Teleport when register for heal, revive!
        Zone = 5, -- If is a cart in this radius zone, you can't spawn another one!
        Wagon = "wagondoc01x", -- Type of Wagon for medic
		NpcRegistration = "u_m_m_valdoctor_01", -- Type of Npc Spawned at medical registration
		CityJob = "medicval", -- City Job
        Showblip = true, -- Show medic blip
        Blip = -1739686743, -- Blip Type
        ParkDistance = 5.0, -- Distance to show the park button
		DutyDist = 1.5,
        Distance = 2.5 -- Distance for other buttons
	},
    [2] = {
		Name = "Strawberry Doctor", -- Doctor Name
        Pos = {-1806.121, -429.064, 157.833, 242.841}, -- Position where players can come to heal, and blip position!
        ChangeDuty = {-1802.102, -430.085, 157.830, 252.406}, -- Position where medic can be on-duty/ off-duty
        DocMenu = {-1803.010, -432.735, 157.829, 158.338}, -- Position where medic can open the menu
		WagonPos = {-1811.556, -440.358, 157.728, 77.872}, -- Position to spawn/ park the Wagon as a doctor
		BedCoords = {-1811.924, -367.381, 166.062, 119.211}, -- Position to Teleport when register for heal, revive!
        Zone = 15, -- If is a cart in this radius zone, you can't spawn another one!
        Wagon = "wagondoc01x", -- Type of Wagon for medic
		NpcRegistration = "u_m_m_rhddoctor_01", -- Type of Npc Spawned at medical registration
		CityJob = "medicstrawb", -- City Job
        Showblip = true, -- Show medic blip
        Blip = -1739686743, -- Blip Type
        ParkDistance = 5.0, -- Distance to show the park button
		DutyDist = 1.5,
        Distance = 2.5 -- Distance for other buttons
	},
	[3] = {
		Name = "Annesburg Doctor", -- Doctor Name
        Pos = {2948.771, 1331.894, 43.443, 18.525}, -- Position where players can come to heal, and blip position!
        ChangeDuty = {2945.294, 1331.280, 43.457, 50.812}, -- Position where medic can be on-duty/ off-duty
        DocMenu = {2944.819, 1329.140, 43.450138092042, 156.446}, -- Position where medic can open the menu
		WagonPos = {2940.475, 1336.598, 43.072, 344.743}, -- Position to spawn/ park the Wagon as a doctor
		BedCoords = {2946.518, 1328.501, 44.020, 69.134}, -- Position to Teleport when register for heal, revive!
        Zone = 15, -- If is a cart in this radius zone, you can't spawn another one!
        Wagon = "wagondoc01x", -- Type of Wagon for medic
		NpcRegistration = "am_valentinedoctors_females_01", -- Type of Npc Spawned at medical registration
		CityJob = "medicannes", -- City Job
        Showblip = true, -- Show medic blip
        Blip = -1739686743, -- Blip Type
        ParkDistance = 5.0, -- Distance to show the park button
		DutyDist = 1.5,
        Distance = 2.5 -- Distance for other buttons
	},

]]--
	[4] = {
		Name = "Medecin de Garde", -- Doctor Name
        Pos = {2728.021, -1232.084, 49.377, 98.955}, -- Position where players can come to heal, and blip position!
        ChangeDuty = {2733.895, -1230.552, 49.370, 291.401}, -- Position where medic can be on-duty/ off-duty
        DocMenu = {2730.557, -1229.218, 50.370, 3.295}, -- Position where medic can open the menu
		WagonPos = {2726.119, -1239.864, 48.907, 265.797}, -- Position to spawn/ park the Wagon as a doctor
		BedCoords = {2731.850, -1232.493, 50.169, 82.388}, -- Position to Teleport when register for heal, revive!
        Zone = 5, -- If is a cart in this radius zone, you can't spawn another one!
        Wagon = "wagondoc01x", -- Type of Wagon for medic
		NpcRegistration = "cs_sddoctor_01", -- Type of Npc Spawned at medical registration
		CityJob = "medicsd", -- City Job
        Showblip = true, -- Show medic blip
        Blip = -1739686743, -- Blip Type
        ParkDistance = 5.0, -- Distance to show the park button
		DutyDist = 1.5,
        Distance = 2.5 -- Distance for other buttons
	},
	[5] = {
		Name = "Medecin de Garde", -- Doctor Name
        Pos = {1335.11, -6948.49, 59.31, 150.63}, -- Position where players can come to heal, and blip position!
        ChangeDuty = {1332.79, -6956.28, 60.53, 205.73}, -- Position where medic can be on-duty/ off-duty
        DocMenu = {1326.31, -6952.04, 60.61, 309.17}, -- Position where medic can open the menu
		WagonPos = {1330.25, -6960.81, 61.03, 135.19}, -- Position to spawn/ park the Wagon as a doctor
		BedCoords = {1324.40, -6952.50, 60.26, 238.85}, -- Position to Teleport when register for heal, revive!
        Zone = 5, -- If is a cart in this radius zone, you can't spawn another one!
        Wagon = "wagondoc01x", -- Type of Wagon for medic
		NpcRegistration = "cs_sddoctor_01", -- Type of Npc Spawned at medical registration
		CityJob = "medicguarma", -- City Job
        Showblip = true, -- Show medic blip
        Blip = -1739686743, -- Blip Type
        ParkDistance = 5.0, -- Distance to show the park button
		DutyDist = 1.5,
        Distance = 2.5 -- Distance for other buttons
	},
},
----------------------------------------------------------------------------------------------------------------------------
Items = {
	[1] = {
		item = "docverify",
    	label = "Verify Injury Kit",
    	desc = "Take this kit to verify injured people!",
    	price = 5.0
	},
    [2] = {
		item = "docbandage",
    	label = "Heal Bandage",
   	 	desc = "Bandage to heal players when they have low HP!",
    	price = 2.5
	},
    [3] = {
		item = "docanimalkit",
    	label = "Animals Medical Kit",
    	desc = "Need to have it all time, a lot snakes in zone!",
   	 	price = 5.0
	},
    [4] = {
		item = "docunarmedkit",
    	label = "Unarmed Medical Kit",
    	desc = "Need this to treat players after they was beaten!",
    	price = 3.0
	},
    [5] = {
		item = "docburnedkit",
    	label = "Burned Medical Kit",
    	desc = "Need this to treat burned people!",
    	price = 5.0
	},
	[6] = {
		item = "dochitkit",
    	label = "Hitted Medical Kit",
    	desc = "Need this to treat hitted players after a hit!",
    	price = 3.0
	},
	[7] = {
		item = "docweaponskit",
    	label = "Shot Medical Kit",
    	desc = "Need this to treat players after a shot!",
    	price = 5.0
	},
	[8] = {
		item = "docmeleekit",
    	label = "Stabbed Medical Kit",
    	desc = "Need this to treat players they was stabbed!",
    	price = 7.0
	},
	[9] = {
		item = "docsnakekit",
    	label = "Snake Medical Kit",
    	desc = "Need this to treat players after snake bites!",
    	price = 6.0
	},
	[10] = {
		item = "birdalert",
    	label = "Bird Alert",
    	desc = "Player need to have this with him to alert the doctor when is injured!",
    	price = 0.50
	},
	[11] = {
		item = "docfirstaidkit",
    	label = "First Aid Kit",
    	desc = "Need this to treat players injured by many reasons!",
    	price = 4.0
	}
},
----------------------------------------------------------------------------------------------------------------------------
    
Text = { -- TRANSLATE
["med_ondutycmd"] = "medonduty",
["med_button"] = "APPUYER",
["med_ondutybutton"] = "EN SERVICE",
["med_offdutybutton"] = "HORS SERVICE",
["med_docitemsbutton"] = "MENU MÉDICAL",
["med_parkwagonbutton"] = "PARQUER LE WAGON",
["med_openwagonstash"] = "OUVRIR CACHETTE",
["med_registrationbutton"] = "INSCRIVEZ-VOUS ICI",
["med_regdrawtxtbutton"] = "APPUYEZ SUR ESPACE POUR VOUS ENREGISTRER",
["med_ondutynotif"] = "Vous avez commencé votre devoir de médecin ! Restez en service pour recevoir des paiements et prendre soin des gens !",
["med_offdutynotif"] = "Vous n'êtes pas de service en tant que médecin ! Vous êtes dans votre temps libre et ne recevez pas de paiements !",
["med_yourec"] = "Vous avez reçu",
["med_dollar"] = "$",
["med_payment"] = "pour votre travail, continuez comme ça !",
["med_confirm"] = "Confirmer",
["med_descbuyitems"] = "Achetez les articles dont vous avez besoin pour faire votre travail !",
["med_youbuyed"] = "Vous avez acheté",
["med_andpaid"] = "et payé",
["med_fullinventory"] = "Votre inventaire est plein, vous ne pouvez plus recevoir d'objets de ce type !",
["med_nomoney"] = "Vous n'avez pas assez d'argent pour acheter ça !",
["med_menutitle"] = "Menu Docteur",
["med_submenutitle"] = "Médecin en service",
["med_buymenu"] = "Prendre des médicaments",
["med_spawnwagons"] = "Chariot d'apparition",
["med_changeclothes"] = "Changez de vêtements", -- NE TRAVAILLEZ PAS POUR LE MOMENT !
["med_inventory"] = "Ouvrir l'inventaire",
["med_employplayer"] = "Employer des joueurs",
["med_mediclist"] = "Liste des médecins",
["med_descbuymenu"] = "Achetez les médicaments nécessaires pour faire votre travail !",
["med_descspawnwagons"] = "Faites apparaître Wagon si vous avez besoin d'aller quelque part rapidement !",
["med_descchangeclothes"] = "Changez de vêtements !", -- NE TRAVAILLEZ PAS POUR LE MOMENT !
["med_desinventory"] = "Ouvrir l'inventaire de l'armoire",
["med_descemployplayer"] = "Employer des joueurs !",
["med_descfireplayer"] = "Fire joueurs !",
["med_descmediclist"] = "Voir médecin !",
["med_cartinzone"] = "Est-ce qu'un chariot est déjà dans la zone, nettoyez la zone avant d'en sortir un autre !",
["med_cartspawned"] = "Vous avez créé un chariot pour les médecins !",
["med_info"] = "FOURNIR DES INFORMATIONS",
["med_id"] = "identifiant",
["med_job"] = "JOB",
["med_grade"] = "GRADE ",
["med_wrong"] = "Mauvaises entrées",
["med_playerwith"] = "Joueur avec ID",
["med_havenow"] = " avoir maintenant",
["med_withjob"] = " avec la note du poste",
["med_nograde"] = "Vous n'avez pas de note d'emploi pour accéder à ce menu !",
["med_notyourcity"] = "Vous n'êtes pas médecin dans cette ville !",
["med_medlist"] = "Liste des médecins",
["med_descmedlist"] = "Afficher la liste des médecins",
["med_youreceivedjob"] = "Vous avez reçu le travail",
["med_gradereceived"] = "avec note",
["med_youwfired"] = "Vous avez viré ce médecin, maintenant il n'aura plus accès !",
["med_playernotfound"] = "Le joueur n'est pas en ligne !",
["med_deadplayerblip"] = "Joueur mort",
["med_playerisdead"] = "Un joueur est mort, regarde sur la carte et vois si tu peux le joindre pour l'aider !",
["med_medicalert"] = "L'oiseau que vous aviez avec vous s'est rendu chez un médecin pour l'alerter !",
["med_noalertitem"] = "Vous ne pouvez pas alerter le médecin !",
["med_subtitledeadalert"] = "Vous êtes gravement blessé !",
["med_registpaid"] = "Vous avez payé",
["med_reghealed"] = "au cabinet pour te soigner !",
["med_regnomoney"] = "Vous n'avez pas assez d'argent pour vous inscrire à ce cabinet !",
["med_complhealed"] = "Tu es guéri maintenant, prends soin de toi !",
["med_medicalstash"] = "Magasin médical",
["med_wagonstash"] = "Magasin de chariot",
["med_notrightitem"] = "Vous ne pouvez pas utiliser cet objet pour le moment !",
["WOLF KILL"] = "La personne a été attaquée par un LOUP !",
["SNAKE BITE"] = "La personne a été mordue par un SERPENT !",
["FEROCIOUS ANIMAL"] = "La personne a été attaquée par un ANIMAL FEROCIEUX !",
["BEAR KILL"] = "La personne a été attaquée par un BEAR !",
["CROCODILE BITE"] = "La personne a été attaquée par un CROCODILE !",
["BOWS"] = "La personne a été attaquée avec ARC, elle a des FLECHES !",
["UNARMED"] = "La personne a été BATTUE ou ÉTRANGE !",
["BURNED"] = "La personne a des MARQUES DE BRÛLURES GRAVES !",
["FALLING"] = "La personne s'est cognée, elle a des marques d'un crash !",
["VEHICLES"] = "La personne a été renversée par un CHARIOT !",
["HORSES"] = "La personne a été gravement heurtée par un CHEVAL !",
["WEAPON THROWN"] = "La personne a été touchée par une ARME DE LANCEMENT !",
["SHOTGUNS"] = "La personne s'est fait tirer dessus avec un FUSIL DE CHASSE, il est grièvement blessé !",
["RIFLE"] = "La personne s'est fait tirer dessus avec un FUSIL, il a des blessures graves !",
["ONE-HANDGUN"] = "La personne s'est fait tirer dessus avec un HAND GUN, il est grièvement blessé !",
["MELEE"] = "La personne a été poignardée avec une arme de mêlée, une hachette ou une hache !",
["GATLING GUN"] = "La personne a été blessée avec une mitrailleuse Gatling",
["TURRET"] = "La personne a été blessée avec une tourelle",
["CANNON"] = "La personne a été blessée avec un Canon",
["OTHERREASON"] = "La personne a été blessée pour d'autres raisons",
["med_noplayernearby"] = "Aucun joueur à proximité !",
["med_notmedic"] = "Vous n'êtes pas médecin et vous ne savez pas comment l'utiliser !",
["med_nowishealed"] = "Le joueur est maintenant guéri !",
["webh_havenow"] = "avoir maintenant un emploi",
["webh_witjobg"] = "avec niveau de poste",
["webh_set"] = "SET",
["webh_buyed"] = "acheté",
["webh_paid"] = "et payé",
["webh_died"] = "MORT, et envoyé l'alerte au médecin !",
["webh_died1"] = "MORT, et le médecin n'a pas été alerté !",
	},
}

function NOTIFY(text) --SET YOUR NOTIFYCATIONS
TriggerEvent("vorp:TipBottom", text, 5000)
end

function DEATHNOTIFY(text) --SET YOUR NOTIFYCATIONS
TriggerEvent("vorp:ShowBottomRight", text, 7000)
end