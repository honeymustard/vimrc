""""""""""""""""""""""""""""""""""""""""""""""""""
" Vimrc
"
" @author Adrian Solumsmo
"
""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
"
""""""""""""""""""""""""""""""""""""""""""""""""""

syn on
filetype off

set nocompatible
set ruler
set tabstop=4
set shiftwidth=4
set softtabstop=4
set hlsearch
set expandtab
set number
set colorcolumn=80
set ignorecase
set noerrorbells
set visualbell
set t_vb=
set background=dark
set guifont=Monospace\ 11
set modeline


""""""""""""""""""""""""""""""""""""""""""""""""""
" Variables
"
""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = '-'
let macvim_skip_colorscheme = 1

let g:NERDTreeWinSize = 60
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = ['\.swp$']
let g:startify_custom_header = [
    \ '   The mustardsphere has you!',
    \ ]

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif


""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"
""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :write<cr><esc> :source $MYVIMRC<cr>
nnoremap <leader>cs :nohlsearch<cr>
nnoremap <leader>f  :20winc ><cr>
nnoremap <leader>d  :20winc <<cr>
nnoremap <leader>nn :NERDTreeToggle<cr>
nnoremap <leader>nf :NERDTreeFind<cr>
nnoremap <leader>nq :NERDTreeFind<cr><esc> :bd<cr>
nnoremap <tab>      :bnext<cr>
nnoremap <s-tab>    :bprevious<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto commands
"
""""""""""""""""""""""""""""""""""""""""""""""""""

" Removes bells for Gvim/MacVim
au GUIEnter * set visualbell t_vb=

" Forces all .md files to be read as Markdown
au BufNewFile,BufReadPost *.md set filetype=markdown

" Enable folding for Vimscript files
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END


""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom commands
"
" Now       Insert unix timestamp
" Tabs      Indent with tabs
" Spaces    Indent with spaces
"
""""""""""""""""""""""""""""""""""""""""""""""""""

command! Now normal! i<c-r>=strftime('%s')<cr><esc>
command! Tabs :set noet|retab!
command! Spaces :set et|retab!


""""""""""""""""""""""""""""""""""""""""""""""""""
" Color scheme
"
""""""""""""""""""""""""""""""""""""""""""""""""""

hi clear

" Terminal colors
hi Normal       cterm=none ctermfg=15  ctermbg=235
hi Comment      cterm=none ctermfg=14
hi Identifier   cterm=none ctermfg=14
hi Constant     cterm=none ctermfg=13
hi PreProc      cterm=none ctermfg=81
hi Statement    cterm=none ctermfg=11
hi Type         cterm=none ctermfg=121
hi LineNr       cterm=none ctermfg=11
hi ColorColumn  cterm=none ctermfg=235 ctermbg=11
hi Visual       cterm=none ctermfg=235 ctermbg=11
hi Search       cterm=none ctermfg=235 ctermbg=11
hi Cursor       cterm=none ctermfg=235 ctermbg=15
hi NonText      cterm=none ctermfg=14
hi Directory    cterm=none ctermfg=14

" GUI colors
hi Normal       gui=none guifg=#ffffff guibg=#262626
hi Comment      gui=none guifg=#34e2e2
hi Identifier   gui=none guifg=#34e2e2
hi Constant     gui=none guifg=#ad7fa8
hi PreProc      gui=none guifg=#5fd7ff
hi Statement    gui=none guifg=#ffff00
hi Type         gui=none guifg=#87ffaf
hi LineNr       gui=none guifg=#ffff00
hi ColorColumn  gui=none guifg=#262626 guibg=#ffff00
hi Visual       gui=none guifg=#262626 guibg=#ffff00
hi Search       gui=none guifg=#262626 guibg=#ffff00
hi Cursor       gui=none guifg=#262626 guibg=#ffffff
hi NonText      gui=none guifg=#34e2e2
hi Directory    gui=none guifg=#34e2e2


""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle plugins
"
""""""""""""""""""""""""""""""""""""""""""""""""""

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Utilities
Plugin 'VundleVim/Vundle.vim'           " Vundle plugin manager
Plugin 'tpope/vim-fugitive'             " Git wrapper
Plugin 'editorconfig/editorconfig-vim'  " Editorconfig support
Plugin 'scrooloose/nerdtree'            " File exploration
Plugin 'vim-airline/vim-airline'        " Status tabline
Plugin 'mileszs/ack.vim'                " Search tool
Plugin 'mhinz/vim-startify'             " Welcome screen

" Syntax & Formatting
Plugin 'pangloss/vim-javascript'        " JavaScript highlighting
Plugin 'mxw/vim-jsx'                    " JSX highlighting
Plugin 'posva/vim-vue'                  " Vue highlighting
Plugin 'derekwyatt/vim-scala'           " Scala highlighting

call vundle#end()
filetype plugin indent on
