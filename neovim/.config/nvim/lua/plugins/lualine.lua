return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- Remove the clock from the right section
      opts.sections = opts.sections or {}
      opts.sections.lualine_z = {}
      -- Remove lazy.nvim plugin count
      for i = #opts.sections.lualine_x, 1, -1 do
        local comp = opts.sections.lualine_x[i]
        if type(comp) == "table" and comp[1] == require("lazy.status").updates then
          table.remove(opts.sections.lualine_x, i)
        end
      end
      -- Remove lazy.nvim plugin count and git diff
      for i = #opts.sections.lualine_x, 1, -1 do
        local comp = opts.sections.lualine_x[i]
        if type(comp) == "table" and (comp[1] == require("lazy.status").updates or comp[1] == "diff") then
          table.remove(opts.sections.lualine_x, i)
        end
      end
      local transparent = { fg = "#c8c093", bg = "NONE", gui = "" }
      opts.options = opts.options or {}
      opts.options.section_separators = { left = "", right = "" }
      opts.options.component_separators = { left = "", right = "" }
      opts.options.theme = {
        normal = { a = transparent, b = transparent, c = transparent },
        insert = { a = transparent, b = transparent, c = transparent },
        visual = { a = transparent, b = transparent, c = transparent },
        replace = { a = transparent, b = transparent, c = transparent },
        command = { a = transparent, b = transparent, c = transparent },
        inactive = { a = transparent, b = transparent, c = transparent },
      }
    end,
  },
}
