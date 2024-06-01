" don't try to be vi compatible
set nocompatible

" turn on syntax highlighting
syntax on

" set 4 spaces globally & make indenting sane.
" ... Note that 'set paste' destroys indentation.
"
" we could also set `tabstop`, but let's
" keep tabs 'natural'.
set softtabstop=4 shiftwidth=4 expandtab autoindent

" make vim use the system clipboard
set clipboard^=unnamed,unnamedplus

" utf-8!
set encoding=utf-8 fileencoding=utf-8

" make searching easy, and case insensitive:
set ignorecase smartcase incsearch hlsearch

" map jj to Esc
:inoremap jj <esc>

" map to jump the different windows.
:nnoremap <c-j> <c-w>j
:nnoremap <c-k> <c-w>k
:nnoremap <c-l> <c-w>l
:nnoremap <c-h> <c-w>h

"show the searched results in the middle of the screen
:nnoremap n nzz
:nnoremap N Nzz
:nnoremap * *zz
:nnoremap # #zz

"go to definition
:nnoremap gd <C-]>zz

"gq->== Format codes
:nnoremap gq ==
:vnoremap gq ==

" **************************** Just for vimrc

" security
set modelines=0

" show line numbers
set number

" show file stats
set ruler

" blink cursor on error instead of beeping (grr)
set visualbell

" jump the current folder
set autochdir

" move up/down editor lines
nnoremap j gj
nnoremap k gk

" allow hidden buffers
set hidden

" rendering
set ttyfast

" Last line
set showmode
set showcmd

" **************************** Just for vimrc

" TODO: Pick a leader key
let mapleader = ","


" 'cd' towards the directory in which the current file is edited
nnoremap <leader>cd :cd %:h<CR>

" searching
nnoremap / /\v
vnoremap / /\v
map <leader><space> :let @/=''<cr> " clear search

" remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" color scheme (terminal)
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
" put https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim
" in ~/.vim/colors/ and uncomment:
" colorscheme solarized


" pressing the letter o will open a new line below the current one.
" exit insert mode after creating a new line above or below the current line.
" nnoremap o o<esc>
" nnoremap O O<esc>

" Enable use of the mouse for all modes
if has('mouse')
  set mouse=a
endif
