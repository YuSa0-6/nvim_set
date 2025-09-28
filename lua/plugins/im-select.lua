return {
  "keaising/im-select.nvim",
  config = function()
    require("im_select").setup({
      -- デフォルトの入力方法（英語）
      default_im_select = "com.apple.keylayout.ABC",
      
      -- 前の入力方法を復元するかどうか
      default_command = "im-select",
      
      -- インサートモードを抜ける時だけ英語に切り替え
      set_default_events = { "InsertLeave" },
      
      -- 前の入力方法を復元しない
      set_previous_events = {},
    })
  end,
}