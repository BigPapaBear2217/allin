game 'rdr3'
fx_version 'adamant'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
lua54 'yes'

escrow_ignore {
	'not.js',
	'config.lua',
}

client_scripts {
	'not.js',
	'config.lua',
	'client.lua',
}

server_scripts {
	'not.js',
	'config.lua',
	'server.lua',
}
dependency '/assetpacks'