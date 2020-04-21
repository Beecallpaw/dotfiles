call plug#begin()            

"======== Plugins =======
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dracula/vim', {'as':'dracula'}
Plug 'tpope/vim-vinegar'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/syntastic'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'andys8/vim-elm-syntax'
Plug 'rhysd/clever-f.vim'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': './install.sh'
    \ }
Plug 'vimlab/split-term.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'godlygeek/tabular'

call plug#end()
