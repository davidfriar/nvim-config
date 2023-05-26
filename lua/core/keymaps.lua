--Remap space as leader key
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = ","

return {
  global = {
    n = {
      -- Leader
      ["<leader>f"] = { name = "Files" },
      ["<leader>ff"] = { "<cmd>Telescope find_files<CR>", "Find Files" },
      ["<leader>fr"] = { "<cmd>Telescope oldfiles<CR>", "Find Recent Files" },
      ["<leader>fg"] = { "<cmd>Telescope live_grep<CR>", "Grep" },
      ["<leader>fb"] = { "<cmd>BrowseFiles<CR>", "File Browser" },

      ["<leader>b"] = { name = "Buffer" },
      ["<leader>bb"] = { "<cmd>Telescope buffers<CR>", "Buffer List" },
      ["<leader>bf"] = { "<cmd>Telescope current_buffer_fuzzy_find<CR>", "Fuzzy Find" },

      ["<leader>z"] = { ":ZenMode<CR>", "Zen Mode" },
      ["<leader>t"] = { ":NvimTreeFocus<CR>", "Tree" },
      ["<leader>T"] = { ":NvimTreeClose<CR>", "Close Tree" },
      ["<leader>n"] = { ":CycleNumber<CR>", "Line Number Style" },
      ["<leader>u"] = { "<cmd>UndotreeToggle<CR>", "Undo Tree" },
      ["<leader>k"] = { "<cmd>Legendary<CR>", "Keybindings etc..." },

      ["<cr>"] = { ":nohlsearch<cr>", "Clear Search Highlight" },
      -- Better window navigation
      ["<C-h>"] = { "<C-w>h", "Move to Window on Left" },
      ["<C-j>"] = { "<C-w>j", "Move to Window Below" },
      ["<C-k>"] = { "<C-w>k", "Move to Window Above" },
      ["<C-l>"] = { "<C-w>l", "Move to Window on Right" },
      -- Resize with arrows
      ["<C-Up>"] = { ":resize +2<CR>", "Increase Window Height" },
      ["<C-Down>"] = { ":resize -2<CR>", "Decrease Window Height" },
      ["<C-Left>"] = { ":vertical resize -2<CR>", "Decrease Window Width" },
      ["<C-Right>"] = { ":vertical resize +2<CR>", "Increase Window Width" },
      -- Navigate buffers
      ["<S-l>"] = { ":bnext<CR>", "Next Buffer" },
      ["<S-h>"] = { ":bprevious<CR>", "Previous Buffer" },
      -- Move text up and down
      ["<A-k>"] = { ":m .-2<CR>==", "Move Line Up" },
      ["<A-j>"] = { ":m .+1<CR>==", "Move Line Down" },
    },
    i = {
      -- Move text up and down
      ["<A-j>"] = { "<Esc>:m .+1<CR>==gi", "Move Line Down" },
      ["<A-k>"] = { "<Esc>:m .-2<CR>==gi", "Move Line Up" },
    },
    v = {
      -- Stay in indent mode
      ["<"] = { "<gv", "Decrease Indent" },
      [">"] = { ">gv", "Increase Indent" },
      -- Move text up and down
      ["<A-j>"] = { ":m .+1<CR>==", "Move Text Down" },
      ["<A-k>"] = { ":m .-2<CR>==", "Move Text Up" },
      ["p"] = { '"_dP', "" },
    },
    x = {
      -- Move text up and down
      ["J"] = { ":move '>+1<CR>gv-gv", "Move Text Down" },
      ["K"] = { ":move '<-2<CR>gv-gv", "Move Text Up" },
      ["<A-j>"] = { ":move '>+1<CR>gv-gv", "Move Text Down" },
      ["<A-k>"] = { ":move '<-2<CR>gv-gv", "Move Text Up" },
    },
    t = {
      -- Better terminal navigation
      ["<C-h>"] = { "<C-\\><C-N><C-w>h", "Move to Window on Left" },
      ["<C-j>"] = { "<C-\\><C-N><C-w>j", "Move to Window Below" },
      ["<C-k>"] = { "<C-\\><C-N><C-w>k", "Move to Window Above" },
      ["<C-l>"] = { "<C-\\><C-N><C-w>l", "Move to Window on Right" },
    },
  },
  lsp = {
    n = {
      ["gf"] = { "<cmd>Lspsaga lsp_finder<CR>", "LSP Finder" }, -- show definition, references
      ["gd"] = { "<cmd>Lspsaga peek_definition<CR>", "Go to Definition" }, -- see definition and make edits in window
      ["gi"] = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Go to Implementation" }, -- go to implementation
      ["gr"] = { "<cmd>TroubleToggle lsp_references<cr>", "" },
      ["<leader>a"] = { "<cmd>Lspsaga code_action<CR>", "Code Actions" }, -- see available code actions
      ["<leader>r"] = { name = "Refactor" },
      ["<leader>rn"] = { "<cmd>Lspsaga rename<CR>", "Rename" }, -- smart rename
      ["K"] = { "<cmd>Lspsaga hover_doc<CR>", "Hover" }, -- show documentation for what is under cursor
      ["<leader>o"] = { "<cmd>Lspsaga outline<CR>", "Toggle Outline" }, -- see outline on right hand side

      ["<leader>d"] = { name = "Diagnostics" },
      ["<leader>dw"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Diagnostics for Workspace" },
      ["<leader>db"] = { "<cmd>TroubleToggle document_diagnostics<cr>", "Diagnostics for Buffer" },
      ["<leader>dc"] = { "<cmd>Lspsaga show_cursor_diagnostics<CR>", "Diagnostics for Cursor" }, -- show diagnostics for cursor
      ["<leader>dl"] = { "<cmd>Lspsaga show_line_diagnostics<CR>", "Diagnostics for Line" }, -- show  diagnostics for line
      ["[d"] = { "<cmd>Lspsaga diagnostic_jump_prev<CR>", "Previous Diagnostic" }, -- jump to previous diagnostic in buffer
      ["]d"] = { "<cmd>Lspsaga diagnostic_jump_next<CR>", "Next Diagnostic" }, -- jump to next diagnostic in buffer
    },
  },
  tsserver = {
    n = {
      ["<leader>rf"] = { ":TypescriptRenameFile<CR>", "Rename File" }, -- rename file and update imports
      ["<leader>ri"] = { ":TypescriptOrganizeImports<CR>", "Organise Imports" }, -- organize imports (not in youtube nvim video)
      ["<leader>ru"] = { ":TypescriptRemoveUnused<CR>", "Remove Unused variables" }, -- remove unused variables (not in youtube nvim video)
    },
  },
}
