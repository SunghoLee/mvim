return {
  'akinsho/toggleterm.nvim',  -- 플러그인 repository
  version = "*",  -- 버전
  config = function()
    require("toggleterm").setup({
      -- 터미널 설정
    })
    -- 터미널 모드에서 ESC를 눌렀을 때 Normal 모드로 전환
    vim.api.nvim_set_keymap('t', '<ESC>', '<C-\\><C-n>', {noremap = true, silent = true})
    vim.api.nvim_set_keymap('n', '<C-\\>', ':ToggleTerm<CR>', {noremap = true, silent = true})
  end,
  lazy = false,
  size = 5,
  open_mapping = [[<c-\>]],  -- 터미널을 여는 단축키
  hide_numbers = true,  -- 넘버링 숨기기
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 2,
  start_in_insert = true,
  insert_mappings = true,  -- Insert 모드에서 단축키 활성화
  persist_size = true,
  direction = 'horizontal',  -- 기본 방향 설정 ('horizontal', 'vertical', 'tab' 중 선택)
  close_on_exit = true,  -- 터미널 프로세스 종료 시 터미널도 닫기
  shell = vim.o.shell,  -- 기본 쉘 사용
}

