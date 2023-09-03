fx_version 'adamant'

game 'rdr3'

lua54 'yes'

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

exports {
	'getStables',
}
client_scripts {
  "@uiprompt/uiprompt.lua",
  'cfg/config.lua',
  'cfg/full_database.lua',
  'client.lua',
  'clientTag.lua',
}

server_scripts {
  'cfg/config.lua',
  'server.lua',
}
ui_page 'html/index.html'

files {
	'html/*',
	'html/images/*',
	'html/images/acc/*',
	'html/images/speed/*',
	'html/images/turn/*',
	'html/images/state/*',
}

escrow_ignore {
  'cfg/*', 
  'html/*', 
  'client.lua', 
}

dependency '/assetpacks'