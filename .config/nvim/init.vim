call plug#begin()
Plug 'cranndarach/vim-ragtag'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-abolish'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
" Plug 'kien/ctrlp.vim'
" Plug 'd11wtq/ctrlp_bdelete.vim'
" Plug 'ekalinin/dockerfile.vim'
Plug 'myusuf3/numbers.vim'
Plug 'klen/python-mode'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'vim-scripts/tComment'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'duggiefresh/vim-easydir'
Plug 'ap/vim-css-color'
" Plug 'isRuslan/vim-es6'
Plug 'airblade/vim-gitgutter'
" Plug 'elzr/vim-json'
Plug 'matze/vim-move'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vimwiki/vimwiki'
Plug 'sickill/vim-pasta'
Plug 'SirVer/UltiSnips'
Plug 'honza/vim-snippets'
Plug 'roxma/nvim-completion-manager', {'do': 'npm install'}
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'roxma/vim-tmux-clipboard'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'roosta/srcery'
Plug 'guns/xterm-color-table.vim'
call plug#end()

" Change Leader key from '\' to ','
let mapleader = ","
set showcmd

" Recognize file types, auto-indent
filetype plugin indent on

" Show line numbers
set number

" Highlight the 80-character mark
set colorcolumn=80

" Underline the line the cursor is on
set cursorline

" Turn off mode-sensitive cursor shape
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=0

" Do not update the screen while inserting non-typed data
set lazyredraw

" Save as utf-8
set encoding=utf-8

" Turn auto-indenting on
set autoindent

" Tab is 4 characters
set tabstop=4

" Soft tab is 4 spaces
set shiftwidth=4

" Use spaces instead of tabs
set expandtab

" copy the previous indentation on autoindenting
set copyindent

" Use 2 spaces instead of 4 in ruby and eruby (and js when appropriate)
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType eruby setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType scss setlocal shiftwidth=2 tabstop=2 expandtab
" autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 expandtab

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

" Set colors
" colorscheme Crystallite
colorscheme srcery
highlight ColorColumn ctermbg=6
" let g:airline_theme='powerlineish'
let g:airline_theme='wombat'

" Split windows intuitively
set splitbelow
set splitright

" Turn on Rainbow Parentheses
call rainbow_parentheses#activate(1)

" Show hidden buffers
set hidden
" Enable the list of buffers in airline
let g:airline#extensions#tabline#enabled=1
" Show just the filename
let g:airline#extensions#tabline#fnamemod=':t'

" Treat `.pl` as Prolog instead of Perl
autocmd BufNewFile,BufRead *.pl set filetype=prolog

" Show whitespace characters
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Press `esc` to clear search highlighting
nnoremap <esc> :noh<return><esc>

" More intuitive enter keys:
nmap <CR> i<CR><Esc>
" `,enter` to jump to the end of the line, add a new line below it, and return
" to insert mode.
nnoremap <Leader><CR> A<CR>
inoremap <Leader><CR> <C-O>A<CR>

" 'j' and 'k' traverse visual lines (inclu soft-wrapped), not literal lines
nnoremap j gj
nnoremap k gk

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


"""""""""""""""""""""
"""Plugin settings"""
"""""""""""""""""""""

" Mappings for fugitive
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gp :Gpush<CR>
inoremap <Leader>gs <C-O>:Gstatus<CR>
inoremap <Leader>gc <C-O>:Gcommit<CR>
inoremap <Leader>gp <C-O>:Gpush<CR>

" Fix vim-ragtag behavior
let g:ragtag_global_maps=1
" inoremap <C-X>= <C-X>=<Esc>F<Space>i
" Add mapping for tag with attributes
inoremap <C-X>. <C-X><Space><Esc>i
" After `<C-X><CR>`, go up a line and insert the cursor and a space there
inoremap <C-X>; <C-X><CR><Esc>k$i<Space>

" Install plugins with `,l`
nnoremap <Leader>l :PlugInstall<CR>

let NERDTreeShowHidden=1
" Open NERDTree by default
augroup nerdtree
    au vimenter * NERDTree | vertical resize -5 " | wincmd 1
    " Then move cursor to the next window
    au vimenter * wincmd 2
augroup end

" Toggle NERDTree with `,n`
nnoremap <Leader>n :NERDTreeToggle<CR>

" UltiSnips mappings
" let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Don't hide markup characters in JSON
let g:vim_json_syntax_conceal=0

" Vimwiki
au FileType vimwiki call MyVimwikiOptions()
function MyVimwikiOptions()
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

""UI""
" Set a different color for each vimwiki header level
hi VimwikiHeader1 ctermfg=121
hi VimwikiHeader2 ctermfg=173
hi VimwikiHeader3 ctermfg=11
hi VimwikiHeader4 ctermfg=167
hi VimwikiHeader5 ctermfg=66
hi VimwikiHeader6 ctermfg=72

" hi VimwikiHeader1 ctermfg=#e4d1d1
" hi VimwikiHeader2 ctermfg=#b9b0b0
" hi VimwikiHeader3 ctermfg=#d9ecd0
" hi VimwikiHeader4 ctermfg=#77c0a0
" hi VimwikiHeader5 ctermfg=#f0efef
" hi VimwikiHeader6 ctermfg=#ddeed0

" hi VimwikiHeader1 ctermfg=#f0f0f0
" hi VimwikiHeader2 ctermfg=#c5d5c5
" hi VimwikiHeader3 ctermfg=#9fa9a3
" hi VimwikiHeader4 ctermfg=#e3e0cc
" hi VimwikiHeader5 ctermfg=#eaece5
" hi VimwikiHeader6 ctermfg=#b2c2bf

" hi VimwikiHeader1 ctermfg=#5b9aa0
" hi VimwikiHeader2 ctermfg=#b8a9c9
" hi VimwikiHeader3 ctermfg=#d6d4e0
" hi VimwikiHeader4 ctermfg=#5b9aa0
" hi VimwikiHeader5 ctermfg=#c83349
" hi VimwikiHeader6 ctermfg=#e06337

" hi VimwikiHeader1 ctermfg=#92a8d1
" hi VimwikiHeader2 ctermfg=#034f84
" hi VimwikiHeader3 ctermfg=#f7cac9
" hi VimwikiHeader4 ctermfg=#f7786b
" hi VimwikiHeader5 ctermfg=#deeaee
" hi VimwikiHeader6 ctermfg=#b1cbbb

" hi VimwikiHeader1 ctermfg=#d5f4e6
" hi VimwikiHeader2 ctermfg=#80ced6
" hi VimwikiHeader3 ctermfg=#fefbd8
" hi VimwikiHeader4 ctermfg=#618685
" hi VimwikiHeader5 ctermfg=#ffef96
" hi VimwikiHeader6 ctermfg=#50394c

" To swap two windows, enter the first one, hit `,yy`, then enter the second
" one and hit `,yy` again
let g:windowswap_map_keys = 0
nnoremap <silent> <Leader>yy :call WindowSwap#EasyWindowSwap()<CR>

" Do not autocomplete on `.`
let g:pymode_rope_complete_on_dot = 0

" Save undo history to a single directory
if has ("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

" nvim-completion-manager
" don't give |ins-completion-menu| messages.  For example,
" '-- XXX completion (YYY)', 'match 1 of 2', 'The only match',
set shortmess+=c
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
let g:UltiSnipsExpandTrigger = "<Plug>(ultisnips_expand)"
inoremap <silent> <c-u> <c-r>=cm#sources#ultisnips#trigger_or_popup("\<Plug>(ultisnips_expand)")<cr>
