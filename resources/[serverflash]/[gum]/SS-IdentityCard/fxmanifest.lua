fx_version "bodacious"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
author '🆂🅸🆁🅴🅲#0336'
description 'SS-IdentityCard'
code "SSIDENTITYCARD"
version '2.1'
lua54 'yes'

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
	'html/assets/images/*.png',
	'html/assets/css/JustSignature.woff',
	'html/assets/css/Handwritten.woff',    
}

dependencies {
    'SS-Inputs'
}

escrow_ignore {
    'config.lua'
}
dependency '/assetpacks'