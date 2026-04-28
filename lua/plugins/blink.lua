-- blink.cmp を 0.12 の補完体験寄りに調整
return {
  "saghen/blink.cmp",
  opts = {
    completion = {
      list = {
        selection = { preselect = true, auto_insert = false },
      },
      menu = {
        border = "rounded",
        draw = { treesitter = { "lsp" } },
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 150,
        window = { border = "rounded" },
      },
      ghost_text = { enabled = true },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" },
    signature = {
      enabled = true,
      window = { border = "rounded" },
    },
  },
}
