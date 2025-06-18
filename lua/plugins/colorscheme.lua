return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "storm",
      transparent = true,
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        sidebars = "dark",
        floats = "dark",
      },
      on_highlights = function(hl, c)
        local color = c.dark5
        -- regular gutter numbers (fallback / when relativenumber off)
        hl.LineNr = { fg = color }

        -- numbers just above/below the cursor (Neovim 0.10+)
        hl.LineNrAbove = { fg = color }
        hl.LineNrBelow = { fg = color }

        -- number on the cursor line
        hl.CursorLineNr = { fg = c.orange, bold = true }

        -- comments
        hl.Comment = { fg = color, italic = false }
      end,
    },
  },
}
