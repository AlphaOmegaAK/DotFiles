" =======================
" --- Location  ~/.vimrc
" =======================
if empty(glob("~/.vim/autoload/plug.vim"))
      execute 'mkdir -p ~/.vim/autoload && "curl -fLo~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"'

"    wget -O ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

if !empty(glob("~/.vim/autoload/plugin.vim"))
    echo "Vim Plug Installed"
endif


set nocompatible					" Ward off unexpected things a distro might set,
									" sane re-sourcing vimrc
set backspace=indent,eol,start		" Allow backspacing over auto-indent,
									" line breaks, start of line action
" Terminal to use 256 colors
set t_Co=256

" Support 24-bit colors
execute "set t_8f=\e[38;2;%lu;%lu;%lum"
execute "set t_8b=\e[48;2;%lu;%lu;%lum"

"if (has("termguicolors"))
"   set termguicolors
"endif

set background=dark					" backgorund dark
set encoding=utf-8					" Set encoding to utf-8, default is latin1
set ignorecase						" Use case insensitive search, unless capital letters
set smartcase						" Override the ignorecase option if searching for capital letters
set hlsearch						" Highlight searches, temporarily off with <C-L>
set showmatch						" Show matching brackets when cursor is over them
set showmode						" Show the mode if on last line
set history=500						" Sets how many lines of history vim will remember
set wildmenu						" Better command-line completion
set wildmode=list:longest			" Make wildmenu behave similiar to bash completion
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set showcmd							" Show partial commands in the last line of screen
set noerrorbells					" No errorbells / warnings
set novisualbell					" No visual bells
set t_vb=							" Reset terminal code for visual bell if visual bell set
set scrolloff=10					" Set 10 lines to the cursor, when moving vertically,
									" show extra lines
set hidden							" Allow buffer to become hidden without saving
set laststatus=2					" Alwasy display the status line, even if only one window
								    " is displayed
set confirm							" Instead of failing a command due to unsaved changes,
									" raise a dialogue asking to save
set cmdheight=2						" Set command height window to 2 lines, avoids many
									" cases of having to "press <Enter> to continue"
set number							" Display line numbers on left
set smarttab " Smart tabs
set shiftwidth=4                    " Indentation length 4 columns
set softtabstop=4		            " Backspacing over 4 spaces like over tabs
set tabstop=4 				        " Set tabular length to 8 columns
set expandtab                       " When navigating tabs, fill tabs with spaces
set wrap							" Wrap lines
set textwidth=80                    " Wrap lines automatically at 80th column
set autoindent						" Auto indent
set smartindent						" Smart indent
set notimeout ttimeout ttimeoutlen=200 		" Quickly timeout on keycodes, not keymappings
set lazyredraw                      " Redraw screen only when needing to, (after macros)
set foldenable                      " Allow folding of code blocks
set foldlevelstart=10               " If 0 all folds will be closed,
                                    " 10 ensures only heavy nested blocks are folded
set foldmethod=indent               " Folds on indentation level
set noswapfile						" No swap files

" Attempt to determine the type of a file based on name, contents, allow auto indenting
if has('filetype')
	filetype plugin indent on
endif

" Enable syntax highlighting
if has('syntax')
	syntax on
endif

" Auto read if file changed from outside
set autoread
au FocusGained,BufEnter * checktime

nnoremap <space> <Nop>
let mapleader="\<Space>"
let localleader="\<Space>"

nnoremap ; :
nnoremap : ;
inoremap jk <Esc>

" Moved vertically by visual line, doesn't skip wrapped lines
nnoremap j gj
nnoremap k gk
nnoremap j j0
nnoremap k k0

nnoremap L $
nnoremap H 0


noremap <space>y "*y
noremap <space>Y "*Y
noremap <space>p "*p
noremap <space>P "*P


noremap <silent><cr> :nohlsearch<cr>

" Indenting easier, reselects highlighted text after indenting
nnoremap > >gv
nnoremap < <gv
vnoremap > >gv
vnoremap < <gv

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Quickly open a buffer for scribble
map <leader>q :e ~/buffer<cr>

" Quickly open a markdown buffer for scribble
map <leader>x :e ~/buffer.md<cr>

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Parenthesis/bracket
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a`<esc>`<i`<esc>

" Map auto complete of (, ", ', [
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i

colorscheme delek
"colorscheme desert
"colorscheme murphy

if has('autocmd')
" delete empty or whitespaces-only lines at the end of file
    autocmd BufWritePre * :%s/\(\s*\n\)\+\%$//ge
    " delete any trailing whitespaces
    autocmd BufWritePre * :%s/\s\+$//ge
endif


"===== Netrw Settings =====
" Change currrent dir with current open file
set autochdir

let g:netrw_liststyle = 3

" 0 - Reuse the same window (default)
" 1 - Open files in a new horizontal split
" 2 - Open files in a new vertical split
" 3 - Open files in a new tab
" 4 - Open in previous window
let g:netrw_browse_split = 1
let g:netrw_winsize = 30


function! ToggleNetrw()
    let g:NetrwIsOpen=0
    if g:NetrwIsOpen
        let i = bufnr("$")
    while (i >= 1)
        if (getbufvar(i, "&filetype") == "netrw")
            silent exe "bwipeout " . i
        endif
        let i-=1
    endwhile
    let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction
"Add your own mapping. For example:
noremap <silent> <C-P> :call ToggleNetrw()<CR>

" OR
" Each time netrw Lexplore is toggled on, it will create a new buffer but not
" the previous one
"augroup AutoDeleteNetrwHiddenBuffers
"   au!
"   au FileType netrw setlocal bufhidden=wipe
"augroup end

call plug#begin('~/.vim/plugged')
	Plug 'vimwiki/vimwiki'
    Plug 'godlygeek/tabular'
    Plug 'preservim/vim-markdown'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'jiangmiao/auto-pairs'
call plug#end()

let g:vimwiki_list = [{'path': '~/wiki', 'syntax': 'markdown', 'ext': '.md'}]



" ==== Markdown Preview ===
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

nmap <Leader>wp <Plug>MarkdownPreviewToggle
