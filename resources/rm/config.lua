-- Menu configuration, array of menus to display
sharedconfigs = {
    ["shareddance1"] = {
        label = "Dance",
        dict1 = "cnv_camp@rchso@cnv@ccdtc33@player_karen",
        anim1 = "arthur_dance_loop",
        dict2 = "cnv_camp@rchso@cnv@ccdtc33@player_karen",
        anim2 = "karen_dance_loop",
        flag = 1
    },
}
menuConfigs = {
    ['mainmenu'] = {                                  -- Example menu for emotes when player is on foot
        enableMenu = function()                     -- Function to enable/disable menu handling
            local player = PlayerPedId()
            return true--IsPedOnFoot(player)
        end,
        data = {                                    -- Data that is passed to Javascript
            keybind = "F6",                 -- Wheel keybind to use (case sensitive, must match entry in keybindControls table)
            lastmenu = 0,
            style = {                               -- Wheel style settings
                sizePx = 600,                       -- Wheel size in pixels
                slices = {                          -- Slice style settings
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 }
                },
                titles = {                          -- Text style settings
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Rye', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Rye', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Rye', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 64,
                    height = 64
                }
            },
            wheels = {			-- Array of wheels to display
			    {
                    navAngle = 150,
                    minRadiusPercent = 0.0,
                    maxRadiusPercent = 0.02,
                    labels = {"imgsrc:close.png"},
                    commands = {"closemenu"}
                },
                {
                    navAngle = 270,                 -- Oritentation of wheel
                    minRadiusPercent = 0.25,         -- Minimum radius of wheel in percentage
                    maxRadiusPercent = 0.55,         -- Maximum radius of wheel in percentage
                    labels = {"imgsrc:job.png", "imgsrc:endemote.png", "imgsrc:misc.png", "imgsrc:reload.png", "imgsrc:cloths.png", "imgsrc:walkstyle.png", "imgsrc:emote.png"},
                    commands = {"job", "annullere", "other", "rc", "clothingmenu", "walkstyle", "animations"}
                }
            }
        }
    }
}

