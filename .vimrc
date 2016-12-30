" Enable pathogen
filetype off
execute pathogen#infect()
execute pathogen#helptags()
filetype plugin indent on

" Vimwiki needs these
set nocompatible
filetype plugin on
syntax on

" UI/UX
set number
set colorcolumn=80
set cursorline
set lazyredraw
set encoding=utf-8
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set shiftwidth=4
set shiftround
set smarttab
set smartcase
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set noerrorbells         " don't beep
colorscheme Crystallite
nnoremap j gj
nnoremap k gk
nmap <silent> ,/ :nohlsearch<CR>
execute rainbow_parentheses#activate(1)
" let g:rainbow_enabled=1

" Languages
" autocmd BuffNewFile,BuffRead *.md set filetype=markdown
" autocmd BuffNewFile,BuffRead *.pl set filetype=prolog

" whitespace: should be handled by Sleuth
filetype plugin indent on
set tabstop=4
set expandtab
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Blink cursor instead of beeping on error
set visualbell

" allow hidden buffers
set hidden

" insert new line from normal mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" Configure Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:vim_json_syntax_conceal=0

" Learn what these mean
" set laststatus=2

" Save undo history to a single directory
if has ("persistent_undo")
	set undodir=~/.undodir/
	set undofile
endif

" Git branch
let g:gbr_current_branch_top=1

" Resize-font
map <C-=> :ResizeFontBigger<CR>
map <C--> :ResizeFontSmaller<CR>

" Remap window swap
let g:windowswap_map_keys = 0
nnoremap <silent> <Leader>yy :call WindowSwap#EasyWindowSwap()<CR>

" Do not autocomplete on period
let g:pymode_rope_complete_on_dot = 0
