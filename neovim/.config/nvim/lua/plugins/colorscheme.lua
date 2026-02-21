return {
  {
    "rebelot/kanagawa.nvim",
    opts = {
      transparent = true,
      theme = "wave",
      overrides = function(colors)
        return {
          ["@keyword.import"] = { fg = colors.palette.surimiOrange },
          ["@variable.parameter"] = { fg = colors.theme.syn.parameter },

          MiniIconsDirectory = { fg = colors.palette.fujiWhite },
        }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
