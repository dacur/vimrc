execute pathogen#infect()
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
syntax on
syntax enable

Plugin 'kchmck/vim-coffee-script'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-sensible'
Plugin 'tomtom/tcomment_vim'
Plugin 'ervandew/supertab'
Plugin 'Keithbsmiley/rspec.vim'
Plugin 'digitaltoad/vim-pug'
Plugin 'kien/ctrlp.vim'

map <SPACE> <leader>
nnoremap <leader>f :CtrlP<CR>

" Quickly use system clipboard
nnoremap <leader>p "+

" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Easier Split Resizing
nnoremap <leader>h :vertical resize -20<CR>
nnoremap <leader>l :vertical resize +20<CR>
nnoremap <leader>k :resize +10<CR>
nnoremap <leader>j :resize -10<CR>

set background=dark
set number
set guifont='monaco'
set tabstop=2
set shiftwidth=2
set expandtab
set noswapfile
set splitbelow
set splitright

" Reload buffers when changed
set autoread

" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$\|deps\|_build',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

let g:ctrlp_working_path_mode = 'rc'

" Swap tabs
nnoremap <leader>] :tabn<CR>
nnoremap <leader>[ :tabp<CR>

" Toggle comments
" let NERDSpaceDelims=1
" nnoremap <leader>/ :call NERDComment(0,"toggle")<CR>
" vnoremap <leader>/ :call NERDComment(0,"toggle")<CR>

" Format JSON
nnoremap <leader>j :%!python -m json.tool<CR>

" ================ Nerdtree Configuration ========================
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Macvim Configs
if has("gui_running")
  set lines=150
  set columns=200
endif

if has('persistent_undo')
	silent !mkdir ~/.vim/backups > /dev/null 2>&1
	set undodir=~/.vim/backups
	set undofile
endif

map <leader>t :NERDTreeToggle<cr>
imap jj <Esc>
map <M-s> :w<kEnter>
imap <M-s> <Esc>:w<kEnter>i

set t_Co=256

au VimEnter *  NERDTree
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

set hlsearch
autocmd BufWritePre * :%s/\s\+$//e

colorscheme molokai
call vundle#end()
filetype plugin indent on
