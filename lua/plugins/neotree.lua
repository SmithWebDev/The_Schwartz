return {
  {
    'nvim-neo-tree/neo-tree.nvim',                    -- https://github.com/nvim-neo-tree/neo-tree.nvim
    opts = {
      close_if_last_window = true,
      filesystem = {
        window = {
          width = 30,
          mappings = {
            ["-"] = "open_split",
            ["\\"] = "open_vsplit",
          },
        },
      },
    },
  },
  {
    's1n7ax/nvim-window-picker',                  -- https://github.com/s1n7ax/nvim-window-picker
    event = 'VeryLazy',
    version = '1.*',
    opts = {
      autoselect_one = true,
      include_current_win = false,
      filter_rules = {
        -- filter using buffer options
        bo = {
          -- if the file type is one of following, the window will be ignored
          filetype = { 'neo-tree', "neo-tree-popup", "notify" },

          -- if the buffer type is one of following, the window will be ignored
          buftype = { 'terminal', "quickfix" },
        },
      },
      other_win_hl_color = '#e35e4f',
    },
    keys ={
      {
        '<leader>/',
        function()
          local picked_window_id = require('window-picker').pick_window() or vim.api.nvim_get_current_win()
          vim.api.nvim_set_current_win(picked_window_id)
        end,  desc = 'Pick a Window'
      },
    }
  }
}
