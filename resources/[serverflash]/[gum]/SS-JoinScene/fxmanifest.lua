fx_version "bodacious"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
author '🆂🅸🆁🅴🅲#0336'
description 'SS-JoinScene'
version '1.2.0'
lua54 'yes'

client_scripts {
	'config.lua',
	'c/c.lua',
}

server_scripts {
	'config.lua',
	's/s.lua',
}

ui_page 'html/index.html'

files {
	'html/index.html',
	'html/assets/*.css',
	'html/assets/*.js',
	'html/assets/images/*.png'
}

escrow_ignore {
    'config.lua'
}
dependency '/assetpacks'