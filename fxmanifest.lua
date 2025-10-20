fx_version 'cerulean'
game 'gta5'

author 'joshtowell'
description 'dispatch-feed'
version '0.0.1'

shared_scripts {
    'config/shared.lua'
}

client_scripts {
    'client/main.lua',
    'config/client.lua'
}

server_scripts {
    'server/main.lua',
    'config/server.lua'
}

lua54 'yes'
use_fxv2_oal 'yes'