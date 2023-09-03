
author 'Melvin'
description 'Death Scenes by Macabre REDM'

version '1.0'
lua54 'yes' 


fx_version 'adamant'
game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
 

client_scripts { 
    'config.lua',
    'animation.lua',
    'client.lua'
 }
 
 
 files {
    'ui/*',
    'ui/assets/*',
    'ui/assets/fonts/*'
}
    
ui_page 'ui/index.html'

server_scripts { }
 
shared_scripts {}
 
escrow_ignore { }
 
dependency { }