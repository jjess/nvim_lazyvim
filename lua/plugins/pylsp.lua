return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pylsp = {
          settings = {
            pylsp = {
              plugins = {
                pycodestyle = {
                  ignore = { "E501", "W191" , "E302", "E305" },
                },
              },
            },
          },
        },
      },
    },
  },
}
