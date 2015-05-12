" Common configuration for Vim-----------------------------------
syntax on		    " enable smart colors
filetype plugin indent on " enable per-file smart indenting rules

set background=dark	" enable dark mode
set nocompatible	" be iMproved
set number		    " show line numbers
set modeline		" enables the modeline
set modelines=5		" makes modelines descriptive
set history=50		" keep 50 lines of command line history
set ruler		    " show the cursor position all the time
set showcmd		    " display incomplete commands
set incsearch		" do incremental searching
set mouse=a		    " enable the pointer device
set autoindent		" enable auto-indenting
set laststatus=2	" show the statusline
set ts=4 sw=4 et	" setup how to indent
set noshowmode      " don't duplicate mode
set shortmess=atI   " don't show intro message
set wildmenu        " enable better command completion
set nobackup        " we are not using a UNIX terminal,
set noswapfile      " so we don't need arcane backup.
set title           " change the terminal's title
set visualbell      " don't beep
set noerrorbells    " don't beep
set backspace=indent,eol,start " backspace over everything
colorscheme molokai
set smarttab
"---------vim-airline-----------------------------------
"set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'vim-airline'
Plugin 'tmux-line'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='airlineish'
"------------------------------------sh256 
let g:user_emmet_expandabbr_key = '<C-n>'
let g:use_emmet_complete_tag = 1
"----
"
map <F5> :NERDTreeToggle<CR>
"
"let g:cssColorVimDoNotMessMyUpdatetime = 1

"g:cssColorVimDoNotMessMyUpdatetime



let g:user_emmet_install_global = 0
"autocmd FileType html,css EmmetInstall
"
execute pathogen#infect()
"
"---autocmds-----"
"
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
