return {
  "tpope/vim-fugitive",
  cmd = {
    "Git",
    "Gread",
    "Gwrite",
    "Gdiffsplit",
    "Gvdiffsplit",
    "Ggrep",
    "GMove",
    "GDelete",
    "GBrowse",
    "GRemove",
    "GRename",
    "Glgrep",
    "Gedit",
  },
  dependencies = {
    "tpope/vim-git",
  },
}, {
  "lewis6991/gitsigns.nvim",
    -- stylua: ignore
    cond = function() return not vim.o.diff end,
  opts = {
    signs = {
      add = { text = "▌" },
      change = { text = "▌" },
      delete = { text = "_" },
      topdelete = { text = "‾" },
      changedelete = { text = "~" },
      untracked = { text = "┆" },
    },
  },
  keys = {
    { "<leader>h", "<cmd>lua require('gitsigns').next_hunk()<cr>", desc = "Next Git Hunk" },
  },
}, {
  "sindrets/diffview.nvim",
  cmd = {
    "DiffviewOpen",
    "DiffviewClose",
    "DiffviewToggleFiles",
    "DiffviewLog",
    "DiffviewRefresh",
    "DiffviewFileHistory",
  },
  opts = {
    diff_binaries = true,
    enhanced_diff_hl = true,
    view = {
      default = {
        winbar_info = true,
      },
    },
    hooks = {
      diff_buf_read = function()
        vim.opt_local.list = false
        vim.opt_local.wrap = false

        vim.opt_local.cursorline = true
        vim.opt_local.number = true
        vim.opt.signcolumn = "no"
      end,
      view_closed = function()
        vim.opt.signcolumn = "auto"
      end,
    },
  },
  keys = {
    {
      "<leader>gd",
      function()
        local view = require("diffview.lib").get_current_view()

        if view then
          vim.cmd("DiffviewClose")
        else
          vim.cmd("DiffviewOpen")
        end
      end,
      desc = "Toggle diff view",
    },
  },
}
