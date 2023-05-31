local telescope = require("telescope")
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
  -- {
  --   ":BrowseFiles",
  --   function()
  --     print("calling browsefiles")
  --     telescope.load_extension("file_browser")
  --     vim.cmd("Telescope file_browser")
  --     print("done calling browsefiles")
  --   end,
  --   description = "Browse Files in Telescope",
  -- },
}
