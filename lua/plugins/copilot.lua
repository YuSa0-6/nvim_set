-- copilot.lua（LazyVim 標準）に一本化。github/copilot.vim は撤去。
-- 元の <C-j> 受諾などのキーバインドは copilot.lua 側へ移植。
return {
  "zbirenbaum/copilot.lua",
  opts = {
    suggestion = {
      enabled = true,
      auto_trigger = true,
      keymap = {
        accept = "<C-j>",
        accept_word = "<C-l>",
        accept_line = false,
        next = "<C-n>",
        prev = "<C-p>",
        dismiss = "<C-h>",
      },
    },
    panel = { enabled = false },
    filetypes = { ["*"] = true },
  },
}
