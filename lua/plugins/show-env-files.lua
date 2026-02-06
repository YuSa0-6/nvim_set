return {
  -- Neo-tree: .gitignoreに含まれていても.env*ファイルを常に表示する
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          always_show_by_pattern = {
            ".env*",
          },
        },
      },
    },
  },

  -- Telescope: hidden/ignoredファイルも検索対象にし、.env*を見つけられるようにする
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        file_ignore_patterns = { "^%.git/", "node_modules/" },
      },
      pickers = {
        find_files = {
          hidden = true,
          no_ignore = true,
        },
        live_grep = {
          additional_args = { "--hidden", "--no-ignore" },
        },
      },
    },
  },
}
