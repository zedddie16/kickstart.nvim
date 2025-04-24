return {
  {
    'ThePrimeagen/vim-be-good',
  },
  {
    'mrcjkb/rustaceanvim',
    version = '^6', -- Recommended
    lazy = false, -- This plugin is already lazy
  },
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
      require('alpha').setup(require('alpha.themes.dashboard').config) -- can be dashboard or startify :'
    end,
  },
  {
    'vyfor/cord.nvim',
    build = 'Cord update',
    opts = function()
      return {
        display = {
          theme = 'catppuccin',
          flavor = 'dark',
          swap_icons = false,
        },
        timestamp = {
          enabled = true,
          reset_on_idle = false,
          reset_on_change = false,
        },
        idle = {
          enabled = true,
          timeout = 30000,
          show_status = true,
        },
        lazy = {
          icon = require('cord.api.icon').get 'keyboard',
        },
      }
    end,
  },
  {
    'pmizio/typescript-tools.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'neovim/nvim-lspconfig',
    },
    opts = {},
  },
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end,
  },
  {
    'akinsho/toggleterm.nvim',
    config = function()
      require('toggleterm').setup {
        direction = 'float', -- or 'vertical', 'float', 'horizontal'.
      }
      vim.keymap.set('n', '<leader>tt', function()
        require('toggleterm').toggle(1)
      end, { desc = 'Open ToggleTerm' })
      -- fast esc from terminal
      vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })
    end,
  },
}
