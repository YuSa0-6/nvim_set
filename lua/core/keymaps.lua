vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("i", "<C-;>", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Toggle file explorer" })
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })
vim.keymap.set("n", "<leader>x", "<cmd>x<CR>", { desc = "Save and quit" })
vim.keymap.set("n", "<leader>tt", "<cmd>TransparentToggle<CR>", { desc = "Toggle transparency" })

vim.keymap.set("n", "<leader>cc", "<cmd>ClaudeCode<CR>", { desc = "Claude: Chat" })
vim.keymap.set("v", "<leader>cc", "<cmd>ClaudeCode<CR>", { desc = "Claude: Chat with selection" })
vim.keymap.set("n", "<leader>ce", "<cmd>ClaudeCodeExplain<CR>", { desc = "Claude: Explain code" })
vim.keymap.set("v", "<leader>ce", "<cmd>ClaudeCodeExplain<CR>", { desc = "Claude: Explain selection" })
vim.keymap.set("n", "<leader>cr", "<cmd>ClaudeCodeReview<CR>", { desc = "Claude: Review code" })
vim.keymap.set("v", "<leader>cr", "<cmd>ClaudeCodeReview<CR>", { desc = "Claude: Review selection" })
vim.keymap.set("n", "<leader>ct", "<cmd>ClaudeCodeTest<CR>", { desc = "Claude: Generate tests" })
vim.keymap.set("v", "<leader>ct", "<cmd>ClaudeCodeTest<CR>", { desc = "Claude: Generate tests for selection" })

-- Floating window toggle function
local function toggle_floating_window()
  -- Check if there's already a floating window
  for _, win in pairs(vim.api.nvim_list_wins()) do
    local config = vim.api.nvim_win_get_config(win)
    if config.relative ~= "" then
      vim.api.nvim_win_close(win, false)
      return
    end
  end
  
  -- Create new floating window
  local buf = vim.api.nvim_create_buf(false, true)
  local width = math.floor(vim.o.columns * 0.8)
  local height = math.floor(vim.o.lines * 0.8)
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)
  
  local opts = {
    relative = "editor",
    width = width,
    height = height,
    row = row,
    col = col,
    style = "minimal",
    border = "rounded",
  }
  
  vim.api.nvim_open_win(buf, true, opts)
  vim.cmd("terminal")
end

-- Shift+Esc keybinding for floating window toggle
vim.keymap.set("n", "<S-Esc>", toggle_floating_window, { desc = "Toggle floating window" })