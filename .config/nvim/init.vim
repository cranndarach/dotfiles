call plug#begin()
Plug 'cranndarach/vim-ragtag'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'kien/ctrlp.vim'
Plug 'd11wtq/ctrlp_bdelete.vim'
Plug 'ekalinin/dockerfile.vim'
Plug 'myusuf3/numbers.vim'
Plug 'klen/python-mode'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'vim-scripts/tComment'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'duggiefresh/vim-easydir'
Plug 'ap/vim-css-color'
Plug 'isRuslan/vim-es6'
Plug 'airblade/vim-gitgutter'
Plug 'elzr/vim-json'
Plug 'matze/vim-move'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vimwiki/vimwiki'
Plug 'sickill/vim-pasta'
Plug 'SirVer/UltiSnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
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
colorscheme Crystallite
highlight ColorColumn ctermbg=8

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

" Edit init.vim with ',rc'
nnoremap <Leader>rc :e ~/.config/nvim/init.vim<CR>
inoremap <Leader>rc <C-O>:e ~/.config/nvim/init.vim<CR>

" Source init.vim with ',s'
nnoremap <Leader>s :source ~/.config/nvim/init.vim<CR>
inoremap <Leader>s <C-O>:source ~/.config/nvim/init.vim<CR>

" Esc to normal mode with jj
inoremap jj <esc>

" Unbind the cursor keys in insert, normal and visual modes.
for prefix in ['i', 'n', 'v']
  for key in ['<Up>', '<Down>', '<Left>', '<Right>', '<LeftMouse>']
    exe prefix . "noremap " . key . " <Nop>"
  endfor
endfor


"""""""""""""""""""""
"""Plugin mappings"""
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

" Open NERDTree with `,n`
nnoremap <Leader>n :NERDTreeToggle<CR>

" UltiSnips mappings
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Don't hide markup characters in JSON
let g:vim_json_syntax_conceal=0

" CtrlP settings
nmap <leader>p :CtrlP<cr>
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>
call ctrlp_bdelete#init()
" Ignore files when searching:
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

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
