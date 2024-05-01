-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
---- Create autocommand for compiling typst files
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "*.typ" },
  callback = function()
    local name = vim.fn.expand("%:p")
    local finalName = string.sub(name, 1, -5)
    vim.fn.system("typst compile " .. name .. " " .. finalName .. ".pdf")
  end,
  desc = "Compile and render typst files",
})
