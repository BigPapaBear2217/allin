author "kad Darem : store.kaddarem.com"
version '1.0.0'

fx_version "adamant"

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

game "rdr3"
lua54 'yes'

escrow_ignore {
  'config.lua',
  'lang.lua'
}

client_scripts {
  'client/variables.lua',
  'client/functions.lua',
  'client/nui.lua',
  'client/client.lua'
}

server_scripts {
  '@oxmysql/lib/MySQL.lua',
  'server/server.lua'
}

shared_script {
  'client/clothes.lua',
  "shared/native.lua",
  'config.lua',
  'lang.lua',
}

ui_page "html/dist/index.html"

files {
	"html/dist/**.html",
	"html/dist/**.js",
	"html/dist/**.css",
	"html/dist/**.ttf",
	"html/dist/**.png",
	"html/dist/**.mp3",
}

dependency '/assetpacks'