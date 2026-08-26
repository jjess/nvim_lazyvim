-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- 20260806 JES
vim.opt.guifont="IBM Plex Mono:h11"

-- 20260818 JES
-- prueba para nvim con osc52
vim.g.clipboard = {
  name = "OSC52",
  copy = {
    ["+"] = function(lines, _)
      local text = table.concat(lines, "\n")
      local encoded = vim.fn.system("printf %s " .. vim.fn.shellescape(text) .. " | base64 -w0"):gsub("\n", "")
      io.stdout:write("\27]52;c;" .. encoded .. "\7")
    end,
    ["*"] = function(lines, _)
      local text = table.concat(lines, "\n")
      local encoded = vim.fn.system("printf %s " .. vim.fn.shellescape(text) .. " | base64 -w0"):gsub("\n", "")
      io.stdout:write("\27]52;c;" .. encoded .. "\7")
    end,
  },
  paste = {
    ["+"] = function()
      return vim.fn.getreg("+")
    end,
    ["*"] = function()
      return vim.fn.getreg("*")
    end,
  },
}
