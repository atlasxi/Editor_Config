vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.number = true
vim.g.mapleader = ","
vim.g.maplocalleader = ","


vim.keymap.set(
  "n",
  "<leader>g",
  function()
    local filename = vim.fn.expand("%:p")
    local filebase = vim.fn.fnamemodify(filename, ":t:r")

    local compile_and_run_cmd = string.format(
      ":split | :term g++ -std=c++14 -Wshadow -Wall -o %s %s -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG && ./%s",
      filebase, filename, filebase)

    vim.cmd(compile_and_run_cmd)
  end,
  { noremap = true, silent = true, desc = "runCpp" }
)
