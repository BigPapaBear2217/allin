fx_version "bodacious"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
author '🆂🅸🆁🅴🅲#0336'
description 'SS STORES'
version '1.0.0'
lua54 'yes'

client_scripts {
	'config.lua',
	'c/c.lua',
    "c/a.lua",
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
	'config.lua',
	's/s.lua',
}

ui_page 'html/index.html'

files {
	'html/index.html',
	'html/assets/css/*.css',
	'html/assets/js/*.js',
	'html/assets/images/*.png'
}

escrow_ignore {
    'config.lua'
}
dependency '/assetpacks'