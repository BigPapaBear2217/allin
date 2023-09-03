fx_version 'bodacious'

game 'rdr3'

lua54 'yes'

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

client_scripts {
  'cfg/config.lua',
  'client.lua',
  'clientTag.lua',
}

server_scripts {
  'cfg/config.lua',
  'server.lua',
}
escrow_ignore {
  'cfg/*', 
  'client.lua', 
}

ui_page 'html/index.html'

files {
    'html/index.js',
    'html/index.css',
    'html/index.html',
    'html/crock.ttf',
    'html/animation.min.css',
    'html/*.png',
    'html/images/*.png',
    'html/*.gif',
}
escrow_ignore {
  'cfg/*', 
  'html/*', 
  'client.lua', 
}

dependency '/assetpacks'