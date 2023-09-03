-- Author '🆂🅸🆁🅴🅲#0336'
-- REPORT ANY BUGS ON https://discord.gg/9XNBaQSmMd --
local VORPcore = {}
TriggerEvent("getCore", function(core)
    VORPcore = core
end)

Config = {
    
Framework = "vorp", -- PUT vorp FOR VORP redemrp FOR REDEM:RP
RestartHour = false, -- THE HOUR WHEN START THE SERVER RESTART (put FALSE to turn OFF)
RestartTime = 10, -- ANNOUNCE WAIT TIME BEFORE START RESTART SERVER
 
NXTInventory = false, -- if you use NXTInventory
RoleplayNameList = false, -- SHOW STEAM OR RP NAME IN PLAYERS LIST FOR SEARCH
OpenMenu = 0x3C3DD371, -- DEFAULT IS "PAGEDOWN"  
ActiveCommands = true, -- ACTIVE COMMANDS ? /tpto , /kick, /givemoney etc etc...   
MaxPlayers = 128, -- SERVER MAX PLAYERS TO SHOW ON MENU
MaxWarns = 3, -- MAX WARNS BEFORE GET BANNED
BanWarns = 3, -- BAN FOR MAX WARNS IN DAYS 
    
-- ADDONS
TicketSystem = true, -- ACTIVE TICKET SYSTEMS   
DevToolProtection = true, -- PREVENT OPEN DEVTOOL !
DevToolKickMsg = "Don't be a jurk, Just Play... !", -- DEV TOOL SECURITY KICK MSG !
TpEffects = false, -- Do TP EFFECTS when using any TP method ?
VolumeEffects = 0.2, -- EFFECTS VOLUME
    
-- DISCORD BOT SETTINGS
Token = "MTA5OTMzNDAzNDU5ODk0MDc3Mg.G9ROYQ.P5vxkNhB8dQmyFcO3QMLd3L3x3LtpeHfpQcjDI", -- TOKEN DISCORD BOT
GuildId = "1005347849044766780", -- DISCORD SERVER ID  
    
RestartBat = "start.bat", -- NAME OF YOU START SERVER FILE DEFAULT "start.bat"
TimeToCheckBans = 6000 * 60 * 60, --DEFAULT CHECK FOR UNBAN EVERY 1 H | 
Notify = false, -- NOTIFY YOU AND THE TARGET !  
PrintUnauthorizedAccess = true, -- PRINT IN SERVER CONSOLE UNAUTHORIZED ACCESS      
    
WhiteList = true, -- WHITELIST SERVER ACCESS ?
WhiteListRoles = {"1009920074196463699"}, -- WICH ROLES CAN CONNECT TO SERVER ?
    
WebHook = "https://discord.com/api/webhooks/1099333295390593124/3sQ-ng9OQjcQagMwh7iYAf60pgXuG25Z_CyVI_Zg5UrLJyVZI4I35AXaBSjmxg0BxhDW", -- FOR LOGS
    
-- PERMISSIONS 
--################################################################################################################    
AdminPerms = {"1010285605474795600", "1009936390131286076"}, -- ROLES ID FOR OPEN ADMIN UI
CommandAdmin = "adminmenu", 
    
AnnouncePerms = {"1010285605474795600", "1009936390131286076"}, -- ROLES ID FOR ANNOUNCE SERVER
CommandAnnounce = "announce", 
    
SpawnWagonPerms = {"1010285605474795600", "1009936390131286076"}, -- ROLES ID FOR SPAWN WAGONS
CommandSpawnWagon = "spawnwagon", 

NoClipPerms = {"1010285605474795600", "1009936390131286076"}, -- ROLES ID FOR NOCLIP
CommandNoClip = "noclip", -- COMMAND  

TpmPerms = {"1010285605474795600", "1009936390131286076"}, -- ROLES ID FOR TP TO WAYPOINTS   
CommandTpm = "tp", -- COMMAND

TpCoordsPerms = {"1010285605474795600", "1009936390131286076"}, -- ROLES ID FOR TP TO COORDS
CommandTpCoords = "tpcoords", -- COMMAND

TicketsPerms = {"1010285605474795600", "1009936390131286076"}, -- ROLES ID FOR SEE TICKETS
CommandTickets = "tickets", -- COMMAND

RevivePerms = {"1010285605474795600", "1009936390131286076"}, -- ROLES ID FOR REVIVE
CommandRevive = "revive", -- COMMAND
    
HealPerms = {"1010285605474795600", "1009936390131286076"}, -- ROLES ID FOR HEAL
CommandHeal = "heal", -- COMMAND
    
KickPerms = {"1010285605474795600", "1009936390131286076"}, -- ROLES ID FOR KICK
CommandKick = "kick", -- COMMAND

BringPerms = {"1010285605474795600", "1009936390131286076"}, -- ROLES ID FOR BRING
CommandBring = "bring", -- COMMAND
 
TpToPerms = {"1010285605474795600", "1009936390131286076"}, -- ROLES ID FOR TO TO PLAYER
CommandTpTo = "tpto", -- COMMAND
    
FreezePerms = {"1010285605474795600", "1009936390131286076"}, -- ROLES ID FOR FREEZE
CommandFreeze = "freeze", -- COMMAND

KillPerms = {"1010285605474795600", "1009936390131286076"}, -- ROLES ID FOR KILL
CommandKill = "kill", -- COMMAND
    
SpectatePerms = {"1010285605474795600", "1009936390131286076"}, -- ROLES ID FOR SPECTATE
CommandSpectate = "spectate", -- COMMAND
    
GiveItemPerms = {"1010285605474795600", "1010244372006191255"}, -- ROLES ID FOR GIVE ITEMS
CommandGiveItem = "giveitem", -- COMMAND
    
GiveMoneyPerms = {"1010285605474795600", "1010244372006191255"}, -- ROLES ID FOR GIVE MONEY
CommandGiveMoney = "givemoney", -- COMMAND
    
GiveGoldPerms = {"1010285605474795600"}, -- ROLES ID FOR GIVE GOLD
CommandGiveGold = "givegold", -- COMMAND

GiveWeaponPerms = {"1010285605474795600", "1010244372006191255"}, -- ROLES ID FOR GIVE WEAPONS
CommandGiveWeapon = "giveweapon", -- COMMAND
    
BanPerms = {"1010285605474795600", "1009936390131286076"}, -- ROLES ID FOR BAN
CommandBan = "ban", -- COMMAND
    
LightningPerms = {"1010285605474795600"}, -- ROLES ID FOR LIGHTNING
CommandLightning = "lightning", -- COMMAND
    
WindowsPerms = {"1010285605474795600"}, -- ROLES ID FOR WINDOWS
CommandWindows = "windows", -- COMMAND
    
StashPerms = {"1010285605474795600", "1010244372006191255"}, -- ROLES ID FOR ADMIN STASH
CommandStash = "stash", -- COMMAND
    
CheckPerms = {"1010285605474795600"}, -- ROLES ID FOR CHECK DEATH
CommandCheck = "check", -- COMMAND
    
WarnPerms = {"1010285605474795600", "1009936390131286076"}, -- ROLES ID FOR WARN
CommandWarn = "warning", -- COMMAND
    
RestartPerms = {"1010285605474795600"}, -- ROLES ID FOR RESTART
CommandRestart = "restart", -- COMMAND
    
ActiveBlipsPerms = {"1010285605474795600"}, -- ROLES ID FOR SEE PLAYERS BLIPS
CommandBlips = "activeblips", -- COMMAND
    
FixVehiclePerms = {"1010285605474795600", "1010244372006191255"}, -- ROLES ID FOR FIX VEHICLES
CommandFixVehicle = "fix", -- COMMAND
    
DelVehiclePerms = {"1010285605474795600", "1009936390131286076"}, -- ROLES ID FOR DELETE VEHICLE
CommandDelVehicle = "dv", -- COMMAND
    
SetJobPerms = {"1010285605474795600", "1009936390131286076"}, -- ROLES ID FOR SET JOBS
CommandSetJob = "sjob", -- COMMAND
    
SetNotifyPerms = {"1010285605474795600", "1009936390131286076"}, -- ROLES ID FOR SET JOBS
CommandNotifyit = "notify", -- COMMAND
    
GodModePerms = {"1010285605474795600", "1009936390131286076"}, -- ROLES ID FOR SET JOBS
CommandGod = "god", -- COMMAND
    
TitanPerms = {"1010285605474795600"}, -- ROLES ID FOR SET JOBS
CommandTitan = "titan", -- COMMAND
    
UnbanPerms = {"1010285605474795600", "1010244372006191255"}, -- ROLES ID FOR SEE TICKETS
--################################################################################################################      
Text = {
	--ADMIN
	["no_admin"] = "You don't have permissions to do this !",        
	["not_allowlist"] = "You are not Whitelisted, Please join our discord: ",
    ["bannedrejoin"] = "You are BANNED from this server, please contact our STAFF on Discord !",
	["warning1"] = "^1WARNING^0: Player with ID",
    ["warning2"] = "and identifier",
    ["warning3"] = "execute",
    ["warning4"] = "without PERMISSION !",           
        
	-- NOTIFICATIONS 
	["noclip_on"] = "You are now in NOCLIP !",
    ["noclip_off"] = "You just leave NOCLIP",    
	["tpmok"] = "You teleported succesfully to your Waypoint !",
	["tpmfail"] = "Set your waypoint on map before use this !",
	["tpcoordsok"] = "You teleported succesfully to coords !",
    ["reviveme"] = "You ressurected from other world",
    ["revive1"] = "You revive ",
    ["revive2"] = "You have been revived by ",
    ["heal1"] = "You heal ",
    ["heal2"] = "You been healed by ",
	["healed"] = "You healed yourself!",
	["kick"] = "You KICKED ",
    ["no_online"] = "That player is not online or missing ID",
    ["tpto1"] = " has teleported to you !",
    ["tpto2"] = "You teleported to ",
    ["freeze1"] = " has FREEZE/UNFREEZE you !",
    ["freeze2"] = "You FREEZE/UNFREEZE ",
    ["kill1"] = "You KILLED ",
    ["kill2"] = "You been KILLED by ",        
    ["spectate1"] = "You SPECTATE ",
    ["givemoney1"] = "You gived ",
    ["givemoney2"] = " to ", 
    ["givemoney3"] = "You received ", 
    ["givemoney4"] = " from ",        
    ["banned"] = "You banned ",
    ["days"] = "days", 
    ["lightning"] = "Thor punished ",
    ["lightning2"] = "Thor punished you !",        
    ["windows"] = "Updating windows of ", 
    ["hours"] = "Ore", 
	["warn1"] = "You WARNED ", 
	["warn2"] = "You have BEEN WARNED by ", 
	["ban_maxwarns"] = "You reached MAX Warns ! Banned",
    ["n_restarttitle"] = "ANNOUNCEMENT",
    ["n_restarttext"] = "The TIMER for restart has been started ! Please quit before timer finish !",
    ["press"] = "Press",
	["exit_noclip"] = "Exit Noclip",
	["noclip_speed"] = "Speed",
	["noclip_cam"] = "CAM ON/OFF",
    ["usedon"] = " USED ON ",
    ["bring1"] = " has teleported you to him !",          
	["bring2"] = "You bring ", 
	["giveto"] = " GIVED ",
    ["announce_tittle"] = "ANNOUNCE",
    ["blips_on"] = "Players blips ACTIVATED !",    
    ["blips_off"] = "Players blips DEACTIVATED !", 
	["veh_fixed"] = "The vehicle was fixed, enjoy it !",
	["veh_delete"] = "The vehicle was deleted !  Was a good vehicle...", 
	["no_veh"] = "Hmm, i can't see any vehicle around !",
	["set_job1"] = "You set job",
	["set_job2"] = "and rank",
	["set_job3"] = "Your new job",
	["set_job4"] = "and rank",
	["by"] = "by",
	["for"] = "for",
	["notify_tittle"] = "ADMIN NOTIFY",
	["notify_send"] = "You have send the notification to the player !",
	["vehicle_spawned"] = "Vehicle spawned successfully !",
	["not_death"] = "The player is not dead",
	["not_deathme"] = "Dude, you are not death ! :))",
	["too_far"] = "The player is too far from you !",
	["titan_active"] = "TITAN mode is ACTIVE/DEACTIVE",
	["godmode_active"] = "GOD mode is ACTIVE/DEACTIVE",
        
-- DEATH CAUSE        
["WOLF KILL"] = "The person was attacked by a WOLF!",
["SNAKE BITE"] = "The person was bitten by a SNAKE!",
["FEROCIOUS ANIMAL"] = "The person was attacked by a FEROCIOUS ANIMAL!",
["BEAR KILL"] = "The person was attacked by a BEAR!",
["CROCODILE BITE"] = "The person was attacked by a CROCODILE!",
["BOWS"] = "The person was attacked with BOW, it has ARROW MARKS!",
["UNARMED"] = "The person was BEATEN or STRANGLED!",
["BURNED"] = "The person has SEVERE BURN MARKS!",
["FALLING"] = "The person hit himself, he has marks from a crash!",
["VEHICLES"] = "The person was hit by a CART!",
["HORSES"] = "The person was seriously hit by a HORSE!",
["GATLING GUN"] = "The person was injured with a Gatling Gun",
["TURRET"] = "The person was injured with a Turret",
["CANNON"] = "The person was injured with a Canon",
["OTHERREASON"] = "The person was injured for other reasons",
["KNIFE"] = "The person was stabbed with a KNIFE!",
["KNIFE CIVIL WAR"] = "The person was stabbed with a KNIFE CIVIL WAR!",
["KNIFE MINER"] = "The person was stabbed with a KNIFE MINER!",
["KNIFE JAWBONE"] = "The person was stabbed with a KNIFE JAWBONE!",
["KNIFE VAMPIRE"] = "The person was stabbed with a KNIFE VAMPIRE!",
["KNIFE JOHN"] = "The person was stabbed with a KNIFE JOHN!",
["KNIFE BEAR"] = "The person was stabbed with a KNIFE BEAR!",
["KNIFE HORROR"] = "The person was stabbed with a KNIFE HORROR!",
["KNIFE RUSTIC"] = "The person was stabbed with a KNIFE RUSTIC!",
["KNIFE TRADER"] = "The person was stabbed with a KNIFE TRADER!",
["HATCHET"] = "The person was stabbed with a HATCHET!",
["ANCIENT HATCHET"] = "The person was stabbed with a ANCIENT HATCHET!",
["HATCHET HUNTER"] = "The person was stabbed with a HATCHET HUNTER!",
["HATCHET DOUBLE BIT RUSTED"] = "The person was stabbed with a HATCHET DOUBLE BIT RUSTED!",
["HATCHET DOUBLE BIT"] = "The person was stabbed with a HATCHET DOUBLE BIT!",
["HATCHET HEWING"] = "The person was stabbed with a HATCHET HEWING!",
["HATCHET VIKING"] = "The person was stabbed with a HATCHET VIKING!",
["HATCHET HUNTER RUSTED"] = "The person was stabbed with a HATCHET HUNTER RUSTED!",
["CLEAVER"] = "The person was stabbed with a CLEAVER!",
["MACHETE"] = "The person was stabbed with a MACHETE!",
["MACHETE COLLECTOR"] = "The person was stabbed with a MACHETE COLLECTOR!",
["MACHETE HORROR"] = "The person was stabbed with a MACHETE!",
["REVOLVER SCHOFIELD"] = "The person was shot with a REVOLVER SCHOFIELD!",
["REVOLVER SCHOFIELD CALLOWAY"] = "The person was shot with a REVOLVER SCHOFIELD CALLOWAY!",
["REVOLVER LEMAT"] = "The person was shot with a REVOLVER LEMAT!",
["REVOLVER DOUBLEACTION"] = "The person was shot with a REVOLVER DOUBLEACTION!",
["REVOLVER CATTLEMAN"] = "The person was shot with a REVOLVER CATTLEMAN!",
["REVOLVER CATTLEMAN MEXICAN"] = "The person was shot with a REVOLVER CATTLEMAN MEXICAN!",
["REVOLVER CATTLEMAN JOHN"] = "The person was shot with a REVOLVER CATTLEMAN JOHN!",
["REVOLVER DOUBLEACTION GAMBLER"] = "The person was shot with a REVOLVER DOUBLEACTION GAMBLER!",
["REVOLVER NAVY"] = "The person was shot with a REVOLVER NAVY!",
["REVOLVER NAVY CROSSOVER"] = "The person was shot with a REVOLVER NAVY CROSSOVER!",
["PISTOL VOLCANIC"] = "The person was shot with a PISTOL VOLCANIC!",
["PISTOL SEMIAUTO"] = "The person was shot with a PISTOL SEMIAUTO!",
["PISTOL MAUSER"] = "The person was shot with a PISTOL MAUSER!",
["PISTOL M1899"] = "The person was shot with a PISTOL M1899!",
["PISTOL MAUSER"] = "The person was shot with a PISTOL MAUSER!",
["SNIPERRIFLE CARCANO"] = "The person was shot with a SNIPERRIFLE CARCANO!",
["SNIPERRIFLE ROLLINGBLOCK"] = "The person was shot with a SNIPERRIFLE ROLLINGBLOCK!",
["RIFLE SPRINGFIELD"] = "The person was shot with a RIFLE SPRINGFIELD!",
["RIFLE VARMINT"] = "The person was shot with a RIFLE VARMINT!",
["RIFLE BOLTACTION"] = "The person was shot with a RIFLE BOLTACTION!",
["RIFLE ELEPHANT"] = "The person was shot with a RIFLE ELEPHANT!",
["REPEATER HENRY"] = "The person was shot with a REPEATER HENRY!",
["REPEATER CARBINE"] = "The person was shot with a REPEATER CARBINE!",
["REPEATER EVANS"] = "The person was shot with a REPEATER EVANS!",
["REPEATER WINCHESTER"] = "The person was shot with a REPEATER WINCHESTER!",
["SHOTGUN PUMP"] = "The person was shot with a SHOTGUN PUMP!",
["SHOTGUN DOUBLEBARREL"] = "The person was shot with a SHOTGUN DOUBLEBARREL!",
["SHOTGUN SEMIAUTO"] = "The person was shot with a SHOTGUN SEMIAUTO!",
["SHOTGUN SAWEDOFF"] = "The person was shot with a SHOTGUN SAWEDOFF!",
["SHOTGUN DOUBLEBARREL"] = "The person was shot with a SHOTGUN DOUBLEBARREL!",
["SHOTGUN REPEATING"] = "The person was shot with a SHOTGUN REPEATING!",
["THROWING KNIVES"] = "The person was shot with a THROWING KNIVES!",
["TOMAHAWK"] = "The person was injured with a TOMAHAWK!",
["TOMAHAWK ANCIENT"] = "The person was injured with a TOMAHAWK ANCIENT!",
["MOLOTOV"] = "The person was injured with a MOLOTOV!",
["DYNAMITE"] = "The person was injured with a DYNAMITE!",
["FISHINGROD"] = "The person was injured with a FISHINGROD!",
["LASSO"] = "The person was injured with a LASSO!",
["TORCH"] = "The person was injured with a TORCH!",
["OBJECT"] = "The person was injured with a OBJECT!",
["LANTERN ELECTRIC"] = "The person was injured with a LANTERN ELECTRIC!",
["MOONSHINEJUG"] = "The person was injured with a MOONSHINEJUG!",
["HAMMER"] = "The person was injured with a HAMMER!",
["POISON BOTTLE"] = "The person was injured with a POISON BOTTLE!",        
},
}   

