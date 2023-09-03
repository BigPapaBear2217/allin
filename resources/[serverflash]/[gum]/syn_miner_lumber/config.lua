Config = {}

Config.startkey = 0xD9D0E1C0 -- (Spacebar)
Config.stopkey = 0x3B24C470 --  (F)
Config.swingkey = 0x07B8BEAF -- Left Click


Config.miningswings = { -- number of swings per node randomized between min and max
    min = 1,
    max = 4
}

Config.items = { -- different item types 
    pioche_os = {draindura = 1,dura = 200, difficultymin = 4000, difficultymax = 2700, type = "mining"},
    hachete_os = {draindura = 1,dura = 200, difficultymin = 4000, difficultymax = 2700, type = "lumber"},
    axe = {draindura = 1,dura = 200, difficultymin = 4000, difficultymax = 2700, type = "lumber"},
    hache_os = {draindura = 1,dura = 300, difficultymin = 4000, difficultymax = 2700, type = "lumber"}
}

Config.jobs = {
    mining =  {"unemployed","kiowa","lakota","kwanita","ecurie"},
    lumber = {"unemployed","kiowa","lakota","kwanita","ecurie"},
}

Config.rewardincrease = 2 -- reward increase for players with jobs listed above 

Config.rewards = { -- rewards for players 
    mining = {
        {name = "pierre", label = "pierre", chance = 10, amount = 4},
    },
    lumber = {
        {name = "sap", label = "Sève", chance = 8, amount = 2},
      --  {name = "miel", label = "Miel", chance = 0, amount = 2},
        {name = "bois", label = "Bois", chance = 10, amount = 5},
        {name = "p_bois", label = "Bois Dur", chance = 10, amount = 5},
        {name = "ecorce", label = "Ecorce", chance = 8, amount = 4},
        {name = "fibres_1", label = "fibres_1", chance = 9, amount = 10},
    },
}


