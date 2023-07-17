return {
  {
    'mattn/emmet-vim', -- https://github.com/mattn/emmet-vim
    init = function()
      vim.g.user_emmet_leader_key = '<Tab>,'
      vim.g.user_emmet_settings = {
        javascript = {
          attribute = {
            { ['for'] = 'htmlFor' },
            { ['class'] = 'className' }
          },
          javascript = { extends = 'jsx' },
          typescript = { extends = 'tsx' }
          -- ['erb'] = {
          --   {extends = 'html'}
          --   },
        }
      }
      vim.g.user_emmet_mode = 'inv'
    end
  },
}
