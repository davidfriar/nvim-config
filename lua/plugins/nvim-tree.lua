return {
  'nvim-tree/nvim-tree.lua',
  lazy = true,
  cmd = {'NvimTreeToggle', 'NvimTreeFocus'},
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require'nvim-tree'.setup {
    }
  end
}
