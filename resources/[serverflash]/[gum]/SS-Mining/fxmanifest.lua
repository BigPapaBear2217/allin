fx_version "bodacious"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
author '🅱🅻🆄🅴🆈🅴🆂#1364'
description 'SS-Mining'
code 'SSMINING'
version '1.8'
lua54 'yes'

client_scripts {
	'config.lua',
	'c/c.lua',
}

server_scripts {
	'config.lua',
	's/s.lua',
}

shared_scripts {
    'c/utils.lua',
}

escrow_ignore {
    'config.lua'
}
dependency '/assetpacks'