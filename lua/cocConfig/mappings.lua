require "nvchad.mappings"

local map = vim.keymap.set

-- basic test mapping
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>", { desc = "Exit insert mode" })

-- COC mappings (insert mode)
-- map("i", "<CR>", function()
--   return vim.fn.pumvisible() == 1 and vim.fn["coc#_select_confirm"]() or "<CR>"
-- end, { expr = true, silent = true, desc = "coc accept completion" })
--
-- map("i", "<Tab>", function()
--   return vim.fn.pumvisible() == 1 and "<C-n>" or "<Tab>"
-- end, { expr = true, silent = true, desc = "coc next item" })
--
-- map("i", "<S-Tab>", function()
--   return vim.fn.pumvisible() == 1 and "<C-p>" or "<S-Tab>"
-- end, { expr = true, silent = true, desc = "coc previous item" })


vim.api.nvim_set_keymap("i", "<CR>", [[pumvisible() ? coc#_select_confirm() : "\<CR>"]], { expr = true, noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<Tab>", [[pumvisible() ? "\<C-n>" : "\<Tab>"]], { expr = true, noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<S-Tab>", [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]], { expr = true, noremap = true, silent = true })



-- COC mappings (normal mode)
map("n", "gd", "<Plug>(coc-definition)", { silent = true, desc = "coc definition" })
map("n", "K", ":call CocActionAsync('doHover')<CR>", { silent = true, desc = "coc hover" })
map("n", "<leader>rn", "<Plug>(coc-rename)", { desc = "coc rename" })
map("n", "<leader>f", "<Plug>(coc-format)", { desc = "coc format" })







-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
