let mapleader=","

set bs=2
syntax on
set number
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
colorscheme ir_black
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 
"let g:miniBufExplorerMoreThanOne=0

" tell MBE not to over-write non-modifiable buffers (NERDTree)
let g:miniBufExplModSelTarget=1
" always have bufferexplorer open
let g:miniBufExplorerMoreThanOne=0

map <C-n> :NERDTreeToggle <CR>
" ctrl+space code completion
imap <C-Space> <C-X><C-N>
nmap <C-y> :Bclose <CR>
" <leader>( to changer inner parens on current line
map <leader>( /(<cr>ci(

autocmd FileType make setlocal noexpandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set noexpandtab|set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<|set list
autocmd FileType C set tabstop=4|set shiftwidth=4|set noexpandtab
autocmd FileType xml set ts=4|set sw=4|set expandtab
set softtabstop=4
set shiftwidth=4
set ruler

" turn off vi compatible mode
set nocp

" allow opening new buffers without saving old buffer
set hidden

" remove toolbar and menu from gui 
set guioptions-=T
set guioptions-=m 

" no annoying sounds
set noerrorbells
set vb t_vb= " this works for vim, but needs to go into gvimrc

" put filename and other goodies in status line
set laststatus=2
function! Jgetcwd()
    let hd='C:\\Documents and Settings\\jmelven'
    return substitute(getcwd(), hd, '~', 'i')
endfunction 
set statusline=%f%h%m%r\ [%{Jgetcwd()}]%<%=[LINE:\%l,COL:%c%V]\ [ASC:%b\,HEX:0x%B]\ %P

" fix backspace
set backspace=indent,eol,start

" code navigation
set number
set cursorline
set linespace=0 
set scrolloff=10

" file based loading "
filetype on
filetype plugin indent on

" turn on auto-indenting
set autoindent
set cindent

" and syntax highlighting
syntax on

" automatically place vim in working directory
set autochdir 

" ignore case in searches unless upper case is used
set ignorecase
set smartcase  

" Fucking highlight search mode
function! ToggleHLSearch() 
       if &hls
            set nohls
       else
            set hls
       endif
endfunction
set nohls

set incsearch

" Ctrl+H Toggles Highlight Search.
map <silent> <C-h> <Esc>:call ToggleHLSearch()<CR>

" --- broken fix later
"
" CTRL-X is Cut
vnoremap <C-X> "+x
vnoremap <S-Del> "+x

" CTRL-C is Copy
vnoremap <C-C> "+y

" CTRL-V is Paste
map <C-V>		"+gP
cmap <C-V>		<C-R>+

imap <S-Insert>		<C-V>
vmap <S-Insert>		<C-V>

" Use Ctrl-Q to do what Ctrl-V used to do (literal character input)
noremap <C-Q>		<C-V>

" Use CTRL-S for saving, also in Insert mode
noremap <silent> <C-S>		:update<CR>
vnoremap <silent> <C-S>		<C-C>:update<CR>
inoremap <silent> <C-S>		<C-O>:update<CR>


" CTRL-A is Select all
noremap <C-A> gggH<C-O>G
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-A> <C-C>gggH<C-O>G
onoremap <C-A> <C-C>gggH<C-O>G
snoremap <C-A> <C-C>gggH<C-O>G
xnoremap <C-A> <C-C>ggVG

" Easier searching....
" Ctrl+F Searches text under cursor (visual or normal)
nmap <C-f> * f
imap <C-f> <esc> *
vmap <C-f> *

" shift+arrows enters visual selection mode
set keymodel=startsel
" can use ,stopsel to also step out when using not shifted arrows but
" this is weird when using v/V
""" end windows stuff


" Alt-Up/Down to move lines up / down
nmap <M-Up> :m-2<CR>==
nmap <M-Down> :m+<CR>==

imap <M-Up> <Esc>:m-2<CR>==gi
imap <M-Down> <Esc>:m+<CR>==gi
    
vmap <M-Up> :m-2<CR>gv=gv
vmap <M-Down> :m'>+<CR>gv=gv

" Alt-Left/Right to unindent/indent
nmap <M-Left> <<
nmap <M-Right> >>

imap <M-Left> ^D
imap <M-Right> ^T

vmap <M-Left> <gv
vmap <M-Right> >g

" allow ; instead of : to save on shift pressing
nnore ; :

" use enter in normal mode to open new line and start insert mode
nnore <Enter> o 

" ctrl+h runs highlighted python code "
" python << EOL
" import vim
" def EvaluateCurrentRange():
" 	eval(compile('\n'.join(vim.current.range),'','exec'),globals())
" EOL
"
au BufRead,BufNewFile *.py map <C-M-r> :py EvaluateCurrentRange() 

"show at least 2 lines of cmd history"
set cmdheight=2

" font stuff "
" use set guifont=* to bring up GUI "
" set guifont=Consolas:h12:cANSI

" zoom font in / out with ctrl+uparrow and ctrl+downarrow 
"nmap <C->   :silent! let &guifont = substitute(&guifont, ':h\zs\d\+', '\=eval(submatch(0)+1)', '')<CR>
"nmap <C--> :silent! let &guifont = substitute(&guifont, ':h\zs\d\+', '\=eval(submatch(0)-1)', '')<CR>

colorscheme ir_black
set background=dark

let g:snips_author="jon.melven"

" always open MBE
let g:miniBufExplorerMoreThanOne=0
" tell MBE not to over-write non-modifiable buffers (NERDTree)
let g:miniBufExplModSelTarget=1

nmap <C-n> :silent NERDTreeToggle<CR>

map TT :TaskList<CR>
map PP :TlistToggle<CR>

" unix file mode first
" set ffs=unix,dos
"

