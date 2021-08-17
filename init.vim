" Note that the plugin file location might be different. You might want to recheck it manually.
call plug#begin()
    " Plugin Section
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Color schemes
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'morhetz/gruvbox'
    Plug 'danilo-augusto/vim-afterglow'
    Plug 'ghifarit53/tokyonight-vim'
    Plug 'embark-theme/vim', { 'as': 'embark' }
    Plug 'ryanoasis/vim-devicons'
	  
    " Utilities
    Plug 'preservim/nerdtree'
    Plug 'mattn/emmet-vim'
    Plug 'natebosch/vim-lsc-dart'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'jiangmiao/auto-pairs'
    Plug 'Yggdroot/indentLine'
    Plug 'jwalton512/vim-blade'
    Plug 'ThePrimeagen/vim-be-good'
    Plug 'tpope/vim-commentary'

    " Highlighting
    Plug 'evanleck/vim-svelte', { 'branch': 'main' }
    
call plug#end()
" Everything after this line will be the config section

set number
syntax on

if (has("termguicolors"))
    " set termguicolors
    autocmd VimEnter * NERDTree
"    set lines=999 columns=999
    let g:tokyonight_style = 'night' " available: night, storm
    let g:tokyonight_enable_italic = 1
    colorscheme embark 
"  let g:gruvbox_guisp_fallback = 'bg'
endif

" Highlights
autocmd ColorScheme * hi CocUnusedHighlight guifg=Gray

set mouse=a

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
" set smartindent

set cursorcolumn
set cursorline

set clipboard+=unnamedplus

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:user_emmet_leader_key=','
let NERDTreeShowHidden=1
" Gui settings!
GuiTabline 0

" Tab navigation like Firefox.
" nnoremap <C-S-tab> :bprevious<CR>
nnoremap <C-tab> :bprevious<CR>
nnoremap <tab>   :bnext<CR>

set showtabline=2
set noshowmode

nnoremap <silent> <C-p> :FZF<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <C-z>2 :call ChangeTab(2) <CR>
nmap <C-z>4 :call ChangeTab(4) <CR>

" nnoremap j gj
" nnoremap k gk
" vnoremap j gj
" vnoremap k gk
" nnoremap <Down> gj
" nnoremap <Up> gk
" vnoremap <Down> gj
" vnoremap <Up> gk
" inoremap <Down> <C-o>gj
" inoremap <Up> <C-o>gk
nmap <leader>d :bp\|bd # <CR>

function ChangeTab(num)
  let &tabstop = a:num
  let &shiftwidth = a:num
  let &softtabstop = a:num
endfunction

function Relayout()
  exe "vertical resize 140"
endfunction

function MyConfig() 
  exe "edit ~\\AppData\\Local\\nvim\\init.vim" 
endfunction
