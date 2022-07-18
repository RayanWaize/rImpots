fx_version 'adamant'
game 'gta5'
shared_script 'config.lua'

client_scripts {
    'client.lua'
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'server.lua',
}