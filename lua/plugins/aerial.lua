-- plugin para símbolos
return {
  {
    "stevearc/aerial.nvim",
    opts = {
      backends = { "treesitter", "lsp", "markdown" },
    },
    keys = {
      { "<leader>o", "<cmd>AerialToggle<cr>", desc = "Toggle outline" },
    },
  },
}
