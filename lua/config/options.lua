-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 0.12: 補完メニューを fuzzy + popup プレビュー + 自動メニュー
vim.opt.completeopt = { "menu", "menuone", "noinsert", "fuzzy", "popup" }

-- 0.12: 浮動ウィンドウのデフォルト枠
vim.opt.winborder = "rounded"

-- LSP foldexpr でセマンティックなフォールド
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.lsp.foldexpr()"
vim.opt.foldtext = "v:lua.vim.lsp.foldtext()"
vim.opt.foldlevel = 99
