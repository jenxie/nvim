-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- insert go error statement
vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>")

-- ctrl-shift-x = cut - currently conflicts with terminator
--vim.keymap.set('v', '<C-X>', '"+x')

-- ctrl-shift-c = copy
vim.keymap.set('v', '<C-C>', '"+y')

-- ctrl-shift-v = paste
vim.keymap.set('v', '<C-V>', '"+gP')
