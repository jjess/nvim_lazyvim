return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      pickers = {
        buffers = {
          mappings = {
            n = {
              ["d"] = require("telescope.actions").delete_buffer,
            },
            i = {
              ["<C-d>"] = require("telescope.actions").delete_buffer,
            },
          },
        },
      },
    },
    keys = {
      {
        "<F4>",
        "<cmd>Telescope buffers<cr>",
        desc = "Telescope Buffers",
      },
    },
  },
}
