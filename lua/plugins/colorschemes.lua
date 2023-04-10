return {
  {'vim-scripts/ScrollColors'},                         -- https://github.com/vim-scripts/ScrollColors
  {'yonlu/omni.vim'},                                   -- https://github.com/yonlu/omni.vim
  {'ldelossa/vimdark'},                                 -- https://github.com/ldelossa/vimarkd
  {'flazz/vim-colorschemes'},                           --https://github.com/flazz/vim-colorschemes
  {'rafi/awesome-vim-colorschemes'},                    --https://github.com/rafi/awesome-vim-colorschemes
  {'numToStr/Sakura.nvim'},                             --https://github.com/numToStr/Sakura.nvim
  {
    'B4mbus/oxocarbon-lua.nvim', --https://github.com/B4mbus/oxocarbon-lua.nvim
    init = function()
      vim.g.oxocarbon_lua_transparent = false
      vim.g.oxocarbon_lua_alternative_telescope = true
    end
  },
  {
    'folke/tokyonight.nvim',                          --https://github.com/folke/tokyonight.nvim
    opts = {
      dim_inactive = true,
      style = {
        comments = { italic = true },
        keywords = { italic = true },
        floats = 'dark',
        functions = { italic = true },
        sidebars = 'dark',
        variables = {},
      },
      sidebars = {},
      terminal_colors = true,
      transparent = true,
    }
  },
}
