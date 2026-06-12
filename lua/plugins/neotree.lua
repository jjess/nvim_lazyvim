return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      {
        "<F3>",
        function()
          require("neo-tree.command").execute({
            toggle = true,
            dir = vim.loop.cwd(),
          })
        end,
        desc = "NeoTree (cwd)",
      },
    },
  },
}
