--------------------------------------------------------------------------------------
------------------------------- VORP TELEGRAM ----------------------------------------
--EDIT BY OUTSIDER


Config = {}

Config.redm = false -- SET TO FALSE IF YOU USE VORP

--------------------------------- LOCATIONS ------------------------------------------
Config.Locations = {
    { x=-178.90, y=626.71, z=114.09 }, -- Valentine train station
    { x=1225.57, y=-1293.87, z=76.91 }, -- Rhodes train station
    { x=2749.49, y=-1399.66, z=46.21 }, -- Saint Denis train station
    {x = 2939.49, y = 1288.62, z = 44.7}, -- Annesburg

}

----------------------------------- PROPMT ------------------------------------------
Config.keys = {
    G = 0x760A9C6F, -- CHANGE ONLY HASH
} 
Config.Press = "Appuyer"
Config.Post = "Télégram"

-------------------------------- BLIPS ----------------------------------------------

Config.blips = {

    { name = 'Post Office', sprite = 1861010125, x= -178.90, y = 626.71, z = 114.09 }, -- val
    { name = 'Post Office', sprite = 1861010125, x= 2749.49, y = -1399.66, z = 46.21 }, -- sait
    { name = 'Post Office', sprite = 1861010125, x= 1225.57, y = -1293.87, z = 76.91 }, -- rhodes
    { name = 'Post Office', sprite = 1861010125, x= 2939.49, y = 1288.62, z = 44.7 }, -- Annesburg

}

---------------------------- ONLY FOR VORP  ----------------------------------------
Config.Lastname = ":"
Config.firstname = "Recipient's Firstname:"
Config.message = "Your Message"
Config.notification =  "Your telegram has been posted!"
Config.unable =  "Unable to process Telegram. Invalid first or lastname."
Config.sent = "You've received a telegram."

