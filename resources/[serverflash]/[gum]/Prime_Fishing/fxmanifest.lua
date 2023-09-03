fx_version "adamant"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
lua54 'yes'

escrow_ignore {
	'client.js',
	'config.lua',
	'client_shop.lua', 
}
client_scripts {
	'client.js',
	'config.lua',
	'client.lua',  
	'client_shop.lua',  
}

server_scripts {
	'client.js',
	'config.lua',
	'server.lua',
}

exports {
	'GET_TASK_FISHING_DATA',
    'SET_TASK_FISHING_DATA',
    'VERTICAL_PROBE'
}
dependency '/assetpacks'