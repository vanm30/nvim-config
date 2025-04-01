require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

vim.keymap.set("n", "<C-right>", [[<cmd>vertical resize +5<cr>]])
vim.keymap.set("n", "<C-left>", [[<cmd>vertical resize -5<cr>]])
vim.keymap.set("n", "<C-up>", [[<cmd>horizontal resize +2<cr>]])
vim.keymap.set("n", "<C-down>", [[<cmd>horizontal resize -2<cr>]])


-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
