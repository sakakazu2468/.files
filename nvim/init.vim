" reset augroup
augroup MyAutoCmd
autocmd!
augroup END

if &compatible
  set nocompatible
endif

" install dein.vim
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir .",". &runtimepath

let s:toml_file = fnamemodify(expand('<sfile>'), ':h').'/dein/dein.toml'
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:toml_file)
  call dein#end()
  call dein#save_state()
endif
if has('vim_starting') && dein#check_install()
  call dein#install()
endif
let g:python3_host_prog = '/usr/bin/python3'
set clipboard+=unnamedplus

"color
syntax on

"indent
filetype plugin indent on 
set autoindent
set smartindent

"side number
set relativenumber
set number

"tab good
set expandtab
set tabstop+=2
set shiftwidth=2
set shortmess-=S

tnoremap <silent> <C-[> <C-\><C-n>
nnoremap <silent> a i
nnoremap <silent> i a

autocmd FileType python setlocal completeopt-=preview

"previm
autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
let g:previm_open_cmd = 'browse'


