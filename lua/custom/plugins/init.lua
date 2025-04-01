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
  { 'miikanissi/modus-themes.nvim' },
  { 'mofiqul/dracula.nvim' },
  { 'phha/zenburn.nvim' },
  { 'nyoom-engineering/oxocarbon.nvim' },
  { 'marko-cerovac/material.nvim' },
  { 'projekt0n/github-nvim-theme' },
  { 'edeneast/nightfox.nvim' },
  { 'olimorris/onedarkpro.nvim' },
  { 'maxmx03/solarized.nvim' },
  { 'gbprod/nord.nvim' },
  { 'rebelot/kanagawa.nvim' },
  { 'mhartington/oceanic-next' },
  { 'sainnhe/everforest' },
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
