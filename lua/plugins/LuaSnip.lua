return {
  lazy = false, --make snippets not load twice VERY IMPORTANT
  "L3MON4D3/LuaSnip",
  version = "2.*",
  build = "make install_jsregexp",
  dependencies = {
    "rafamadriz/friendly-snippets",
    -- load snippets from path/of/your/nvim/config/my-cool-snippets
    --make run from snippets
    "honza/vim-snippets",
    --make run from json vscode path with S paths
    --make run from snippets ---PATH not s just path
    require("luasnip.loaders.from_snipmate").lazy_load({ paths = { "~/Alpha/sourceCode/snippets/Hsnippets" } }),
    require("luasnip.loaders.from_vscode").lazy_load({ paths = { "~/Alpha/sourceCode/snippets/Jsnippets" } }),
    -- require("luasnip.loaders.from_snipmate").lazy_load({ paths = { "~/.config/nvim/snippets/" } }),
    --add file type
    require("luasnip").filetype_extend({ "uml" }, { "plantuml" }),
    -- require("luasnip.loaders.from_vscode").load(),
    require("luasnip").filetype_extend({ "sql" }, { "mysql" }),
  },
  opts = {
    -- require("luasnip.loaders.from_snipmate").lazy_load({ paths = { "~/Alpha/sourceCode/snippets/Hsnippets" } }),
    -- --add file type
    -- require("luasnip").filetype_extend({ "uml" }, { "plantuml" }),
    -- require("luasnip.loaders.from_vscode").lazy_load({ paths = { "~/Alpha/sourceCode/snippets/Jsnippets" } }),
    -- require("luasnip").filetype_extend({ "sql" }, { "mysql" }),
    history = true,
    delete_check_events = "TextChanged",
    enable_autosnippets = true,
    vim.cmd("command! LuaSnipEdit lua require('luasnip.loaders').edit_snippet_files()"),
    vim.cmd("command! LuaSnipStart lua require('luasnip')"),
  },
  -- stylua: ignore
}
