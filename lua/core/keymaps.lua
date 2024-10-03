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
      ["<leader>fb"] = { "<cmd>Telescope file_browser<CR>", "File Browser" },
      ["<leader>fz"] = { "<cmd>Telescope zoxide list<CR>", "File Browser" },

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
    o = {
      [";"] = { name = "Outer Container" },
      ["."] = { name = "Smart Container" },
      [","] = { name = "Previous Container" },
      ["i;"] = { name = "Inner Container" },
    },
  },
  lsp = {
    n = {
      ["gf"] = { "<cmd>Lspsaga lsp_finder<CR>", "LSP Finder" }, -- show definition, references
      ["gd"] = { "<cmd>Lspsaga peek_definition<CR>", "Go to Definition" }, -- see definition and make edits in window
      ["gi"] = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Go to Implementation" }, -- go to implementation
      ["gr"] = { "<cmd>TroubleToggle lsp_references<cr>", "Show References" },
      ["<leader>c"] = { name = "Code" },
      ["<leader>ca"] = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code Actions" }, -- see available code actions
      ["<leader>cl"] = { "<cmd>NicerLensesRun<CR>", "Code Lenses" }, -- see available code actions
      ["<leader>cr"] = { "<cmd>lua require('rainbow-delimiters').toggle(0)<CR>", "Rainbow delimiters" },
      ["<leader>r"] = { name = "Refactor" },
      ["<leader>rn"] = { "<cmd>Lspsaga rename<CR>", "Rename" }, -- smart rename
      ["K"] = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Hover" }, -- show documentation for what is under cursor
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
  haskell = {
    n = {
      ["<leader>h"] = { name = "Haskell" },
      ["<leader>hR"] = { [[<cmd>lua require("haskell-tools").repl.toggle()<CR>]], "Repl for Current Package" },
      ["<leader>hr"] = {
        [[<cmd> lua function() require("haskell-tools").repl.toggle(vim.api.nvim_buf_get_name(0)) end<CR>]],
        "Repl for Current File",
      },
      ["<leader>hq"] = { [[<cmd>lua require("haskell-tools").repl.quit()<CR>]], "Quit Repl" },
      ["<leader>hh"] = { [[<cmd>lua require("haskell-tools").hoogle.hoogle_signature()<CR>]], "Hoogle" },
      ["<leader>he"] = { [[<cmd>lua require("haskell-tools").lsp.buf_eval_all()<CR>]], "Evaluate" },
    },
  },
  crates = {
    n = {
      ["<leader>c"] = { name = "Crates" },
      ["<leader>ct"] = { [[<cmd>lua require("crates").toggle()<CR>]], "Toggle crates" },
      ["<leader>cr"] = { [[<cmd>lua require("crates").reload()<CR>]], "Reload crates" },

      ["<leader>cv"] = { [[<cmd>lua require("crates").show_versions_popup()<CR>]], "Versions" },
      ["<leader>cf"] = { [[<cmd>lua require("crates").show_features_popup()<CR>]], "Features" },
      ["<leader>cd"] = { [[<cmd>lua require("crates").show_dependencies_popup()<CR>]], "Dependencies" },

      ["<leader>cu"] = { [[<cmd>lua require("crates").update_crate()<CR>]], "Update crate" },
      ["<leader>ca"] = { [[<cmd>lua require("crates").update_all_crates()<CR>]], "Update all crates" },
      ["<leader>cU"] = { [[<cmd>lua require("crates").upgrade_crate()<CR>]], "Upgrade crate" },
      ["<leader>cA"] = { [[<cmd>lua require("crates").upgrade_all_crates()<CR>]], "Upgrade all crates" },

      ["<leader>ce"] = { [[<cmd>lua require("crates").expand_plain_crate_to_inline_table()<CR>]], "Expand crate" },
      ["<leader>cE"] = { [[<cmd>lua require("crates").extract_crate_into_table()<CR>]], "Extract crate" },

      ["<leader>cH"] = { [[<cmd>lua require("crates").open_homepage()<CR>]], "Open home page" },
      ["<leader>cR"] = { [[<cmd>lua require("crates").open_repository()<CR>]], "Open repository" },
      ["<leader>cD"] = { [[<cmd>lua require("crates").open_documentation()<CR>]], "Open documentation" },
      ["<leader>cC"] = { [[<cmd>lua require("crates").open_crates_io()<CR>]], "Open crates.io" },
    },
    v = {
      ["<leader>c"] = { name = "Crates" },
      ["<leader>cu"] = { [[<cmd>lua require("crates").update_crates()<CR>]], "Update crates" },
      ["<leader>cU"] = { [[<cmd>lua require("crates").upgrade_crates()<CR>]], "Upgrade crates" },
    },
  },
}
