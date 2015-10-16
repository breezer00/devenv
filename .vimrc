set nocompatible
filetype off

" Run pathogen
" https://github.com/tpope/vim-pathogen
execute pathogen#infect()

filetype plugin indent on

" Key mapping for vim-commentary
" https://github.com/tpope/vim-commentary
nmap <BS> gcc
vmap <BS> gc

" Put encoding before listchars
set encoding=utf-8

" Show tab and trailing spaces
set list
set listchars=tab:↦\ ,trail:▫

" Tabs
set tabstop=3 shiftwidth=3 expandtab

" Vim menu
set wildmode=longest,list,full
set wildmenu

" Indentation
set autoindent
set smartindent
set cindent

" Syntax coloring
syntax on

" Show column
set ruler

" Borrowed from vmware general vim config
" set textwidth=79
set formatoptions=2ntcroqlv
set cinoptions=g0,t0,c1s,(0,m1,l1
set cinwords+=case
let c_comment_strings=1
let c_space_errors=1

" Highlight text that goes over 79
augroup vimrc_autocmds
   autocmd BufEnter * highlight OverLength ctermbg=234 ctermfg=darkgreen guibg=#000000
   autocmd BufEnter * match OverLength /\%>79v.\+/
augroup END

" Set spellcheck region
set spelllang=en

" Change spell check highlights to underscore
hi clear SpellBad
hi SpellBad cterm=underline

" Add full file path to existing statusline
set statusline+=%F

" Fancy relative number/absolute number mode toggle
function! NumberToggle()
   if(&relativenumber == 1)
      set number
   else
      set relativenumber
   endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>
" Enable this if we want auto toggle line number mode between incert/normal
" mode.
" autocmd InsertEnter * :set number
" autocmd InsertLeave * :set relativenumber
