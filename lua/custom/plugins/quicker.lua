return {
  {
    'stevearc/quicker.nvim',
    event = 'FileType qf',
    config = function()
      require('quicker').setup {
        keys = {
          {
            '>',
            function()
              require('quicker').expand { before = 2, after = 2, add_to_existing = true }
            end,
            desc = 'Expand quickfix context',
          },
          {
            '<',
            function()
              require('quicker').collapse()
            end,
            desc = 'Collapse quickfix context',
          },
        },
      }

      -- Set up toggle keymaps
      vim.keymap.set('n', '<leader>qq', function()
        require('quicker').toggle()
      end, {
        desc = 'Toggle quickfix',
      })

      vim.keymap.set('n', '<leader>ql', function()
        require('quicker').toggle { loclist = true }
      end, {
        desc = 'Toggle loclist',
      })
    end,
  },
}
