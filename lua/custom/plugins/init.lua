return {
  {
    'mrcjkb/rustaceanvim',
    version = '^5',
    lazy = false,
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
    opts = {},
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

      vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })
    end,
  },
}
