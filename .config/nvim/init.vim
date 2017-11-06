call plug#begin()
Plug 'flazz/vim-colorschemes'
Plug 'cranndarach/vim-ragtag'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-abolish'
Plug 'vim-scripts/tComment'
Plug 'jlanzarotta/bufexplorer'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/seoul256.vim'
Plug 'jonathanfilip/vim-lucius'
Plug 'alvan/vim-closetag'
Plug 'myusuf3/numbers.vim'
Plug 'klen/python-mode'
Plug 'Yggdroot/indentLine'
" Plug 'vim-syntastic/syntastic'
" Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'wookiehangover/jshint.vim'
" Plug 'junegunn/rainbow_parentheses.vim'
Plug 'luochen1990/rainbow'
" Plug 'kien/rainbow_parentheses.vim'
" Plug 'losingkeys/vim-niji'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'duggiefresh/vim-easydir'
" Plug 'ap/vim-css-color'
Plug 'lepture/vim-css'
Plug 'gorodinskiy/vim-coloresque'
" Plug 'chrisyip/Better-CSS-Syntax-for-Vim'
" Plug 'hail2u/vim-css3-syntax'
" Plug 'isRuslan/vim-es6'
Plug 'airblade/vim-gitgutter'
" Plug 'elzr/vim-json'
Plug 'matze/vim-move'
" Plug 'terryma/vim-multiple-cursors'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vimwiki/vimwiki'
Plug 'sickill/vim-pasta'
Plug 'SirVer/UltiSnips'
Plug 'honza/vim-snippets'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
" Plug 'roxma/nvim-completion-manager'
" JS completion for nvim-completion-manager:
" Plug 'roxma/nvim-cm-tern', {'do': 'npm install'}
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'roxma/vim-tmux-clipboard'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'roosta/srcery'
Plug 'guns/xterm-color-table.vim'
Plug 'jalvesaq/Nvim-R'
Plug 'ervandew/screen'
Plug 'vim-scripts/R.vim'
call plug#end()

" Change Leader key from '\' to ','
let mapleader = ","
let maplocalleader = ";"
set showcmd

" Recognize file types, auto-indent
filetype plugin indent on

" Show line numbers
set number

" Search the top five lines for a filetype definition
set modelines=5

" Turn off mode-sensitive cursor shape
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=0

" Allow neovim to use true color
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" colors
" Highlight the 80-character mark
set colorcolumn=80
highlight ColorColumn ctermbg=25
" Highlight the line the cursor is on
set cursorline
" Color scheme options
" Enable transparency
let &t_8f="[38;2;%lu%lu%lum"
let &t_8b="[48;2;%lu%lu%lum"
set termguicolors
colorscheme molokai
" let g:seoul256_background=235
" let g:seoul256_srgb=1
" colorscheme seoul256
let g:airline_theme='powerlineish'
highlight Normal ctermbg=none guibg=none
highlight NonText ctermbg=none guibg=none

" Do not update the screen while inserting non-typed data
set lazyredraw

" Save as utf-8
set encoding=utf-8

" Turn auto-indenting on
set autoindent

" Tab is 2 characters
set tabstop=2

" Soft tab is 2 spaces
set shiftwidth=2

" Use spaces instead of tabs
set expandtab

" copy the previous indentation on autoindenting
set copyindent

" Always show cursor position
set ruler

" fold according to syntax
set foldmethod=syntax
" if it doesn't work in things other than js, try indent:
" set foldmethod=indent
nnoremap za zA
" Do not fold unless explicitly asked
" set nofoldenable

" Use 2 spaces instead of 4 in ruby and eruby (and js when appropriate)
" autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 expandtab
" autocmd FileType eruby setlocal shiftwidth=2 tabstop=2 expandtab
" autocmd FileType scss setlocal shiftwidth=2 tabstop=2 expandtab
" autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 expandtab

