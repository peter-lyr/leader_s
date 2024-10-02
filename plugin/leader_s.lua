local F = require 'f'

require 'which-key'.register {
  -- ['<leader>se'] = { function() F.telescope_extras() end, 'builtin', mode = { 'n', 'v', }, },
}

require 'which-key'.register {
  ['<leader>s'] = { name = 'telescope', },
  ['<leader>s<leader>'] = { name = 'telescope.more', },

  ['<leader>sr'] = { function() F.source(StdConfig .. 'lua\\_telescope.lua') end, 'resource telescope', mode = { 'n', 'v', }, },

  ['<leader>sz'] = { '<cmd>Telescope current_buffer_fuzzy_find<cr>', 'current_buffer_fuzzy_find', mode = { 'n', 'v', }, },

  ['<leader>sh'] = { '<cmd>Telescope help_tags<cr>', 'help_tags', mode = { 'n', 'v', }, },
  ['<leader>sa'] = { '<cmd>Telescope builtin<cr>', 'builtin', mode = { 'n', 'v', }, },

  ['<leader>sw'] = { '<cmd>Telescope file_browser<cr>', 'file_browser', mode = { 'n', 'v', }, },
  ['<leader>s<leader>w'] = { function() F.telescope_sel(F.get_cur_proj_dirs(), 'fd') end, 'fd_sel', mode = { 'n', 'v', }, },
  ['<leader>sj'] = { function() F.opened_proj_sel() end, 'opened_proj_sel', mode = { 'n', 'v', }, },

  ['<leader>sl'] = { '<cmd>Telescope live_grep<cr>', 'live_grep', mode = { 'n', 'v', }, },
  ['<leader>s<leader>l'] = { function() F.telescope_sel(F.get_cur_proj_dirs(), 'live_grep') end, 'live_grep_sel', mode = { 'n', 'v', }, },

  ['<leader>ss'] = { '<cmd>Telescope grep_string<cr>', 'grep_string', mode = { 'n', 'v', }, },
  ['<leader>s<leader>s'] = { function() F.telescope_sel(F.get_cur_proj_dirs(), 'grep_string') end, 'grep_string_sel', mode = { 'n', 'v', }, },

  ['<leader>sg'] = { name = 'telescope.git', },
  ['<leader>sgc'] = { '<cmd>Telescope git_commits<cr>', 'git_commits', mode = { 'n', 'v', }, },
  ['<leader>sg<leader>c'] = { function() F.telescope_sel(F.get_cur_proj_dirs(), 'git_commits') end, 'git_commits_sel', mode = { 'n', 'v', }, },

  ['<leader>sgs'] = { '<cmd>Telescope git_status<cr>', 'git_status', mode = { 'n', 'v', }, },
  ['<leader>sg<leader>s'] = { function() F.telescope_sel(F.get_cur_proj_dirs(), 'git_status') end, 'git_status_sel', mode = { 'n', 'v', }, },

  ['<leader>sgh'] = { '<cmd>Telescope git_branches<cr>', 'git_branches', mode = { 'n', 'v', }, },
  ['<leader>sg<leader>h'] = { function() F.telescope_sel(F.get_cur_proj_dirs(), 'git_branches') end, 'git_branches_sel', mode = { 'n', 'v', }, },

  ['<leader>sb'] = { '<cmd>Telescope buffers<cr>', 'buffers', mode = { 'n', 'v', }, },
  ['<leader>sp'] = { '<cmd>Telescope project<cr>', 'project', mode = { 'n', 'v', }, },
}
