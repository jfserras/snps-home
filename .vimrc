set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'klen/python-mode'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Pathogen load
"filetype off
"call pathogen#infect()
"call pathogen#helptags()

filetype plugin indent on    " required
syntax on

" UqTF-8 support
set encoding=utf-8

set list
set listchars=tab:>-,trail:-
set cmdheight=1
set expandtab
set tabstop=4
set number
set ruler
color evening


" Python PEP8 style indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix


if has('gui_running')
    set guifont=Courier\ 10\ Pitch\ 10
    "maximize window on a monitor (assumes two)
    set lines=999
    set columns=150
"    let &columns = 999
"    let &columns = &columns/2
    set guioptions-=r   "remove right-hand scroll bar
    set guioptions-=L   "remove left-hand scroll bar
endif 

let Tlist_Auto_Open = 1
let Tlist_Ctags_Cmd = '/depot/ctag-5.5.4/bin/ctags'
let Tlist_Show_Menu = 1
let Tlist_Show_One_File = 1
let Tlist_WinWidth = 40

"MiniBufferExplorer settings"
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 
