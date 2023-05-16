

return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    {'nvim-lua/plenary.nvim'},
    {'nvim-telescope/telescope-fzf-native.nvim', build = 'make'},
  },
  cmd = {'Telescope'},
  init = function ()
    local keymap = vim.keymap.set
    -- See :help telescope.builtin
    keymap('n', '<leader>?', '<cmd>Telescope oldfiles<cr>')
    keymap('n', '<leader><space>', '<cmd>Telescope buffers<cr>')
    keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
    keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
    keymap('n', '<leader>fd', '<cmd>Telescope diagnostics<cr>')
    keymap('n', '<leader>fs', '<cmd>Telescope current_buffer_fuzzy_find<cr>')
  end,
  config = function()
    require('telescope').load_extension('fzf')
  end
}



