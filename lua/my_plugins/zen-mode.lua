return {
  {
    'folke/zen-mode.nvim',
    config = function()
      require('zen-mode').setup {
        window = {
          width = 170,
          options = {
            number = true,
            relativenumber = true,
          },
        },
      }

      vim.keymap.set('n', '<leader>zz', function()
        require('zen-mode').toggle()
        vim.wo.wrap = false
      end, { desc = 'Toggle Zen Mode' })
    end,
  },
}
