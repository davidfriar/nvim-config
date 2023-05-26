return {
  {
    ":CycleNumber",
    function()
      local n = vim.o.number
      local rn = vim.o.relativenumber
      if n then
        rn = not rn
      end
      vim.o.relativenumber = rn
      vim.o.number = not n
    end,
    description = "Cycle through styles of line numbering",
  },
  {
    ":BrowseFiles",
    function()
      local telescope = require("telescope")
      telescope.load_extension("file_browser")
      vim.cmd("Telescope file_browser")
    end,
    description = "Cycle through styles of line numbering",
  },
}
