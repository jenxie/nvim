-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.cmd("let g:netrw_liststyle = 3")

vim.g.autoformat = false
-- vim.g.lazyvim_picker = "fzf"

-- disable all animations
vim.g.snacks_animate = false

local opt = vim.opt

opt.autowrite = false
opt.clipboard = ""
opt.conceallevel = 0
opt.ignorecase = false
opt.colorcolumn = "80"
opt.spelllang = { "en_us" }
-- opt.spelllang = { "en_us,se_sv" }
