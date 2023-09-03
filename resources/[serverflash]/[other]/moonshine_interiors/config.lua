Config = {}

Config.UseTeleports = true
Config.Blips = true

-- Change interior_sets with the interior you want at that location
-- https://github.com/femga/rdr3_discoveries/blob/399df3278b5101af1044f205c045648d2c8bcb38/interiors/interior_sets/README.md

Config.Shacks = {

    ['lemoyne'] = {
        ['outside'] = vector3(1784.90, -821.65, 42.86),
        ['inside'] = vector3(1785.01,-821.53,191.01),
        ['interior'] = 77313,
        ['interior_sets'] = {
            "mp006_mshine_band2",
            "mp006_mshine_bar_benchAndFrame",
            "mp006_mshine_dressing_3",
            "mp006_mshine_hidden_door_open",
            "mp006_mshine_location2",
            "mp006_mshine_pic_04",
            "mp006_mshine_shelfwall1",
            "mp006_mshine_shelfwall2",
            "mp006_mshine_Still_03",
            "mp006_mshine_still_hatch",
            "mp006_mshine_theme_hunter",
        },
    },

}
