" Makes vim more useful 
set nocompatible

" Uncomment if you like those  plugins, add the ones you like
" call plug#begin('~/.vim/plugged')
"     
"     Plug 'morhetz/gruvbox'
"     Plug 'preservim/nerdtree'
"     Plug 'xuyuanp/nerdtree-git-plugin'
"     " Important download { python3-dev, nodejs(npm), Go and cmake}
"     " Then run (install.py | install.sh)
"     Plug 'Valloric/YouCompleteMe'
"     Plug 'jiangmiao/auto-pairs'
"     
" call plug#end()

" The color scheme of vim ( pablo is preferred as default )
colorscheme pablo
" Recommended if you are using gruvbox
" set background=dark

" Attempt to determine the type of a file based on its name and possibly its 
" " contents. Use this to allow intelligent auto-indenting for each filetype, 
" " and for plugins that are filetype specific. 
filetype indent plugin on 
 
" Enable syntax highlighting 
syntax on 
set clipboard=unnamed
" When moving to another buffer the current buffer is not close but is hidden
" this allows to not write changes every time you change buffer
set hidden

" Better command-line completion 
set wildmenu 
 
" Show partial commands in the last line of the screen 
set showcmd 

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the 
" mapping of <C-L> below) 
set hlsearch 

" Use case insensitive search, but with smart case this does not occur when
" using capital letter for searching
set ignorecase
set smartcase

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Display the cursor position on the last line of the screen or in the status
" " line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Visual bell insted of beeping when doing somethin wrong
set visualbell

" With this line visual bell will not flash
set t_vb=

" Enable use of the mouse for all modes
set mouse=a

" Display line numbers on the left
set number

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F2>

" Indentation settings for using 4 spaces instead of tabs.
" " Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab

" Setting where the undo directory should be
set undodir=~/.vim/undo-dir
set undofile

nnoremap <C-L> :NERDTreeToggle<CR>
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>

" YCM
nnoremap <leader>gd :YcmCompleter GoTo<CR>
nnoremap <leader>gf :YcmCompleter FixIt<CR>

" ++----------------- sdsa  ++------------------------
" <C-g>       : Shows me the state of the current file 
"
" ----------- Useful motions----------------
" $ or <End>  : Move to the end of line
" g_          : Move to last not blank character of the line
" 0 or <Home> : Move to the first character of the line
" ^           : Move to the first character not blank character of the line
" f{char}     : Move cursor to the next ocurrence of {char}
" t{char}     : Move cusor to till the next currence of {char}
"   ;         : Repeat previous f, t, F, T motion
"   ,         : Repeat previous f, t, F, T motion but in reverse 
"  %          : Move to matching character (default supported pairs: '()', '{}', '[]')
"  H          : Move to top of the screen
"  M          : Move to the middle of the screen
"  L          : Move to the bottom of the screen
"  <C-e>      : Move screen down one line (without moving cursor) 
"  <C-y>      : Move screen up one line (without moving cursor) 
"  {          : Move cursor to the beginning of the previous block
"  }          : Mode cursor to the end of the next block
"
" ----------- Useful operators ---------------
"  d          : delete
"  c          : change
"
"  ---------- Editing text --------------------
"  s          : Delete character in the cursor and enter insert mode
"  r          : Replace a single character

