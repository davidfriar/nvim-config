return {
  "nvim-tree/nvim-tree.lua",
  -- lazy = true,
  -- cmd = { "NvimTreeToggle", "NvimTreeFocus" },
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local function open_nvim_tree(data)
      -- local no_name = data.file == "" and vim.bo[data.buf].buftype == ""
      local directory = vim.fn.isdirectory(data.file) == 1
      if not directory then
        return
      end
      if directory then
        vim.cmd.cd(data.file)
      end
      require("nvim-tree.api").tree.open()
    end
    vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

    require("nvim-tree").setup({})
  end,
}
