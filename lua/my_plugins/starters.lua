return
-- {
--   'nvimdev/dashboard-nvim',
--   event = 'VimEnter',
--   config = function()
--     require('dashboard').setup {
--       theme = 'doom',
--       config = {
--         header = require 'custom.plugins.art.art1', --your header
--         center = {},
--         -- center = {
--         --   {
--         --     icon = ' ',
--         --     icon_hl = 'Title',
--         --     desc = 'Find File           ',
--         --     desc_hl = 'String',
--         --     key = 'b',
--         --     keymap = 'SPC f f',
--         --     key_hl = 'Number',
--         --     key_format = ' %s', -- remove default surrounding `[]`
--         --     action = 'lua print(2)',
--         --   },
--         --   {
--         --     icon = ' ',
--         --     desc = 'Find Dotfiles',
--         --     key = 'f',
--         --     keymap = 'SPC f d',
--         --     key_format = ' %s', -- remove default surrounding `[]`
--         --     action = 'lua print(3)',
--         --   },
--         -- },
--         footer = {}, --your footer
--       },
--     }
--   end,
--   dependencies = { { 'nvim-tree/nvim-web-devicons' } },
-- },
{
  'goolord/alpha-nvim',
  config = function()
    require('alpha').setup(require('alpha.themes.startify').config) -- can be dashboard or startify :'
  end,
}