function ANNOUNCE(text) --SET YOUR ANNOUNCE NOTIFY
if Config.Framework == "redemrp" then    
TriggerEvent('redem_roleplay:NotifyLeft', Config.Text["announce_tittle"], text, "generic_textures", "tick", tonumber(10000)) 
elseif Config.Framework == "vorp" then
VORPcore.NotifySimpleTop(Config.Text["announce_tittle"], text, 5000) 
end        
end 

function NOTIFY(text) --SET YOUR NOTIFYCATIONS
if Config.Framework == "redemrp" then 
TriggerEvent('redem_roleplay:ShowSimpleRightText', text, 5000)    
elseif Config.Framework == "vorp" then
TriggerEvent("vorp:TipBottom", text, 5000) 
end        
end

NoClip = {
    Speeds = {
        { speed = 0 },
        { speed = 0.5 },
        { speed = 2 },
        { speed = 5 },
        { speed = 10 },
        { speed = 15 },
    },
    Offsets = {
        y = 0.5, -- Forward and backward movement speed multiplier
        z = 0.2, -- Upward and downward movement speed multiplier
        h = 3, -- Rotation movement speed multiplier
    },      
}

Config.Vehicles = {
        {model = "cart01", label = "Cart 1"},
        {model = "cart02", label = "Cart 2"},
        {model = "cart03", label = "Cart 3"},
        {model = "cart04", label = "Cart 4"},   
        {model = "cart05", label = "Cart 5"},
    	{model = "cart06", label = "Cart 6"},
    	{model = "cart07", label = "Cart 7"},
    	{model = "cart08", label = "Cart 8"},
    	{model = "ArmySupplyWagon", label = "Army Wagon"},
        {model = "bountywagon01x", label = "Bounty Wagon"},
    	{model = "huntercart01", label = "Hunter Cart"},
    	{model = "buggy01", label = "Buggy 1"},
    	{model = "buggy02", label = "Buggy 2"},
    	{model = "chuckwagon000x", label = "Chuck Wagon 1"},
		{model = "chuckwagon002x", label = "Chuck Wagon 2"},
    	{model = "gatchuck", label = "Gat Chuck"},
   	 	{model = "utilliwag", label = "Utility Wagon"},
    	{model = "wagon02x", label = "Wagon 2"},
        {model = "wagon03x", label = "Wagon 3"},
    	{model = "wagon04x", label = "Wagon 4"},
    	{model = "wagon05x", label = "Wagon 5"},
    	{model = "wagon06x", label = "Wagon 6"},
    	{model = "coach2", label = "Coach 2"},
    	{model = "coach3", label = "Coach 3"},
    	{model = "coach4", label = "Coach 4"},
    	{model = "coach5", label = "Coach 5"},
    	{model = "coach6", label = "Coach 6"},
    	{model = "stagecoach001x", label = "Stage Coach 1"},
    	{model = "stagecoach002x", label = "Stage Coach 2"},
    	{model = "stagecoach003x", label = "Stage Coach 3"},
		{model = "stagecoach004x", label = "Stage Coach 4"},
    	{model = "stagecoach005x", label = "Stage Coach 5"},
    	{model = "stagecoach006x", label = "Stage Coach 6"},
    	{model = "coal_wagon", label = "Coal Wagon"},
    	{model = "logwagon", label = "Log Wagon"},
    	{model = "oilWagon01x", label = "Oil wagon 1"},
    	{model = "oilWagon02x", label = "Oil Wagon 2"},
    	{model = "supplywagon", label = "Supply Wagon 1"},
    	{model = "supplywagon", label = "Supply Wagon 2"},
    	{model = "wagonCircus02x", label = "Wagon Circus 2"},
    	{model = "wagonCircus01x", label = "Wagon Circus 1"},
    	{model = "wagondairy01x", label = "Wagon Dairy"},
    	{model = "wagondoc01x", label = "Wagon Doc"},
    	{model = "wagontraveller01x", label = "Wagon Traveller"},
    	{model = "wagonwork01x", label = "Wagon Work"},
    	{model = "gatchuck_2", label = "Gat Chuck"},
    	{model = "policeWagongatling01x", label = "Police Wagon Gatling"},
    	{model = "wagonarmoured01x", label = "Wagon Armoured"},
    	{model = "wagonPrison01x", label = "Wagon Prison"},
}

