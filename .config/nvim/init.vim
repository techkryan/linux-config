"""""""""""""""""""""""""""""
" General adjustments
"""""""""""""""""""""""""""""

language en_US

set number relativenumber
set clipboard+=unnamedplus
set cursorline cursorlineopt=screenline,number
set ignorecase smartcase
set softtabstop=4 shiftwidth=4 expandtab " On pressing tab, insert N spaces instead of \t

" [lualine.nvim] Disable messages on the last line in Insert, Replace or Visual mode.
set noshowmode

" Switching between buffers
nnoremap <silent> <Tab> :bnext<CR>
nnoremap <silent> <S-Tab> :bprev<CR>

" nnoremap <A-j> ddp
" nnoremap <A-k> ddk<S-p>

xnoremap <A-j> dp'[<S-v>']
xnoremap <A-k> dk<S-p>'[<S-v>']

" Select the lasest pasted text
nnoremap gp '[v']
nnoremap gp `[v`]

" Terminal-Normal mode remappings
tnoremap <Esc> <C-\><C-n> "Leave terminal mode on <Esc>


"""""""""""""""""""""""""""""
" Sourcing lua config file
"""""""""""""""""""""""""""""

lua require('init')
