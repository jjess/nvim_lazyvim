return {
  "nickjvandyke/opencode.nvim",

  opts = {
    server = {
      url = "http://192.168.0.128:4096",
    },
  },

  init = function()
    vim.g.opencode_opts = {
        server = {
          url = "http://192.168.0.128:4096",
        },
      }
  end,

  keys = {
    {
      "<C-a>",
      function()
        require("opencode").ask("@this: ")
      end,
      mode = { "n", "x" },
      desc = "Ask OpenCode",
    },
    {
      "<C-x>",
      function()
        require("opencode").select()
      end,
      mode = { "n", "x" },
      desc = "Select OpenCode",
    },
    {
      "go",
      function()
        return require("opencode").operator("@this ")
      end,
      mode = "n",
      expr = true,
      desc = "Append range to OpenCode",
    },
    {
      "go",
      function()
        return require("opencode").operator("@this ")
      end,
      mode = "x",
      expr = true,
      desc = "Append selection to OpenCode",
    },
    {
      "goo",
      function()
        return require("opencode").operator("@this ") .. "_"
      end,
      mode = "n",
      expr = true,
      desc = "Append line to OpenCode",
    },
    {
      "<S-C-u>",
      function()
        require("opencode").command("session.half.page.up")
      end,
      mode = "n",
      desc = "Scroll OpenCode up",
    },
    {
      "<S-C-d>",
      function()
        require("opencode").command("session.half.page.down")
      end,
      mode = "n",
      desc = "Scroll OpenCode down",
    },
  },
}
