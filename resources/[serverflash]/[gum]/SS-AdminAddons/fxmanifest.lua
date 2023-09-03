fx_version "bodacious"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
author '🆂🅸🆁🅴🅲#0336'
description 'SS-ADMINADDONS'
version '1.0'
lua54 'yes'

dependency 'yarn'

ui_page 'html/index.html'

files {
	'html/index.html',
	'html/script.js',
    'html/main2.css',
    'html/main.js',
	'html/*.png',
    'html/images/*.png',
	'html/main.css',
	'html/notify.mp3',
}

client_scripts {
    'config.lua',
    'c/report.lua',
    'c/protection.lua',    
}

server_scripts {
  '@mysql-async/lib/MySQL.lua',   
  'config.lua',   
  's/report.lua',  
  's/protection.lua',      
}

escrow_ignore {
    'config.lua'
}
dependency '/assetpacks'