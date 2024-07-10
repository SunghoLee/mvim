return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  keys = {
    {"<leader>fo", "<Cmd>:NvimTreeToggle<CR>"},
  },
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
  end,
}
