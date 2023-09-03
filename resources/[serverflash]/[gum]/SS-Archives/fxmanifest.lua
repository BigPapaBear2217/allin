fx_version "bodacious"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
author '🆂🅸🆁🅴🅲#0336'
description 'SS-Archives'
code "SSARCHIVES"
version '2.2'
lua54 'yes'

shared_scripts {
    'c/utils.lua'
}

client_scripts {
	'config.lua',
	'c/c.lua',
}

server_scripts {
	'config.lua',
	's/s.lua',
}

ui_page 'html/UI.html'

files {
	'html/UI.html',
	'html/assets/css/*.css',
	'html/assets/js/*.js',
	'html/css/*.woff',
	'html/assets/images/*.png'
}

escrow_ignore {
    'config.lua'
}
dependency '/assetpacks'