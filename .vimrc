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
set noerrorbells
set visualbell
set t_vb=
set background=dark
set guifont=Monospace\ 11


""""""""""""""""""""""""""""""""""""""""""""""""""
" Variables
"
""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = '-'
let macvim_skip_colorscheme = 1
let g:NERDTreeWinSize = 60
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = ['\.swp$']

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
nnoremap <leader>nn :NERDTreeToggle<cr>
nnoremap <leader>nf :NERDTreeFind<cr>
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
hi Normal       ctermfg=15 ctermbg=235
hi Normal       guibg=#262626 guifg=#ffffff
hi Comment      term=NONE gui=NONE ctermfg=14 guifg=#34e2e2
hi Identifier   term=bold ctermfg=14 guifg=#34e2e2
hi Constant     term=NONE ctermfg=13 guifg=#ad7fa8
hi PreProc      term=NONE ctermfg=81 guifg=#5fd7ff
hi Statement    term=NONE gui=NONE ctermfg=11 guifg=#ffff00
hi Type         term=NONE gui=NONE ctermfg=121 guifg=#87ffaf
hi LineNr       ctermfg=11 guifg=#ffff00
hi ColorColumn  ctermbg=11 guibg=#ffff00
hi Visual       ctermfg=235 ctermbg=11
hi Visual       guifg=#262626 guibg=#ffff00
hi Search       ctermfg=235 ctermbg=11
hi Search       guifg=#262626 guibg=#ffff00
hi Cursor       term=NONE ctermfg=bg ctermbg=fg
hi Cursor       guifg=#262626 guibg=#ffffff
hi NonText      ctermfg=14 guifg=#34e2e2
hi Directory    ctermfg=14 guifg=#34e2e2


""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle plugins
"
""""""""""""""""""""""""""""""""""""""""""""""""""

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
