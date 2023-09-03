fx_version 'adamant'
game 'rdr3'


rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

ui_page 'NUI/hud.html'

client_script 'SaltyClient.net.dll'

files {
    'SaltyClient.net.pdb',
    'NUI/*',
    'Newtonsoft.Json.dll',
    'config.json'
}

exports {
    'SetEnabled'
}

dependencies {
    'saltychat'
}
