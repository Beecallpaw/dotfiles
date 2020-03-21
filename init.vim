set nocompatible               " be improved, required

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

"Enable syntax highlighting
syntax enable

"======= Plugins ======="
so ~/.config/nvim/plugins.vim

" Editor
colorscheme dracula
set foldcolumn=1 " Left padding

" Change Leader 
let mapleader= ';'

"======= Mappings ======"

" Open init.vim file
nmap <Leader>ev :tabedit ~/.config/nvim/init.vim<cr>

" Open plugin.vim file
nmap <Leader>ep :tabedit ~/.config/nvim/plugins.vim<cr>

" Automatically write file while changing buffer
set autowriteall

" Nerdtree
nmap <Leader>ts :NERDTreeToggle<cr>

" Ctrl P
nmap <Leader>f :CtrlPMRUFiles<cr>
nmap <Leader>m :CtrlPBufTag<cr>

let g:ctrlp_custom_ignore = 'node_modules|.git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:10,results:10'

" Nerdtree
let NERDTreeHijackNetrw = 0

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
nmap <Leader>gd <Plug>(coc-definition)
nmap <Leader>gr <Plug>(coc-references)
nmap <Leader>gi <Plug>(coc-implementation)

" Tab for completion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

"========AutoCommands
" Source automatically on save
augroup autosourcing
    autocmd!
    autocmd BufWritePost ~/.config/nvim/init.vim source %
augroup END
