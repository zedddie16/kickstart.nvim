return {
  {
    'mrcjkb/rustaceanvim',
    version = '^5', -- Recommended
    lazy = false, -- This plugin is already lazy
  },
  {
    'goolord/alpha-nvim',
    config = function()
      require('alpha').setup(require('alpha.themes.startify').config) --alpha.themes.dashboard for for dashboard :'
    end,
  },
  {
    'vyfor/cord.nvim',
    build = './build || .\\build',
    event = 'VeryLazy',
    opts = {}, -- calls require('cord').setup()
  },
  {
    'pmizio/typescript-tools.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'neovim/nvim-lspconfig',
    },
    opts = {},
  },
  -- my themes //>.<//
  { 'ellisonleao/gruvbox.nvim' },
  { 'water-sucks/darkrose.nvim' },
  { 'catppuccin/nvim', name = 'catppuccin' },
  { 'rose-pine/neovim', name = 'rose-pine' },
  { 'folke/tokyonight.nvim' },
  { dir = '~/dev/themes/pastelpink/' },
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
        direction = 'horizontal', -- or 'vertical', 'float', etc.
      }
      vim.keymap.set('n', '<leader>tt', function()
        require('toggleterm').toggle(1)
      end, { desc = 'Open ToggleTerm' })
    end,
  },
}
