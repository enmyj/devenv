" Ian Myjer vimrc
set backspace=indent,eol,start  " more powerful backspacing


" Old .vimcrc
" I think this requires installing something called pathogen
" I basically gave up on this .vimrc and just use the normal settings now

" execute pathogen#infect()
" 
" set nocp " set non vi compatible mode
" 
" 
" " }}}
" " Colors {{{
" syntax enable " enable syntax processing
" set background=dark " recommended in solarized setup page
" colorscheme solarized
" 
" 
" " }}}
" " Spaces & Tabs {{{
" set expandtab           " use spaces for tabs
" set softtabstop=4       " 4 space tab
" set shiftwidth=4
" " filetype indent on
" " filetype plugin on
" set autoindent
" 
" 
" " }}}
" " UI Layout {{{
" set number              " show line numbers
" set showcmd             " show command in bottom bar
" set nocursorline        " highlight current line
" " set wildmenu          " Not really sure what this does...
" set lazyredraw          " don't render vim all the damn time
" set showmatch           " higlight matching parenthesis
" set fillchars+=vert:┃
" set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_  " Show “invisible” characters
" set list
" set clipboard=unnamed
" 
" 
" 
" 
" " }}}
" " Searching {{{
" set ignorecase          " ignore case when searching
" set incsearch           " search as characters are entered
" set hlsearch            " highlight all matches
" 
" " }}}
" " Key Mappings {{{
" inoremap jk <esc>
" set mouse=a
