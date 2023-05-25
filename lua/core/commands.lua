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
}
