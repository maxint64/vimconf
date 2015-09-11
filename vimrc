" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible
"set nocp

" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.
if has("syntax")
	syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
syntax enable

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set background=dark
" set background=light

" general colors
hi Normal         guifg=#F8F8F8    guibg=#141414
hi Cursor         guifg=Black      guibg=Green    gui=none
hi LineNr         guifg=#D8D8D8    guibg=Black    gui=bold
hi NonText 		  guifg=#808080    guibg=#141414

hi StatusLine 	guifg=#F8F8F8 guibg=#202020 gui=bold
hi StatusLineNC guifg=#777777 guibg=#202020 gui=none
hi VertSplit 	guifg=#202020 guibg=#202020 gui=none

hi Pmenu ctermfg=Green ctermbg=Black
hi PmenuSel ctermfg=White ctermbg=LightBlue

hi ColorColumn ctermbg=lightgrey guibg=lightgrey
hi SpecialKey guifg=black ctermfg=239

set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set guifont=Monospace\ 12
"set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
"set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
set nu
set tabstop=4
set shiftwidth=4
"set list lcs=tab:\|\ 
set list lcs=tab:\│\ 
set smarttab
set cursorline 
filetype indent on
set autoindent
set fileencodings=utf-8
set ttyfast
set lazyredraw
set cc=86

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
