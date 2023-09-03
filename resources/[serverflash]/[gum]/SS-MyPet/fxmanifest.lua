fx_version "bodacious"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
author '🆂🅸🆁🅴🅲#0336'
description 'SS-MyPet'
version '1.5'
lua54 'yes'

ui_page 'html/index.html'

files {
	'html/index.html',
	'html/script.js',
    'html/main2.css',
    'html/main.js',
	'html/*.png',
    'html/images/*.png',
	'html/main.css',
	'html/sound.mp3',
}

client_scripts {
	'config.lua',
	'c/c.lua',
}

server_scripts {
	'config.lua',
	's/s.lua',
}

escrow_ignore {
    'config.lua'
}
dependency '/assetpacks'