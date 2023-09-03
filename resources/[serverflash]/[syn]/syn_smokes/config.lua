Config = {}
-- different camera effects
-- https://github.com/femga/rdr3_discoveries/blob/master/graphics/timecycles/timecycles.lua 
Config.pipeitem = "pipe"

Config.smokes = {
    ["cigarette"] = { 
        pipe = false,
        subitem = true,
        typeof = "cigarette",
        high = false,
    },
    ["cigar"] = {
        pipe = false,
        subitem = true,
        typeof = "cigar",
        high = false,

    },
    ["syn"] = {
        pipe = true,
        subitem = true,
        typeof = "pipe",
        high = true,
        hightype = "PlayerDrugsHalluc01",
        highduration = 120,

    },
    ["Indian_Tobbaco"] = {
        pipe = true,
        subitem = true,
        typeof = "pipe",
        high = false,

    },
}

Config.language = {
    needpipe = "You need a pipe to smoke this",
}