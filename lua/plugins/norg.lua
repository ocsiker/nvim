local M = {
  "nvim-neorg/neorg",
  ft = "norg",
  keys = {
    {
      "<leader>cnwn",
      "<cmd> Neorg workspace Notes<cr>",
      desc = "change workspaces Notes"
    },
    {
      "<leader>cnwe",
      "<cmd> Neorg workspace English<cr>",
      desc = "change workspaces English"
    },
    {
      "<leader>ojt",
      "<cmd> Neorg journal today <cr>",
      desc = "open journal today"
    }, {
    "<leader>ojc",
    "<cmd> Neorg journal custom <cr>",
    desc = "open journal custom"
  }, {
    "<leader>ojn",
    "<cmd> Neorg journal tomorrow <cr>",
    desc = "open journal tomorrow"
  }
  },
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-treesitter/nvim-treesitter-textobjects",
    "nvim-cmp",
    "nvim-lua/plenary.nvim",
  },
  build = ":Neorg sync-parsers",
  cmd = "Neorg",
}
local modules = {
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
      workspace = { "Notes", "English" },
    },
    workspaces = {
      Notes = "~/Alpha/Notes",
      English = "~/Alpha/English",
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
        Notes = "~/Alpha/Notes",
        English = "~/Alpha/English",
      },
    },
  },
}

M.opts = {
  load = modules,
}
return M
