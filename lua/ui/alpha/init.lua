local alpha = require 'alpha'
local startify = require 'alpha.themes.startify'
startify.section.header.val = {
  [[          _         ]],
  [[         (_)        ]],
  [[  __ ___ _ __ ___   ]],
  [[ \ \ / / | '_ ` _ \ ]],
  [[  \ V /| | | | | | |]],
  [[   \_/ |_|_| |_| |_|]],
}

startify.section.footer = {
  { type = 'text', val = 'NinjaVim - Teo' },
}

alpha.setup(startify.opts)
