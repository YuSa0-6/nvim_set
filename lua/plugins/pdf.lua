return {
  {
    "folke/snacks.nvim",
    opts = {
      image = {
        enabled = true,
        doc = {
          enabled = true,
          inline = true, -- Ghostty は placeholders=true なのでインライン表示
          float = true, -- フォールバック用
        },
        convert = {
          notify = true,
          magick = {
            -- PDF/SVG 等のベクター形式に適用される設定（convert.lua の vector 判定）
            vector = {
              "-density",
              192,
              "{src}[{page}]",
              "-background",
              "white",
              "-alpha",
              "remove",
              "-trim",
            },
          },
        },
      },
    },
    config = function(_, opts)
      require("snacks").setup(opts)

      -- PDF ファイルを Neovim で開いたときの処理
      local group = vim.api.nvim_create_augroup("pdf_viewer", { clear = true })

      vim.api.nvim_create_autocmd("BufReadCmd", {
        group = group,
        pattern = "*.pdf",
        callback = function(ev)
          local buf = ev.buf
          local file = ev.file
          vim.b[buf].pdf_file = file
          vim.b[buf].pdf_page = 1

          -- 総ページ数を取得（pdfinfo がある場合）
          local result =
            vim.fn.system("pdfinfo " .. vim.fn.shellescape(file) .. " 2>/dev/null | grep 'Pages:' | awk '{print $2}'")
          vim.b[buf].pdf_total = tonumber(vim.trim(result)) or 999

          -- 1ページ目を表示
          Snacks.image.buf.attach(buf, { src = file .. "#page=1" })

          -- キーマップ: 次ページ (l)
          vim.keymap.set("n", "l", function()
            local p = vim.b[buf].pdf_page or 1
            if p < (vim.b[buf].pdf_total or 999) then
              vim.b[buf].pdf_page = p + 1
              Snacks.image.buf.attach(buf, { src = file .. "#page=" .. vim.b[buf].pdf_page })
            end
          end, { buffer = buf, desc = "PDF: Next page" })

          -- キーマップ: 前ページ (h)
          vim.keymap.set("n", "h", function()
            local p = vim.b[buf].pdf_page or 1
            if p > 1 then
              vim.b[buf].pdf_page = p - 1
              Snacks.image.buf.attach(buf, { src = file .. "#page=" .. vim.b[buf].pdf_page })
            end
          end, { buffer = buf, desc = "PDF: Previous page" })

          -- キーマップ: 先頭ページ (gg)
          vim.keymap.set("n", "gg", function()
            vim.b[buf].pdf_page = 1
            Snacks.image.buf.attach(buf, { src = file .. "#page=1" })
          end, { buffer = buf, desc = "PDF: First page" })

          -- キーマップ: 最終ページ (G)
          vim.keymap.set("n", "G", function()
            local total = vim.b[buf].pdf_total or 1
            vim.b[buf].pdf_page = total
            Snacks.image.buf.attach(buf, { src = file .. "#page=" .. total })
          end, { buffer = buf, desc = "PDF: Last page" })

          -- キーマップ: ページ番号指定 (<leader>pp)
          vim.keymap.set("n", "<leader>pp", function()
            local n = tonumber(vim.fn.input("Page: "))
            if n then
              local total = vim.b[buf].pdf_total or 999
              n = math.max(1, math.min(n, total))
              vim.b[buf].pdf_page = n
              Snacks.image.buf.attach(buf, { src = file .. "#page=" .. n })
            end
          end, { buffer = buf, desc = "PDF: Go to page" })

          -- キーマップ: macOS Preview で開く (<leader>po)
          vim.keymap.set("n", "<leader>po", function()
            vim.fn.system("open " .. vim.fn.shellescape(file))
          end, { buffer = buf, desc = "PDF: Open in Preview.app" })
        end,
      })
    end,
  },
}