" Use 4 spaces instead of 2 in python and maybe others
au FileType python setlocal shiftwidth=4 tabstop=4 expandtab

" in some cases, move the color column and line width
au FileType markdown,vimwiki,tex setlocal colorcolumn=160  textwidth=159

" Use shiftwidth when indenting with `>>` and `<<`
set shiftround

" `<Tab>` uses shiftwidth
set smarttab

" Match case when query is mixed, don't match case if all lower
set smartcase

" highlight search terms
set hlsearch

" show search matches as you type
set incsearch

" remember more commands and search history
set history=1000
set undolevels=1000

" Files to ignore
set wildignore=*.swp,*.bak,*.pyc,*.class

" Don't beep
set noerrorbells

" Split windows intuitively
set splitbelow
set splitright

" Turn on Rainbow Parentheses
" call rainbow_parentheses#activate(1)

" Show hidden buffers
set hidden
" Enable the list of buffers in airline
let g:airline#extensions#tabline#enabled=1
" Show just the filename
let g:airline#extensions#tabline#fnamemod=':t'

" Treat `.pl` as Prolog instead of Perl
autocmd BufNewFile,BufRead *.pl set filetype=prolog
" Treat *.js as javascript instead of JSX
autocmd BufNewFile,BufRead *.js set filetype=javascript
autocmd BufNewFile,BufRead *.cson set filetype=coffee

" Show whitespace characters
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Disable <F1>; never have I intentionally opened help that way
nnoremap <F1> <nop>
inoremap <F1> <nop>
vnoremap <F1> <nop>

" Press `esc` to clear search highlighting
nnoremap <esc> :noh<return><esc>

" More intuitive enter keys:
nmap <CR> i<CR><Esc>

" `<Leader>enter` to jump to the end of the line, add a new line below it, and
" return to insert mode.
nnoremap <Leader><CR> A<CR>
inoremap <Leader><CR> <C-O>A<CR>

" 'j' and 'k' traverse visual lines (inclu soft-wrapped), not literal lines
" nnoremap j gj
" nnoremap k gk

" Save file with `,w`
nnoremap <Leader>w :w<CR>
inoremap <Leader>w <C-O>:w<CR>

" Edit init.vim in separate tab with ',rc'
" nnoremap :rc<CR> :e ~/.config/nvim/init.vim<CR>
nnoremap <Leader>rc :tabe ~/.config/nvim/init.vim<CR>
inoremap <Leader>rc <C-O>:tabe ~/.config/nvim/init.vim<CR>

" Source init.vim with ',s'
nnoremap <Leader>s :source ~/.config/nvim/init.vim<CR>
inoremap <Leader>s <C-O>:source ~/.config/nvim/init.vim<CR>

" Esc to normal mode with jj or kk
inoremap jj <esc>
inoremap kk <esc>

