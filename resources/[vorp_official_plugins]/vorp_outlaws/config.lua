Config = {}

Config.Cooldown = 10 * 6 -- 300000 = 5 minutes in how many miliseconds should check the lucky number when crossing the location. if you put 0 it will defenitly spawn npcs Advise to keep it 50000
Config.DeleteNPcsAfterPlayerDied = 10 * 6 -- after player is dead delte npcs after cool down  so that firends can kill them

Config.Outlaws = {

	firstLocation = {
		Random = { min = 1, max = 1 }, -- set between min and max how lucky a player will be to trigger an ambush
		luckynumber = 1, -- if the random number = this number then start ambush
		x = 920.97, y = 390.91, z = 114.84, -- location that triggers the ambush
		BlipHandle = 953018525, -- sprite of the npc blip. dont change
		DistanceTriggerMission = 35.0, -- distance from the location to trigger the ambush
		DistanceToStopAmbush = 550, -- distance to stop the ambush when player is 150 away then ambush will stop
		MaxPeds = 10, -- this says dont spawn more than 10 per wave
		MaxAlive = 4, -- spawn how many - then when killed will keep spawning untill has reached MXAPEDS ^
		RandomPedSpawn = { min = 1, max = 3 }, -- random amount to spawn at first
		outlawsLocation = {
			{ x = 877.67, y = 416.35, z = 111.86}, -- location to spawn peds for each ped
			{ x = 877.22, y = 422.58, z = 111.77},
			{x = 877.21, y = 340.84, z = 117.4},
			{x = 941.82, y = 295.42, z = 126.92},

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
		x = -198.78, y = 622.87, z = 113.05, -- beartooth pass
		BlipHandle = 953018525,
		DistanceTriggerMission = 13.0,
		DistanceToStopAmbush = 550,
		MaxPeds = 10,
		MaxAlive = 7,
		RandomPedSpawn = { min = 1, max = 6 },
		outlawsLocation = {
			{x = -183.6, y = 626.11, z = 114.14},
			{x = -211.53, y = 667.57, z = 113.45},
			{x = -251.77, y = 624.68, z = 113.46},
			{x = -230.31, y = 580.29, z = 109.51},
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
}
