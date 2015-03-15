set tabstop=4
set shiftwidth=4
set expandtab
set number
set showcmd
set hlsearch
colorscheme elflord
syntax on
"set clipboard+=unnamed

" Autocomplete for Vim
imap <NUL> <C-N>
highlight Pmenu ctermfg=green ctermbg=darkblue
highlight PmenuSel ctermfg=green ctermbg=darkmagenta

" Code folding
"au BufWinLeave ?* mkview
"au BufWinEnter ?* silent loadview

" System clipboard support
"set clipboard+=unnamed

au BufRead *.cpp syn keyword cilkkeywords cilk_spawn cilk_sync cilk_for
au BufRead *.cpp hi def link cilkkeywords Conditional
au BufRead *.c syn keyword cilkkeywords cilk_spawn cilk_sync cilk_for
au BufRead *.c hi def link cilkkeywords Conditional

" Switch between .h and .cpp files
"map <NUL> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
map <NUL> :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>

"set rtp+=$GOROOT/misc/vim
"filetype plugin indent on

" Save more lines across sessions
set viminfo='20,<10000

" Highlight extra spaces.
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
