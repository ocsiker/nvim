local M = {
  "nvim-neorg/neorg",
  ft = "norg",
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
  ["core.export.markdown"] = { config = { extensions = "all" } },
  ["core.summary"] = {},
  ["core.tangle"] = { config = { report_on_empty = false } },
  ["core.ui.calendar"] = {},
  ["core.defaults"] = {},
  ["core.completion"] = { config = { engine = "nvim-cmp", name = "[Norg]" } },
  ["core.integrations.nvim-cmp"] = {},
  ["core.concealer"] = { config = { icon_preset = "diamond" } },
  ["core.journal"] = {
    config = {
      workspaces = {
        Notes = "~/Alpha/Notes",
        English = "~/Alpha/English",
      }
    }
  },
  ["core.keybinds"] = {
    -- https://github.com/nvim-neorg/neorg/blob/main/lua/neorg/modules/core/keybinds/keybinds.lua
    config = {
      default_keybinds = false,
    },
  },
  ["core.dirman"] = {
    config = {
      workspaces = {
        Notes = "~/Alpha/Notes",
        English = "~/Alpha/English",
      }
    }
  },
}
M.opts = {
  load = modules,
}
return M
