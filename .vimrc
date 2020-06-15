set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'

Plugin 'tpope/vim-commentary'

Plugin 'flazz/vim-colorschemes'

Plugin 'preservim/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"SNIPPETS
nnoremap ,ard :-1read /home/rafael/Documentos/.ardu.ino<CR>1j2l
nnoremap ,w :-1read /home/rafael/Documentos/.while.c<CR>w
nnoremap ,f :-1read /home/rafael/Documentos/.for.c<CR>1j2l
nnoremap ,cab :-1read /home/rafael/Documentos/.cabeca.md<CR>11gg

set tabstop=2 shiftwidth=2 expandtab
set number
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable 

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

colorscheme 0x7A69_dark 

set background=dark

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Be smart when using tabs ;)
set smarttab

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

map <C-n> :NERDTreeToggle<CR>
" copiar
map <C-y> "+y
" colar
map <C-p> "+P
" limpar pesquisa
map <C-l> :noh<enter>

let NERDTreeShowHidden=1

" set spell spelllang=en_us
