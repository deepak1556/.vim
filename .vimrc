set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

nnoremap <Space> <Nop>
let mapleader = '\<Space>'

call neobundle#begin(expand('~/.vim/bundle'))
 
"
" bundles
"
NeoBundleFetch 'Shougo/neovundle.vim'
NeoBundle 'godlygeek/tabular'

"
" tpope plugins
"
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-haml'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'tpope/vim-obsession'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-markdown'

"
" code completion
"
NeoBundle 'honza/vim-snippets'

"
" haskell
"
NeoBundle 'dag/vim2hs'
NeoBundle 'eagletmt/ghcmod-vim'
NeoBundle 'ujihisa/neco-ghc'
NeoBundle 'Twinside/vim-hoogle'
NeoBundle 'carlohamalainen/ghcimportedfrom-vim'
NeoBundle 'ujihisa/unite-haskellimport'

"
" themes
"
NeoBundle 'bling/vim-airline'
NeoBundle 'tomasr/molokai'
NeoBundle 'vim-scripts/EditPlus'
NeoBundle 'helino/vim-json'
NeoBundle 'Lucius'

"
" shell & interaction
"
NeoBundle 'Shougo/vimshell'
NeoBundle 'benmills/vimux'
NeoBundle 'sjl/clam.vim'
NeoBundle 'christoomey/vim-tmux-navigator'

"
" buffers & window manipulation
"
NeoBundle 'Valloric/ListToggle'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'Majutsushi/tagbar'

"
" source control & diffing
"
NeoBundle 'sjl/splice.vim'
NeoBundle 'gregsexton/gitv'
NeoBundle 'mhinz/vim-signify'

"
" misc plugins
"
NeoBundle 'current-func-info.vim'
NeoBundle 'scrooloose/syntastic'

call neobundle#end()

set background=dark
set t_co=256
colo molokai
filetype plugin indent on

"
" load all plugins settings
"
for f in split(glob('~/.vim/plugins/settings/*.vim'), '\n')
    exe 'source' f
endfor

NeoBundleCheck