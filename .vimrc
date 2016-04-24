execute pathogen#infect()

" Allow xterm-emulators to use lots of colors
if &term =~ "xterm"
	let &t_Co=256
endif

" nelstrom@vim-markdown-folding said we needed this
if has("autocmd")
	filetype plugin indent on
endif

" Unsorted
colorscheme cyanotype
set nocompatible

" Editing related
syntax enable
set encoding=utf-8
set number
set mouse=a
set noexpandtab
set tabstop=8
set shiftwidth=8
set autoindent
set smartindent
set nowrap
set ruler
set nobackup
set hlsearch
set backspace=indent,eol,start
set scrolloff=5

" Pretty much required performance-fix when highlighting current line and column
set lazyredraw

" Always show status line
set laststatus=2

" Disable bells
set noerrorbells
set novisualbell

" Disable arrows keys, home and end in normal mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
map <home> <nop>
map <end> <nop>

" Disable arrows keys, home and end in insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
imap <home> <nop>
imap <end> <nop>

" Paste from clipboard by double-tapping Ctrl+P (normal mode only)
nnoremap <C-p><C-p> "+p

" Copy to clipboard by double-tapping Ctrl+Y (visual mode only)
xnoremap <C-y><C-y> "+y

" Don't autocomplete for these suffixes when tabbing through files
set suffixes=.swp,.pyc,.pyo

" Open NERDTree with Ctrl+n
nnoremap <C-n> :NERDTreeToggle<CR>

" Hide certain file types for NERDTree
let NERDTreeIgnore=['\.o$', '\~$', '\.py[co]$', '\.aux', '\.pdf']

" Simplify NERDTree icons for terminals having trouble with UTF-8
let g:NERDTreeDirArrows = 0

" Open Tagbar
nnoremap <leader>t :TagbarToggle<CR>

"
let g:syntastic_php_checkers = ['php']

" Quickly set breakpoint for Vdebug
nnoremap <leader>b :Breakpoint<cr>

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" Text editing rules
autocmd BufRead,BufNewFile *.{txt,md,rst,tex} setlocal wrap linebreak

