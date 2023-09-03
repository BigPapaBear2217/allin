fx_version "cerulean"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
game "rdr3"
lua54 "yes"

version '1.0.1'

ui_page "index.html"

files({
	"index.html",
	'door.mp3',
    'Electric_Chair.mp3',
})

client_scripts {
    'config.lua',
    'client/*.lua',
}

server_scripts {
    'config.lua',
    'server/*.lua',
}

escrow_ignore {
    'config.lua',
    'client/weathersync.lua',
    'server/weathersync.lua',
  }
dependency '/assetpacks'