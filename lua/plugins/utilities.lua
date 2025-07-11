return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },
  {
    "numToStr/Comment.nvim",
    opts = {},
    lazy = false,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
  },
  {
    "folke/which-key.nvim",
    event = "VimEnter",
    config = function()
      require("which-key").setup({
        preset = "modern",
      })
      require("which-key").add({
        { "<leader>c", group = "Code/Claude" },
        { "<leader>d", group = "Document" },
        { "<leader>r", group = "Rename" },
        { "<leader>s", group = "Search" },
        { "<leader>w", group = "Workspace" },
        { "<leader>f", group = "Find" },
      })
    end,
  },
}