" switch between buffers with `,]` and `,[`
nnoremap <Leader>] :bn<CR>
nnoremap <Leader>[ :bN<CR>

" Reflow paragraph or selection with `rf` (in normal and visual modes
" for markdown and tex files, and just visual modes for everything else)
au BufNewFile,BufRead *.md,*.tex,*.wiki,*.html nnoremap rf gqip
vnoremap rf gq

" Unbind the cursor keys in insert, normal and visual modes.
for prefix in ['i', 'n', 'v']
  for key in ['<Up>', '<Down>', '<Left>', '<Right>', '<LeftMouse>', '<PageUp>', '<PageDown>']
    exe prefix . "noremap " . key . " <Nop>"
  endfor
endfor

" Insert docstrings more efficiently
augroup docstring
    au BufNewFile,BufRead *.py inoremap \"\"\"<CR> \"\"\"<CR><CR>\"\"\"<esc>ki
augroup end

au BufNewFile,BufRead *.js nnoremap ;; :s/\(function\)\ \([a-zA-Z]\+\)/exports.\2 = \1<CR>

"""""""""""""""""""""
"""Plugin settings"""
"""""""""""""""""""""

" Install plugins with `,l`
nnoremap <Leader>l :PlugInstall<CR>

" Mappings for fugitive
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gp :Gpush<CR>
inoremap <Leader>gs <C-O>:Gstatus<CR>
inoremap <Leader>gc <C-O>:Gcommit<CR>
inoremap <Leader>gp <C-O>:Gpush<CR>

" Activate rainbow
let g:rainbow_active=1

" Rainbow setup
let g:rainbow_conf = {
\  'guifgs': ['#6AB017', '#00dfff', '#ff5f87', '#ff0087', '#0087ff', '#dfdf5f', '#00ffdf', '#ffff00'],
\  'ctermfgs': [2, 45, 204, 198, 33, 185, 50, 226],
\  'operators': '_,_',
\  'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\  'separately': {
\    '*': {},
\    'html': {
\      'parentheses': ['start=/\v\<((^div)[ >])@!\z(div)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\    },
\    'vimwiki': 0,
\  }
\}

" Fix vim-ragtag behavior
let g:ragtag_global_maps=1
" inoremap <C-X>= <C-X>=<Esc>F<Space>i
" Add mapping for tag with attributes
inoremap <C-X>. <C-X><Space><Esc>i
" After `<C-X><CR>`, go up a line and insert the cursor and a space there
inoremap <C-X>; <C-X><CR><Esc>k$i<Space>

let NERDTreeShowHidden=1
" Open NERDTree by default
augroup nerdtree
    au vimenter * NERDTree | vertical resize -5 | wincmd l
    " Then move cursor to the next window
    " au vimenter * wincmd l
augroup end

" Toggle NERDTree with `,n`
nnoremap <Leader>n :NERDTreeToggle<CR>

" UltiSnips mappings
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-n>"
" let g:UltiSnipsJumpBackwardTrigger="<c-p>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Tell UltiSnips to look in nvim config folders for snippets
let g:UltiSnipsSnippetDirectories = ["~/.config/nvim/UltiSnips", "UltiSnips"]

" Enable deoplete by default
let g:deoplete#enable_at_startup = 1

" Don't hide markup characters in JSON
let g:vim_json_syntax_conceal=0

" Do not autocomplete on `.`
let g:pymode_rope_complete_on_dot = 0

" Use python3 syntax for linting
let g:pymode_python="python3"

" Save undo history to a single directory
if has ("persistent_undo")
    set undodir=~/.undodir/
    set undofile
  endif

" nvim-completion-manager
" don't give |ins-completion-menu| messages.
" set shortmess+=c
" When menu is visible, <CR> hides the menu *and* inserts new line.
" Use <Tab> to select popup menu
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <silent> <c-u> <c-r>=cm#sources#ultisnips#trigger_or_popup("\<Plug>(ultisnips_expand)")<cr>

"""""""""""
" Vimwiki "
"""""""""""

au FileType vimwiki call MyVimwikiOptions()
function! MyVimwikiOptions()
    " Turn into a list item, or change symbol of item to *
    nmap glo :VimwikiChangeSymbolTo *<CR>
    nmap gLo :VimwikiChangeSymbolInListTo *<CR>

    " Increase or decrease levels with >> / <<
    map >> <Plug>VimwikiIncreaseLvlSingleItem
    map << <Plug>VimwikiDecreaseLvlSingleItem

    " Increase/decrease item and all its children with >>> / <<<
    map >>> <Plug>VimwikiIncreaseLvlWholeItem
    map <<< <Plug>VimwikiDecreaseLvlWholeItem
endfunction

let g:vimwiki_list=[{},
      \ {"path": "~/projects/tutorials/git-tutorial"}]

""UI""
" Set a different color for each vimwiki header level
hi VimwikiHeader1 ctermfg=86
hi VimwikiHeader2 ctermfg=45
hi VimwikiHeader3 ctermfg=204
hi VimwikiHeader4 ctermfg=198
hi VimwikiHeader5 ctermfg=33
hi VimwikiHeader6 ctermfg=185

hi VimwikiHeader1 guifg=#5fffdf
hi VimwikiHeader2 guifg=#00dfff
hi VimwikiHeader3 guifg=#ff5f87
hi VimwikiHeader4 guifg=#ff0087
hi VimwikiHeader5 guifg=#0087ff
hi VimwikiHeader6 guifg=#dfdf5f

" hi VimwikiHeader1 ctermfg=121
" hi VimwikiHeader2 ctermfg=173
" hi VimwikiHeader3 ctermfg=11
" hi VimwikiHeader4 ctermfg=167
" hi VimwikiHeader5 ctermfg=66
" hi VimwikiHeader6 ctermfg=72

" hi VimwikiHeader1 guifg=#87ffaf
" hi VimwikiHeader2 guifg=#df875f
" hi VimwikiHeader3 guifg=#ffff5f
" hi VimwikiHeader4 guifg=#df5f5f
" hi VimwikiHeader5 guifg=#5f8787
" hi VimwikiHeader6 guifg=#5faf87

""""""""""""""""""""""
" Vim-R & screen.vim "
""""""""""""""""""""""

let g:ScreenImpl='Tmux'

" Vertical tmux split
let vimrplugin_screenvsplit=1
let g:ScreenShellInitialFocus="shell"

" Use own .screenrc
let g:vimrplugin_noscreenrc=1

" Integrate vim-r with screen.vim
let g:vimrplugin_screenplugin=1

" Highlight chunk headers as R code
let rmd_syn_hl_chunk=1

" View R docs in a vim buffer
" let R_nvimpager="yes"

" Start R with F2
map <F2> <Plug>RStart
imap <F2> <Plug>RStart
vmap <F2> <Plug>RStart

" Start the whole 'IDE' with F3
map <F3> <F2><Plug>RHelp<C-w>k<Plug>RUpdateObjBrowser
imap <F3> <F2><Plug>RHelp<C-o><C-w>k<Plug>RUpdateObjBrowser
vmap <F3> <F2><Plug>RHelp<C-w>k<Plug>RUpdateObjBrowser

" Send line/selection to R with <Leader><Space>
nmap <LocalLeader>m <Plug>RDSendLine
vmap <LocalLeader>m <Plug>RDSendSelection

au BufNewFile,BufRead *.rmd,*.r inoremap <C-CR> <Plug>RDSendLine
" nmap <LocalLeader><CR> <Plug>RDSendLine
" vmap <LocalLeader><CR> <Plug>RSendSelection

" Pretty up the colors
if has("gui_running") || $NVIM_TUI_ENABLE_TRUE_COLOR == 1
  let rout_color_input    = 'guifg=#9e9e9e'
  let rout_color_normal   = 'guifg=#ff5f00'
  let rout_color_number   = 'guifg=#ffaf00'
  let rout_color_integer  = 'guifg=#feaf00'
  let rout_color_float    = 'guifg=#fdaf00'
  let rout_color_complex  = 'guifg=#fcaf00'
  let rout_color_negnum   = 'guifg=#d7afff'
  let rout_color_negfloat = 'guifg=#d6afff'
  let rout_color_date     = 'guifg=#00d7af'
  let rout_color_true     = 'guifg=#5dd685'
  let rout_color_false    = 'guifg=#ff5d5e'
  let rout_color_inf      = 'guifg=#10aed7'
  let rout_color_constant = 'guifg=#5fafcf'
  let rout_color_string   = 'guifg=#5fd7af'
  let rout_color_error    = 'guifg=#ffffff guibg=#c40000'
  let rout_color_warn     = 'guifg=#d00000'
  let rout_color_index    = 'guifg=#d0d080'
endif
