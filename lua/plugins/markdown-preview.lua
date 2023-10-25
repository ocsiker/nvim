return {
  "iamcco/markdown-preview.nvim",
  lazy = false,
  config = function()
    vim.fn["mkdp#util#install"]()
  end,
  keys = {
    vim.keymap.set({ "n" }, "<leader>p", "<Plug>MarkdownPreviewToggle", { desc = "toggle markdown preview" })
  }
}
