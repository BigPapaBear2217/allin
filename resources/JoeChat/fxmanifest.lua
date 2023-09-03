fx_version 'cerulean'
game 'rdr3'
author 'Joe'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

lua54 'yes'

client_scripts {
    'sounds.lua',
}
shared_scripts{
    'config.lua',
    'callback.lua',
    'rpchat.lua'
}

dependencies {
    'chat'
}

files {
    "style.css"
}


chat_theme 'nb-rpchat' {
    styleSheet = 'style.css'

}

