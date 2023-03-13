--██╗███╗░░██╗████████╗███████╗██████╗░██╗░█████╗░██████╗░░██████╗
--██║████╗░██║╚══██╔══╝██╔════╝██╔══██╗██║██╔══██╗██╔══██╗██╔════╝
--██║██╔██╗██║░░░██║░░░█████╗░░██████╔╝██║██║░░██║██████╔╝╚█████╗░
--██║██║╚████║░░░██║░░░██╔══╝░░██╔══██╗██║██║░░██║██╔══██╗░╚═══██╗
--██║██║░╚███║░░░██║░░░███████╗██║░░██║██║╚█████╔╝██║░░██║██████╔╝
--╚═╝╚═╝░░╚══╝░░░╚═╝░░░╚══════╝╚═╝░░╚═╝╚═╝░╚════╝░╚═╝░░╚═╝╚═════╝░

-- Test shell configuration (You can see the command in config_client.lua)
Config.Test = {
   --[[ ["house"] = { -- Test name.
      obj = `shell_michael` -- Test shell.
   }, ]]
}

Config.Addons = { -- Add your custom interiors here!

    -- From update 2.1.0, the shells of our partner k4mb1, of a unique quality, were added by default (https://github.com/quasar-scripts/k4mb1shellstarter).
    -- If you want to add more shells, you can access quasar_shells below or maybe mythic_interiors.
    {
      nameTier = `standardmotel_shell`,
      numberTier = 1,
      offset = { x = -0.473511, y = -2.465332, z = 1, h = 358.633972168 },
      label = 'Modern Motel'
   },
   {
      nameTier = `modernhotel_shell`,
      numberTier = 2,
      offset = { x = 4.991730, y = 4.320801, z = 1.2, h = 358.633972168 },
      label = 'Standart Motel'
   },
   {
      nameTier = `furnitured_midapart`,
      numberTier = 3,
      offset = { x = 1.481842, y = -10.215332, z = 1.2, h = 358.633972168 },
      label = 'Mid Apart'
   },
   {
      nameTier = `shell_garagem`,
      numberTier = 4,
      offset = { x = 13.833588, y = 1.626221, z = 1.2, h = 358.633972168 },
      label = 'Garage'
   },
   {
      nameTier = `shell_office1`,
      numberTier = 5,
      offset = { x = 1.112735, y = 5.006403, z = 2.0, h = 358.633972168 },
      label = 'Office 1'
   },
   {
      nameTier = `shell_store1`,
      numberTier = 6,
      offset = { x = -2.697184, y = 4.684138, z = 1.2, h = 358.633972168 },
      label = 'Store 1'
   },
   {
      nameTier = `shell_warehouse1`,
      numberTier = 7,
      offset = { x = -8.895659, y = 0.169503, z = 1.2, h = 358.633972168 },
      label = 'Warehouse 1'
   },
   {
      nameTier = `container_shell`,
      numberTier = 8,
      offset = { x = 0.099396, y = -5.647644, z = 1.2, h = 358.633972168 },
      label = 'Container'
   },
   {
      nameTier = `shell_michael`,
      numberTier = 9,
      offset = { x = -8.931778, y = 5.695557, z = 10.2, h = 88.078667 },
      label = 'Michael'
   },
   {
      nameTier = `shell_frankaunt`,
      numberTier = 10,
      offset = { x = -0.248180, y = -6.009651, z = 1.8, h = 358.633972168 },
      label = 'Frankaunt'
   },
   {
      nameTier = `shell_ranch`,
      numberTier = 11,
      offset = { x = -1.329970, y = 5.418801, z = 2.5, h = 358.633972168 },
      label = 'Ranch'
   },
   {
      nameTier = `shell_trailer`,
      numberTier = 12,
      offset = { x = -1.457713, y = -1.989568, z = 3.0, h = 358.633972168 },
      label = 'Trailer'
   },
   {
      nameTier = `shell_lester`,
      numberTier = 13,
      offset = { x = -1.606091, y = -5.912278, z = 1.2, h = 358.633972168 },
      label = 'Lester'
   },
   {
      nameTier = `shell_v16mid`,
      numberTier = 14,
      offset = { x = 1.443699, y = -14.254955, z = 1.2, h = 358.633972168 },
      label = 'v16 Mid'
   },
   {
      nameTier = `shell_trevor`,
      numberTier = 15,
      offset = { x = 0.184536, y = -3.859197, z = 1.2, h = 358.633972168 },
      label = 'Trevor'
   },
   {
      nameTier = `shell_v16low`,
      numberTier = 16,
      offset = { x = 4.684745, y = -6.564815, z = 1.2, h = 358.633972168 },
      label = 'v16 Low'
   },

    {
      nameTier = `playerhouse_tier1`,
      numberTier = 17,
      offset = { x = 4.251012802124, y = -15.901171875, z = 2.5, h = 2.2633972168 },
      label = 'House 1'
    },
    {
      nameTier = `trevors_shell`,
      numberTier = 18,
      offset = { x = 0.1, y = -3.9, z = 7.9, h = 358.633972168 },
      label = 'Trevor'
    },
    {
      nameTier = `micheal_shell`,
      numberTier = 19, -- Start from 100 to top
      offset = { x = -10.572736328125, y = 2.65636328125, z = 1.4, h = 265.633972168 },
      label = 'Michael'
    },
    {
      nameTier = `appartment`,
      numberTier = 20, -- Start from 100 to top
      offset = { x = 4.7, y = -6.2, z = 1.2, h = 358.633972168 },
      label = 'Apartment'
    },
    {
      nameTier = `caravan_shell`,
      numberTier = 21, -- Start from 100 to top
      offset = { x = -1.4, y = -2.1, z = 2.3, h = 358.633972168 },
      label = 'Caravan'
    },
    {
      nameTier = `frankelientje`,
      numberTier = 22, -- Start from 100 to top
      offset = { x = 10.8, y = 7.8, z = 6.7, h = 125.5 },
      label = 'Frankelientje'
    },
    {
      nameTier = `tante_shell`,
      numberTier = 23, -- Start from 100 to top
      offset = { x = -0.4, y = -5.7, z = 2.7, h = 358.633972168 },
      label = 'Tante'
    },
}
