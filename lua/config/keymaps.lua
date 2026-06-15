-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 20260612 JES
-- mapleader alternativo
-- vim.g.maplocalleader = ","

-- usar portapapeles del sistema
vim.opt.clipboard = "unnamedplus"

vim.keymap.set("v", "<leader>Y", '"+y', { desc = "Copy to system clipboard" })

local map = vim.keymap.set
-- copiar al clipboard del sistema
-- no va bien
-- map("n", ",y", '"+y', { desc = "Yank to system clipboard" })
-- map("v", ",y", '"+y', { desc = "Yank to system clipboard (visual)" })
-- map("n", ",yy", '"+yy', { desc = "Yank line to system clipboard" })
-- pegar desde clipboard del sistema
-- map("n", ",p", '"+p', { desc = "Paste from system clipboard" })
-- map("n", ",P", '"+P', { desc = "Paste before from system clipboard" })
-- map("v", ",p", '"+p', { desc = "Paste over selection from system clipboard" })



