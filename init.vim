"
" IMPORTANT REMINDER
"
" All colour-values can be found with python script at:
" https://github.com/eikenb/terminal-colors
"
" Comment as much as possible, because I tend to forget things!
" --------------------------------------------------------------

"  fish
"     from: https://github.com/dag/vim-fish
"        fish is not completely POSIX compatible, therefore let vim use
"        bash as its shell.
"
if &shell =~# 'fish$'
  set shell=/bin/bash
endif


"
" Vim-Plug ---------------------------------------------------------------------
"

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

" vim-plug short intro
" --------------------
"
" https://github.com/junegunn/vim-plug
"
"
" Make sure you use SINGLE quotes
" Plug 'junegunn/seoul256.vim'
" Plug 'junegunn/vim-easy-align'
"
"  On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"
"  Branch loading
" Plug 'scrooloose/nerdtree', { 'branch': 'WhatEverYouWant' }
"
"  Using git URL
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
"  Plugin options
" Plug 'nsf/gocode', { 'tag': 'go.weekly.2012-03-13', 'rtp': 'vim' }
"
"  Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
"
"  Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'
"
"  Install new plugins with:
"     :PlugInstall
"
"  Remove old/unused plugins with:
"     :PlugClean
"
" intro End
" ---------

" enable repeating supported plugin maps with "."
Plug 'tpope/vim-repeat'

" Fugitive is a highly-capable Git wrapper for Vim.
Plug 'tpope/vim-fugitive'

" Unimpaired.vim provides shortcuts for various paired activities
Plug 'tpope/vim-unimpaired'

" Nice comment plugin
Plug 'tomtom/tcomment_vim'

" A Vim plugin which shows a git diff in the gutter (sign column) and
" stages/reverts hunks. Use [c and ]c to navigate changes.
Plug 'airblade/vim-gitgutter'

" Gundo.vim is Vim plugin to visualize your Vim undo tree.
"Plug 'sjl/gundo.vim'

" UndoTree
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

" Surround.vim lets you add/change/remove surrounding chars and tags
Plug 'tpope/vim-surround'

" Syntax checker for many languages
" Plug 'scrooloose/syntastic'

" command-t
Plug 'wincent/command-t', {
    \   'do': 'cd ruby/command-t && ruby extconf.rb && make'
    \ }

" terminus
" vim terminal integration, change cursor shape, bracketed paste mode, etc
Plug 'wincent/terminus'

" pinnacle
" Highlight group manipulation
Plug 'wincent/pinnacle'

" A code-completion engine for Vim
Plug 'Shougo/neocomplete.vim'

" Speeds up folding
Plug 'Konfekt/FastFold'

" Ultisnips aims to provide support for textual snippets, similar to TextMate
" or other Vim plugins. Activate by typing some text and hitting <tab>.
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'

" Better whitespace highlighting for Vim
"  to toggle whitespace highlighting, call:
"     :ToggleWhitespace
"  to clean extra whitespace, call:
"     :StripWhitespace
Plug 'ntpeters/vim-better-whitespace'

" vim plugin to trace syntax highlight
" activate with <leader>hlt or :HLT
Plug 'gerw/vim-HiLinkTrace'

" Color schemes
Plug 'romainl/Apprentice', { 'branch': 'fancylines-and-neovim' }

" status/tabline for vim that's light as air
"Plug 'bling/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

" Vim script for text filtering and alignment
Plug 'godlygeek/tabular'

" plugin that displays tags in a window, ordered by scope
"Plug 'majutsushi/tagbar'

" gitv is a repository viewer
"  Dependancy: A working fugitive installation
Plug 'gregsexton/gitv', {'on': ['Gitv']}

" Providing support for editing fish scripts.
"Plug 'Konstruktionist/vim-fish', { 'branch': 'fishOption' }
Plug 'Konstruktionist/vim-fish'

" Support for Apple's Swift language
Plug 'keith/swift.vim'

" Markdown for Vim
Plug 'gabrielelana/vim-markdown'
" Plug 'rhysd/vim-gfm-syntax' " github flavored markdown

" open the current Markdown buffer in Marked.app
Plug 'itspriddle/vim-marked'

" Syntax highlighting for tmux
Plug 'keith/tmux.vim'

call plug#end()

"
" Vim-Plug End -----------------------------------------------------------------
"

"
" Reload changes to init.vim
"

if has("autocmd")
   autocmd BufWritePost $MYVIMRC source $MYVIMRC
endif


" setup python paths
let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'


"
" Options
"        If relevant the short command is in the comments, if not there's no
"        short command.
"

