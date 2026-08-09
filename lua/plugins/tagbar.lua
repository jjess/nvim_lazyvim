-- vim.g.tagbar_ctags_bin = "/usr/local/bin/uctags" 

return {
  {
    "preservim/tagbar",
    cmd = "TagbarToggle", -- lazy load

    init = function()
      vim.g.tagbar_ctags_bin = "/usr/local/bin/uctags"
    end,

    keys = {
      { "<F8>", "<cmd>TagbarToggle<CR>", desc = "Toggle Tagbar" },
    },

  },
}
