vim.g.background = 'dark'
local colorscheme = "gruvbox"

-- local catppuccin = require("catppuccin")
-- catppuccin.setup{}
-- local colorscheme = "catppuccin"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

