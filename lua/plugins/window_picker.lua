return {
  "s1n7ax/nvim-window-picker",
  version = '1.*',
  opts = {
    autoselect_one = true,
    include_current = false,
    bo = {
      filetype = { 'neo-tree', 'neo-tree-popup', 'notify' },
      buftype = { 'terminal', 'quickfix' }
    }
  }
}