set timeoutlen=3000                              "tm:    Time out on mapping after three seconds
set ttimeoutlen=100                              "ttm:   Time out on key codes after a tenth of a second
set ruler                                        "ru:    Show the cursor position all the time
set showcmd                                      "sc:    Display incomplete commands
set hidden                                       "hid:   Don't care about closing modified buffers
set winwidth=84                                  "       The window width with multiple windows
set nowrap                                       "       Don't wrap lines (mapped leader-w to toggle)
set listchars=tab:▸\ ,eol:¬,extends:»,trail:※,nbsp:⎵
set showbreak=\ ↪︎\                               "sbr:   Show Unicode 21AA (RIGHTWARDS ARROW WITH HOOK) surrounded by spaces when soft-wrapping lines
set noswapfile                                   "noswf: Do not use a swap file
set cmdwinheight=20                              "cwh:   Height of command window
set lazyredraw                                   "lz:    Will not redraw the screen while running macros (goes faster)
set linebreak                                    "lbr    Break lines at word end
set spelllang=en_us                              "       The common computer language version
set clipboard+=unnamedplus

"
" Folding
"

set foldmethod=syntax                            "fdm:   Fold on the indentation by default
set foldnestmax=10                               "fdn:   Deepest fold is 10 levels
set foldenable                                   "nofen: Don't fold by default
set foldlevel=1
set foldlevelstart=10                            "fdls:  Open most folds by default

"
" Search
"

set ignorecase                                   "ic:    Searches are case insensitive...
set smartcase                                    "scs:   ... unless they contain at least one capital letter
set gdefault                                     "gd:    Substitute all matches in a line by default

"
" Programming
"

syntax on                                        "syn:   Syntax highlighting
set showmatch                                    "sm:    Flashes matching brackets or parenthasis
set matchtime=3                                  "mat:   How long to flash brackets

"
" Tabs
"

set tabstop=3                                    "ts:    Number of spaces that a tab renders as
set shiftwidth=3                                 "sw:    Number of spaces to use for autoindent
set softtabstop=3                                "sts:   Number of spaces that tabs insert
set expandtab                                    "et:    Uses spaces instead of tab characters

"
" Hud and status info
"

set laststatus=2                                 "       Always show the statusline
set number                                       "nu:    Numbers lines
set relativenumber                               "rnu    Let vim calculate the vertical jumps
set numberwidth=6                                "nuw:   Width of number column
"set noshowmode                                   "nosmd: Disable -> showing mode is done by Airline plugin

"
" Menu compilation
"

set wildmode=list,full                           "wim:   List all matches and complete first match

