MAKE SURE YOU HAVE DISCORD LINKED ON RedM !!!!!

SET UP YOUR DISCORD BOT !

1. Go to https://discord.com/developers/applications
2. Make New Application, choice a name of Aplications !
3. Go to Bot and ADD BOT, choice USERNAME of bot and RESET TOKEN !
4. Go to config.lua and paste your TOKEN !
5. Go to config.lua and paste your Discord Server ID (Right click on your server Copy ID)
6. Go to OAuth2 URL Generator, SCOPES "bot" and BOT PERMISSIONS "Administrator" 
7. Down you will have an link to invite your BOT on your Discord Server ! Invite it...

SET UP PERMISSIONS

1. In config add your role ID not name, on every commands you want 
EX:

Config.CommandItem = "giveitem"
Config.GiveItem = {"953986183271186484", "953986183271186485"} -- ROLES ID FOR GIVE ITEMS


FOR REDEM:RP

Add this lines:

AddEventHandler('redemrp_inventory:getItems', function(cb)
	local items = Config.Items        
    cb(items)
end)

in redemrp_inventory/server.lua at the end of file !

!!!!!