
fx_version 'adamant'
game 'gta5'
author 'Watson'

-----------------------------------------------------------
--                        Script                       --
-----------------------------------------------------------

lua54 'yes'

escrow_ignore {
	'config.lua',
  'wpolice.sql',
  'client/cl_PropsPolice.lua'
}

shared_script "config.lua"

client_scripts {
  "src/RMenu.lua",
  "src/menu/RageUI.lua",
  "src/menu/Menu.lua",
  "src/menu/MenuController.lua",
  "src/components/*.lua",
  "src/menu/elements/*.lua",
  "src/menu/items/*.lua",
  "src/menu/panels/*.lua",
  "src/menu/windows/*.lua",
}

client_scripts {
  'client/**.lua',
}

server_scripts {
  '@mysql-async/lib/MySQL.lua',
  'server/**.lua',
}


dependency '/assetpacks'