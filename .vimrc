" CoffeeScript
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'kchmck/vim-coffee-script'

filetype plugin indent on
set autoindent

" ================ Colors ===========================
highlight SpecialKey ctermbg=red guibg=red
highlight Search ctermbg=blue guibg=blue ctermfg=white guifg=white
highlight IncSearch ctermfg=blue guifg=blue ctermbg=white guibg=white
highlight TabChar ctermfg=cyan guifg=cyan
match TabChar /\t/

" Display tabs and trailing spaces visually
set list
set listchars=trail:\ ,extends:>,nbsp:\  

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

set background=dark


" ================ Backups ==========================

set backup     " Enable backup files
set swapfile   " Use a swap file in current buffer
set nowb       " Write backup before saving

" Set backup directory
set backupdir=~/.vim/tmpdir
set directory=~/.vim/tmpdir

" Create backup directory if it doesn't exist
if (!isdirectory(expand(&backupdir)))
  call mkdir(expand(&backupdir), 'p')
endif

" ================ Undo =============================

if (has('persistent_undo'))
  set undofile " Enable persistent undo

  " Set persistent undo directory
  set undodir=~/.vim/undodir
  " Create undo directory if it doesn't exist
  if (!isdirectory(expand(&undodir)))
    call mkdir(expand(&undodir), 'p')
  endif
endif

syntax enable
filetype plugin indent on
