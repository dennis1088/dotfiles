" Prevent user from using arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Use the space key as our leader.
let mapleader = "\<Space>"

" ==========
" Plugins
" ==========
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Collection of color schemes
Plug 'rafi/awesome-vim-colorschemes'

" Dracula color theme
Plug 'dracula/vim', { 'as': 'dracula' }

" More text objects
Plug 'wellle/targets.vim'

" See contents of registers
Plug 'junegunn/vim-peekaboo'

" Auto expands current split
" Plug 'roman/golden-ratio'
" Currently causing issue with nvim

" Navigate files in folder
Plug 'scrooloose/nerdtree'

" Fuzzy search for files
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Jump to or highlight matching pairs
Plug 'andymass/vim-matchup'

" Automatically add pairs for parenthesis etc.
Plug 'jiangmiao/auto-pairs'

" Automatically add ends for common control structures
Plug 'tpope/vim-endwise'

" Automatically close html tags
Plug 'alvan/vim-closetag'

" Comment lines of code
Plug 'tpope/vim-commentary'

" Surround text with quotes or brackets
Plug 'machakann/vim-sandwich'

" Ability to add multiple cursors like Sublime
Plug 'mg979/vim-visual-multi'

" A plugin for rails
Plug 'tpope/vim-rails'

" Puts buffers on the tabline
" Plug 'ap/vim-buftabline'

" Grep like source code search tool
Plug 'mileszs/ack.vim'

call plug#end()

" Set the color scheme
colorscheme dracula

" Show line numbers
set number

" Limit lines to 80 characters
set textwidth=80

" To abondon buffers without saving
set hidden

" Splits
set splitbelow " Open vertical split below
set splitright " Open horizontal split on the right

" Navigate splits
nnoremap <C-h> <C-w>h " Ctrl + h to move to left split
nnoremap <C-l> <C-w>l " Ctrl + l to move to right split

" ==========
" NERDTree
" ==========
let NERDTreeShowHidden=1 " Show hidden files in tree
let NERDTreeQuitOnOpen=1 " Quit nerd tree when a file is opened
map <Leader>n :NERDTreeFind<CR> " Leader + n to open NERDTREE

" Case-insensitve search when lower case case-sensitive otherwise
set smartcase

" Turn off search highlighting by pressing Enter
" nnoremap <CR> :noh
" Overriding enter when opeining search result from ack quickfix window

" Search for a search patter
nnoremap <C-F> :Ack 

" Search for a file by name using fzf
nnoremap <C-P> :FZF<CR>

" Add erb files for html close tag plugin
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.html.erb'

" Split edit your vimrc.
nmap <leader>vr :sp $MYVIMRC<cr>

" Source (reload) your vimrc.
nmap <leader>so :source $MYVIMRC<cr>
