-- Configure linters by file type
require('lint').linters_by_ft = {
  markdown = {'eslint_d'}
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})


-- Autofix entire buffer with eslint_d:
vim.api.nvim_set_keymap('n', '<leader>f', [[:%!eslint_d --stdin --fix-to-stdout<CR>:update<CR>`<]], {noremap = true})

-- Autofix visual selection with eslint_d:
vim.api.nvim_set_keymap('v', '<leader>f', [[:!eslint_d --stdin --fix-to-stdout<CR>gv]], {noremap = true})
