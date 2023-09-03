fx_version 'bodacious'
game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
lua54 'yes'


client_scripts {
  -- Implement your Dataview Path here.
  --'@NewDawn_Core/NewDawn_DataView/dataview.lua',
  'config.lua',
  'client.lua',
  'client.js',
}

server_scripts {
  'config.lua',
  'server.lua',
}

escrow_ignore {
	'config.lua',
	'client.js',
}


dependency '/assetpacks'