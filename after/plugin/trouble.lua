-- Trouble.nvim Setup
require("trouble").setup {
  -- Use icons for diagnostics
  icons = true,

  -- Show line numbers in the list of diagnostics
  use_lsp_diagnostics = true,  -- Enable LSP diagnostics

  -- Position of the Trouble window
  position = "bottom",  -- Can be "top", "bottom", or "left"

  -- Whether the window should be opened automatically
  auto_open = false,  -- You can change this to true if you want it to open automatically

  -- Show diagnostics for open buffers
  auto_close = true,  -- Close automatically if no diagnostics are present

  -- Set how diagnostics are grouped
  group = true,  -- Group by file

  -- Enable preview of diagnostics in the list
  preview = true,  -- Show diagnostics on hover

  -- Set the max height of the diagnostics list
  height = 10,  -- You can adjust this to fit your screen

  -- Customize key mappings for Trouble
  action_keys = {
    -- Keymap to close Trouble
    close = "q",
    -- Keymap to toggle between diagnostics and definitions
    cancel = "<esc>",
    -- Keymap to jump to next/previous diagnostic
    jump = { "<cr>", "<tab>" },
    -- Keymap to toggle the window
    toggle = "z",
  },
}


-- Keybindings for Trouble.nvim
vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>TroubleToggle<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", { noremap = true, silent = true })
