fx_version "adamant"

games {"rdr3"}

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

ui_page 'html/index.html'

client_scripts {
    'config.lua',
    'client.lua'
 }
 
 server_scripts {
    'config.lua',
    'server.lua'
 }

files {
    'html/*.html',
    'html/*.png',
    'html/*.jpg',
    'html/*.css',
    'html/*.js'
}