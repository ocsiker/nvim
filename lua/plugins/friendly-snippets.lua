return {

  "rafamadriz/friendly-snippets",
  -- load snippets from path/of/your/nvim/config/my-cool-snippets
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load({ paths = "~/Alpha/sourceCode/snippets/Jsnippets" })
  end

}
