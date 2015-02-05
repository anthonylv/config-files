" ###########################################################################
" 
"   Anthony Lopez-Vito's .vimrc
"   Last updated: 08/11/2004
"
" ###########################################################################


" ---------------------------------------------------------------------------
" Disable feature for security 
" ---------------------------------------------------------------------------
:set modelines=0 	" no modelines [http://www.guninski.com/vim1.html]

" ---------------------------------------------------------------------------
" Operational settings
" ---------------------------------------------------------------------------
:set nocompatible		" vim defaults, not vi!
:syntax on 			" syntax on
:set autoread 			" watch for file changes by other programs
:set visualbell			" visual beep
":set backup 			" produce *~ backup files
":set backupext=~		" add ~ to the end of backup files
":set patchmode=~		" only produce *~ if not there
:set noautowrite		" don't automatically write on :next, etc
:set wildmenu                   " : menu has tab completion, etc

" ---------------------------------------------------------------------------
" Window spacing
" ---------------------------------------------------------------------------
:set ruler                      " show the current line number
:set number                     " show line numbers on the left

" ---------------------------------------------------------------------------
" Mouse settings
" ---------------------------------------------------------------------------
:set mouse=a			" mouse support in all modes
:set mousehide 			" hide the mouse when typing text

" ,p and shift-insert will paste the X buffer, even on the command line
:nmap <LocalLeader>p i<S-MiddleMouse><ESC>
:imap <S-Insert> <S-MiddleMouse>
:cmap <S-Insert> <S-MiddleMouse>

" this makes the mouse paste a block of text without formatting it 
" (good for code)
:map <MouseMiddle> <esc>"*p

" ---------------------------------------------------------------------------
" Global editing settings
" ---------------------------------------------------------------------------
:set autoindent smartindent	" turn on auto/smart indenting
:set expandtab			" use spaces, not tabs
:set smarttab			" make <tab> and <backspace> smarter
:set tabstop=4 			" tabstops of 8
:set shiftwidth=4		" indents of 8
:set backspace=2		" allow backspacing over indent, eol, & start
:set undolevels=1000		" number of forgivable mistakes
:set updatecount=100		" write swap file to disk every 100 chars
:set complete=.,w,b,u,U,t,i,d	" do lots of scanning on tab completion

" makefiles should use tabs
:autocmd FileType make set noexpandtab

" ---------------------------------------------------------------------------
" Searching...
" ---------------------------------------------------------------------------
:set hlsearch			" enable search highlight globally
:set incsearch			" show matches as soon as possible
:set showmatch			" show matching brackets when typing
" disable last one highlight
:nmap <LocalLeader>nh :nohlsearch<cr>

" ---------------------------------------------------------------------------
" Mappings
" ---------------------------------------------------------------------------

" show split window above
:map <C-Down> <C-w>j
" show split window below
:map <C-Up> <C-w>k
" show split window left
:map <C-Left> <C-w>h
" show split window right
:map <C-Right> <C-w>l

" ---------------------------------------------------------------------------




