return {
  "akinsho/org-bullets.nvim",
  enabled = true,
  {
    "akinsho/org-bullets.nvim",
    config = function()
      require("org-bullets").setup({
        concealcursor = true,
        symbols = {
          headlines = { "✿" },
        },
      })
    end,
  },
}
