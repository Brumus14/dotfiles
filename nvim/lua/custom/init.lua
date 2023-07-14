vim.wo.foldmethod = "marker"

vim.api.nvim_create_autocmd({"BufEnter", "BufNew"}, {
  pattern = "*.frag",
  callback = function()
    vim.schedule(function()
      vim.cmd("set filetype=glsl")
    end)
  end,
})
