" be improved
set nocompatible               

"NerdCommenter 
filetype plugin on

"Enable syntax highlighting
syntax enable

" Change Leader 
let mapleader= ';'

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

"Change vim register to system clipboard
set clipboard=unnamedplus

" Paste selected text
nmap <Leader>p "*p

" Save file
nmap <Leader>w :w<cr>

" Move lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

"======= Plugins ======="
so ~/.config/nvim/plugins.vim

" Editor
colorscheme dracula
set foldcolumn=1 " Left padding

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

" Syntastic 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Ctags
nmap <Leader>t :tag<space>

" PHP formatter
let g:php_cs_fixer_level = "psr2"

" Format on save
autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()
autocmd BufWritePost *.elm silent! call CocAction('format')
"=======Search========="

"Remove highlight color
map <esc> :nohlsearch<cr>

" Enable incremental search
set incsearch

" case insensitive search
set ignorecase

" case sensitive if uppercase letter
set smartcase

" clever f smartcase search 
let g:clever_f_smart_case = 1

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

map <A-t> :15Term<cr>

"==========coc.nvim============== 
so ~/.config/nvim/coc.vim

"========AutoCommands
" Source automatically on save
augroup autosourcing
    autocmd!
    autocmd BufWritePost ~/.config/nvim/init.vim source %
augroup END
