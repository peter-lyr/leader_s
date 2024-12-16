local F = require 'f'

require 'which-key'.register {
  -- ['<leader>se'] = { function() F.telescope_extras() end, 'builtin', mode = { 'n', 'v', }, },
}

require 'which-key'.register {
  ['<leader>s'] = { name = 'telescope', },
  ['<leader>s<leader>'] = { name = 'telescope.more', },

  ['<leader>s<leader>o'] = { function() F.telescope_sel_sel(F.get_sub_dirs(Work), 'file_browser') end, 'file_browser sel Work', mode = { 'n', 'v', }, },
  ['<leader>s<leader>i'] = { function() F.telescope_sel_sel(F.get_sub_dirs(Life), 'file_browser') end, 'file_browser sel Life', mode = { 'n', 'v', }, },

  ['<leader>s<leader>d'] = { function() F.telescope_sel(F.get_sh_get_folder_path 'desktop', 'fd') end, 'fd sel Desktop', mode = { 'n', 'v', }, },

  ['<leader>sr'] = { function() F.source(StdConfig .. 'lua\\_telescope.lua') end, 'resource telescope', mode = { 'n', 'v', }, },

  ['<leader>sz'] = { '<cmd>Telescope current_buffer_fuzzy_find<cr>', 'current_buffer_fuzzy_find', mode = { 'n', 'v', }, },

  ['<leader>sh'] = { '<cmd>Telescope help_tags<cr>', 'help_tags', mode = { 'n', 'v', }, },
  ['<leader>sa'] = { '<cmd>Telescope builtin<cr>', 'builtin', mode = { 'n', 'v', }, },

  ['<leader>sw'] = { function() F.cmd('Telescope file_browser cwd=%s', F.escape_space(F.get_parent())) end, 'file_browser cur', mode = { 'n', 'v', }, },
  ['<leader>s<leader>w'] = { function() F.telescope_sel(F.get_file_more_dirs(), 'file_browser') end, 'file_browser sel', mode = { 'n', 'v', }, },

  ['<leader>s<leader>f'] = { function() F.telescope_sel(F.get_file_more_dirs(), 'fd') end, 'fd_sel', mode = { 'n', 'v', }, },
  ['<leader>sj'] = { function() F.opened_proj_sel() end, 'opened_proj_sel', mode = { 'n', 'v', }, },

  ['<leader>sl'] = { '<cmd>Telescope live_grep<cr>', 'live_grep', mode = { 'n', 'v', }, },
  ['<leader>s<leader>l'] = { function() F.telescope_sel(F.get_file_more_dirs(), 'live_grep') end, 'live_grep_sel', mode = { 'n', 'v', }, },

  ['<leader>ss'] = { '<cmd>Telescope grep_string<cr>', 'grep_string', mode = { 'n', 'v', }, },
  ['<leader>s<leader>s'] = { function() F.telescope_sel(F.get_file_more_dirs(), 'grep_string') end, 'grep_string_sel', mode = { 'n', 'v', }, },

  ['<leader>sg'] = { name = 'telescope.git', },
  ['<leader>sgc'] = { '<cmd>Telescope git_commits<cr>', 'git_commits', mode = { 'n', 'v', }, },
  ['<leader>sg<leader>c'] = { function() F.telescope_sel(F.get_file_more_dirs(), 'git_commits') end, 'git_commits_sel', mode = { 'n', 'v', }, },

  ['<leader>sgs'] = { '<cmd>Telescope git_status<cr>', 'git_status', mode = { 'n', 'v', }, },
  ['<leader>sg<leader>s'] = { function() F.telescope_sel(F.get_file_more_dirs(), 'git_status') end, 'git_status_sel', mode = { 'n', 'v', }, },

  ['<leader>sgh'] = { '<cmd>Telescope git_branches<cr>', 'git_branches', mode = { 'n', 'v', }, },
  ['<leader>sg<leader>h'] = { function() F.telescope_sel(F.get_file_more_dirs(), 'git_branches') end, 'git_branches_sel', mode = { 'n', 'v', }, },

  ['<leader>sb'] = { function() F.cmd('Telescope buffers cwd=%s', F.get_cwd()) end, 'buffers cwd', mode = { 'n', 'v', }, },
  ['<leader>s<leader>b'] = { '<cmd>Telescope buffers<cr>', 'buffers all', mode = { 'n', 'v', }, },
  ['<leader>sp'] = { '<cmd>Telescope project<cr>', 'project', mode = { 'n', 'v', }, },
}
