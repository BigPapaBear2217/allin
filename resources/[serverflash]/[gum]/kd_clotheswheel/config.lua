-- Menu configuration, array of menus to display
Config = {}
Config.OpenKey = GetHashKey('INPUT_SELECT_QUICKSELECT_SECONDARY_LONGARM')
Config.CloseAfterSwitch = true --Close the wheel when player turn on/off clothes
Config.PlayAnim = true
Config.Framework = "Custom" --possible values : "RedEM", "VORP", "QBR", "Custom", "RedEM2023"

Config.Menus = {                                 -- Data that is passed to Javascript
    style = {                               -- Wheel style settings
        sizePx = 800,                       -- Wheel size in pixels
        slices = {                          -- Slice style settings
            hover = { ['fill'] = '#ff0000', ['opacity'] = 0.90 },
            selected = { ['fill'] = '#ff0000', ['opacity'] = 0.80 }
        },
        titles = {                          -- Text style settings
            default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font-size'] = 16, ['font-weight'] = 'bold' },
            hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font-size'] = 16, ['font-weight'] = 'bold' },
            selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font-size'] = 16, ['font-weight'] = 'bold' }
        },
        icons = {
            width = 100,
            height = 100
        }
    },
    wheels = {                              -- Array of wheels to display
        {
            navAngle = 270,                 -- Oritentation of wheel
            minRadiusPercent = 0.5,         -- Minimum radius of wheel in percentage
            maxRadiusPercent = 0.8,         -- Maximum radius of wheel in percentage
            labels = {},
        },
        {
            minRadiusPercent = 0.8,
            maxRadiusPercent = 1.0,     
            labels = {}
        },
        {
            minRadiusPercent = 0.8,
            maxRadiusPercent = 1.0,
            labels = {}
        }
    }
}

Config.Clothes = {
    ["gunbelts"] = true,
    ["spats"] = true,
    ["gloves"] = true,
    ["satchels"] = true,
    ["belts"] = true,
    ["dresses"] = true,
    ["hats"] = true,
    ["boots"] = true,
    ["vests"] = true,
    ["chaps"] = true,
    ["boot_accessories"] = true,
    ["coats_closed"] = true,
    ["armor"] = true,
    ["jewelry_bracelets"] = true,
    ["ponchos"] = true,
    ["holsters_left"] = true,
    ["jewelry_rings_left"] = true,
    ["cloaks"] = true,
    ["neckwear"] = true,
    ["neckties"] = true,
    ["pants"] = true,
    ["loadouts"] = true,
    ["coats"] = true,
    ["masks"] = true,
    ["jewelry_rings_right"] = true,
    ["accessories"] = true,
    ["suspenders"] = true,
    ["belt_buckles"] = true,
    ["shirts_full"] = true,
    ["eyewear"] = true,
    ["gauntlets"] = true,
    ["badges"] = true,
    ["skirts"] = true,
    ["name"] = false
}

-- Animation function
function PlayAnimation(category)
    if not Config.PlayAnim then return end
    local dict = ""
    local anim = ""
    local timer = 0
    local offset = 0.0
    local flag = 0
    local flagtop = 24

    if category == "gunbelts" then
        if not Clothes[category].active then
            dict = "script_respawn@one_shot@fullbody@generic@unarmed@stand_adjust_belt@a"
            flag = flagtop
            anim = "respawn_action"
            timer = 1000
        end
    elseif category == "spats" then
    elseif category == "gloves" then
        if not Clothes[category].active then
            dict = "mech_loco_m@character@arthur@fidgets@item_selection@gloves"
            flag = flagtop
            anim = "gloves_b"
            timer = 500
        end
    elseif category == "satchels" then
    elseif category == "belts" then
    elseif category == "dresses" then
    elseif category == "hats" then
        dict = "mech_respawn@nap_grnd"
        anim = "getup_v1_player"
        offset = 0.6
        timer = 900
        flag = flagtop
        if not Clothes[category].active then
            timer = 800
        end
    elseif category == "boots" then
        dict = "script_respawn@one_shot@fullbody@generic@unarmed@stand_boot_clean@a"
        anim = "respawn_action"
        timer = 500
    elseif category == "vests" then
    elseif category == "chaps" then
    elseif category == "boot_accessories" then
    elseif category == "coats_closed" then
    elseif category == "armor" then
    elseif category == "jewelry_bracelets" then
    elseif category == "ponchos" then
    elseif category == "holsters_left" then
    elseif category == "jewelry_rings_left" then
    elseif category == "cloaks" then
    elseif category == "neckwear" then
        dict = "mech_inventory@clothing@bandana"
        flag = flagtop
        if Clothes[category].active then
            anim = "neck_2_satchel"
            timer = 1000
        else
            anim = "satchel_2_neck"
            timer = 2000
        end
    elseif category == "neckties" then
    elseif category == "pants" then
    elseif category == "loadouts" then
    elseif category == "coats" then
    elseif category == "masks" then
        dict = "mech_inventory@clothing@mask"
        flag = flagtop
        if Clothes[category].active then
            anim = "face_2_satchel"
            timer = 1000
        else
            anim = "satchel_2_face"
            timer = 2000
        end
    elseif category == "jewelry_rings_right" then
    elseif category == "accessories" then
    elseif category == "suspenders" then
    elseif category == "belt_buckles" then
    elseif category == "shirts_full" then
    elseif category == "eyewear" then
        dict = "amb_wander@code_human_wander@male@generic"
        flag = flagtop
        anim = "wipe_eyes_02"
        timer = 1000
    elseif category == "gauntlets" then
    elseif category == "badges" then
    end

    if (dict == "") then return end

    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Wait(0)
    end
   
    TaskPlayAnim(PlayerPedId(), dict, anim, 4.0, -4.0, -1, flag, offset, false, false, false)
    Wait(timer)
end