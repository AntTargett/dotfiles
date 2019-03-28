"Credit to nwaywood for a lot of these settings
" .vimrc / init.vim

call plug#begin('~/.config/nvim/plugged')
let mapleader = ","

" color/theme stuff
Plug 'tomasiser/vim-code-dark'
Plug 'scrooloose/nerdtree' " file explorer
Plug 'Aldlevine/nerdtree-git-plugin'

Plug 'tpope/vim-surround' " mappings to easily delete, change and add such surroundings in pairs, such as quotes, parens, etc.
Plug 'tpope/vim-repeat' " adds support for the '.' command for vim-surround, vim-commentary and vim-unimpaired
Plug 'thinca/vim-textobj-function-javascript' " Adds 'if' and 'af' for javascript
Plug 'sickill/vim-pasta' " Context aware pasting (e.g. current indentation)
" Language specific
Plug 'fatih/vim-go', { 'for': 'go' } " go support
Plug 'zchee/deoplete-go', { 'do': 'make'} " go autocompletion integration with deoplete
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' } " better syntax highlighting and indenting for haskell
Plug 'eagletmt/neco-ghc', { 'for': 'haskell' } " haskell autocompletion integration with deoplete
Plug 'elmcast/elm-vim', { 'for': 'elm' } " elm support

Plug 'reasonml-editor/vim-reason', { 'for': 'reason' } " reason support

Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx', 'html'] }
Plug 'mxw/vim-jsx', { 'for': ['javascript.jsx', 'javascript'] } " JSX support
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'], 'do': 'npm install' }
Plug 'styled-components/vim-styled-components', { 'for': ['javascript', 'javascript.jsx'] }

Plug 'hail2u/vim-css3-syntax', { 'for': ['css', 'javascript', 'javascript.jsx'] } " CSS3 syntax support

Plug 'mattn/emmet-vim'

" Initialize plugin system
call plug#end()

" following 3 lines make the mapleader key work better
set notimeout
set ttimeout
set ttimeoutlen=10

" tab control
set smarttab " tab respects 'tabstop', 'shiftwidth and 'softtabstop
set tabstop=4 " set the tab width to 4 spaces
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth
set expandtab " when pressing tab, insert spaces instead


" folds
set foldmethod=indent " default folding based on indentation
set nofoldenable " don't fold by default
set foldlevel=99 " https://stackoverflow.com/a/5786588/2580566



" smarter searching
set ignorecase " case insensitive searching
set smartcase " case sensitive if search term explicilty contains a captital
set incsearch " set incremental search, like modern browsers
set showmatch
set hlsearch " highlight search results
set magic " make searching use normal regex (grep)


" set color themes (from .vim/colors)
syntax enable
colorscheme codedark


" misc
set mouse+=a " lets mouse resize vim windows
if !has('nvim')
    set ttymouse=xterm2 " lets mouse resize vim windows
endif


set autoindent
set autoread                                                 " reload files when changed on disk, i.e. via `git checkout`
set backspace=2                                              " Fix broken backspace in some setups
set backupcopy=yes                                           " see :help crontab
set clipboard=unnamed                                        " yank and paste with the system clipboard
set directory-=.                                             " don't store swapfiles in the current directory
set encoding=utf-8
set expandtab                                                " expand tabs to spaces
set ignorecase                                               " case-insensitive search
set incsearch                                                " search as you type
set laststatus=2                                             " always show statusline
set list                                                     " show trailing whitespace
set listchars=tab:▸\ ,trail:▫
set number                                                   " show line numbers
set ruler                                                    " show where you are
set scrolloff=3                                              " show context above/below cursorline
set shiftwidth=2                                             " normal mode indentation commands use 2 spaces
set showcmd
set smartcase                                                " case-sensitive search if any caps
set softtabstop=2                                            " insert mode tab and backspace use 2 spaces
set tabstop=8                                                " actual tabs occupy 8 characters
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu                                                 " show a navigable menu for tab completion
set wildmode=longest,list,full


" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" will make navigation of wrapped lines worked as you'd expect
nnoremap <silent> j gj
nnoremap <silent> k gk
nnoremap <silent> ^ g^
nnoremap <silent> $ g$

" resize panes
nnoremap <silent> <Right> :vertical resize +5<cr>
nnoremap <silent> <Left> :vertical resize -5<cr>
nnoremap <silent> <Up> :resize +5<cr>
nnoremap <silent> <Down> :resize -5<cr>

