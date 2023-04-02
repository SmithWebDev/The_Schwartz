return {
  'nvim-neo-tree/neo-tree.nvim',                    -- https://github.com/nvim-neo-tree/neo-tree.nvim
  opts = {
    close_if_last_window = true,
    window = {
      width = 30,
      mappings = {
      ["-"] = "open_split",
      ["\\"] = "open_vsplit",
      }
    }
  },
}

