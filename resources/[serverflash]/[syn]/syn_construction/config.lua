Config = {}
Config.keys = {
    ["G"] = 0x760A9C6F,
    ["DOWN"] = 0x05CA7C52,
    ["UP"] = 0x6319DB71,
    ["LEFT"] = 0xA65EBAB4,
    ["RIGHT"] = 0xDEB34313,
    ["1"] = 0xE6F612E4,
    ["2"] = 0x1CE6D9EB,
    ["B"] = 0x4CC0E2FE,
    ["E"] = 0xCEFD9220,
    ["Q"] = 0xDE794E3E,

}

Config.constructioncompany = {
    val = {
        Pos = {x= 2887.09, y=-1219.78, z=46.1, h = 150.07}, -- location 
		blipsprite = 2107754879, -- blip sprite 
        showblip = true, -- show blip or not 
        Name = 'Valentine Construction', -- blip name 
        npcmodel = "U_M_M_CKTManager_01",
    },
}

Config.missions = {

    },
    val = {
        materialpickup = {x= -338.27, y=820.2, z=117.52},
        reward = 25, 
        workspots = {
            {x= -361.40, y=792.8, z=116.19, wa= 'PROP_HUMAN_REPAIR_WAGON_WHEEL_ON_SMALL'},
            {x= -324.77, y=809.84, z=117.40, wa= 'PROP_HUMAN_REPAIR_WAGON_WHEEL_ON_SMALL'},
            {x= -294.33, y=826.015, z=119.7, wa= 'PROP_HUMAN_REPAIR_WAGON_WHEEL_ON_SMALL'},
            {x= -301.95, y=845.45, z=119.88, wa= 'PROP_HUMAN_REPAIR_WAGON_WHEEL_ON_SMALL'},

            {x= -313.52, y=737.87, z=117.9, wa= 'PROP_HUMAN_REPAIR_WAGON_WHEEL_ON_SMALL'},
            {x= -266.80, y=742.8, z=117.44, wa= 'PROP_HUMAN_REPAIR_WAGON_WHEEL_ON_SMALL'},
            {x= -234.89, y=771.425, z=117.88, wa= 'PROP_HUMAN_REPAIR_WAGON_WHEEL_ON_SMALL'},
            {x= -232.97, y=748.85, z=117.74, wa= 'PROP_HUMAN_REPAIR_WAGON_WHEEL_ON_SMALL'},

        }
    },

}

Config.Language = {
constructionmenu = "Press G To Open Construction Menu",
construction = "Construction",
startjob = "Start Job",
trust = "Trust: ",
marked = "Go To Marked Location",
pickup = "Material Pickup",
pressgtopickup = "Press G To Pickup Materials",
dosomework = "Work Location",
startconst = "Press G To Start Construction",
finishedtasks = "Finished Your Work for The Day, Head Back to the Foreman",
finishwork = "Sign Out",
messedup = "You Messed Up The Task",
paid = "You Got Paid $ ",
nowork = "You Didnt Do Enough Work To Get Paid",
}



------------exports["syn_minigame"]:taskBar(1200,7)