" edit ~/.config/nvim/init.vim
map <leader>0 :e ~/.config/nvim/init.vim<cr>



" keyboard shortcuts
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <leader>l :Align
nnoremap <leader>a :Ag<space>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>t :CtrlP<CR>
nnoremap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
nnoremap <leader>] :TagbarToggle<CR>
nnoremap <leader><space> :call whitespace#strip_trailing()<CR>
nnoremap <leader>g :GitGutterToggle<CR>
noremap <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>



" NERDTree
" --------
" http://www.cheatography.com/stepk/cheat-sheets/vim-nerdtree/

" don't close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0
" show hidden files in NERDTree
let g:NERDTreeShowHidden=1
" change vims cwd when the NERDTree root changes (e.g. when changes bookmark)
let g:NERDTreeChDirMode=2
" Toggle NERDTree
nnoremap <silent> <leader>e :NERDTreeToggle<cr>
" Find current file in NERDTree
nnoremap <silent> <leader>n :NERDTreeFind<cr>
" Shortcut to bring up autocomplete of NERDTree bookmarks
cnoreabbrev b NERDTreeFromBookmark
" remove some files by extension
let g:NERDTreeIgnore = ['\.js.map$', '\.pyc$']
" Change the NERDTree window width (default=31)
let g:NERDTreeWinSize=40
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" remap C-j and C-k commands so it doesnt interfere with vim-tmux-navigator
" plugin
let g:NERDTreeMapJumpNextSibling='C-d'
let g:NERDTreeMapJumpPrevSibling='C-u'
" change window split keys to match ctrlp mappings
let g:NERDTreeMapOpenSplit='s'
let g:NERDTreeMapOpenVSplit='v'
" don't override netrw (this interferes with vim-vinegar)
let g:NERDTreeHijackNetrw=0
" nice alignment of vim-devicons
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 0
" Show gitignored status of files (option from nerdtree-git-plugin)
let g:NERDTreeShowIgnoredStatus = 1
" enable showing git status through coloring the text (Aldlevine fork)
let g:NERDTreeGitStatusNodeColorization=1
let g:NERDTreeGitStatusWithFlags = 1

" Change the default colors of git status highlighting to match Atom
hi link NERDTreeGitStatusIgnored Comment
hi link NERDTreeGitStatusModified Type
hi link NERDTreeGitStatusDirDirty Type
hi NERDTreeGitStatusUntracked ctermfg=2 guifg=#98c379
" hi link NERDTreeGitStatusUntracked Operator

" Disable special highlighting of executable file
" https://github.com/scrooloose/nerdtree/blob/8cd17c1a478d8302e4782a95963abe46fc22c538/syntax/nerdtree.vim#L50
hi link NERDTreeExecFile Normal




" vim-go
" ------
" more syntax highlighting for go code
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
" show type info for go code
let g:go_auto_type_info=1
"  executes :GoFmt everytime a go file is saved, using "goimport" makes saving
"  files slow
let g:go_fmt_command='gofmt'
" disable mappings related to Tags (clashes with <C-t> to open terminal)
let g:go_def_mapping_enabled = 0

" au FileType go nnoremap <Leader>gi :GoImports<cr>
" au FileType go nnoremap <Leader>gm :GoMetaLinter<cr>
" remove red highlighting
let g:go_highlight_trailing_whitespace_error = 0
" run go-metalinter and gofmt on save
let g:go_fmt_autosave = 1
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint', 'vetshadow', 'ineffassign', 'goconst']
" gometalinter command when executed via :GoMetaLinter
" au FileType go autocmd BufWritePre * :GoMetaLinter
let g:go_metalinter_command='gometalinter --disable-all --enable=vet
            \ --enable=vetshadow --enable=golint --enable=ineffassign --enable=goconst --enable=gofmt'
" let g:go_metalinter_command="gometalinter --disable=vetshadow --disable=test
"		 \ --disable=testify --disable=errcheck --linter='vet:go tool vet -composites=false ./*.go:PATH:LINE:MESSAGE'"



" vim-jsx
" -------
let g:jsx_ext_required = 0

" vim-maximizer
" -------------
nnoremap <C-w>z :MaximizerToggle<cr>

" elm-vim
" -----------
let g:elm_format_autosave = 1
let g:elm_setup_keybindings = 0 " disable built-in keybindings
let g:elm_detailed_complete = 1 " show types in autocompletion
" autocomplete only on attributes; doesn't seem to complete local vars
let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.elm = '\.'


