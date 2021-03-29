"=====================================================
"" Plug.vim
"=====================================================

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
    " Files
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'scrooloose/nerdtree'

    " Git
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'taq/vim-git-branch-info'

    " Portuguese
    Plug 'mateusbraga/vim-spell-pt-br'

    " Status bar
    Plug 'powerline/powerline'
    Plug 'powerline/fonts'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Write
    Plug 'tomtom/tcomment_vim'
    Plug 'tpope/vim-surround'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'jiangmiao/auto-pairs'
    " Plug 'ycm-core/YouCompleteMe'

    " Javascript / NodeJS
    Plug 'pangloss/vim-javascript'
    Plug 'moll/vim-node'
    Plug 'dense-analysis/ale'

    " Themes
    Plug 'skielbasa/vim-material-monokai'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

"=====================================================
"" General settins
"=====================================================
set number  " Show line numbers
set linebreak  " Break lines at word (requires Wrap lines)
"set showbreak=+++  " Wrap-broken line prefix
set textwidth=100  " Line wrap (number of cols)
set showmatch  " Highlight matching brace
" set spell  " Enable spell-checking
set visualbell  " Use visual bell (no beeping)

set autoindent  " Auto-indent new lines
set expandtab  " Use spaces instead of tabs
set shiftwidth=4  " Number of auto-indent spaces
set smartindent  " Enable smart-indent
set smarttab  " Enable smart-tabs
set softtabstop=4  " Number of spaces per Tab

" Show spaces and tabs
" set listchars=trail:·
" set list
"
set nocompatible
set encoding=utf-8
set history=80

set cursorline
syntax enable

" Disable screen flash
set belloff=all

"" Advanced
set ruler  " Show row and column ruler information
set undolevels=1000  " Number of undo levels
set backspace=indent,eol,start  " Backspace behaviour


"=====================================================
"" Powerline settings
"=====================================================

set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

if has("gui_running")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
        set guifont=Source\ Code\ Pro\ for\ Powerline:h15
        colorscheme PaperColor              " set color scheme
    endif
endif

"=====================================================
"" AirLine settings
"=====================================================
"let g:airline_theme='badwolf'
let g:airline_theme='powerlineish'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1

"=====================================================
"" NERDTree settings
"=====================================================
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']     " Ignore files in NERDTree
let NERDTreeWinSize=40
" let NERDTreeQuitOnOpen=1
let NERDTreeWinPos='right'
nmap " :NERDTreeToggle<CR>

"=====================================================
"" FZF settings
"=====================================================
nnoremap <silent> <C-p> :Files<CR>

"=====================================================
"" Ident Guides settings
"=====================================================
let g:indent_guides_enable_on_vim_startup = 1

"=====================================================
"" Theme settings
"=====================================================
set background=dark
colorscheme material-monokai

"=====================================================
"" Javascript settings
"=====================================================
let g:javascript_plugin_jsdoc = 1
