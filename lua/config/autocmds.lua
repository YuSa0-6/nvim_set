-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- 0.12 の LSP 拡張機能を LspAttach で有効化
local lsp_extras = vim.api.nvim_create_augroup("user_lsp_extras", { clear = true })
vim.api.nvim_create_autocmd("LspAttach", {
  group = lsp_extras,
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if not client then
      return
    end
    local buf = args.buf

    -- インラインゴースト補完（Copilot LSP / Codeium LSP などが対応していれば）
    if vim.lsp.inline_completion and client:supports_method("textDocument/inlineCompletion") then
      pcall(vim.lsp.inline_completion.enable, true, { bufnr = buf })
    end

    -- HTML/JSX タグ等の対称編集
    if vim.lsp.linked_editing_range and client:supports_method("textDocument/linkedEditingRange") then
      pcall(vim.lsp.linked_editing_range.enable, true, { bufnr = buf })
    end

    -- CSS/Tailwind の色プレビュー
    if vim.lsp.document_color and client:supports_method("textDocument/documentColor") then
      pcall(vim.lsp.document_color.enable, true, buf)
    end
  end,
})

-- 診断はカーソル行のみ仮想行で複数行表示
vim.diagnostic.config({
  virtual_lines = { current_line = true },
  virtual_text = false,
  jump = { float = true },
  severity_sort = true,
})
