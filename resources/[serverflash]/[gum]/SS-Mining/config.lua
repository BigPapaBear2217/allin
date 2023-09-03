-- Author '🅱🅻🆄🅴🆈🅴🆂#1364' by Sirec Studio -- 
-- REPORT ANY BUGS ON https://discord.gg/9XNBaQSmMd --

Config = {

	JobLock = true,
	AWStress = false,
	AWStressMax = 90,
	AWStressAdd = 3,
		
	Jobs = {"detective", "miner", "annesburgminer", "minergaptooth", "minerwallace", "minerbeavers", "minerhidden", "minergolden", "minersmall", "minervcave", "minervmine"}, -- Add what job's you want to do this job!
		
	DiscordWebhook = "",
	
	NXTInventory = false, -- if you use NXT INVENTORY !
	RepSystem = false, -- If you have SS-RepSystem
	PickAxe = "pickaxe", -- Item you want to use from your database
	Key = 0xD9D0E1C0, -- Key to press "SPACE"
	Distance = 1.0, -- Distance between mining spots
	XPEnabled = true, -- True if use experience and want to receive exp and notify with received exp!
	Experience = 5, -- XP reward for every tree cutted
	TimetoPickAxe = 6, -- 25 seconds
	TimetoRefresh = 180, -- 1800 seconds = 30 minutes / Time before you can chop again in the same location!
	damagemin = 1, -- how much percentage to decrease with each hit
	damagemax = 2, -- how much percentage to decrease with each hit
	progressBars = true, -- if you have and wanna use progressBar
	Animation = true, -- if you wanna use Animation set true else you wanna use Scenario set false
	AnimDict = "amb_work@world_human_pickaxe@wall@male_d@idle_a", -- Anim Dictionary
	AnimBase = "idle_c", -- Base Animation
	Scenario = "EA_WORLD_HUMAN_PICKAXE_NEW", -- Scenario
	
	---------------------------------------------------------------------
	
	CancelCommands = true, -- IF PLAYER HAVE THE PICKAXE EQUIPED, HE CANNOT USE THE COMMANDS BELOW. CHANGE THEM IF YOU USE OTHER COMMANDS
	DisableControl1 = 0x07CE1E61, -- MOUSE1
	DisableControl2 = 0xF84FA74F, -- MOUSE2
	DisableControl3 = 0xAC4BD4F1, -- TAB
	DisableControl4 = 0xCEFD9220, -- MOUNT
	DisableControl5 = 0x4CC0E2FE,-- B
	DisableControl6 = 0x8CC9CD42, -- X
	DisableControl7 = 0x26E9DC00, -- Z
	DisableControl8 = 0xDB096B85, -- CTRL
	
	---------------------------------------------------------------------
	Text = { -- TRANSLATE
	["ss_button"] = "MINE",
	["ss_subbutton"] = "PICKAXE",
	["ss_youreceive"] = "You received",
	["ss_ininventory"] = "in your inventory and ",
	["ss_experience"] = "experience!",
	["ss_nospace"] = "You don't have enough space in your inventory!",
	["ss_pickaxeremove"] = "Your pickaxe has broken, the item has been removed from inventory!",
	["ss_received"] = "received",
	["ss_discordreceive"] = "The player received",
	["ss_nochance"] = "You didn't find anything but rocks, try somewhere else!",
	["ss_nominejob"] = "You don't have the right job to mine here !",
	["ss_nojob"] = "You don't have the right job to equip the pickaxe !",
	["ss_onmount"] = "You can't mine while you're on a horse, dick head! Get down if you want to mine !",
	["ss_minprog"] = "Wait to Mine...", 
	["b_trytocheat"] = "Don't try to cheat dickhead !",
	["b_onDuty"] = "You can't do this job if you're on Duty !",
	["ss_toostress"] = "You are to stressed to do this job",
	},
	---------------------------------------------------------------------
	
	AmountBasicReward = 1,
	BasicReward = {
	[1] = "pierre",
	[2] = "gravier",      
	},
	
	MiningZone = {
		["1"] = {
		name = "Annesburg Mine",
		mineJob = {"miner", "annesburgminer"},
		blip = 1267381595,
		showblip = true,
		minitems = 1, 
		maxitems = 15,    
	positions = {
	[1] = {name = "Annesburg1", distance = 40, openHour = 0, closeHour = 24, x = 2725.602, y = 1357.791, z = 58.496, open = 1},
	},
	items = {
			[1] = {
				item = "minerai_fer",
				label = "Minerai de fer",
				amountmin = 3,
				amountmax = 6,
				chance = 100,        
				   },
			[2] = {
				item = "charbon",
				label = "Charbon",
				amountmin = 1,
				amountmax = 5, 
				chance = 70,
				   },
			[3] = {
				item = "minerai_argent",
				label = "minerai d'argent",
				amountmin = 1,
				amountmax = 2, 
				chance = 60,        
				   },
			[4] = {
				item = "sable",
				label = "sable",
				amountmin = 3,
				amountmax = 7, 
				chance = 40,        
				   },
			[5] = {
				item = "petitepepite",
				label = "Minerai d'or",
				amountmin = 1,
				amountmax = 1, 
				chance = 10,        
				   }   
			},    
		},
	  ["2"] = {
		name = "Gaptooth Ridge",
		mineJob = {"miner", "minergaptooth"},        
		blip = 1267381595,
		showblip = true,
		minitems = 1, 
		maxitems = 4,    
	positions = {
	[1] = {name = "Gaptooth1", distance = 25, openHour = 10, closeHour = 20, x = -5970.459, y = -3169.094, z = -30.924, open = 1},
	},
	items = {        
			[1] = {
				item = "argila",
				label = "Argila",
				amountmin = 1,
				amountmax = 5,
				chance = 100,
				   },
			[2] = {
				item = "coalore",
				label = "Coal Ore",
				amountmin = 2,
				amountmax = 4, 
				chance = 70,
				   },
			[3] = {
				item = "copper",
				label = "Copper Ore",
				amountmin = 2,
				amountmax = 4, 
				chance = 70,        
				   },
			[4] = {
				item = "smaraldore",
				label = "Smarald Ore",
				amountmin = 1,
				amountmax = 2, 
				chance = 50,        
				   },   
			},    
		},
		["3"] = {
		name = "Wallace Cave",
		mineJob = {"miner", "minerwallace"},        
		blip = -758970771,
		showblip = false,
		minitems = 1, 
		maxitems = 1,    
	positions = {
	[1] = {name = "Wallace1", distance = 20, openHour = 0, closeHour = 24, x = -2720.230, y = 715.145, z = 170.817, open = 1},
	},
	items = {
			[1] = {
				item = "silverore",
				label = "Silver Ore",
				amountmin = 1,
				amountmax = 2,
				chance = 30,        
				   }        
			},    
		},
		["4"] = {
		name = "Diablo Cave",
		mineJob = {"miner", "minerdiablo"},        
		blip = -758970771,
		showblip = false,
		minitems = 1, 
		maxitems = 2,    
	positions = {
	[1] = {name = "Diablo1", distance = 8, openHour = 0, closeHour = 24, x = -1518.048, y = 737.135, z = 126.026, open = 1},
	},
	items = {
			[1] = {
				item = "silverore",
				label = "Silver Ore",
				amountmin = 1,
				amountmax = 5,
				chance = 100,        
				   },
			[2] = {
				item = "diamondore",
				label = "Diamond Ore",
				amountmin = 1,
				amountmax = 5,
				chance = 100,        
				   }    
			},    
		},
		["5"] = {
		name = "Beavers Hollow",
		mineJob = {"miner", "minerbeavers"},        
		blip = -758970771,
		showblip = false,
		minitems = 1, 
		maxitems = 3,    
	positions = {
	[1] = {name = "Beavers1", distance = 50, openHour = 0, closeHour = 24, x = 2317.122, y = 1448.623, z = 84.147, open = 1},
	},
	items = {
			[1] = {
				item = "ruby",
				label = "Ruby",
				amountmin = 1,
				amountmax = 5,
				chance = 20,        
				   },
			[2] = {
				item = "smaraldore",
				label = "Smarald Ore",
				amountmin = 1,
				amountmax = 5,
				chance = 30,        
				   },
			[3] = {
				item = "sulfore",
				label = "Sulf Ore",
				amountmin = 1,
				amountmax = 5,
				chance = 70,        
				   }    
			},    
		},
		["6"] = {
		name = "Hidden Cave",
		mineJob = {"miner", "minerhidden"},        
		blip = -758970771,
		showblip = false,
		minitems = 1, 
		maxitems = 3,    
	positions = {
	[1] = {name = "Hidden1", distance = 5, openHour = 0, closeHour = 24, x = -4429.556, y = -2182.450, z = 42.677, open = 1},
	},
	items = {
			[1] = {
				item = "diamondore",
				label = "Diamond Ore",
				amountmin = 1,
				amountmax = 5,
				chance = 100,        
				   },
			[2] = {
				item = "smaraldore",
				label = "Smarald Ore",
				amountmin = 1,
				amountmax = 5,
				chance = 100,        
				   },
			[3] = {
				item = "argila",
				label = "Argila",
				amountmin = 1,
				amountmax = 5,
				chance = 100,        
				   }    
			},    
		},
		["7"] = {
		name = "Golden Cave",
		mineJob = {"miner", "minergolden"},        
		blip = -758970771,
		showblip = false,
		minitems = 1, 
		maxitems = 2,    
	positions = {
	[1] = {name = "Golden1", distance = 40, openHour = 0, closeHour = 24, x = 2293.714, y = 1070.734, z = 81.497, open = 1},
	},
	items = {
			[1] = {
				item = "gold",
				label = "Gold Ore",
				amountmin = 1,
				amountmax = 2,
				chance = 60,        
				   }, 
			[2] = {
				item = "argila",
				label = "Argila",
				amountmin = 1,
				amountmax = 5,
				chance = 100,        
				   }    
			},    
		},
		["8"] = {
		name = "Small Cave",
		mineJob = {"miner", "minersmall"},        
		blip = -758970771,
		showblip = false,
		minitems = 1, 
		maxitems = 2,    
	positions = {
	[1] = {name = "Small1", distance = 5, openHour = 0, closeHour = 24, x = 325.654, y = 1714.432, z = 166.557, open = 1},
	},
	items = {
			[1] = {
				item = "diamondore",
				label = "Diamond Ore",
				amountmin = 1,
				amountmax = 5,
				chance = 100,        
				   },
			[2] = {
				item = "ruby",
				label = "Ruby",
				amountmin = 1,
				amountmax = 5,
				chance = 100,        
				   }    
			},    
		},
		["9"] = {
		name = "Big Valley Cave",
		mineJob = {"miner", "minervcave"},        
		blip = -758970771,
		showblip = false,
		minitems = 1, 
		maxitems = 1,    
	positions = {
	[1] = {name = "BigCave1", distance = 30, openHour = 0, closeHour = 24, x = -2122.232, y = 100.164, z = 245.657, open = 1},
	},
	items = {
			[1] = {
				item = "diamondore",
				label = "Diamond Ore",
				amountmin = 1,
				amountmax = 3,
				chance = 50,        
				   }   
			},    
		},
		["10"] = {
		name = "Big Valley Mine",
		mineJob = {"miner", "minervmine"},        
		blip = -758970771,
		showblip = false,
		minitems = 1, 
		maxitems = 3,    
	positions = {
	[1] = {name = "BigMine1", distance = 20, openHour = 0, closeHour = 24, x = -2355.001, y = 111.687, z = 217.244, open = 1},
	},
	items = {
			[1] = {
				item = "sulfore",
				label = "Sulf Ore",
				amountmin = 1,
				amountmax = 3,
				chance = 80,        
				   },
			 [2] = {
				item = "minesalt",
				label = "Mine Salt",
				amountmin = 1,
				amountmax = 3,
				chance = 70,        
				   },
			 [3] = {
				item = "lead",
				label = "Lead Ore",
				amountmin = 1,
				amountmax = 3,
				chance = 80,        
				   }   
			},    
		}
	}
	}    
	
	function NOTIFY(text) --SET YOUR NOTIFYCATIONS
	TriggerEvent("vorp:TipBottom", text, 5000)       
	end