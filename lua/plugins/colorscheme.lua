return {
  "sainnhe/gruvbox-material",
  lazy = false,
  priority = 1000,
  config = function()
    -- ダークテーマでハードコントラストに設定
    vim.opt.background = "dark"
    vim.g.gruvbox_material_background = "hard"
    vim.g.gruvbox_material_enable_italic = true
    vim.g.gruvbox_material_better_performance = 1
    
    -- カラースキームを適用
    vim.cmd.colorscheme("gruvbox-material")
    
    -- lazygit選択行の背景色を明確に
    vim.cmd("hi Visual guibg=#504945")
  end,
}
