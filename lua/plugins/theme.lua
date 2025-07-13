return {
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      -- Configure gruvbox-material
      vim.g.gruvbox_material_background = 'hard'
      vim.g.gruvbox_material_foreground = 'material'
      vim.g.gruvbox_material_enable_italic = 1
      vim.g.gruvbox_material_enable_bold = 1
      vim.g.gruvbox_material_diagnostic_text_highlight = 1
      vim.g.gruvbox_material_diagnostic_line_highlight = 1
      vim.g.gruvbox_material_better_performance = 1
      
      vim.cmd([[colorscheme gruvbox-material]])
    end,
  },
  {
    "xiyaowong/transparent.nvim",
    config = function()
      require("transparent").setup({
        groups = {
          'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
          'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
          'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
          'SignColumn', 'CursorLine', 'CursorColumn', 'CursorLineNr', 'TabLine', 'TabLineFill',
          'StatusLine', 'StatusLineNC', 'EndOfBuffer',
        },
        extra_groups = {},
        exclude_groups = {
          'NeoTreeNormal', 'NeoTreeNormalNC', 'NeoTreeFloatBorder', 'NeoTreeFloatTitle',
          'TelescopeNormal', 'TelescopeBorder', 'TelescopeTitle',
          'WhichKeyFloat', 'WhichKeyBorder',
        },
      })
    end,
  },
}