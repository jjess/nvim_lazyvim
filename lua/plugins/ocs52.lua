return {
  {
    "ojroques/nvim-osc52",
    config = function()
      require("osc52").setup({
        max_length = 0,
        silent = true,
      })

      vim.keymap.set("v", "<leader>y", function()
        require("osc52").copy_visual()
      end, { desc = "Copy to local clipboard" })
    end,
  },
}