Config.Weapons = {
		{item = "WEAPON_LASSO", label = "Lasso"},
    	{item = "WEAPON_LASSO_REINFORCED", label = "Reinforced Lasso"},
    	{item = "WEAPON_MELEE_KNIFE", label = "Knife"},
    	{item = "WEAPON_MELEE_KNIFE_RUSTIC", label = "Knife Rustic"},
    	{item = "WEAPON_MELEE_KNIFE_HORROR", label = "Knife Horror"},
    	{item = "WEAPON_MELEE_KNIFE_CIVIL_WAR", label = "Knife Civil War"},
   	 	{item = "WEAPON_MELEE_KNIFE_JAWBONE", label = "Knife Jawbone"},
    	{item = "WEAPON_MELEE_KNIFE_MINER", label = "Knife Miner"},
        {item = "WEAPON_MELEE_KNIFE_VAMPIRE", label = "Knife Vampire"},
    	{item = "WEAPON_MELEE_CLEAVER", label = "Cleaver"},
    	{item = "WEAPON_MELEE_HATCHET", label = "Hatchet"},
    	{item = "WEAPON_MELEE_HATCHET_DOUBLE_BIT", label = "Hachet Double Bit"},
    	{item = "WEAPON_MELEE_HATCHET_HEWING", label = "Hachet Hewing"},
    	{item = "WEAPON_MELEE_HATCHET_HUNTER", label = "Hachet Hunter"},
    	{item = "WEAPON_MELEE_HATCHET_VIKING", label = "Hachet Viking"},
    	{item = "WEAPON_THROWN_TOMAHAWK", label = "Tomahawk"},
    	{item = "WEAPON_THROWN_TOMAHAWK_ANCIENT", label = "Tomahawk Ancient"},
    	{item = "WEAPON_THROWN_THROWING_KNIVES", label = "Throwing Knifes"},
    	{item = "WEAPON_MELEE_MACHETE", label = "Machete"},
    	{item = "WEAPON_BOW", label = "Bow"},
    	{item = "WEAPON_BOW_IMPROVED", label = "Improved Bow"},
    	{item = "WEAPON_PISTOL_SEMIAUTO", label = "Pistol Semi-Auto"},
    	{item = "WEAPON_PISTOL_MAUSER", label = "Pistol Mauser"},
    	{item = "WEAPON_PISTOL_VOLCANIC", label = "Pistol Volcanic"},
    	{item = "WEAPON_PISTOL_M1899", label = "Pistol M1899"},
    	{item = "WEAPON_REVOLVER_SCHOFIELD", label = "Revolver Schofield"},
    	{item = "WEAPON_REVOLVER_NAVY", label = "Revolver Navy"},
    	{item = "WEAPON_REVOLVER_NAVY_CROSSOVER", label = "Revolver Navy Crossover"},
    	{item = "WEAPON_REVOLVER_LEMAT", label = "Revolver Lemat"},
    	{item = "WEAPON_REVOLVER_DOUBLEACTION", label = "Revolver Double Action"},
    	{item = "WEAPON_REVOLVER_CATTLEMAN", label = "Revolver Cattleman"},
    	{item = "WEAPON_REVOLVER_CATTLEMAN_MEXICAN", label = "Revolver Cattleman mexican"},
    	{item = "WEAPON_RIFLE_VARMINT", label = "Varmint Rifle"},
    	{item = "WEAPON_REPEATER_WINCHESTER", label = "Winchester Repeater"},
    	{item = "WEAPON_REPEATER_HENRY", label = "Henry Reapeater"},
    	{item = "WEAPON_REPEATER_EVANS", label = "Evans Repeater"},
    	{item = "WEAPON_REPEATER_CARBINE", label = "Carabine Reapeater"},
    	{item = "WEAPON_SNIPERRIFLE_ROLLINGBLOCK", label = "Rolling Block Rifle"},
    	{item = "WEAPON_SNIPERRIFLE_CARCANO", label = "Carcano Rifle"},
    	{item = "WEAPON_RIFLE_SPRINGFIELD", label = "Springfield Rifle"},
    	{item = "WEAPON_RIFLE_ELEPHANT", label = "Elephant Rifle"},
    	{item = "WEAPON_RIFLE_BOLTACTION", label = "BoltAction Rifle"},
    	{item = "WEAPON_SHOTGUN_SEMIAUTO", label = "Semi-Auto Shotgun"},
    	{item = "WEAPON_SHOTGUN_SAWEDOFF", label = "Sawedoff Shotgun"},
    	{item = "WEAPON_SHOTGUN_REPEATING", label = "Repeating Shotgun"},
    	{item = "WEAPON_SHOTGUN_DOUBLEBARREL_EXOTIC", label = "Double Barrel Exotic Shotgun"},
    	{item = "WEAPON_SHOTGUN_PUMP", label = "Pump Shotgun"},
    	{item = "WEAPON_SHOTGUN_DOUBLEBARREL", label = "Double Barrel Shotgun"},
    	{item = "WEAPON_KIT_CAMERA", label = "Camera"},
    	{item = "WEAPON_KIT_CAMERA_ADVANCED", label = "Advanced Camera"},
    	{item = "WEAPON_KIT_BINOCULARS_IMPROVED", label = "Improved Binoculars"},
    	{item = "WEAPON_MELEE_KNIFE_TRADER", label = "Knife Trader"},
    	{item = "WEAPON_KIT_BINOCULARS", label = "Binoculars"},
    	{item = "WEAPON_MELEE_LANTERN", label = "Lantern"},
    	{item = "WEAPON_MELEE_DAVY_LANTERN", label = "Davy Lantern"},
    	{item = "WEAPON_MELEE_LANTERN_HALLOWEEN", label = "Halloween Lantern"},
    	{item = "WEAPON_THROWN_POISONBOTTLE", label = "Poison Bottle"},
    	{item = "WEAPON_KIT_METAL_DETECTOR", label = "Metal Detector"},
    	{item = "WEAPON_THROWN_DYNAMITE", label = "Dynamite"},
    	{item = "WEAPON_THROWN_MOLOTOV", label = "Molotov"},
    	{item = "WEAPON_MELEE_MACHETE_COLLECTOR", label = "Machete Collector"},
    	{item = "WEAPON_MELEE_LANTERN_ELECTRIC", label = "Electric Lantern"},
    	{item = "WEAPON_MELEE_TORCH", label = "Torch"},
    	{item = "WEAPON_MOONSHINEJUG_MP", label = "Moonshine Jug"},
    	{item = "WEAPON_THROWN_BOLAS", label = "Bolas"},
    	{item = "WEAPON_THROWN_BOLAS_HAWKMOTH", label = "Bolas Hawkmoth"},
    	{item = "WEAPON_THROWN_BOLAS_IRONSPIKED", label = "Bolas Ironspiked"},
    	{item = "WEAPON_THROWN_BOLAS_INTERTWINED", label = "Bolas Intertwined"},
    	{item = "WEAPON_FISHINGROD", label = "Fishing Rod"},
    	{item = "WEAPON_MACHETE_HORROR", label = "Machete Horror"},
    	{item = "WEAPON_MELEE_LANTERN_HALOWEEN", label = "Lantern Haloween"},
    	{item = "WEAPON_MELEE_HAMMER", label = "Hammer"},
}