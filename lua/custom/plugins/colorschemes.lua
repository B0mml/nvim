return {

  { 'rebelot/kanagawa.nvim', lazy = false, priority = 1000, opts = {} },
  {
    'thesimonho/kanagawa-paper.nvim',
    lazy = false,
    priority = 1000,
    -- init = function()
    --   vim.cmd.colorscheme 'kanagawa-paper-ink'
    -- end,
    opts = { ... },
  },
  {
    'navarasu/onedark.nvim',
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('onedark').setup {
        style = 'darker',
      }
      -- Enable theme
      require('onedark').load()
    end,
  },
  {
    'webhooked/kanso.nvim',
    lazy = false,
    priority = 1000,
  },
  { 'EdenEast/nightfox.nvim' },
  {
    'AlexvZyl/nordic.nvim',
  },
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },

  { 'diegoulloao/neofusion.nvim', priority = 1000, config = true, opts = ... },
  -- vim.cmd.colorscheme 'kanagawa-paper',
}
