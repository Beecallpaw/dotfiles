" be improved
set nocompatible

"NerdCommenter
filetype plugin on

"Enable syntax highlighting
syntax enable

" Change Leader
let mapleader= ' '

" Relative line numbers
set number relativenumber

" highlight trailing whitespace
match ErrorMsg '\s\+$'
" remove trailing whitespaces automatically
autocmd BufWritePre * :%s/\s\+$//e

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

" move in insert mode
:imap <C-h> <C-o>h
:imap <C-j> <C-o>j
:imap <C-k> <C-o>k
:imap <C-l> <C-o>l

"Change vim register to system clipboard
set clipboard=unnamedplus

" Paste selected text
nmap <Leader>p "*p

" Save file
nmap <Leader>w :w<cr>
nmap <Leader>W :wq<cr>

" Exit
nmap <Leader>q :q<cr>
nmap <Leader>Q :q!<cr>

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

" Multi-cursors
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key        = '<C-n>'
let g:multi_cursor_select_all_word_key   = '<A-n>'
let g:multi_cursor_start_key             = 'g<C-n>'
let g:multi_cursor_select_all_key        = 'g<A-n>'
let g:multi_cursor_next_key              = '<C-n>'
let g:multi_cursor_prev_key              = '<C-m>'
let g:multi_cursor_skip_key              = '<C-x>'
let g:multi_cursor_quit_key              = '<Esc>'
let g:multi_cursor_exit_from_visual_mode = 1
let g:multi_cursor_exit_from_insert_mode = 1

" Fzf
nmap <Leader>f :GFiles<cr>
nmap <Leader>F :Files<cr>

" Buffers, History and Registers
nmap <Leader>b :Buffers<cr>
nmap <Leader>h :History<cr>
nmap <Leader>r :registers<cr>

" Ctrl P
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

" Git gutter
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

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
let g:clever_f_timeout_ms = 1000

" rust format on save
" let g:rustfmt_autosave = 1
" autocmd BufReadPost *.rs setlocal filetype=rust
" set hidden
" let g:LanguageClient_serverCommands = {
"     \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
"     \ }
" let g:LanguageClient_autoStart = 1
" let g:racer_cmd = '/home/bee/.cargo/bin/racer'
" let g:racer_experimental_completer = 1
" let g:racer_insert_paren = 1
"====== Split Editor======="

"change default split option
set splitbelow
set splitright

"Change split editors
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"Resive split editors
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

"vertical split
nmap <C-\> :vsp<cr>

"Horizontal terminal
map <A-t> :15Term<cr>

"==========coc.nvim==============
so ~/.config/nvim/coc.vim


"===========Tabularize==============
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a> :Tabularize /=><CR>
  vmap <Leader>a> :Tabularize /=><CR>
  nmap <Leader>a: :Tabularize /:<CR>
  vmap <Leader>a: :Tabularize /:<CR>

"========AutoCommands
" Source automatically on save
augroup autosourcing
    autocmd!
    autocmd BufWritePost ~/.config/nvim/init.vim source %
augroup END
