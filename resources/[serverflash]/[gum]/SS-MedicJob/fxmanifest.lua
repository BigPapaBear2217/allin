fx_version "bodacious"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
author '🅱🅻🆄🅴🆈🅴🆂#1364'
description 'SS MEDICJOB'
version '1.2.0'
lua54 'yes'

client_scripts {
	'config.lua',
	'c/c.lua',
    'c/commands.lua',
    'c/medicalcabinet.lua'
}

server_scripts {
	'config.lua',
	's/s.lua',
}

escrow_ignore {
    'config.lua'
}
dependency '/assetpacks'