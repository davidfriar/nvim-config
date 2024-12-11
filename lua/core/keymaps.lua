--Remap space as leader key
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = ","

return {
  global = {
    {
      mode = "n",
      { "<leader>f", group = "Files" },
      { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Find Files" },

      { "<leader>fr", "<cmd>Telescope oldfiles<CR>", desc = "Find Recent Files" },
      { "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "Grep" },
      { "<leader>fb", "<cmd>Telescope file_browser<CR>", desc = "File Browser" },
      { "<leader>fc", "<cmd>Telescope grep_string<CR>", desc = "Find String Under Cursor" },
      { "<leader>fz", "<cmd>Telescope zoxide list<CR>", desc = "File Browser" },
      { "<leader>ft", "<cmd>TodoTelescope<CR>", desc = "TODO comments" },

      { "<leader>b", group = "Buffer" },
      { "<leader>bb", "<cmd>Telescope buffers<CR>", desc = "Buffer List" },
      { "<leader>bf", "<cmd>Telescope current_buffer_fuzzy_find<CR>", desc = "Fuzzy Find" },

      { "<leader>C", group = "TODO Comments" },
      { "<leader>Cn", "<cmd>lua require('todo-comments').jump_next()<CR>", desc = "Next TODO" },
      { "<leader>Cp", "<cmd>lua require('todo-comments').jump_prev()<CR>", desc = "Prev TODO" },

      { "<leader>N", group = "Notfications" },
      {
        "<leader>Nh",
        "<cmd>lua Snacks.notifier.show_history()<CR>",
        desc = "Show Notification History",
      },
      {
        "<leader>Nd",
        "<cmd>lua Snacks.notifier.hide()<CR>",
        desc = "Dismiss All Notifications",
      },

      { "<leader>g", group = "Git" },
      { "<leader>gb", "<cmd>lua Snacks.git.blame_line()<CR>", desc = "Git Blame Line" },
      { "<leader>gB", "<cmd>lua Snacks.gitbrowse()<CR>", desc = "Git Browse" },

      { "<leader>z", ":ZenMode<CR>", desc = "Zen Mode" },
      { "<leader>t", ":NvimTreeFocus<CR>", desc = "Tree" },
      { "<leader>T", ":NvimTreeClose<CR>", desc = "Close Tree" },
      { "<leader>n", ":CycleNumber<CR>", desc = "Line Number Style" },
      { "<leader>u", "<cmd>UndotreeToggle<CR>", desc = "Undo Tree" },
      { "<leader>k", "<cmd>Legendary<CR>", desc = "Keybindings etc..." },
      { "<C-/>", "<cmd>lua Snacks.terminal()<CR>", desc = "Toggle Terminal" },
      { "<leader>,", "<cmd>lua Snacks.scratch()<CR>", desc = "Scratch Buffer" },
      { "<leader><", "<cmd>lua Snacks.scratch.select()<CR>", desc = "Select Scratch Buffer" },
      { "-", "<cmd>Oil<CR>", desc = "Open Parent Directory" },

      { "<cr>", ":nohlsearch<cr>", desc = "Clear Search Highlight" },

      -- Better window navigation
      { "<C-h>", "<C-w>h", desc = "Move to Window on Left" },
      { "<C-j>", "<C-w>j", desc = "Move to Window Below" },
      { "<C-k>", "<C-w>k", desc = "Move to Window Above" },
      { "<C-l>", "<C-w>l", desc = "Move to Window on Right" },
      -- Resize with arrows
      { "<C-Up>", ":resize +2<CR>", desc = "Increase Window Height" },
      { "<C-Down>", ":resize -2<CR>", desc = "Decrease Window Height" },
      { "<C-Left>", ":vertical resize -2<CR>", desc = "Decrease Window Width" },
      { "<C-Right>", ":vertical resize +2<CR>", desc = "Increase Window Width" },
      -- Navigate buffers
      { "<S-l>", ":bnext<CR>", desc = "Next Buffer" },
      { "<S-h>", ":bprevious<CR>", desc = "Previous Buffer" },
      -- Move text up and down
      { "<A-k>", ":m .-2<CR>==", desc = "Move Line Up" },
      { "<A-j>", ":m .+1<CR>==", desc = "Move Line Down" },

      {
        "<leader>s",
        function(options)
          require("substitute").operator(options)
        end,
        desc = "Substitute",
      },
      {
        "<leader>ss",
        function(options)
          require("substitute").line(options)
        end,
        desc = "Substitute",
      },
      {
        "<leader>S",
        function(options)
          require("substitute").eol(options)
        end,
        desc = "Substitute",
      },
      { "<leader>x", group = "Toggle" },
      { "<leader>D", "<cmd>lua Snacks.dashboard()<CR>", desc = "Dashboard" },
    },
    {
      mode = "i",
      -- Move text up and down
      { "<A-j>", "<Esc>:m .+1<CR>==gi", desc = "Move Line Down" },
      { "<A-k>", "<Esc>:m .-2<CR>==gi", desc = "Move Line Up" },
    },
    {
      mode = "v",
      -- Stay in indent mode
      { "<", "<gv", desc = "Decrease Indent" },
      { ">", ">gv", desc = "Increase Indent" },
      -- Move text up and down
      { "<A-j>", ":m .+1<CR>==", desc = "Move Text Down" },
      { "<A-k>", ":m .-2<CR>==", desc = "Move Text Up" },
      { "p", '"_dP', desc = "" },
    },
    {
      mode = "x",
      { "J", ":move '>+1<CR>gv-gv", desc = "Move Text Down" },
      { "K", ":move '<-2<CR>gv-gv", desc = "Move Text Up" },
      { "<A-j>", ":move '>+1<CR>gv-gv", desc = "Move Text Down" },
      { "<A-k>", ":move '<-2<CR>gv-gv", desc = "Move Text Up" },
      {
        "<leader>s",
        function(options)
          require("substitute").visual(options)
        end,
        desc = "Substitute",
      },
    },
    {
      mode = "t",
      -- Better terminal navigation
      { "<C-h>", "<C-\\><C-N><C-w>h", desc = "Move to Window on Left" },
      { "<C-j>", "<C-\\><C-N><C-w>j", desc = "Move to Window Below" },
      { "<C-k>", "<C-\\><C-N><C-w>k", desc = "Move to Window Above" },
      { "<C-l>", "<C-\\><C-N><C-w>l", desc = "Move to Window on Right" },
      { "<C-/>", "<cmd>lua Snacks.terminal()<CR>", desc = "Toggle Terminal" },
    },
    {
      mode = "o",
      { ";", group = "Outer Container" },
      { ".", group = "Smart Container" },
      { ", desc =", group = "Previous Container" },
      { "i;", group = "Inner Container" },
    },
  },
  lsp = {
    {
      mode = "n",
      { "gf", "<cmd>Lspsaga lsp_finder<CR>", desc = "LSP Finder" }, -- show definition, references
      { "gd", "<cmd>Lspsaga peek_definition<CR>", desc = "Go to Definition" }, -- see definition and make edits in window
      { "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", desc = "Go to Implementation" }, -- go to implementation
      { "gr", "<cmd>TroubleToggle lsp_references<cr>", desc = "Show References" },
      { "<leader>c", name = "Code" },
      { "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", desc = "Code Actions" }, -- see available code actions
      { "<leader>cl", "<cmd>NicerLensesRun<CR>", desc = "Code Lenses" }, -- see available code actions
      { "<leader>cr", "<cmd>lua require('rainbow-delimiters').toggle(0)<CR>", desc = "Rainbow delimiters" },
      { "<leader>r", name = "Refactor" },
      { "<leader>rn", "<cmd>Lspsaga rename<CR>", desc = "Rename" }, -- smart rename
      { "K", "<cmd>lua vim.lsp.buf.hover()<CR>", desc = "Hover" }, -- show documentation for what is under cursor
      { "<leader>o", "<cmd>Lspsaga outline<CR>", desc = "Toggle Outline" }, -- see outline on right hand side

      { "<leader>d", name = "Diagnostics" },
      { "<leader>dw", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Diagnostics for Workspace" },
      { "<leader>db", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Diagnostics for Buffer" },
      { "<leader>dc", "<cmd>Lspsaga show_cursor_diagnostics<CR>", desc = "Diagnostics for Cursor" }, -- show diagnostics for cursor
      { "<leader>dl", "<cmd>Lspsaga show_line_diagnostics<CR>", desc = "Diagnostics for Line" }, -- show  diagnostics for line
      { "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", desc = "Previous Diagnostic" }, -- jump to previous diagnostic in buffer
      { "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", desc = "Next Diagnostic" }, -- jump to next diagnostic in buffer
    },
  },
  ts_ls = {
    {},
  },
  haskell = {
    {
      mode = "n",
      { "<leader>h", group = "Haskell" },
      {
        "<leader>hR",
        "<cmd>lua require('haskell-tools').repl.toggle()<CR>",
        desc = "Repl for Current Package",
      },
      {
        "<leader>hr",
        "<cmd> lua function() require('haskell-tools').repl.toggle(vim.api.nvim_buf_get_name(0)) end<CR>",
        desc = "Repl for Current File",
      },
      {
        "<leader>hq",
        "<cmd>lua require('haskell-tools').repl.quit()<CR>",
        desc = "Quit Repl",
      },
      {
        "<leader>hh",
        "<cmd>lua require('haskell-tools').hoogle.hoogle_signature()<CR>",
        desc = "Hoogle",
      },
      {
        "<leader>he",
        "<cmd>lua require('haskell-tools').lsp.buf_eval_all()<CR>",
        desc = "Evaluate",
      },
    },
  },
  crates = {
    {
      mode = "n",
      { "<leader>c", group = "Crates" },
      { "<leader>ct", "<cmd>lua require('crates').toggle()<CR>", desc = "Toggle crates" },
      { "<leader>cr", "<cmd>lua require('crates').reload()<CR>", desc = "Reload crates" },

      { "<leader>cv", "<cmd>lua require('crates').show_versions_popup()<CR>", desc = "Versions" },
      { "<leader>cf", "<cmd>lua require('crates').show_features_popup()<CR>", desc = "Features" },
      { "<leader>cd", "<cmd>lua require('crates').show_dependencies_popup()<CR>", desc = "Dependencies" },

      { "<leader>cu", "<cmd>lua require('crates').update_crate()<CR>", desc = "Update crate" },
      {
        "<leader>ca",
        "<cmd>lua require('crates').update_all_crates()<CR>",
        desc = "Update all crates",
      },
      { "<leader>cU", "<cmd>lua require('crates').upgrade_crate()<CR>", desc = "Upgrade crate" },
      {
        "<leader>cA",
        "<cmd>lua require('crates').upgrade_all_crates()<CR>",
        desc = "Upgrade all crates",
      },

      { "<leader>ce", "<cmd>lua require('crates').expand_plain_crate_to_inline_table()<CR>", desc = "Expand crate" },
      { "<leader>cE", "<cmd>lua require('crates').extract_crate_into_table()<CR>", desc = "Extract crate" },

      { "<leader>cH", "<cmd>lua require('crates').open_homepage()<CR>", desc = "Open home page" },
      { "<leader>cR", "<cmd>lua require('crates').open_repository()<CR>", desc = "Open repository" },
      {
        "<leader>cD",
        "<cmd>lua require('crates').open_documentation()<CR>",
        desc = "Open documentation",
      },
      { "<leader>cC", "<cmd>lua require('crates').open_crates_io()<CR>", desc = "Open crates.io" },
    },

    {
      mode = "v",
      { "<leader>c", group = "Crates" },
      { "<leader>cu", "<cmd>lua require('crates').update_crates()<CR>", desc = "Update crates" },
      { "<leader>cU", "<cmd>lua require('crates').upgrade_crates()<CR>", desc = "Upgrade crates" },
    },
  },
}
