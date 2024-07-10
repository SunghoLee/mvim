return {
  "lervag/vimtex",
  lazy = false,     -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here
    vim.g.vimtex_view_general_viewer = 'skimpdf'
    vim.g.vimtex_compiler_method = 'latexmk'
    vim.g.tex_flavor='lualatex'
    vim.g.vimtex_view_skim_sync = 1
    vim.g.vimtex_view_method = 'skim'
    vim.g.vimtex_view_skim_activate = 1
    vim.g.vimtex_compiler_latexmk = {
    options = {
        --'-verbose',
        --'-file-line-error',
        --'-synctex=1',
        --'-interaction=nonstopmode',
        '-shell-escape',
    },
}
  end
}
