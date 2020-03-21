" be improved
set nocompatible               

"NerdCommenter 
filetype plugin on

"Enable syntax highlighting
syntax enable

" Indentation
set autoindent
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set guioptions-=e
set mouse=a

"File Tabs
nmap <Leader>h :tabprevious<cr>
nmap <Leader>l :tabnext<cr>
nmap <Leader>q :tabclose<cr>


"======= Plugins ======="
so ~/.config/nvim/plugins.vim

" Editor
colorscheme dracula
set foldcolumn=1 " Left padding

" Change Leader 
let mapleader= ';'

" Change default Esc binding
inoremap jk <ESC>

"======= Mappings ======"

" Open init.vim file
nmap <Leader>ev :tabedit ~/.config/nvim/init.vim<cr>

" Open plugin.vim file
nmap <Leader>ep :tabedit ~/.config/nvim/plugins.vim<cr>

" Automatically write file while changing buffer
set autowriteall

" Ctrl P
nmap <Leader>f :CtrlPMRUFiles<cr>
nmap <Leader>m :CtrlPBufTag<cr>

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:10,results:10'

" Nerdtree
nmap <Leader>ts :NERDTreeToggle<cr>
let NERDTreeHijackNetrw = 0
let g:NERDTreeShowIgnoredStatus = 1

" Nerdtree commenter
let g:NERDSpaceDelims = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

map <C-_> <Plug>NERDCommenterToggle

" Ctags
nmap <Leader>t :tag<space>

"=======Search========="
"Highlight search term
set hlsearch

"Remove highlight color
nmap <Leader><space> :nohlsearch<cr>

" Enable incremental search
set incsearch

"====== Split Editor======="

"change default split option
set splitbelow
set splitright

"Change split editors
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"vertical split
nmap <C-\> :vsp<cr>

"==========coc.nvim============== 
so ~/.config/nvim/coc.vim

"========AutoCommands
" Source automatically on save
augroup autosourcing
    autocmd!
    autocmd BufWritePost ~/.config/nvim/init.vim source %
augroup END