" Ignore these file-types for wildcard matching
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX crappings
set wildignore+=*.luac                           " Lua byte code
set wildignore+=migrations                       " Django migrations
set wildignore+=*.pyc                            " Python byte code
set wildignore+=*.orig                           " Merge resolution files
set wildignore+=*/tmp/*                          " Temporary directories content

"
" Colours
"

colorscheme Kafka
set cursorline

"
" Statusline
"
function! statusline#fileprefix() abort
  let l:basename=expand('%:h')
  if l:basename == '' || l:basename == '.'
    return ''
  else
    " Make sure we show $HOME as ~.
    return substitute(l:basename . '/', '\C^' . $HOME, '~', '')
  endif
endfunction

function! statusline#ft() abort
  if strlen(&ft)
    return ',' . &ft
  else
    return ''
  endif
endfunction

function! statusline#fenc() abort
  if strlen(&fenc) && &fenc !=# 'utf-8'
    return ',' . &fenc
  else
    return ''
  endif
endfunction

if has('statusline')
  set statusline=%7*                         " Switch to User7 highlight group
  set statusline+=%{statusline#lhs()}
  set statusline+=%*                         " Reset highlight group.
"  set statusline+=%4*                        " Switch to User4 highlight group (Powerline arrow).
"  set statusline+=                          " Powerline arrow.
  set statusline+=%*                         " Reset highlight group.
  set statusline+=\                          " Space.
  set statusline+=%<                         " Truncation point, if not enough width available.
  set statusline+=%{statusline#fileprefix()} " Relative path to file's directory.
  set statusline+=%2*                        " Switch to User2 highlight group (bold).
  set statusline+=%t                         " Filename.
  set statusline+=%*                         " Reset highlight group.
  set statusline+=\                          " Space.
  set statusline+=%1*                        " Switch to User1 highlight group (italics).

  " Needs to be all on one line:
  "   %(                   Start item group.
  "   [                    Left bracket (literal).
  "   %R                   Read-only flag: ,RO or nothing.
  "   %{statusline#ft()}   Filetype (not using %Y because I don't want caps).
  "   %{statusline#fenc()} File-encoding if not UTF-8.
  "   ]                    Right bracket (literal).
  "   %)                   End item group.
  set statusline+=%([%R%{statusline#ft()}%{statusline#fenc()}]%)

  set statusline+=%*   " Reset highlight group.
  set statusline+=%=   " Split point for left and right groups.

  set statusline+=\               " Space.
"  set statusline+=               " Powerline arrow.
  set statusline+=%5*             " Switch to User5 highlight group.
  set statusline+=%{statusline#rhs()}
  set statusline+=%*              " Reset highlight group.

  if has('autocmd')
    augroup WincentStatusline
      autocmd!
      autocmd ColorScheme * call statusline#update_highlight()
      "autocmd User FerretAsyncStart call statusline#async_start()
      "autocmd User FerretAsyncFinish call statusline#async_finish()
    augroup END
  endif
endif

"
" File formats -----------------------------------------------------------------
"

" Git commit messages
"   force the cursor onto a new line after 72 characters
autocmd Filetype gitcommit setlocal spell textwidth=72
"   colour the 73rd column
autocmd FileType gitcommit set colorcolumn=+1
"   also colour the 51st column (for titles)
autocmd FileType gitcommit set colorcolumn+=51


" Markdown
"   map *.md files so that syntax is recognized as markdown
autocmd Bufread,BufNewFile,BufReadPost *.md set filetype=markdown
"   Word wrap without line breaks for markdown
autocmd Filetype markdown setlocal wrap linebreak list textwidth=0 wrapmargin=0

" JSON
"   Make json files human readable
autocmd BufRead,BufNewFile *.json set filetype=json
autocmd FileType json setlocal equalprg=json_reformat


" Objective-C
"   map *.h & *.m files so syntax is recognized as objc
autocmd BufNewFile,BufRead *.m,*.h set ft=objc


"
" Plugin settings --------------------------------------------------------------
"

"
"  gitgutter
"

let g:gitgutter_override_sign_column_highlight=0
let g:gitgutter_eager=0
let g:gitgutter_sign_column_always=1
let g:gitgutter_sign_removed='-'
let g:gitgutter_sign_modified_removed='±'

"
"  Airline status bar options
"

"let g:airline_theme='distinguished'
"let g:airline_powerline_fonts=1
"let g:airline_detect_iminsert=1
"let g:airline_left_sep=''
"let g:airline_right_sep=''
"let g:airline_skip_empty_sections = 1
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#hunks#non_zero_only = 1
"let g:airline#extensions#whitespace#enabled = 0


"
" Ultisnips
"

let g:UltiSnipsExpandTrigger="<tab>"

"
" Activate deoplete
"

let g:deoplete#enable_at_startup = 1


"
" Commands ---------------------------------------------------------------------
"

" Set tabstop, softtabstop and shiftwidth to the same value
command! -nargs=* Stab call Stab()
function! Stab()
   let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
   if l:tabstop > 0
      let &l:sts = l:tabstop
      let &l:ts = l:tabstop
      let &l:sw = l:tabstop
   endif
   call SummarizeTabs()
endfunction

function! SummarizeTabs()
   try
      echohl ModeMsg
      echon 'tabstop='.&l:ts
      echon ' shiftwidth='.&l:sw
      echon ' softtabstop='.&l:sts
      if &l:et
         echon ' expandtab'
      else
         echon ' noexpandtab'
      endif
   finally
      echohl None
   endtry
endfunction


"
" Key-mappings -----------------------------------------------------------------
"

" Space is easier than backslash
let g:mapleader = "\<Space>"

" Escape is hard to reach
inoremap jj <esc>

" Shortcut to rapidly toggle set list
nmap <leader>l :set list!<CR>

" open .vimrc in a new tab
nmap <leader>v :tabedit $MYVIMRC<CR>

" Toggle wrap
nmap <leader>w :set invwrap<CR>:set wrap?<CR>

" Toggle airline whitespace detection
"nmap <leader>awt :AirlineToggleWhitespace<CR>

" Refreshes all highlight groups and redraws the statusline.
"nmap <leader>ar :AirlineRefresh<CR>

" Always be 'very magic'
nnoremap / /\v
vnoremap / /\v

" Search for help with command-t plugin
nmap <silent> <Leader>h <Plug>(CommandTHelp)
"
" NeoComplete key-mappings
" ------------------------
"
inoremap <expr><C-l> neocomplete#complete_common_string()
" Recommended key-mappings.
" " <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
    "return pumvisible() ? "\<C-y>" : "\<CR>"
 endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"


" Toggle Undotree
nnoremap <leader>ut :UndotreeToggle<CR>

" Tip from http://www.catonmat.net/blog/sudo-vim/
" save read-only files
cnoremap sudow w !sudo tee % >/dev/null

" Testing colorscheme
nmap <leader>hil :so $VIMRUNTIME/syntax/hitest.vim<CR>

" Delete in normal mode switches off highlighting till next search
nmap <silent> <BS> :nohlsearch<CR>

" Call the :Tabularize command each time you insert a | character
"  Very usefull for Markdown tables
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

" Key-mappings End <---
