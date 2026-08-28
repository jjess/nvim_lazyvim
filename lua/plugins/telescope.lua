return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "gmake",
      },
    },

    opts = function(_, opts)
      local actions = require("telescope.actions")

      opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
        layout_strategy = "horizontal",
        sorting_strategy = "ascending",
        prompt_prefix = " ",
        selection_caret = " ",
        path_display = { "smart" },

        layout_config = {
          horizontal = {
            preview_width = 0.55,
          },
          width = 0.90,
          height = 0.85,
        },

        mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<Esc>"] = actions.close,
          },
        },
      })

      opts.extensions = opts.extensions or {}
      opts.extensions.fzf = {
        fuzzy = true,
        override_generic_sorter = true,
        override_file_sorter = true,
        case_mode = "smart_case",
      }

      return opts
    end,

    keys = {
      {
        "<leader>fw",
        function()
          require("telescope.builtin").grep_string()
        end,
        desc = "Find Word",
      },
      {
        "<leader>ff",
        function()
          require("telescope.builtin").find_files()
        end,
        desc = "Find Files",
      },
      {
        "<leader>fg",
        function()
          require("telescope.builtin").live_grep()
        end,
        desc = "Live Grep",
      },
      {
        "<leader>fb",
        function()
          require("telescope.builtin").buffers()
        end,
        desc = "Find Buffers",
      },
      {
        "<leader>fh",
        function()
          require("telescope.builtin").help_tags()
        end,
        desc = "Help",
      },
    },
  },
}
