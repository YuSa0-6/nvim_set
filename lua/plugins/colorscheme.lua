return {
  "ayu-theme/ayu-vim",
  lazy = false,
  priority = 1000,
  config = function()
    -- ayu theme variant (mirage, light, dark)
    vim.g.ayucolor = "mirage"

    -- カラースキームを適用
    vim.cmd.colorscheme("ayu")

    -- 透明化状態を管理するグローバル変数（初期状態は有効）
    vim.g.transparency_enabled = true

    -- 透明化を適用する関数（グローバル関数として定義）
    _G.apply_transparency = function()
      vim.cmd("hi Normal guibg=NONE ctermbg=NONE") -- メインテキスト領域
      vim.cmd("hi NormalFloat guibg=NONE ctermbg=NONE") -- フローティングウィンドウ
      vim.cmd("hi SignColumn guibg=NONE ctermbg=NONE") -- 左端サインカラム
      vim.cmd("hi LineNr guibg=NONE ctermbg=NONE") -- 行番号
      vim.cmd("hi Folded guibg=NONE ctermbg=NONE") -- 折りたたみ行
      vim.cmd("hi NonText guibg=NONE ctermbg=NONE") -- 非表示文字
      vim.cmd("hi SpecialKey guibg=NONE ctermbg=NONE") -- 特殊キー表示
      vim.cmd("hi VertSplit guibg=NONE ctermbg=NONE") -- 縦分割線
      vim.cmd("hi EndOfBuffer guibg=NONE ctermbg=NONE") -- ファイル末尾以降
    end

    -- 初期透明化設定を適用
    _G.apply_transparency()

    -- lazygit選択行の背景色を明確に
    vim.cmd("hi Visual guibg=#504945")
  end,
}
