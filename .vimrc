colorscheme customforred
syntax enable
set number
"set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent 
set showmatch
set incsearch
set hlsearch
let mapleader=","
noremap <leader><space> :nohlsearch<CR>
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" Disable Background Color Erase (BCE) so that color schemes
" render properly when inside 256-color tmux and GNU screen.
if &term =~ '256color'
    set t_ut=
endif
