fx_version "bodacious"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
author '🆂🅸🆁🅴🅲#0336'
description 'SS-Admin'
code 'SSADMIN'
version '3.4'
lua54 'yes'

dependency 'yarn'

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/*.js',
    'html/sounds/*.ogg',
    'html/*.css',
    'html/img/*.png'
}

shared_scripts {
    'c/utils.lua'
}

client_scripts {
    'config.lua',
	'c/c.lua',
    'c/menu.lua',
    'c/time.lua',
    'c/noclip.lua',
    'c/spectate.lua',
    'c/commands.lua',    
}

server_scripts {
  '@mysql-async/lib/MySQL.lua',   
  'config.lua',  
  's/main.lua',
  's/s.lua',
  's/commands.lua',
  's/time.lua',  
}

escrow_ignore {
    'config.lua'
}

dependency 'SS-AdminAddons'
dependency '/assetpacks'