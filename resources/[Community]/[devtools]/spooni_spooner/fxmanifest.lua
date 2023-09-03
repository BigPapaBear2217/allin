fx_version "cerulean"
game 'rdr3'
rdr3_warning "I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships."

name "spooni_spooner"
author "i3ucky"
description "Reworked Entity spawner for RedM"
repository "https://github.com/i3ucky/spooni_spooner"

files {
	"ui/index.html",
	"ui/style.css",
	"ui/script.js",
	"ui/keyboard.ttf"
}

ui_page "ui/index.html"

shared_scripts {
	"config.lua"
}

server_scripts {
	"server.lua"
}


	files {
		"ui/chineserocks.ttf",
		"ui/rdr3.css"
	}

	dependency "uiprompt"
	
	client_script "@uiprompt/uiprompt.lua"

	client_scripts {
		"data/rdr3/animations.lua",
		"data/rdr3/bones.lua",
		"data/rdr3/objects.lua",
		"data/rdr3/spooni.lua",
		"data/rdr3/pedConfigFlags.lua",
		"data/rdr3/peds.lua",
		"data/rdr3/pickups.lua",
		"data/rdr3/propsets.lua",
		"data/rdr3/scenarios.lua",
		"data/rdr3/vehicles.lua",
		"data/rdr3/walkstyles.lua",
		"data/rdr3/weapons.lua"
	}

client_script "client.lua"
