return {
  "vhyrro/luarocks.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-neotest/nvim-nio",
    "nvim-neorg/lua-utils.nvim",
    "nvim-lua/plenary.nvim",
  },
  priority = 1000,
  opts = { rocks = { "magick" } },
  config = true,
}
