-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.opt.guicursor = "n-v-c-i:block"
vim.opt.cursorlineopt = "number"
vim.api.nvim_set_option("clipboard", "unnamed")
