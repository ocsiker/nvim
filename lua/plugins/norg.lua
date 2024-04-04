local wk = require("which-key")
return {
  {
    "vhyrro/luarocks.nvim",
    priority = 1000, -- We'd like this plugin to load first out of the rest
    config = true, -- This automatically runs `require("luarocks-nvim").setup()`
  },
  {
    "nvim-neorg/neorg",
    -- put any other flags you wanted to pass to lazy here!
    ft = "norg",
    version = "*",
    dependencies = {
      "luarocks.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-treesitter/nvim-treesitter-textobjects",
      "rebelot/kanagawa.nvim",
      "nvim-cmp",
      "nvim-lua/plenary.nvim",
    },
    cmd = "Neorg",
    config = function()
      require("neorg").setup({

        load = {
          ["core.esupports.metagen"] = { config = { type = "auto", update_date = true } },
          ["core.qol.toc"] = {},
          ["core.qol.todo_items"] = {},
          ["core.looking-glass"] = {},
          ["core.presenter"] = { config = { zen_mode = "zen-mode" } },
          ["core.export"] = {},
          ["core.highlights"] = {},
          ["core.export.markdown"] = { config = { extensions = "all" } },
          ["core.summary"] = {},
          ["core.tangle"] = { config = { report_on_empty = false } },
          ["core.ui.calendar"] = {},
          ["core.defaults"] = {},
          ["core.completion"] = { config = { engine = "nvim-cmp", name = "[Norg]" } },
          ["core.integrations.nvim-cmp"] = {},
          ["core.concealer"] = {},
          ["core.journal"] = {
            config = {
              strategy = "flat",
              workspaces = {
                notepdf = "$HOME/Alpha/Documents/notePdf",
                Notes = "$HOME/Alpha/Notes",
                English = "$HOME/Alpha/English",
              },
            },
          },

          ["core.keybinds"] = {
            -- https://github.com/nvim-neorg/neorg/blob/main/lua/neorg/modules/core/keybinds/keybinds.lua
            config = {
              default_keybinds = true,
            },
          },
          ["core.dirman"] = {
            config = {
              workspaces = {
                notepdf = "$HOME/Alpha/Documents/notePdf",
                Notes = "$HOME/Alpha/Notes",
                English = "$HOME/Alpha/English",
              },
              default_workspace = "Notes", --default_workspace
            },
          },
        },
      })
    end,
    --key bindings
    wk.register({
      ["<leader>o"] = { name = "+norg" },
      ["<leader>oj"] = { name = "+norg journal" },
      ["<leader>cn"] = { name = "+norg change workspace" },
      ["<leader>ojt"] = { "<cmd>Neorg journal today <CR>", desc = "open journal today" },
      ["<leader>ojc"] = { "<cmd>Neorg journal custom <CR>", desc = "open journal custom" },
      ["<leader>ojn"] = { "<cmd>Neorg journal tomorrow <CR>", desc = "open journal tomorrow" },
      ["<leader>cnwn"] = { "<cmd>Neorg workspace Notes <CR>", desc = "change workspaces Notes" },
      ["<leader>cnwe"] = { "<cmd>Neorg workspace English <CR>", desc = "change workspaces English" },
    }),
  },
}
