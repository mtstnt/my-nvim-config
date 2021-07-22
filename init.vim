" Note that the plugin file location might be different. You might want to recheck it manually.
call plug#begin()
    " Plugin Section
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'valloric/youcompleteme'
    Plug 'morhetz/gruvbox'
	  Plug 'preservim/nerdtree'
    Plug 'mattn/emmet-vim'
    Plug 'danilo-augusto/vim-afterglow'
    Plug 'dart-lang/dart-vim-plugin'
    Plug 'natebosch/vim-lsc'
    Plug 'natebosch/vim-lsc-dart'
    Plug 'ghifarit53/tokyonight-vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'embark-theme/vim', { 'as': 'embark' }
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'jiangmiao/auto-pairs'

call plug#end()
" Everything after this line will be the config section

set number
syntax on

if (has("termguicolors"))
    set termguicolors
    autocmd VimEnter * NERDTree
    set lines=999 columns=999
    let g:tokyonight_style = 'night' " available: night, storm
    let g:tokyonight_enable_italic = 1
    colorscheme embark
endif

set background=dark
" Source\ Code\ Pro
set guifont=Fira\ Code:h10
set linespace=3
set dir=E:\\Vimtmp\swap
set backupdir=E:\\Vimtmp\backup
set undodir=E:\\Vimtmp\undo

" INDENTATION, CHANGE TO 4 IF NEEDED.
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartindent

set cursorcolumn
set cursorline

set clipboard+=unnamedplus

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:user_emmet_leader_key=','

" Gui settings!
GuiTabline 0

" Tab navigation like Firefox.
" nnoremap <C-S-tab> :bprevious<CR>
nnoremap <C-S-tab> :bprevious<CR>
nnoremap <tab>   :bnext<CR>

set showtabline=2
set noshowmode

nnoremap <silent> <C-p> :FZF<CR>
