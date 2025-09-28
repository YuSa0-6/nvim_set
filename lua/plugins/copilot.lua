return {
  "github/copilot.vim",
  event = "InsertEnter",
  config = function()
    -- 全てのファイルタイプでCopilotを有効化
    vim.g.copilot_filetypes = {
      ["*"] = true,
    }
    
    -- Copilotのキーマッピング
    vim.keymap.set("i", "<C-j>", 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false,
      desc = "Copilot提案を受け入れ"
    })
    
    -- デフォルトのTabマッピングを無効化
    vim.g.copilot_no_tab_map = true
    
    -- 追加のキーマッピング
    vim.keymap.set("i", "<C-l>", "<Plug>(copilot-accept-word)", { desc = "Copilot単語受け入れ" })
    vim.keymap.set("i", "<C-h>", "<Plug>(copilot-dismiss)", { desc = "Copilot提案を無視" })
    vim.keymap.set("i", "<C-n>", "<Plug>(copilot-next)", { desc = "次のCopilot提案" })
    vim.keymap.set("i", "<C-p>", "<Plug>(copilot-previous)", { desc = "前のCopilot提案" })
  end,
}