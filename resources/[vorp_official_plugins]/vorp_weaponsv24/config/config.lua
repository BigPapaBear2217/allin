Config = {}
Config = {

    keys = {
    -- change the hashes to the keys u want, do not change the writings in qoutes. for example if u wana change B do ["B"] = (CHANGE THIS 0x8AAA0AD4), do not change whats inside those brackets > ["B"]
    ["G"] = 0x760A9C6F,
    ["1"] = 0xE6F612E4,
    ["2"] = 0x1CE6D9EB,
    ["3"] = 0x4F49CC4C,
    ["4"] = 0x8F9F9E58

    },
    ---------------------- 
    syndual = false,--- always false 
    -----------------------
    updatedinventoryammo = true, -- use if using updated inventory with new ammo system 

    adminwebhook = "https://discord.com/api/webhooks/792119960432148480/pe_FudhkrXZTQsOTRPimLj569T0kwLf4E0RFhLIz1nwe-XTZ_ROFfEIUVxaHOWrSoAEw",
    jobonly = true, -- only players with mentioned jobs below can access crafting/customization station
    job ={ "gunsmith", "rguns"},
    jobrankcustomization = 2,
    jobrankcrafting = 1,
    craftingcost =  false,

    weaponshops = true, -- endable or disable weapon shops

    craftinganimations = "WORLD_HUMAN_CROUCH_INSPECT", -- animation for crafting
    customizationanimation = "WORLD_HUMAN_WRITE_NOTEBOOK", -- animations for customizations
	
    customizationLocations = {
        Valentine = {	   
            Pos = {x=2712.22, y=-1283.26, z=49.69}, -- location weapon customization station
            Pos2 = {x= 2712.90, y=-1283.1, z=50.28}, -- location spawned weapon 3d model
        },
    },

    craftinglocation = { 
        Stdenis = {	   
            Pos = {x=2709.72, y=-1285.75, z=49.68}, -- location weapon crafting station
        },
    },

    ----------- DO NOT CHANGE THE LABELS IN THE WEPCOMP.JSON FILE ! IF YOU SO YOU WILL BREAK THE SCRIPT!!!!!!!!!!!
    customizationcurrency = 0,-- 0 for cash, 1 for gold.
    price = {
        variant = 100,
        griptype = 20,
        gripdecal = 10,
        decalframe = 15,
        decalbarrel = 20,
        decalextra = 15,
        wrapcolor = 5,
        sight = 100,
        rifling = 50,
        barrel = 50,
        wrap = 15,
        gold = 40,
        silver = 30,
        bluesteel = 25,
        brownsteel = 25,
        blacksteel = 25,
        copper = 10,
        nickle = 10,
        brass = 10,
        iron = 10
    }
}

---------------------------------------------------------
