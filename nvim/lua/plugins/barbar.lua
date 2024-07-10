return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  opts = {},
  keys = {
    {'<A-,>', '<Cmd>BufferPrevious<CR>'},
    {'<A-.>', '<Cmd>BufferNext<CR>'},
    {'<A-<>', '<Cmd>BufferMovePrevious<CR>'},
    {'<A->>', '<Cmd>BufferMoveNext<CR>'},
    {'<A-1>', '<Cmd>BufferGoto 1<CR>'},
    {'<A-2>', '<Cmd>BufferGoto 2<CR>'},
    {'<A-3>', '<Cmd>BufferGoto 3<CR>'},
    {'<A-4>', '<Cmd>BufferGoto 4<CR>'},
    {'<A-5>', '<Cmd>BufferGoto 5<CR>'},
    {'<A-6>', '<Cmd>BufferGoto 6<CR>'},
    {'<A-7>', '<Cmd>BufferGoto 7<CR>'},
    {'<A-8>', '<Cmd>BufferGoto 8<CR>'},
    {'<A-9>', '<Cmd>BufferGoto 9<CR>'},
    {'<A-0>', '<Cmd>BufferLast<CR>'},
    {'<A-p>', '<Cmd>BufferPin<CR>'},
    {'<A-c>', '<Cmd>BufferClose<CR>'},
    {'<C-p>', '<Cmd>BufferPick<CR>'},
    {'<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>'},
    {'<Space>bn', '<Cmd>BufferOrderByName<CR>'},
    {'<Space>bd', '<Cmd>BufferOrderByDirectory<CR>'},
    {'<Space>bl', '<Cmd>BufferOrderByLanguage<CR>'},
    {'<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>'},
  },
  lazy = false,
  init = function() vim.g.barbar_auto_setup = false end,
  version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
