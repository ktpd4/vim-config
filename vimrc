set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line


Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'othree/html5.vim'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'Glench/Vim-Jinja2-Syntax'
call vundle#end()            " required
filetype plugin indent on    " required
"To ignore plugin indent changes, instead use:
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
"autocmd InsertLeave *.* write
autocmd BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn,html} map <Leader>p :!google-chrome %<CR>
autocmd BufRead,BufNewFile *.{py} map <F10> :w<bar> !python %<CR>
map <Leader>w :!pandoc -s % -o %.doc<CR>
let g:pymode_rope = 0
"augroup vimrc_autocmds
"	 autocmd!
	        " highlight characters past column 120
"	 autocmd FileType python highlight Excessctermbg=DarkGrey guibg=Black
 "        autocmd FileType python match Excess /\%120v.*/
  "       autocmd FileType python set nowrap
"augroup END
" Powerline setup
"
 set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
 set laststatus=2
 map <F2> :NERDTreeToggle<CR>
 nnoremap <Space> za
 set nu
 set relativenumber
 map <Leader>s :!python -m SimpleHTTPServer<CR>
 autocmd InsertEnter * :set nornu
 autocmd InsertLeave * :set relativenumber

 function! Cc()
	 pyfile ~/projects/vim-config/countchinese.py
 endfunc

 command Cc call  Cc()
 
 function! Blog()
	 pyfile ~/projects/vim-config/blog.py
 endfunc

 command Blog call  Blog()
 
"syntax enable
"set background=dark
"set background=light
"colorscheme solarized
 set encoding=utf-8
 vmap <C-c> "+y
