"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/sakakazu2468/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/home/sakakazu2468/.cache/dein')


" Let dein manage dein
" Required:
call dein#add('/home/sakakazu2468/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
call dein#load_toml('~/.config/nvim/toml/dein.toml', {'lazy': 0})
call dein#load_toml('~/.config/nvim/toml/dein_lazy.toml', {'lazy': 1})

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

set clipboard=unnamedplus  "yank した文字列をクリップボードにコピー
set hls                "検索した文字をハイライトする

"indent
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

set updatetime=100

tnoremap <ESC> <C-\><C-n>
nnoremap <silent> <C-[> <C-@>
" カーソルを表示行で移動
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk
autocmd FileType python setlocal completeopt-=preview


autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown

nnoremap <S-Tab> <Plug>AirlineSelectPrevTab
nnoremap <Tab> <Plug>AirlineSelectNextTab
nnoremap :dd :bd
