" Remove backward compatibility with Vi. (Has to be the first line)
set nocompatible
filetype plugin on
syntax on

" Search as you type
set incsearch

" Make searches case-insensitive
set ignorecase

" Disable that annoying beeping voice
set visualbell

" Environment for CPP Development
set autoindent
set cindent

" Always keep atleast 1 lines above and below cursor while editing
set scrolloff=1

" Set relative line numbers
set relativenumber

" Automatic installation of plugins
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Start installing/loading plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-commentary'
Plug 'fatih/vim-go', { 'do' : 'GoUpdateBinaries' }
call plug#end()

" Enables full support of 256 colours
set termguicolors
