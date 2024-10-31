local colors = {
  background = '#121212',
  pink = '#f7c4d9',
  light_pink = '#fbdde6',
  darker_pink = '#d995a8',
  gray = '#e0d4d8',
  contrast = '#70606a',
}
local function set_highlights()
  vim.api.nvim_set_hl(0, 'Normal', { fg = colors.contrast, bg = colors.background })
  vim.api.nvim_set_hl(0, 'Comment', { fg = colors.gray, italic = true })
  vim.api.nvim_set_hl(0, 'Function', { fg = colors.pink, bold = false })
  vim.api.nvim_set_hl(0, 'Keyword', { fg = colors.darker_pink, italic = true })
  -- Add more groups as needed
end

local M = {}

function M.setup()
  set_highlights()
end

return M
