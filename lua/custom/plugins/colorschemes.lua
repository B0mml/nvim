return {

  { 'rebelot/kanagawa.nvim', lazy = false, priority = 1000, opts = {} },
  {
    'thesimonho/kanagawa-paper.nvim',
    lazy = false,
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'kanagawa-paper-ink'
    end,
    opts = { ... },
  },
  {
    'webhooked/kanso.nvim',
    lazy = false,
    priority = 1000,
  },
  { 'EdenEast/nightfox.nvim' },

  -- vim.cmd.colorscheme 'kanagawa-paper',
}