subMenuConfigs = {
    ['job'] = {
        data = {
            keybind = "F6",
            lastmenu = "mainmenu",
            style = {
                sizePx = 600,                       -- Wheel size in pixels
                slices = {                          -- Slice style settings
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.80 }
                },
                titles = {                          -- Text style settings
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 64,
                    height = 64
                }
            },
            wheels = {
			     {
                    navAngle = 150,
                    minRadiusPercent = 0.0,
                    maxRadiusPercent = 0.02,
                    labels = {"imgsrc:close.png"},
                    commands = {"closemenu"}
                },
                {
                    navAngle = 270,
                    minRadiusPercent = 0.25,
                    maxRadiusPercent = 0.65,
                    labels = {"imgsrc:sjob.png", "imgsrc:id.png", "imgsrc:pb.png", "imgsrc:doctor.png", "imgsrc:police.png", "imgsrc:callp.png", "imgsrc:calld.png","imgsrc:ca.png"},
                    commands = {"showjob", "idcard", "paybills ","med", "mmenu", "alertpolice", "alertdoctor","calert"}
                },
            }
        }
    },
    ['clothingmenu'] = {
        data = {
            keybind = "F6",
            lastmenu = "mainmenu",
            style = {
                sizePx = 600,                       -- Wheel size in pixels
                slices = {                          -- Slice style settings
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.80 }
                },
                titles = {                          -- Text style settings
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 64,
                    height = 64
                }
            },
            wheels = {
			     {
                    navAngle = 150,
                    minRadiusPercent = 0.0,
                    maxRadiusPercent = 0.02,
                    labels = {"imgsrc:close.png"},
                    commands = {"closemenu"}
                },
                {
                    navAngle = 270,
                    minRadiusPercent = 0.15,
                    maxRadiusPercent = 0.45,
                    labels = {"imgsrc:sleeves.png", "imgsrc:coller.png", "imgsrc:bandana.png", "imgsrc:hat.png", "imgsrc:eyeware.png", "imgsrc:mask.png", "imgsrc:neckwear.png", "imgsrc:undress.png", "imgsrc:dress.png"},
                    commands = {"sleevesx", "sleeves2x", "bandanax", "hatx", "eyewearx", "maskx", "neckwearx",  "undressx", "dressx"}
                },
                {
                    navAngle = 270,
                    minRadiusPercent = 0.45,
                    maxRadiusPercent = 0.80,
                    labels = {"imgsrc:suspender.png", "imgsrc:vest.png", "imgsrc:coat.png", "imgsrc:closedcoat.png", "imgsrc:bow1.png", "imgsrc:armor.png", "imgsrc:poncho.png", "imgsrc:cloak.png", "imgsrc:glove.png", "imgsrc:ring.png", "imgsrc:bracelet.png", "imgsrc:tie.png", "imgsrc:shirt.png"},
                    commands = {"suspenderx", "vestx", "coatx", "ccoatx", "bowx", "armorx", "ponchox", "cloackx", "glovex", "ringsx", "braceletx", "necktiesx", "shirtx"}
                },
                {
                    navAngle = 270,
                    minRadiusPercent = 0.80,
                    maxRadiusPercent = 1.00,
                    labels = { "imgsrc:satchels.png", "imgsrc:gunbelt.png", "imgsrc:belt.png", "imgsrc:buckle.png", "imgsrc:pants.png", "imgsrc:skirt.png", "imgsrc:chaps.png", "imgsrc:boots.png", "imgsrc:spurs.png", "imgsrc:spats.png"},
                    commands = { "satchelsx", "gunbeltaccsx", "beltx", "bucklex", "pantx", "skirtx", "chapx", "bootsx", "spursx", "spatsx"}
                },
            }
        }
    },

    ['other'] = {
        data = {
            keybind = "F6",
            lastmenu = "mainmenu",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 }
                },
                titles = {
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 64,
                    height = 64
                }
            },
            wheels = {
			    {
                    navAngle = 150,
                    minRadiusPercent = 0.0,
                    maxRadiusPercent = 0.02,
                    labels = {"imgsrc:close.png"},
                    commands = {"closemenu"}
                },
                {
                    navAngle = 270,
                    minRadiusPercent = 0.25,
                    maxRadiusPercent = 0.65,
                    labels = {"imgsrc:hud.png", "imgsrc:poker.png", "imgsrc:dwagon.png", "imgsrc:cbird.png", "imgsrc:flipc.png", "imgsrc:forcast.png", "imgsrc:chat.png", "imgsrc:race.png", "imgsrc:rps.png", "imgsrc:dice.png", "imgsrc:pet.png"},
                    commands = {"hud", "poker 1", "dv", "callbird", "flipcoin", "forecast", "togglechat", "race", "rps", "dice 3", "petmenu"}
                },
                
            }
        }
    },
    ['walkstyle'] = {
        data = {
            keybind = "F6",
            lastmenu = "mainmenu",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 }
                },
                titles = {
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 64,
                    height = 64
                }
            },
            wheels = {
			     {
                    navAngle = 150,
                    minRadiusPercent = 0.0,
                    maxRadiusPercent = 0.02,
                    labels = {"imgsrc:close.png"},
                    commands = {"closemenu"}
                },
                {
                    navAngle = 270,
                    minRadiusPercent = 0.25,
                    maxRadiusPercent = 0.65,
                    labels = {"imgsrc:casual.png", "imgsrc:crazy.png", "imgsrc:drunkw.png", "imgsrc:erider.png", "imgsrc:flam.png", "imgsrc:horn.png", "imgsrc:gslinger.png", "imgsrc:inquisitive.png", "imgsrc:refined.png", "imgsrc:stype.png", "imgsrc:veteran.png", "imgsrc:default.png"},
                    commands = {"walkcasul ", "walkcrazy", "walkdrunk", "walkeasy", "walkflamboyant", "walkgreenhorn", "walkgunslinger", "walkinquisitive", "walkrefined", "walksilentType", "walkveteran", "walkremove"}
                },
                
            }
        }
    },
    ['he'] = {
        data = {
            keybind = "F6",
            lastmenu = "mainmenu",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 }
                },
                titles = {
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 64,
                    height = 64
                }
            },
            wheels = {
                {
                    navAngle = 270,
                    minRadiusPercent = 0.25,
                    maxRadiusPercent = 0.65,
                    labels = {"Horse drink ", "Horse Rest", "Horse Sleep", "Horse Wallow"},
                    commands = {"horsedrink ", "horserest", "horsesleep", "horsewallow"}
                },
                
            }
        }
    },            
    ['animations'] = {
        data = {
            keybind = "F6",
            lastmenu = "mainmenu",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 }
                },
                titles = {
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 64,
                    height = 64
                }
            },
            wheels = {
			     {
                    navAngle = 150,
                    minRadiusPercent = 0.0,
                    maxRadiusPercent = 0.02,
                    labels = {"imgsrc:close.png"},
                    commands = {"closemenu"}
                },
                {
                    navAngle = 270,                 -- Oritentation of wheel
                    minRadiusPercent = 0.25,         -- Minimum radius of wheel in percentage
                    maxRadiusPercent = 0.65,         -- Maximum radius of wheel in percentage
                    labels = {"imgsrc:greeting.png", "imgsrc:actions.png", "imgsrc:hurt.png", "imgsrc:standing.png",  "imgsrc:dance.png", "imgsrc:mixed.png","imgsrc:shared.png"},
                    commands = {"howdy", "handlinger", "skadet", "stående", "danse", "blandet","shared"}
                },
                
            }
        }
    },

    ['shared'] = {
        data = {
            keybind = "F6",
            lastmenu = "animations",
            style = {
                sizePx = 600,                       -- Wheel size in pixels
                slices = {                          -- Slice style settings
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.80 }
                },
                titles = {                          -- Text style settings
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 64,
                    height = 64
                }
            },
            wheels = {
                {
                    navAngle = 270,
                    minRadiusPercent = 0.25,
                    maxRadiusPercent = 0.55,
                    labels = { "imgsrc:dance.png"},
                    commands = { "shareddance1"}
                },
               --[[  {
                    navAngle = 270,
                    minRadiusPercent = 0.55,
                    maxRadiusPercent = 0.9,
                    labels = {"Neutral", "Gentle Wave", "Discreet Wave", "Friendly Wave", "Hyped Wave", "Sarcastic", "Humble", "Smooth"},
                    commands = {"neutralt", "gentlevink", "diskretvink", "venligvink", "hypedvink", "sarkastisk", "ydmyg", "smooth"}
                } ]]
            }
        }
    },
    
    ['howdy'] = {
        data = {
            keybind = "F6",
            lastmenu = "animations",
            style = {
                sizePx = 600,                       -- Wheel size in pixels
                slices = {                          -- Slice style settings
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.80 }
                },
                titles = {                          -- Text style settings
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 64,
                    height = 64
                }
            },
            wheels = {
			     {
                    navAngle = 150,
                    minRadiusPercent = 0.0,
                    maxRadiusPercent = 0.02,
                    labels = {"imgsrc:close.png"},
                    commands = {"closemenu"}
                },
                {
                    navAngle = 270,
                    minRadiusPercent = 0.25,
                    maxRadiusPercent = 0.55,
                    labels = { "imgsrc:tip1.png", "imgsrc:tip2.png", "imgsrc:tip3.png", "imgsrc:tip4.png", "imgsrc:bow.png", "imgsrc:nod.png", "imgsrc:tough.png"},
                    commands = { "gentletip", "diskrettip","svirphat", "tiphat", "fancybuk", "nik", "tough"}
                },
                {
                    navAngle = 270,
                    minRadiusPercent = 0.55,
                    maxRadiusPercent = 0.9,
                    labels = {"imgsrc:neutral.png", "imgsrc:gentlewave.png", "imgsrc:discreetwave.png", "imgsrc:friendlywave.png", "imgsrc:hypedwave.png", "imgsrc:sarcastic.png", "imgsrc:humble.png", "imgsrc:smooth.png"},
                    commands = {"neutralt", "gentlevink", "diskretvink", "venligvink", "hypedvink", "sarkastisk", "ydmyg", "smooth"}
                }
            }
        }
    },
    ['handlinger'] = {
        data = {
            keybind = "F6",
            lastmenu = "animations",
            style = {
                sizePx = 600,                       -- Wheel size in pixels
                slices = {                          -- Slice style settings
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.80 }
                },
                titles = {                          -- Text style settings
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 64,
                    height = 64
                }
            },
            wheels = {
			    {
                    navAngle = 150,
                    minRadiusPercent = 0.0,
                    maxRadiusPercent = 0.02,
                    labels = {"imgsrc:close.png"},
                    commands = {"closemenu"}
                },
                {
                    navAngle = 270,
                    minRadiusPercent = 0.25,
                    maxRadiusPercent = 0.55,
                    labels = { "imgsrc:laydown.png", "imgsrc:sit.png", "imgsrc:sweat.png", "imgsrc:freeze.png", "imgsrc:knock.png", "imgsrc:operation.png", "imgsrc:cry.png", "imgsrc:mourn.png"},
                    commands = {"sove", "sidde", "svede", "fryse", "bankpå", "betjening", "græde", "sørge"}
                },
                {
                    navAngle = 270,
                    minRadiusPercent = 0.55,
                    maxRadiusPercent = 0.9,
                    labels = {"imgsrc:surrender.png", "imgsrc:hostage.png", "imgsrc:handsup.png", "imgsrc:caught.png", "imgsrc:cover.png", "imgsrc:scared.png", "imgsrc:piss.png", "imgsrc:full2.png", "imgsrc:search.png", "imgsrc:point.png", "imgsrc:freezingcold.png", "imgsrc:overhere.png"},
                    commands = {"overgiv", "Gidsel", "hænderop", "fanget", "dækning", "vige", "pisse", "fuld", "søge", "pege", "hidkald", "fagter"}
                }
            }
        }
    },
    ['skadet'] = {
        data = {
            keybind = "F6",
            lastmenu = "animations",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 }
                },
                titles = {
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 64,
                    height = 64
                }
            },
            wheels = {
			    {
                    navAngle = 150,
                    minRadiusPercent = 0.0,
                    maxRadiusPercent = 0.02,
                    labels = {"imgsrc:close.png"},
                    commands = {"closemenu"}
                },
                {
                    navAngle = 270,
                    minRadiusPercent = 0.25,
                    maxRadiusPercent = 0.55,
                    labels = { "imgsrc:arm.png", "imgsrc:shoulder.png", "imgsrc:hip.png", "imgsrc:chest.png", "imgsrc:chest1.png", "imgsrc:neck.png", "imgsrc:back.png"},
                    commands = { "armen", "skulder", "benet", "brystet", "hovedet", "halsen", "ryggen"}
                },
                {
                    navAngle = 288,
                    minRadiusPercent = 0.55,
                    maxRadiusPercent = 0.9,
                    labels = {"imgsrc:dying.png", "imgsrc:itches.png", "imgsrc:uncomfortable.png", "imgsrc:throwup.png", "imgsrc:collapse.png", "imgsrc:damage1.png", "imgsrc:damage2.png", "imgsrc:sick.png"},
                    commands = {"døende", "klørsig", "utilpas", "kastop", "kollaps", "lide1", "lide2", "syg"}
                }
            }
        }
    },
    ['danse'] = {
        data = {
            keybind = "F6",
            lastmenu = "animations",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 }
                },
                titles = {
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 64,
                    height = 64
                }
            },
            wheels = {
			    {
                    navAngle = 150,
                    minRadiusPercent = 0.0,
                    maxRadiusPercent = 0.02,
                    labels = {"imgsrc:close.png"},
                    commands = {"closemenu"}
                },
                {
                    navAngle = 270,
                    minRadiusPercent = 0.25,
                    maxRadiusPercent = 0.55,
                    labels = { "imgsrc:jig.png", "imgsrc:awkward.png","imgsrc:carefree.png","imgsrc:smart.png","imgsrc:confident.png","imgsrc:drunk.png","imgsrc:drunk2.png","imgsrc:confident3.png","imgsrc:wild2.png","imgsrc:drunk3.png"},
                    commands = { "djig","dakavet","dubekymret","dsmart","dselvsikkert","dance1","dance2","dance3","dance4","dance5"}
                },
                {
                    navAngle = 288,
                    minRadiusPercent = 0.55,
                    maxRadiusPercent = 0.9,
                    labels = {"imgsrc:full.png","imgsrc:simple.png","imgsrc:formal.png","imgsrc:graceful.png","imgsrc:thehassle.png","imgsrc:hyped.png", "imgsrc:cheerful.png", "imgsrc:wild.png","imgsrc:old.png","imgsrc:confident2.png","imgsrc:carefree2.png","imgsrc:awkward2.png"},
                    commands = {"dfuld","dsimpelt","dformelt","dyndefuldt","dbesværet","dhyped", "dmuntert", "dvildt","dance6","dance7","dance8","dance9"}
                }
            }
        }
    },
    ['stående'] = {
        data = {
            keybind = "F6",
            lastmenu = "animations",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 }
                },
                titles = {
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 64,
                    height = 64
                }
            },
            wheels = {
			     {
                    navAngle = 150,
                    minRadiusPercent = 0.0,
                    maxRadiusPercent = 0.02,
                    labels = {"imgsrc:close.png"},
                    commands = {"closemenu"}
                },
                {
                    navAngle = 270,
                    minRadiusPercent = 0.25,
                    maxRadiusPercent = 0.55,
                    labels = { "imgsrc:nervous.png", "imgsrc:drunke.png", "imgsrc:seductive.png", "imgsrc:feminine.png", "imgsrc:careless.png", "imgsrc:impatient.png", "imgsrc:pending.png"},
                    commands = { "nervøs", "beruset", "forførende", "feminint", "careless", "utålmodig", "opgivende", "afventende"}
                },
                {
                    navAngle = 288,
                    minRadiusPercent = 0.55,
                    maxRadiusPercent = 0.9,
                    labels = {"imgsrc:handsbelt.png", "imgsrc:handsside.png", "imgsrc:badass.png", "imgsrc:crossarms.png", "imgsrc:confused.png", "imgsrc:abandoned.png", "imgsrc:guard.png", "imgsrc:clear.png", "imgsrc:angry.png", "imgsrc:sad.png"},
                    commands = {"hænderbælte", "hænderside", "badass", "krydsarme", "forvirret", "opgivende", "vagt", "klar", "vred", "trist"}
                }
            }
        }
    },
    ['blandet'] = {
        data = {
            keybind = "F6",
            lastmenu = "animations",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#ff0000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 }
                },
                titles = {
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 64,
                    height = 64
                }
            },
            wheels = {
			    {
                    navAngle = 150,
                    minRadiusPercent = 0.0,
                    maxRadiusPercent = 0.02,
                    labels = {"imgsrc:close.png"},
                    commands = {"closemenu"}
                },
                {
                    navAngle = 270,
                    minRadiusPercent = 0.25,
                    maxRadiusPercent = 0.55,
                    labels = { "imgsrc:so.png", "imgsrc:please.png", "imgsrc:quietnow.png", "imgsrc:stinky.png", "imgsrc:shh.png", "imgsrc:twofingers.png", "imgsrc:fightme.png", "imgsrc:keepup.png", "imgsrc:yeeha.png", "imgsrc:angry2.png"},
                    commands = { "tak", "please", "rolignu", "puha", "shh", "fuckdig", "fightme", "følgmed", "yeeha", "satans"}
                },
                {
                    navAngle = 288,
                    minRadiusPercent = 0.55,
                    maxRadiusPercent = 0.9,
                    labels = {"imgsrc:sneaky.png", "imgsrc:chicken.png", "imgsrc:thumbsup.png", "imgsrc:thumbsdown.png", "imgsrc:gorilla.png", "imgsrc:careful.png", "imgsrc:flap.png", "imgsrc:laughat.png", "imgsrc:laugh.png", "imgsrc:challenge.png", "imgsrc:airkisses.png", "imgsrc:mirror.png", "imgsrc:notepad.png", "imgsrc:checkout.png", "imgsrc:flex.png", "imgsrc:threat.png"},
                    commands = {"lusket", "kylling", "thumbsup", "thumbsdown", "gorilla", "holdøje", "klap", "grineaf", "grine", "udfordre", "luftkys", "spejl", "notesblok", "tjekur", "flex", "trussel"}
                }
            }
        }
    },
        

}