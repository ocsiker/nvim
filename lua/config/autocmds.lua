-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

vim.api.nvim_create_autocmd("FileType", {
  group = augroup("Commentary_ft"),
  pattern = { "sql", "mysql" },
  command = [[setlocal commentstring=--\ %s]],
})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufFilePre", "BufRead" }, {
  group = augroup("sql_ft"),
  pattern = { "mysql" },
  command = [[set filetype=sql]],
})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufFilePre", "BufRead" }, {
  group = augroup("cobol_ft"),
  pattern = { "cobol", "cbl" },
  command = [[set filetype=cobol]],
})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufFilePre", "BufRead" }, {
  group = augroup("bash_ft"),
  pattern = { "sh", "bash" },
  command = [[set filetype=sh]],
})
