return {
  'TobinPalmer/rayso.nvim',
  cmd = { 'Rayso' },
  config = function()
    require('rayso').setup {
      options = {
        padding = 0,
        background = false,
        theme = "candy",
      },
    }
  end,
  lazy = false,
}
