local F = require 'f'

require 'which-key'.register {
  -- ['<leader>se'] = { function() F.telescope_extras() end, 'builtin', mode = { 'n', 'v', }, },
}

require 'which-key'.register {
  ['<leader>s'] = { name = 'telescope', },
  ['<leader>sh'] = { '<cmd>Telescope help_tags<cr>', 'help_tags', mode = { 'n', 'v', }, },
  ['<leader>sa'] = { '<cmd>Telescope builtin<cr>', 'builtin', mode = { 'n', 'v', }, },

  ['<leader>s<leader>'] = { '<cmd>Telescope file_browser<cr>', 'file_browser', mode = { 'n', 'v', }, },
  ['<leader>su'] = { function() F.fd_sel(F.get_cur_proj_dirs()) end, 'fd_sel', mode = { 'n', 'v', }, },

  ['<leader>sl'] = { '<cmd>Telescope live_grep<cr>', 'live_grep', mode = { 'n', 'v', }, },
  ['<leader>s<localleader>l'] = { function() F.live_grep_sel(F.get_cur_proj_dirs()) end, 'live_grep_sel', mode = { 'n', 'v', }, },

  ['<leader>ss'] = { '<cmd>Telescope grep_string<cr>', 'grep_string', mode = { 'n', 'v', }, },
  ['<leader>s<localleader>s'] = { function() F.grep_string_sel(F.get_cur_proj_dirs()) end, 'grep_string_sel', mode = { 'n', 'v', }, },

  ["<leader>s'"] = { '<cmd>Telescope grep_string<cr>', 'grep_string', mode = { 'n', 'v', }, },
  ['<leader>sb'] = { '<cmd>Telescope buffers<cr>', 'buffers', mode = { 'n', 'v', }, },
  ['<leader>sp'] = { '<cmd>Telescope project<cr>', 'project', mode = { 'n', 'v', }, },
}
