return {
  'L3MON4D3/LuaSnip',                               -- https://github.com/L3MON4D3/LuaSnip
  event = "VeryLazy",
  build = 'make install_jsregexp',
  keys = function()
    return {
      { "<C-l>",
        function()
          if require('luasnip').choice_active() then
            require('luasnip').change_choice(1)
          end
        end, mode = { "i", "s" }
      },
      { "<C-h>",
        function()
          if require('luasnip').choice_active() then
            require('luasnip').change_choice(-1)
          end
        end, mode = { "i", "s" }
      },
      {
        "<C-j>",
        function()
          if require('luasnip').jumpable(1) then
            require('luasnip').jump()
          end
        end, mode = { "i", "s" }
      },
      {
        "<C-k>",
        function()
          if require('luasnip').jumpable(-1) then
            require('luasnip').jump(-1)
          end
        end, mode = { "i", "s" }
      }
    }
  end,
  config = function()
    local ls = require('luasnip')
    local types = require('luasnip.util.types')


    ls.config.set_config {
      history = true,
      updateevents = "TextChanged, TextChangedI",
      ext_base_prio = 200,
      ext_prio_increase = 1,
      enable_autosnippets = true,
      store_selection_keys = "<c-s>",
      ext_opts = {
        [types.choiceNode] = {
          active = {
            virt_text = { { "●", "#ff0000" } }, -- { '<- Current Choice', 'NonTest' }
          },
        },
      },
    }

    --require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/smithwebdev/snippets/" })
    require("luasnip.loaders.from_lua").load({ paths = "~/.config/Lazy/lua/snippets/" })

    --[[ keybinds ]]
    --
    --------------------------------------------------------------------------------
    --vim.keymap.set({ "i", "s" }, "<C-l>", function()
    --  if ls.choice_active() then
    --    ls.change_choice(1)
    --  end
    --end)
    --vim.keymap.set({ "i", "s" }, "<C-h>", function()
    --  if ls.choice_active() then
    --    ls.change_choice(-1)
    --  end
    --end)

    --vim.keymap.set({ "i", "s" }, "<C-j>", function()
    --  if ls.jumpable(1) then
    --    ls.expand_or_jump()
    --  end
    --end)
    --vim.keymap.set({ "i", "s" }, "<C-k>", function()
    --  if ls.jumpable(-1) then
    --    ls.jump(-1)
    --  end
    --end)

    --vim.cmd([[command! LuaSnipEdit :lua require("luasnip.loaders.from_lua").edit_snippet_files()]])
    --vim.keymap.set("n", "<leader><leader>se", ":LuaSnipEdit<CR>", { desc = 'Edit LuaSnip', silent = true })
    --vim.keymap.set({ "i", "s" }, "<c-u>", '<cmd>lua require("luasnip.extras.select_choice")()<cr><C-c><C-c>')
  end
}
--return{
--  'L3MON4D3/LuaSnip',                               -- https://github.com/L3MON4D3/LuaSnip
--  opts = {
--    history = true,
--    updateevents = "TextChanged, TextChangedI",
--    ext_base_prio = 200,
--    ext_prio_increase = 1,
--    enable_autosnippets = true,
--    store_selection_keys = "<c-s>",
--    ext_opts = {
--      [require('luasnip.util.types').choiceNode] = {
--        active = {
--          virt_text = { { "●", "#ff0000" } }, -- { '<- Current Choice', 'NonTest' }
--        },
--      },
--    },
--  },
--}

