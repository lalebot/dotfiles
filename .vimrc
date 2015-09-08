set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Mis Plugins
Plugin 'scrooloose/nerdtree'


Plugin 'bling/vim-airline' " lean & mean status/tabline for vim that's light as air
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2


call vundle#end()            " required
filetype plugin indent on    " required


"autocmd vimenter * NERDTree