execute pathogen#infect()
syntax on
filetype plugin indent on
let g:solarized_termtrans=1
set background=light
colorscheme solarized
set number
syntax enable

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
""set relativenumber
""set undofile


set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

let mapleader=","
map <C-n> :NERDTreeToggle<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
:nmap <c-p>m :CtrlPMixed<CR>
:nmap <c-p>b :CtrlPBuffer<CR>
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*


:nmap <Space> <PageDown>
:nmap <Space-k> <PageUp>
imap <silent> <C-C> <C-R>=string(eval(input("Calculate: ")))<CR>  

"nmap <space> [on! s:unite_settings()
"nmap <buffer> Q <plug>(unite_exit)
"nmap <buffer> <esc> <plug>(unite_exit)
"imap <buffer> <esc> <plug>(unite_exit)
"endfunction
" autocmd FileType unite call s:unite_settings()ite]

nmap <space> [unite]
nnoremap [unite] <nop>

nnoremap <silent> [unite]e :<C-u>Unite -buffer-name=recent<cr>
nnoremap <silent> [unite]y :<C-u>Unite -buffer-name=yanks history/yank<cr>
nnoremap <silent> [unite]l :<C-u>Unite -auto-resize -buffer-name=line line<cr>
nnoremap <silent> [unite]b :<C-u>Unite -auto-resize -buffer-name=buffers buffer<cr>
nnoremap <silent> [unite]/ :<C-u>Unite -no-quit -buffer-name=search grep:.<cr>
nnoremap <silent> [unite]m :<C-u>Unite -auto-resize -buffer-name=mappings mapping<cr>
nnoremap <silent> [unite]s :<C-u>Unite -quick-match buffer<cr>

" set cursor apperance, block for normal mode and stoke for insert
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

" smash escape
inoremap jk <esc>
inoremap kj <esc>

autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

set swapfile
set dir=~/tmp
