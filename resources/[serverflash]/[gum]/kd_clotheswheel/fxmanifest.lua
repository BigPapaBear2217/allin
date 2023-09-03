game 'rdr3'
fx_version 'adamant'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

lua54 'yes'

client_script {
    "config.lua",
    "lang.lua",
    "cloth_hash_names.lua",
    "clotheswheel.lua"
}

escrow_ignore {
   'config.lua',
   'lang.lua'
}

server_script {
    "clotheswheel_s.lua"
}

ui_page "html/menu.html"

files {
	"html/menu.html",
    "html/crock.ttf",
	"html/raphael.min.js",
    "html/wheelnav.min.js",
    "html/img/*.png",
    'html/*.png',
}

dependency '/assetpacks'