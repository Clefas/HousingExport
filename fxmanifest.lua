fx_version 'adamant'
version '0.0.1'
lua54 'yes'
game 'gta5'

shared_scripts {
    'PUT_HERE_YOUR_CONFIG_INTERIORS/dont_touch.lua',
    'PUT_HERE_YOUR_CONFIG_INTERIORS/*.lua'
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'server/*.lua'
}