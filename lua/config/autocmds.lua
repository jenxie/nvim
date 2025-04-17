-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- If selecting with cursor in terminal, refocus the prompt to be able to, for example, CTRL+d out of it
vim.api.nvim_command("augroup terminal_setup | au!")
vim.api.nvim_command("autocmd TermOpen * nnoremap <buffer><LeftRelease> <LeftRelease>i")
vim.api.nvim_command("augroup end")

-- Enable autoread and set up checking triggers
vim.o.autoread = true
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI", "FocusGained", "BufEnter" }, {
  command = "if mode() != 'c' | checktime | endif",
  pattern = "*",
})
