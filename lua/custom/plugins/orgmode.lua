return {
  {
    'nvim-orgmode/orgmode',
    event = 'VeryLazy',
    ft = { 'org' },
    config = function()
      -- Fix shellslash for Windows
      if vim.fn.has 'win32' == 1 then vim.opt.shellslash = true end

      -- Setup orgmode
      require('orgmode').setup {
        org_agenda_files = '~/org/*',
        org_default_notes_file = '~/org/inbox.org',

        -- Hide emphasis markers (optional - hides *bold* /italic/ markers)
        org_hide_emphasis_markers = true,
      }

      -- Enable concealment for org files
      vim.api.nvim_create_autocmd('FileType', {
        pattern = 'org',
        callback = function()
          -- Enable concealment for links and emphasis
          vim.opt_local.conceallevel = 2
          vim.opt_local.concealcursor = 'nc'

          -- Better text handling
          vim.opt_local.wrap = true
          vim.opt_local.linebreak = true
          vim.opt_local.breakindent = true
        end,
      })
    end,
  },
  {
    'akinsho/org-bullets.nvim',
    ft = 'org',
    config = function()
      require('org-bullets').setup {
        symbols = {
          headlines = { '◉', '○', '✸', '✿' },
          checkboxes = {
            half = { '', 'OrgTSCheckboxHalfChecked' },
            done = { '✓', 'OrgTSCheckboxChecked' },
            todo = { '○', 'OrgTSCheckboxUnchecked' },
          },
        },
      }
    end,
  },
}
