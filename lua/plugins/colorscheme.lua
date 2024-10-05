return {
  -- tokyonight
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "moon",
      -- on_colors = function(colors)
        -- colors.fg = "#e6e8ef"
        -- colors.LineNr = { fg = "#959595" }
        -- colors.fg_gutter = "#959595"
      -- end,
      on_highlights = function(highlights)
        -- highlights.Comment = { fg = "#959595" }
        -- highlights.CursorLineNr = { fg = "#959595" }
        -- status line file info bottom right corner
        -- highlights.MiniStatuslineFileinfo.bg = "#3B4261"
        -- status line dev info bottom left corner (to the right of Mode)
        -- highlights.MiniStatuslineDevinfo.bg = "#3B4261"

      end,
    },
  },
}
