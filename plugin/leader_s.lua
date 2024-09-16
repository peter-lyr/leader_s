require 'which-key'.register {
  ['<leader>s'] = { name = 'telescope', },
  ['<leader>sh'] = { '<cmd>Telescope help_tags<cr>', 'help_tags', mode = { 'n', 'v', }, },
  ['<leader>sb'] = { '<cmd>Telescope builtin<cr>', 'builtin', mode = { 'n', 'v', }, },
  ['<leader>se'] = { function() require 'f'.telescope_extras() end, 'builtin', mode = { 'n', 'v', }, },
  ['<leader>s<leader>'] = { '<cmd>Telescope file_browser<cr>', 'file_browser', mode = { 'n', 'v', }, },
}
