return {
  'nvim-lualine/lualine.nvim',
  name = 'lualine',
  event = 'VeryLazy',
  opts = { -- See :help lualine.txt
    options = {
      theme = 'gruvbox',
      icons_enabled = true,
      component_separators = { left = '', right = '' },
      section_separators = { left = '', right = '' },
      disabled_filetypes = {
        statusline = {'NvimTree'}
      }
    }
  },
  init = function()
    vim.opt.showmode = false
  end
}
