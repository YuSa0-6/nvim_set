-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 透明化切り替え
vim.keymap.set("n", "<leader>tp", function()
  if vim.g.transparency_enabled then
    -- 透明化OFF: カラースキームを再適用
    vim.cmd.colorscheme("ayu")
    vim.g.transparency_enabled = false
    print("Transparency: OFF")
  else
    -- 透明化ON: カラースキームを再適用して透明化設定を適用
    vim.cmd.colorscheme("ayu")
    apply_transparency()
    vim.g.transparency_enabled = true
    print("Transparency: ON")
  end
  -- どちらの状態でもVisual選択の背景色は維持
  vim.cmd("hi Visual guibg=#504945")
end, { desc = "Toggle transparency" })
