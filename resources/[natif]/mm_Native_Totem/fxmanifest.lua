
author 'Melvin'
description 'Native Totem Macabre REDM'

version '1.0'
lua54 'yes' 


fx_version 'adamant'
game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
 

client_scripts { 
    'config.lua',
    'animation.lua',
    'build_animation.lua',
    'client.lua'
 }
 
 
 files {
 'stream/*.ytyp'
}
    

data_file 'DLC_ITYP_REQUEST' 'stream/*.ytyp'

ui_page { }

server_scripts { }
 
shared_scripts {}
 
escrow_ignore { }
 
dependency { }