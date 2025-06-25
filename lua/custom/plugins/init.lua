-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- {
  --   'folke/trouble.nvim',
  --   opts = {}, -- for default options, refer to the configuration section for custom setup.
  --   cmd = 'Trouble',
  --   keys = {
  --     {
  --       '<leader>xx',
  --       '<cmd>Trouble diagnostics toggle<cr>',
  --       desc = 'Diagnostics (Trouble)',
  --     },
  --     {
  --       '<leader>xX',
  --       '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
  --       desc = 'Buffer Diagnostics (Trouble)',
  --     },
  --     --   {
  --     --     '<leader>cs',
  --     --     '<cmd>Trouble symbols toggle focus=false<cr>',
  --     --     desc = 'Symbols (Trouble)',
  --     --   },
  --     --   {
  --     --     '<leader>cl',
  --     --     '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
  --     --     desc = 'LSP Definitions / references / ... (Trouble)',
  --     --   },
  --     {
  --       '<leader>xL',
  --       '<cmd>Trouble loclist toggle<cr>',
  --       desc = 'Location List (Trouble)',
  --     },
  --     {
  --       '<leader>xQ',
  --       '<cmd>Trouble qflist toggle<cr>',
  --       desc = 'Quickfix List (Trouble)',
  --     },
  --   },
  -- },

  {
    'S1M0N38/love2d.nvim',
    event = 'VeryLazy',
    opts = {
      path_to_love_library = '', -- This disables LSP setup
    },
    keys = {
      { '<leader>v', ft = 'lua', desc = 'LÖVE' },
      { '<leader>vv', '<cmd>LoveRun<cr>', ft = 'lua', desc = 'Run LÖVE' },
      { '<leader>vs', '<cmd>LoveStop<cr>', ft = 'lua', desc = 'Stop LÖVE' },
    },
  },

  {
    'mbbill/undotree',
    lazy = false,

    vim.keymap.set('n', '<leader>uu', vim.cmd.UndotreeToggle, { noremap = true, silent = true, desc = 'Toggle undotree' }),
  },

  {
    'christoomey/vim-tmux-navigator',
    cmd = {
      'TmuxNavigateLeft',
      'TmuxNavigateDown',
      'TmuxNavigateUp',
      'TmuxNavigateRight',
      'TmuxNavigatePrevious',
    },
    keys = {
      { '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
      { '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>' },
      { '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>' },
      { '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>' },
      { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
    },
  },

  {
    'cbochs/grapple.nvim',
    dependencies = {
      { 'nvim-tree/nvim-web-devicons', lazy = true },
    },
    keys = {
      {
        '<leader>gm',
        function()
          require('grapple').toggle()
        end,
        desc = 'Grapple toggle',
      },
      {
        '<leader>gM',
        function()
          require('grapple').toggle_tags()
        end,
        desc = 'Grapple toggle tags',
      },
      { '<leader>1', '<cmd>Grapple select index=1<cr>', desc = 'Grapple select 1' },
      { '<leader>2', '<cmd>Grapple select index=2<cr>', desc = 'Grapple select 2' },
      { '<leader>3', '<cmd>Grapple select index=3<cr>', desc = 'Grapple select 3' },
      { '<leader>4', '<cmd>Grapple select index=4<cr>', desc = 'Grapple select 4' },
    },
  },

  {
    'github/copilot.vim',
    config = function()
      vim.g.copilot_enabled = 0
      -- Optional: Configure Copilot settings here
    end,
  },

  {
    'olimorris/codecompanion.nvim',
    opts = {},
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      require('codecompanion').setup {
        strategies = {
          chat = { adapter = 'copilot' },
          inline = { adapter = 'copilot' },
        },
        -- No model specification - use Copilot's default
      }

      vim.keymap.set('n', '<leader>cc', '<cmd>CodeCompanionChat<cr>')
      vim.keymap.set('n', '<leader>ci', '<cmd>CodeCompanion<cr>')
      vim.keymap.set('v', '<leader>ca', '<cmd>CodeCompanionActions<cr>')
    end,
  },

  {
    'm4xshen/hardtime.nvim',
    lazy = false,
    dependencies = { 'MunifTanjim/nui.nvim' },
    opts = {},
  },
}
