return {
    "cpea2506/one_monokai.nvim",
    dependencies = {
      "nvim-lualine/lualine.nvim",
    },
    priority = 1000,
    config = function()
      require("lualine").setup {
        options = {
            theme = "one_monokai"
        }
      }

      vim.cmd [[colorscheme one_monokai]]
    end,
    options = {
      transparent = true,
      italics = true,
    },
}
