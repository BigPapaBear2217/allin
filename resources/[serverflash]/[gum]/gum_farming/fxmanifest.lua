fx_version 'bodacious'
lua54 'yes'

game 'rdr3'

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

client_scripts {
  'clientTag.lua',
  'client.lua',
}

server_scripts {
  'server.lua',
}

shared_script 'config.lua'

escrow_ignore {
  'client.lua', 
  'config.lua', 
}
ui_page 'html/index.html'

files {
    'html/index.js',
    'html/index.css',
    'html/index.html',
}

dependency '/assetpacks'