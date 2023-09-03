fx_version "adamant"
games {"rdr3"}

lua54 'yes'

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

ui_page "ui/index.html"
files {
	"ui/index.html",
	"ui/script.js",
	"ui/style.css",
	"ui/crock.ttf",
	"ui/health.png",
	"ui/stamina.png",
	"ui/hunger.png",
	"ui/thirst.png",
	"ui/horse_health.png",
	"ui/horse_stamina.png",
	"ui/progress.png",
	"ui/*.png",
}

server_scripts {
    'config.lua',
    'server.lua',
}

client_scripts {
	"@uiprompt/uiprompt.lua",
	'config.lua',
	'client.lua',
}

escrow_ignore {
	'config.lua', 
	'client.lua', 
	'html/*',
  }
dependency '/assetpacks'