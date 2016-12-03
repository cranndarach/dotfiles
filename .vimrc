""""""""""""""""""""""
" This chunk is from github.com/amix/vimrc
" Copyright (c) 2016 Amir Salihefendic, MIT License

" set runtimepath+=~/.vim_runtime

" source ~/.vim_runtime/vimrcs/basic.vim
" source ~/.vim_runtime/vimrcs/filetypes.vim
" source ~/.vim_runtime/vimrcs/plugins_config.vim
" source ~/.vim_runtime/vimrcs/extended.vim

" try
" source ~/.vim_runtime/my_configs.vim
" catch
" endtry

" End chunk from amix/vimrc
""""""""""""""""""""""""

" Enable pathogen
filetype off
execute pathogen#infect()
execute pathogen#helptags()
filetype plugin indent on

" Vimwiki needs these
set nocompatible
filetype plugin on
syntax on

" UI
set number
set colorcolumn=80
" set cursorline
set lazyredraw
set encoding=utf-8

syntax on
"colorscheme landscape
" Alternatives
" colorscheme VIvid
" let g:hybrid_custom_term_colors=1
" let g:hybrid_reduced_contrast=1
colorscheme Crystallite
" colorscheme hybrid

" Languages
" autocmd BuffNewFile,BuffRead *.md set filetype=markdown
" autocmd BuffNewFile,BuffRead *.pl set filetype=prolog

" whitespace: should be handled by Sleuth
" filetype plugin indent on
" set tabstop=4
" set expandtab

" Blink cursor instead of beeping on error
set visualbell


" allow hidden buffers
set hidden

" Configure Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:vim_json_syntax_conceal=0

" Learn what these mean
" set laststatus=2
" set relativenumber

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
