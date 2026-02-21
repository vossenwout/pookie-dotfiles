-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    local groups = {
      "NormalFloat",
      "SignColumn",
      "StatusLine",
      "StatusLineNC",
      "SnacksNormal",
      "SnacksNormalNC",
      "SnacksWinSeparator",
      "BufferLineBackground",
      "BufferLineFill",
      "BufferLineTab",
      "BufferLineTabSelected",
      "BufferLineTabClose",
      "BufferLineBufferSelected",
      "BufferLineBufferVisible",
      "BufferLineSeparator",
      "BufferLineSeparatorSelected",
      "BufferLineSeparatorVisible",
      "TabLine",
      "TabLineFill",
      "TabLineSel",
      "NormalFloat",
      "FloatBorder",
      "FloatTitle",
      "SnacksNormal",
      "SnacksNormalNC",
      "SnacksPicker",
      "SnacksPickerBorder",
      "SnacksPickerTitle",
      "SnacksPickerPreview",
      "SnacksPickerPreviewBorder",
      "SnacksPickerPreviewTitle",
      "SnacksPickerInput",
      "SnacksPickerInputBorder",
      "SnacksPickerList",
      "SnacksPickerListBorder",
      "Normal",
      "NormalFloat",
      "FloatBorder",
      "FloatTitle",
      "NoiceCmdlinePopup",
      "NoiceCmdlinePopupBorder",
      "NoiceCmdlinePopupTitle",
    }
    for _, group in ipairs(groups) do
      vim.api.nvim_set_hl(0, group, { bg = "NONE" })
    end
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#54546D", bg = "NONE" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#DCD7BA", bg = "NONE" })
    vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = "#E82424", bg = "NONE" })
    vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = "#FF9E3B", bg = "NONE" })
    vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = "#658594", bg = "NONE" })
    vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = "#6A9589", bg = "NONE" })
    vim.api.nvim_set_hl(0, "Pmenu", { fg = "#C8C093", bg = "NONE" })
    vim.api.nvim_set_hl(0, "PmenuSel", { fg = "#DCD7BA", bg = "#2A2A37" })
    vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "#54546D" })
    vim.api.nvim_set_hl(0, "CmpDocumentation", { fg = "#DCD7BA", bg = "NONE" })
    vim.api.nvim_set_hl(0, "CmpDocumentationBorder", { fg = "#54546D", bg = "NONE" })
    vim.api.nvim_set_hl(0, "NoiceCmdlineIcon", { fg = "#7E9CD8" }) -- Kanagawa blue
    vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#54546D", bg = "NONE" })
    vim.api.nvim_set_hl(0, "SnacksDashboardFooter", { fg = "#54546D", bg = "NONE" })
    vim.api.nvim_set_hl(0, "SnacksDashboardKey", { fg = "#E6C384", bg = "NONE" })
    vim.api.nvim_set_hl(0, "SnacksDashboardSpecial", { fg = "#54546D", bg = "NONE" })
    vim.api.nvim_set_hl(0, "SnacksDashboardIcon", { fg = "#54546D", bg = "NONE" })
    vim.api.nvim_set_hl(0, "SnacksIndent", { fg = "#2A2A37", bg = "NONE" })
    vim.api.nvim_set_hl(0, "SnacksIndentScope", { fg = "#54546D", bg = "NONE" })
    vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = "#76946A", bg = "NONE" })
    vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#957FB8", bg = "NONE" })
    vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#C34043", bg = "NONE" })
    vim.api.nvim_set_hl(0, "GitSignsUntracked", { fg = "#54546D", bg = "NONE" })
    -- Markdown headings
    local heading_fg = "#C8C093"
    for i = 1, 6 do
      vim.api.nvim_set_hl(0, "RenderMarkdownH" .. i .. "Bg", { bg = "NONE" })
      vim.api.nvim_set_hl(0, "RenderMarkdownH" .. i, { fg = heading_fg, bold = true, bg = "NONE" })
      vim.api.nvim_set_hl(0, "@markup.heading." .. i .. ".markdown", { fg = heading_fg, bold = true, bg = "NONE" })
    end
  end,
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.spell = false
  end,
})
