"
" IMPORTANT REMINDER
"
" All colour-values can be found with python script at:
" https://github.com/eikenb/terminal-colors
"
" Comment as much as possible, because I tend to forget things!
" --------------------------------------------------------------
"
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
" https://github.com/tpope/vim-repeat
Plug 'tpope/vim-repeat'

" Fugitive is a highly-capable Git wrapper for Vim.
" https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

" Unimpaired provides shortcuts for various paired activities
" https://github.com/tpope/vim-unimpaired
Plug 'tpope/vim-unimpaired'

" A tree explorer plugin for vim
" https://github.com/scrooloose/nerdtree
Plug 'scrooloose/nerdtree'

" Easy Commenting for vim
" https://github.com/tomtom/tcomment_vim
Plug 'tomtom/tcomment_vim'

" A Vim plugin which shows a git diff in the gutter (sign column) and
 " stages/reverts hunks. Use [c and ]c to navigate changes.
 " https://github.com/airblade/vim-gitgutter
Plug 'airblade/vim-gitgutter'

" This is an addon for Vim providing support for editing fish scripts.
" https://github.com/onodera-punpun/vim-fish
"  which is a updated fork from https://github.com/dag/vim-fish
Plug 'onodera-punpun/vim-fish'

" The ultimate undo history visualizer for VIM
" https://github.com/mbbill/undotree
Plug 'mbbill/undotree'

" Surround.vim lets you add/change/remove surrounding chars and tags
" https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'

" Syntax checker for many languages
" https://github.com/scrooloose/syntastic
Plug 'scrooloose/syntastic'

" CtrlP is a fuzzy file, buffer, mru, tag, etc finder.
" Open with CTRL-P, then:
"   Press <c-f> and <c-b> to cycle between modes.
"   Press <c-d> to switch to filename only search instead of full path.
"   Press <c-r> to switch to regexp mode.
" https://github.com/ctrlpvim/ctrlp.vim
Plug 'ctrlpvim/ctrlp.vim'

" Ultisnips aims to provide support for textual snippets, similar to TextMate
" or other Vim plugins. Activate by typing some text and hitting <tab>.
" https://github.com/SirVer/ultisnips
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'

" Better white space highlighting for Vim
"  to toggle whitespace highlighting, call:
"     :ToggleWhitespace
"  to clean extra white space, call:
"     :StripWhitespace
Plug 'ntpeters/vim-better-whitespace'

" Support for Apple's Swift language
Plug 'keith/swift.vim'

" A front for ag, A.K.A. the_silver_searcher
Plug 'rking/ag.vim'

" vim plugin to trace syntax highlight
" activate with <leader>hlt or :HLT
Plug 'gerw/vim-HiLinkTrace'

" status/tabline for vim that's light as air
" https://github.com/bling/vim-airline
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Simple tmux statusline generator for powerline symbols & airline integration
" https://github.com/edkolev/tmuxline.vim
Plug 'edkolev/tmuxline.vim'

" plugin for .tmux.conf
" provides syntax highlighting, :make sources .tmux.conf
" K jumps to the exact place in 'man tmux' from word under cursor
" https://github.com/tmux-plugins/vim-tmux
Plug 'tmux-plugins/vim-tmux'

" Vim script for text filtering and alignment
" https://github.com/godlygeek/tabular
Plug 'godlygeek/tabular'

Plug 'janson/bufonly.vim'
Plug 'mtth/scratch.vim'

" vim plugin to quickly switch between buffers
" https://github.com/troydm/easybuffer.vim
Plug 'troydm/easybuffer.vim'

" plugin that displays tags in a window, ordered by scope
" https://github.com/majutsushi/tagbar
Plug 'majutsushi/tagbar'

" gitv is a repository viewer
" https://github.com/gregsexton/gitv
Plug 'gregsexton/gitv'

" A code-completion engine for Vim
"  The original (valloric) version I can't get working
" https://github.com/oblitum/YouCompleteMe
"Plug 'oblitum/YouCompleteMe', { 'do': './install.py --clang-completer' }

" A completionframework for neovim
" https://github.com/Shougo/deoplete.nvim
Plug 'Shougo/deoplete.nvim'

" Markdown for Vim
" https://github.com/gabrielelana/vim-markdown
Plug 'gabrielelana/vim-markdown'

" open the current Markdown buffer in Marked.app
" https://github.com/itspriddle/vim-marked
Plug 'itspriddle/vim-marked'

call plug#end()

"
" Vim-Plug End -----------------------------------------------------------------
"

"
" Reload changes to .vimrc
"

if has("autocmd")
   autocmd BufWritePost $MYVIMRC source $MYVIMRC
endif

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
set listchars=tab:▸\ ,eol:¬,extends:◉,trail:※,nbsp:⎵
set noshowmode                                   "nosmd: Status-line shows the mode we're in
set showbreak=\ ↪︎\                               "sbr:   Show Unicode 21AA (RIGHTWARDS ARROW WITH HOOK) surrounded by spaces when soft-wrapping lines
set noswapfile                                   "noswf: Do not use a swap file
set cmdwinheight=20                              "cwh:   Height of command window
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

set number                                       "nu:    Numbers lines
set relativenumber                               "rnu    Let vim calculate the vertical jumps
set numberwidth=6                                "nuw:   Width of number column
set lazyredraw                                   "lz:    Will not redraw the screen while running macros (goes faster)
set linebreak                                    "lbr    Break lines at word end
set spelllang=en_gb                              "       The civilised version

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
set background=dark

