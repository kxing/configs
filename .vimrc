" Set up standard spaces and tabs.
set tabstop=4
set shiftwidth=4
set expandtab

" Make navigation easier.
set number
set hlsearch
set ruler

" Make the UI more descriptive.
set showcmd
colorscheme elflord
syntax on

" Copy to the system clipboard.
set clipboard=unnamed

" Autocomplete for Vim, by mapping control + space to autocomplete.
inoremap <C-@> <C-N>
highlight Pmenu ctermfg=green ctermbg=darkblue
highlight PmenuSel ctermfg=green ctermbg=darkmagenta

" Reveal trailing whitespace.
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Indent when appropriate for the file type.
filetype plugin indent on

" Save more lines across sessions
set viminfo='20,<10000

" Highlight extra spaces.
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" ------------------------------------------------------------------------------
"  Coding in Rust
" ------------------------------------------------------------------------------
let g:rustfmt_autosave = 1

" ------------------------------------------------------------------------------
"  Coding in Typescript/Javascript with TSX/JSX
" ------------------------------------------------------------------------------
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx

" Initialize plugins for various languages
call plug#begin('~/.vim/plugged')
" Rust
Plug 'rust-lang/rust.vim'
" Javascript, Typescript, and JSX
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
call plug#end()
