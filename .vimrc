"""""""""""""""""""""""""""""
" Vimrc
"
" @author Adrian Solumsmo
"
"""""""""""""""""""""""""""""
syn on
filetype off

" Settings
set nocompatible
set ruler
set tabstop=4
set shiftwidth=4
set softtabstop=4
set hlsearch
set expandtab
set number
set colorcolumn=80
set noerrorbells
set belloff=all
set background=dark
set guifont=Monospace\ 11

" Color scheme
highlight clear
highlight Normal ctermfg=15 ctermbg=235 guibg=#262626 guifg=#ffffff
highlight Comment term=NONE gui=NONE ctermfg=14 guifg=#34e2e2
highlight Identifier term=bold ctermfg=14 guifg=#34e2e2
highlight Constant term=underline ctermfg=13 guifg=#ad7fa8
highlight PreProc term=underline ctermfg=81 guifg=#5fd7ff
highlight Statement term=NONE gui=NONE ctermfg=11 guifg=#ffff00
highlight Type term=NONE gui=NONE ctermfg=121 guifg=#87ffaf
highlight LineNr ctermfg=11 guifg=#ffff00
highlight ColorColumn ctermbg=11 guibg=#ffff00

" Custom commands
command Now put =strftime('%s')         " Generates unix timestamp

" Customize Plugins

" Add Ag support to ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Vundle Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'VundleVim/Vundle.vim'           " Vundle plugin manager
Plugin 'tpope/vim-fugitive'             " Git wrapper
Plugin 'sgur/vim-editorconfig'          " Editorconfig support
Plugin 'scrooloose/nerdtree'            " File exploration
Plugin 'vim-airline/vim-airline'        " Status tabline
Plugin 'mileszs/ack.vim'                " Search tool

" Syntax & Formatting
Plugin 'pangloss/vim-javascript'        " JavaScript highlighting
Plugin 'mxw/vim-jsx'                    " JSX highlighting
Plugin 'posva/vim-vue'                  " Vue highlighting
Plugin 'derekwyatt/vim-scala'           " Scala highlighting

call vundle#end()
filetype plugin indent on