"
"  Plain vim statusline
" see: :help statusline
"
" We don't use this statusline. It's here as a fallback in case Airline breaks

"set statusline=         "reset
"set statusline+=%#todo# "set color
"set statusline+=[       "open bracket char
"set statusline+=%n      "buffer number
"set statusline+=%M      "modifiable/modified flag
"set statusline+=%R      "Readonly flag
"set statusline+=%W      "Preview window flag
"set statusline+=]%*\      "close bracket & reset color
"set statusline+=%<      "cut from here if line is too long
"set statusline+=./%f\     "relative path of the filename
"set statusline+=[%{strlen(&fenc)?&fenc:'wtf-enc'}\ \• "file encoding
"set statusline+=\ %{&ff}\ \• "file format
"set statusline+=\ %{strlen(&ft)?&ft:'zomg'}] "file type
"set statusline+=%=      "left/right separator
"set statusline+=%{fugitive#statusline()}\  "git branch
"set statusline+=Col:\ %c\      "cursor column
"set statusline+=Line:\ %l/%L   "cursor line/total lines
"set statusline+=\ (%P)  "escaped space, percent through file

"
"  Gvim
"

" set guifont=PragmataPro:h12

"
" File formats -----------------------------------------------------------------
"
autocmd Filetype gitcommit setlocal spell textwidth=72
" http://vim.wikia.com/wiki/Word_wrap_without_line_breaks
autocmd Filetype markdown setlocal wrap linebreak nolist textwidth=0 wrapmargin=0

" Make json files human readable
autocmd BufRead,BufNewFile *.json set filetype=json
autocmd FileType json setlocal equalprg=json_reformat

" Objective-C: map *.h & *.m files so syntax is recognized as objc
autocmd BufNewFile,BufRead *.m,*.h set ft=objc

" markdown: map *.md files so that syntax is recognized as markdown
autocmd Bufread,BufNewFile,BufReadPost *.md set filetype=markdown

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

"
"  Airline status bar options
"

let g:airline_theme='understated'
let g:airline_powerline_fonts=1
let g:airline_inactive_collapse=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']
let g:airline#extensions#whitespace#enabled = 0

"
"  silver searcher
"

let g:agprg="ag --column --smart-case"

"
"  NerdTree
"

let NerdTreeIgnore=['.DS_Store[[file]]']

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

" Make :help appear in a full-screen tab, instead of a window
" ===========================================================
"Only apply to .txt files...
augroup HelpInTabs
    autocmd!
    autocmd BufEnter  *.txt   call HelpInNewTab()
augroup END

"Only apply to help files...
function! HelpInNewTab ()
    if &buftype == 'help'
        "Convert the help window to a tab...
        execute "normal \<C-W>T"
    endif
endfunction

"
" Key-mappings -----------------------------------------------------------------
"

" Space is easier than backslah
let g:mapleader = "\<Space>"

" Escape is hard to reach
inoremap kj <esc>

" Shortcut to rapidly toggle set list
nmap <silent> <leader>l :set list!<CR>

" open .vimrc in a new buffer for editing
nmap <silent> <leader>ev :e $MYVIMRC<CR>

" source vimrc
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"" Move the cursor to the window left of the current one
"noremap <silent> ,h :wincmd h<CR>
"
"" Move the cursor to the window below the current one
"noremap <silent> ,j :wincmd j<CR>
"
"" Move the cursor to the window above the current one
"noremap <silent> ,k :wincmd k<CR>
"
"" Move the cursor to the window right of the current one
"noremap <silent> ,l :wincmd l<CR>
"
"" Close the window below this one
"noremap <silent> ,cj :wincmd j<CR>:close<CR>
"
"" Close the window above this one
"noremap <silent> ,ck :wincmd k<CR>:close<CR>
"
"" Close the window to the left of this one
"noremap <silent> ,ch :wincmd h<CR>:close<CR>
"
"" Close the window to the right of this one
"noremap <silent> ,cl :wincmd l<CR>:close<CR>
"
"" Close the current window
"noremap <silent> ,cc :close<CR>
"
"" Move the current window to the right of the main Vim window
"noremap <silent> ,ml <C-W>L
"
"" Move the current window to the top of the main Vim window
"noremap <silent> ,mk <C-W>K
"
"" Move the current window to the left of the main Vim window
"noremap <silent> ,mh <C-W>H
"
"" Move the current window to the bottom of the main Vim window
"noremap <silent> ,mj <C-W>J

" Toggle wrap
nmap <leader>w :set invwrap<CR>:set wrap?<CR>

" Toggle airline white space detection
nmap <leader>awt :AirlineToggleWhitespace<CR>

" Refreshes all highlight groups and redraws the statusline.
nmap <leader>ar :AirlineRefresh<CR>

" Toggle NERDTree
nmap <leader>n :NERDTreeToggle<CR>

"Toggle Ag
nmap <leader>g :Ag!<CR>

" Toggle UndoTree
nnoremap <C-u> :UndotreeToggle<CR>

" Tip from http://www.catonmat.net/blog/sudo-vim/
" How to save read-only files in vim
" use :sudow
cnoremap sudow w !sudo tee % >/dev/null

" Testing colourscheme
nmap <leader>hil :so $VIMRUNTIME/syntax/hitest.vim<CR>

" Escape from the terminal window
tnoremap <Esc> <C-\><C-n>

" Toggle Easybuffer
nmap <leader>b :EasyBufferToggle<CR>

" Delete in normal mode switches off highlighting till next search...
nmap <silent> <BS> :nohlsearch<CR>

" Key-mappings End <---
