fx_version "adamant"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

lua54 'yes'

author 'Dietrich | TWH-Scripts' -- https://discord.gg/8KwVa7NYKW
description 'Wild animal spawn'

client_script {
    "config.lua",
	"client.lua",
}
server_script {
	"config.lua",
	"server.lua"
}
