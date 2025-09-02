-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- insert go error statement
vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>")

-- ctrl-shift-x = cut - currently conflicts with terminator
--vim.keymap.set('v', '<C-X>', '"+x')

-- ctrl-shift-c = copy
vim.keymap.set("v", "<C-C>", '"+y')

-- ctrl-shift-v = paste
vim.keymap.set("v", "<C-V>", '"+gP')

-- vim.keymap.set("n", "<leader>bt", function()
--   local enable = not vim.api.nvim_get_option_value("scrollbind", { win = 0 })
--
--   for _, win in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
--     local buf = vim.api.nvim_win_get_buf(win)
--     local ft  = vim.api.nvim_get_option_value("filetype", { buf = buf })
--
--     if ft ~= "snacks" and ft ~= "snacks_picker_list" then
--       vim.api.nvim_set_option_value("scrollbind", enable, { win = win })
--       vim.api.nvim_set_option_value("cursorbind", enable, { win = win })
--     end
--   end
--
--   if enable and not vim.tbl_contains(vim.opt.scrollopt:get(), "hor") then
--     vim.opt.scrollopt:append("hor")
--   end
-- end, { desc = "Toggle side-by-side synced scrolling" })

vim.keymap.set("n", "<leader>wt", function()
  local ignore_fts = { snacks = true, snacks_picker_list = true }
  local ignore_buftypes = { nofile = true, prompt = true, help = true, quickfix = true }

  local enable = not vim.wo.diff
  local cur_win = vim.api.nvim_get_current_win()

  local function ignored(win)
    local buf = vim.api.nvim_win_get_buf(win)
    local ft = vim.api.nvim_get_option_value("filetype", { buf = buf })
    local bt = vim.api.nvim_get_option_value("buftype", { buf = buf })
    return ignore_fts[ft] or ignore_buftypes[bt]
  end

  for _, win in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
    local skip = ignored(win)

    if (enable and not skip) or not enable then
      vim.api.nvim_set_current_win(win)

      if enable then
        vim.cmd("diffthis")
      else
        vim.cmd("diffoff")
      end
    end
  end

  vim.api.nvim_set_current_win(cur_win) -- restore cursor
end, { desc = "Toggle diff view" })

-- vim.keymap.set("n", "<leader>on", "<cmd>ObsidianNew<CR>", { desc = "New note" })
-- vim.keymap.set("n", "<leader>ot", "<cmd>ObsidianToday<CR>", { desc = "Today’s note" })
-- vim.keymap.set("n", "<leader>of", "<cmd>ObsidianFollowLink<CR>", { desc = "Follow [[link]]" })
-- vim.keymap.set("n", "<leader>os", "<cmd>ObsidianSearch<CR>", { desc = "Search notes" })
-- vim.keymap.set("n", "<leader>ob", "<cmd>ObsidianBacklinks<CR>", { desc = "Backlinks" })
-- local wk = require("which-key")
--
-- wk.add({
--   -- Declare group under <leader>o
--   {
--     "<leader>o",
--     group = "Obsidian",
--     icon = "󱞁",
--   },
--   -- Keymaps
--   {
--     "<leader>on",
--     function()
--       if not vim.bo.modifiable then
--         vim.cmd("enew")
--       end
--       vim.cmd("ObsidianNew")
--     end,
--     desc = "New note",
--   },
--   { "<leader>ot", "<cmd>ObsidianToday<CR>", desc = "Today’s note" },
--   { "<leader>os", "<cmd>ObsidianSearch<CR>", desc = "Search notes" },
--   { "<leader>ob", "<cmd>ObsidianBacklinks<CR>", desc = "Backlinks" },
--   { "<leader>oo", "<cmd>ObsidianOpen<CR>", desc = "Open in Obsidian app" },
-- })

vim.keymap.set("n", "<leader>mp", function()
  vim.cmd("w")
  vim.cmd("!glow %")
end, { desc = "Preview Markdown with Glow" })

-- vim.keymap.set("n", "<leader>on", function()
--   -- Skip if we're already in a modifiable buffer
--   if not vim.bo.modifiable then
--     vim.cmd("enew")
--   end
--   vim.cmd("ObsidianNew")
-- end, { desc = "New Obsidian note" })
