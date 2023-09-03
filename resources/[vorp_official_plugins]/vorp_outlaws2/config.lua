Config = {}

Config.Cooldown = 10 * 6 -- 300000 = 5 minutes in how many miliseconds should check the lucky number when crossing the location. if you put 0 it will defenitly spawn npcs Advise to keep it 50000
Config.DeleteNPcsAfterPlayerDied = 10 * 6 -- after player is dead delte npcs after cool down  so that firends can kill them

Config.Outlaws = {

	firstLocation = {
		Random = { min = 1, max = 30 }, -- set between min and max how lucky a player will be to trigger an ambush
		luckynumber = 1, -- if the random number = this number then start ambush
		x = 1238.21, y = 223.14, z = 89.26, -- location that triggers the ambush
		BlipHandle = 953018525, -- sprite of the npc blip. dont change
		DistanceTriggerMission = 18.0, -- distance from the location to trigger the ambush
		DistanceToStopAmbush = 150, -- distance to stop the ambush when player is 150 away then ambush will stop
		MaxPeds = 10, -- this says dont spawn more than 10 per wave
		MaxAlive = 4, -- spawn how many - then when killed will keep spawning untill has reached MXAPEDS ^
		RandomPedSpawn = { min = 1, max = 3 }, -- random amount to spawn at first
		outlawsLocation = {
			{x = 1238.21, y = 223.14, z = 89.26}, -- location to spawn peds for each ped
			{x = 1238.21, y = 223.14, z = 89.26},
			{x = 1238.21, y = 223.14, z = 89.26},
			{x = 1238.21, y = 223.14, z = 89.26},

		},
		outlawsModels = {
			{ hash = "G_M_M_UniBanditos_01" }, -- models it will pick a random model
			{ hash = "G_M_M_UniBanditos_01" },
			{ hash = "G_M_M_UniBanditos_01" },
			{ hash = "G_M_M_UniBanditos_01" },

		},
		-- NOTIFY for each location
		Notification = "you are being ambushed by the notorious gang of black water",
		NotificationTitle = "~e~AMBUSH",
		NotificationKilledTitle = "you have killed them all",
		NotificationKilled = "Safe Travels...",
		NotificationEscapeTitle = "!you have escaped!",
		NotificationEscape = "keep an eye on the road",
		NotificationDiedTitle = "!you have been killed!",
		NotificationDied = "bandits will stay for awhile"
	},
	secondLocation = {
		Random = { min = 1, max = 1 },
		luckynumber = 1,
		x = -1394.49, y = -971.16, z = 62.16, -- beartooth pass
		BlipHandle = 953018525,
		DistanceTriggerMission = 20.0,
		DistanceToStopAmbush = 1500,
		MaxPeds = 30,
		MaxAlive = 7,
		RandomPedSpawn = { min = 1, max = 6 },
		outlawsLocation = {
			{ x = -1394.49, y = -971.16, z = 62.16},
			{ x = -1394.49, y = -971.16, z = 62.16},
			{ x = -1394.49, y = -971.16, z = 62.16},
		},

		outlawsModels = {
			{ hash = "G_M_M_UniBanditos_01" },
			{ hash = "G_M_M_UniBanditos_01" },
			{ hash = "G_M_M_UniBanditos_01" },
			{ hash = "G_M_M_UniBanditos_01" },
			{ hash = "G_M_M_UniBanditos_01" },
			{ hash = "G_M_M_UniBanditos_01" }
		},
		Notification = "Assault des 7 lumiere",
		NotificationTitle = "~e~AMBUSH",
		NotificationKilledTitle = "you have killed them all",
		NotificationKilled = "Safe Travels...",
		NotificationEscapeTitle = "!you have escaped!",
		NotificationEscape = "keep an eye on the road",
		NotificationDiedTitle = "!you have been killed!",
		NotificationDied = "bandits will stay for awhile"
	},

	thirdLocation = {
		Random = { min = 1, max = 10 },
		luckynumber = 1,
		x = 356.13, y = 442.88, z = 111.37, -- Citadel Rock area
		BlipHandle = 953018525,
		DistanceTriggerMission = 13.0,
		DistanceToStopAmbush = 150,
		MaxPeds = 10,
		MaxAlive = 7,
		RandomPedSpawn = { min = 1, max = 6 },
		outlawsLocation = {
			{ x = 466.03, y = 376.79, z = 106.49 },
			{ x = 450.94, y = 367.32, z = 104.30 },
			{ x = 469.02, y = 376.98, z = 106.72 },
			{ x = 454.90, y = 377.63, z = 105.72 },
		},
		outlawsModels = {
			{ hash = "G_M_M_UniBanditos_01" },
			{ hash = "G_M_M_UniBanditos_01" },
			{ hash = "G_M_M_UniBanditos_01" },
			{ hash = "G_M_M_UniBanditos_01" },
			{ hash = "G_M_M_UniBanditos_01" },
			{ hash = "G_M_M_UniBanditos_01" }
		},
		Notification = "you are being ambushed by the notorious gang of black water",
		NotificationTitle = "~e~AMBUSH",
		NotificationKilledTitle = "you have killed them all",
		NotificationKilled = "Safe Travels...",
		NotificationEscapeTitle = "!you have escaped!",
		NotificationEscape = "keep an eye on the road",
		NotificationDiedTitle = "!you have been killed!",
		NotificationDied = "bandits will stay for awhile"
	},

	fourthLocation = {
		Random = { min = 1, max = 10 },
		luckynumber = 1,
		x = 2163.16, y = -1329.416, z = 42.50,
		BlipHandle = 953018525,
		DistanceTriggerMission = 13.0,
		DistanceToStopAmbush = 150,
		MaxPeds = 10,
		MaxAlive = 7,
		RandomPedSpawn = { min = 1, max = 6 },
		outlawsLocation = {
			{ x = 2160.73, y = -1315.26, z = 41.35 },
			{ x = 2160.73, y = -1313.26, z = 41.39 },
			{ x = 2139.51, y = -1295.05, z = 41.32 },
			{ x = 2131.51, y = -1305.36, z = 41.54 }
		},
		outlawsModels = {
			{ hash = "G_M_M_UniBanditos_01" },
			{ hash = "G_M_M_UniBanditos_01" },
			{ hash = "G_M_M_UniBanditos_01" },
			{ hash = "G_M_M_UniBanditos_01" },
			{ hash = "G_M_M_UniBanditos_01" },
			{ hash = "G_M_M_UniBanditos_01" }
		},
		Notification = "you are being ambushed by the notorious gang of black water",
		NotificationTitle = "~e~AMBUSH",
		NotificationKilledTitle = "you have killed them all",
		NotificationKilled = "Safe Travels...",
		NotificationEscapeTitle = "!you have escaped!",
		NotificationEscape = "keep an eye on the road",
		NotificationDiedTitle = "!you have been killed!",
		NotificationDied = "bandits will stay for awhile"
	}
	-- to add more just copy from above and make new coords ]]
}
