

fx_version "adamant"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

client_scripts {
    'client.lua',
    'config.lua',
}

shared_script 'config.lua'

server_scripts {
    'config.lua',
    'server.lua',
}

ui_page('html/index.html')
files({
	"html/script.js",
	"html/jquery.min.js",
	"html/jquery-ui.min.js",
	"html/styles.css",
	"html/img/*.svg",
	"html/img/*.png",
	"html/index.html",
})


export 'getThirst'
export 'getHunger'