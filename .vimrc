" Use neovim rc because it will be more up-to-date.
" I am just keeping this file here to avoid problems
" and in case I come back to vim primarily.
source ~/.config/nvim/init.vim

" call plug#begin()
" Plug 'jiangmiao/auto-pairs'
" Plug 'vim-scripts/closetag.vim'
" Plug 'alvan/vim-closetag'
" Plug 'flazz/vim-colorschemes'
" Plug 'kien/ctrlp.vim'
" Plug 'd11wtq/ctrlp_bdelete.vim'
" Plug 'ekalinin/dockerfile.vim'
" Plug 'myusuf3/numbers.vim'
" Plug 'klen/python-mode'
" Plug 'junegunn/rainbow_parentheses.vim'
" Plug 'vim-scripts/tComment'
" call plug#end()
"
" " Enable pathogen
" " filetype off
" " execute pathogen#infect()
" " execute pathogen#helptags()
"
" set nocompatible
" filetype plugin indent on
" syntax on
"
" :let mapleader = ","
" set showcmd
"
" " UI/UX
" set number
" set colorcolumn=80
" set cursorline
" set lazyredraw
" set encoding=utf-8
" set autoindent    " always set autoindenting on
" set copyindent    " copy the previous indentation on autoindenting
" set shiftwidth=4
" set shiftround
" set smarttab
" set smartcase
" set hlsearch      " highlight search terms
" set incsearch     " show search matches as you type
" set history=1000  " remember more commands and search history
" set undolevels=1000
" set wildignore=*.swp,*.bak,*.pyc,*.class
" set noerrorbells         " don't beep
" colorscheme Crystallite
" nnoremap j gj
" nnoremap k gk
" nmap <silent> ,/ :nohlsearch<CR>
" call rainbow_parentheses#activate(1)
" set splitbelow
" set splitright
" " let g:rainbow_enabled=1
"
" " Enable the list of buffers in airline
" let g:airline#extensions#tabline#enabled = 1
" " Show just the filename
" let g:airline#extensions#tabline#fnamemod = ':t'
"
" " Languages
" " autocmd BuffNewFile,BuffRead *.md set filetype=markdown
" " autocmd BuffNewFile,BuffRead *.pl set filetype=prolog
"
" " whitespace: should be handled by Sleuth
" filetype plugin indent on
" set tabstop=4
" set expandtab
" set list
" set listchars=tab:>.,trail:.,extends:#,nbsp:.
"
" " Blink cursor instead of beeping on error
" set visualbell
"
" " view hidden buffers
" set hidden
"
" " insert new line from normal mode
" nmap <S-CR> i<CR><Esc>k
" nmap <CR> i<CR><Esc>
"
" " Configure Ultisnips
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
" let g:vim_json_syntax_conceal=0
"
" " Configure CtrlP
" " Setup some default ignores
" let g:ctrlp_custom_ignore = {
"   \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
"   \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
" \}
" " Use a leader instead of the actual named binding
" nmap <leader>p :CtrlP<cr>
" " Easy bindings for its various modes
" nmap <leader>bb :CtrlPBuffer<cr>
" nmap <leader>bm :CtrlPMixed<cr>
" nmap <leader>bs :CtrlPMRU<cr>
" call ctrlp_bdelete#init()
"
" " Save undo history to a single directory
" if has ("persistent_undo")
" 	set undodir=~/.undodir/
" 	set undofile
" endif
"
" " Git branch
" " let g:gbr_current_branch_top=1
"
" " Resize-font
" " nmap <C-=> :ResizeFontBigger<CR>
" " nmap <C--> :ResizeFontSmaller<CR>
"
" " Remap window swap
" let g:windowswap_map_keys = 0
" nnoremap <silent> <Leader>yy :call WindowSwap#EasyWindowSwap()<CR>
"
" " Do not autocomplete on '.'
" let g:pymode_rope_complete_on_dot = 0
"
" " vim-closetag
" let g:closetag_filenames = "*.html,*.xhtml,*.phtml, *.html.erb"
" noremap <C-A-.> <C-_>
