return {
  "nvim-lualine/lualine.nvim",
  name = "lualine",
  event = "VeryLazy",
  init = function()
    vim.opt.showmode = false
  end,
  config = function()
    require("lualine").setup({
      -- See :help lualine.txt
      options = {
        theme = "gruvbox-baby-custom",
        icons_enabled = true,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          statusline = { "NvimTree", "alpha" },
        },
      },
      sections = {
        lualine_c = {
          { "filename", path = 1 },
        },
        lualine_x = { "filetype"
 },
        lualine_y = { "fileformat", "encoding"
 },
        lualine_z = { "progress", "location" },
      },
    })
  end,
}
