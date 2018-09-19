set nocompatible              " VIM Options and setting
filetype off                  " required

so ~/.vim/plugins.vim	      " grabbing plugin and other vundle related configuration




"------------------------------- Own Custom Configuration for Vim-------------"
syntax enable 				" syntax highlighting.
set backspace=indent,eol,start  	" Make backspace behave like every other editor.
set number 				" active line number
let mapleader = ',' 			" Default leader is \, but a comma is easy and good for me <Leader> can be used for default leader
set linespace=15 			" Macvim-specific line-height




"------------------------Search-------------------------"

set hlsearch				" Search highlights
set incsearch				" Incremental Search




"--------------------------Mapping-----------------------"

" Making it easy to edit vimrc file by just using ,ev at anywhere..

nmap <Leader>ev :tabedit $MYVIMRC<cr> 	
" Mapping ,ev to edit .vimrc file

nmap <Leader>tc :tabc <cr>		
" Mapping ,tc to tab close

nmap <Leader>s :w<cr>			
" Mapping ,ss to save file

nmap <Leader>sq :wq <cr>		
" Mapping ,sq to save and quit from file

nmap <Leader><space> :nohlsearch<cr>	
" Mapping to remove highlights after search

nmap <Leader>f :tag<space>
" Mapping ,f with :tag for faster search using variable name or method name


"------------------Visual Setup (Fonts and Font-size) -------"

colorscheme evening	 		" setup of background color colorscheme. colorschema from ~/.vim/colors folder.
set t_CO=256				" Use 256 colors. Support special things on terminal
set textwidth=120
set guifont=Fira_code
" set macligatures			" Enable this line with font Fira_code and in Mac

set showtabline=2			"Simple tab of files in linux


" set guioptions-=e			" enable simple black stip as tab bar 

set guioptions-=l
set guioptions-=L

set guioptions-=r
set guioptions-=R




"------------------------Split Management-----------------"
set splitbelow
set splitright
" Seperator colors for vsp and hsp
set fillchars+=vert:#

	
	"------------------Key Binding-------------"

nmap <C-J> <C-W><C-J>			
" J for 'DOWN' SPLIT

nmap <C-K> <C-W><C-K>			
" K for 'UP' SPLIT

nmap <C-H> <C-W><C-H>			
" L for 'LEFT' SPLIT

nmap <C-L> <C-W><C-L>			
" H for 'RIGHT' SPLIT



"------------------------Plugin-----------------"
"ctrlp

nmap <c-R> :CtrlPBufTag <cr>		
" Search by method name or something keywords into a project

nmap <Leader>e :CtrlPMRUFiles		
" Use ,e to find most recent used file alternative to :CtrlPMRUFiles in CtrlP Plugin

let g:ctrlp_custom_ignore = {
	\ 'dir': 'node_modules | .git' 
	\ }

let g:ctrlp_match_window = 'top,order:ttb,min:1,max:12,results:10'
let g:ctrlp_funky_syntax_highlight = 1

"NERDTree

nmap <c-E> :NERDTreeToggle<cr>		
" NordTree Toggle or File Explorer

let NERDTreeHijackNetrw = 0
let g:ctrlp_funky_syntax_highlight = 1


" Greplace.vim

set grepprg=ag							" Setting up ag for search
let g:grep_cmd_opts = '--line-numbers --noheading'




"------------------------Automatic Commands-----------------"



" automatically source the vimrc command
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
