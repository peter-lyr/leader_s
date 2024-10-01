local F = require 'f'

require 'which-key'.register {
  -- ['<leader>se'] = { function() F.telescope_extras() end, 'builtin', mode = { 'n', 'v', }, },
}

require 'which-key'.register {
  ['<leader>s'] = { name = 'telescope', },
  ['<leader>sh'] = { '<cmd>Telescope help_tags<cr>', 'help_tags', mode = { 'n', 'v', }, },
  ['<leader>sa'] = { '<cmd>Telescope builtin<cr>', 'builtin', mode = { 'n', 'v', }, },

  ['<leader>sw'] = { '<cmd>Telescope file_browser<cr>', 'file_browser', mode = { 'n', 'v', }, },
  ['<leader>s<leader>'] = { function() F.telescope_sel(F.get_cur_proj_dirs(), 'fd') end, 'fd_sel', mode = { 'n', 'v', }, },

  ['<leader>sl'] = { '<cmd>Telescope live_grep<cr>', 'live_grep', mode = { 'n', 'v', }, },
  ['<leader>s<localleader>l'] = { function() F.telescope_sel(F.get_cur_proj_dirs(), 'live_grep') end, 'live_grep_sel', mode = { 'n', 'v', }, },

  ['<leader>ss'] = { '<cmd>Telescope grep_string<cr>', 'grep_string', mode = { 'n', 'v', }, },
  ['<leader>s<localleader>s'] = { function() F.telescope_sel(F.get_cur_proj_dirs(), 'grep_string') end, 'grep_string_sel', mode = { 'n', 'v', }, },

  ['<leader>sc'] = { '<cmd>Telescope git_commits<cr>', 'git_commits', mode = { 'n', 'v', }, },
  ['<leader>s<localleader>c'] = { function() F.telescope_sel(F.get_cur_proj_dirs(), 'git_commits') end, 'grep_string_sel', mode = { 'n', 'v', }, },

  ['<leader>sb'] = { '<cmd>Telescope buffers<cr>', 'buffers', mode = { 'n', 'v', }, },
  ['<leader>sp'] = { '<cmd>Telescope project<cr>', 'project', mode = { 'n', 'v', }, },
}
