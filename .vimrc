set nocompatible
filetype plugin indent on
syntax on

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set smartindent
set number
set relativenumber
set cursorline
set termguicolors
set clipboard=unnamedplus

" PLUGINS MANAGEMENT
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'ghifarit53/tokyonight-vim'
Plug 'tiagovla/tokyodark.nvim'
Plug 'tribela/vim-transparent'
call plug#end()

" Colorscheme
colorscheme tokyonight
set background=dark

" ======= COLOR PERSONALIZATION =======
highlight Quote guifg=#ff79c6 ctermfg=212
highlight Pmenu guibg=#252834 guifg=#d4d4d5
highlight PmenuSel guibg=#3e3e3e guifg=#ffffff
highlight PmenuSbar guibg=#1a1b26
highlight PmenuThumb guibg=#444444
set guicursor=n-v-c:block-Cursor/lCursor,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor
highlight Cursor guibg=#50fa7b guifg=bg
highlight lCursor guibg=#ff5555 guifg=bg

" ======= FONCTION UTILITAIRE =======
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction

" ======= COC.NVIM =======
autocmd FileType c,cpp setlocal omnifunc=ccomplete#Complete
set updatetime=300
set shortmess+=c

inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"
set completeopt=menu,menuone,noselect,noinsert

set fillchars=eob:\ 
