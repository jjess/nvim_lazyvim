return {
  {
    "preservim/nerdtree",
    dependencies = { "ryanoasis/vim-devicons" }, -- Opcional para iconos
    config = function()
      -- Opcional: Atajo de teclado para abrir/cerrar NERDTree con <leader>e
      vim.keymap.set("n", "<F3>", ":NERDTreeToggle<CR>", { desc = "Toggle NERDTree" })
    end,
  },
}
