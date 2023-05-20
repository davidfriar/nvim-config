return {
  'nvim-lualine/lualine.nvim',
  name = 'lualine',
  event = 'VeryLazy',
  opts = { -- See :help lualine.txt
    options = {
      theme = 'gruvbox-baby',
      icons_enabled = true,
      component_separators = { left = '', right = '' },
      section_separators = { left = '', right = '' },
      disabled_filetypes = {
        statusline = {'NvimTree'}
      },
    },
    sections = {
      lualine_c = {
        { 'filename', path=1 }
      },
    },
  },
  init = function()
    vim.opt.showmode = false
  end
}
