return {
  require 'my_plugins.utils',
  require 'my_plugins.zen-mode',
  require 'my_plugins.navigation',
  require 'my_plugins.harpoon2',
  require 'my_plugins.themes',
  require 'my_plugins.linters',
  require 'my_plugins.starters',
  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' }),
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' }),
}
