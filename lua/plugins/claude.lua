return {
  "coder/claudecode.nvim",
  config = function()
    require("claudecode").setup({
      model = "claude-3-5-sonnet-20241022",
      temperature = 0.7,
      max_tokens = 4096,
    })
  end,
}
