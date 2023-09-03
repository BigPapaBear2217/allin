fx_version 'cerulean'
game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
lua54 'yes'

name 'flash_harvest'
version '1.0.0'
description 'Script for harvest some items'
author 'FlashStudio'
contact 'Discord : IronFlashStudio#4000'

shared_script 'config.lua'

client_scripts {
    'client/*.lua',
}


server_scripts {
    'server/*.lua',
}

dependencies {
    "vorp_inventory",
}

this_is_a_map "yes"
