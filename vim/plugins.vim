" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/bin/fzf
call plug#begin()

" let Vundle manage Vundle, required
" Plug 'VundleVim/Vundle.vim'
" Now using vim-plug as the vim plugin manager
Plug 'tpope/vim-vinegar'
Plug 'scrooloose/nerdtree'			" NErd Plugin
Plug 'Xuyuanp/nerdtree-git-plugin'		" NErdTree git-plugin
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rking/ag.vim'					
Plug 'skwp/greplace.vim'			" Search and Pattern Matching
Plug 'Konfekt/FastFold'		     		" Allow folding feature in vim 
Plug 'jnurmine/Zenburn'			
Plug 'rip-rip/clang_complete'			" Clang Formatter
Plug 'vim-airline/vim-airline'			" Statusbar Plug
Plug 'vim-airline/vim-airline-themes'		" Statusbar Theme
Plug 'vim-syntastic/syntastic'			" VIM statusbar Syntastic
Plug 'Valloric/YouCompleteMe'			" Enable autocomplete feature.
Plug 'rust-lang/rust.vim'			" Enabling rust related plugin for VI
Plug 'hail2u/vim-css3-syntax'			" css3 enable for vim css3 syntax
Plug 'leafgarland/typescript-vim'		" Plug for Typescript
Plug 'sjl/badwolf'				" Plug for Colorscheme
let g:fzf_install = 'yes | ./install'
Plug 'junegunn/fzf', {'do': g:fzf_install }	" Plug for Fuzzy Search
Plug 'davidhalter/jedi-vim'			" Plug for Python3 Autocomplete
Plug 'terryma/vim-multiple-cursors'  		" Multiple Cursor.
Plug 'tpope/vim-surround'			" Vim Surrounding.
Plug 'pangloss/vim-javascript'			" Vim Javascript supports.
Plug 'mxw/vim-jsx'				" Vim javascript xml support.
Plug 'ludovicchabant/vim-gutentags'		" JavaScript
Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'} " Javascript require/import support
Plug 'w0rp/ale'					" Async linting.
Plug 'skywind3000/asyncrun.vim'			
Plug 'ternjs/tern_for_vim', {'do': 'npm install'} " Plug for Node.js Support
Plug 'Yggdroot/indentLine'			" Indentation Guide Plug
Plug 'Shougo/vimproc.vim', { 'do': 'make' }	" vimproc
set runtimepath^=~/.vim/bundle/ctrlp.vim
" All of your Plugs must be added before the following line

call plug#end()            " required

filetype plugin indent on    " required
