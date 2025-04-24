return {
  {
    'mrcjkb/rustaceanvim',
    version = '^6',
    lazy = false,
  },
  {
    'pmizio/typescript-tools.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'neovim/nvim-lspconfig',
    },
    opts = {},
  },
}
