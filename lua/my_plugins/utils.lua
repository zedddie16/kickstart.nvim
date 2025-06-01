return {
  {
    'ThePrimeagen/vim-be-good',
  },
  {
    'vyfor/cord.nvim',
    build = 'Cord update',
    opts = function()
      return {
        display = {
          -- theme = 'catppuccin',
          -- flavor = 'dark',
          -- swap_icons = false,
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
