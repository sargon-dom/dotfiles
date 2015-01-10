if has('vim_starting')
    set nocompatible  " Be iMproved
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" packages
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'vim-jp/vimdoc-ja'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tyru/caw.vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'mhinz/vim-startify'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'lambdalisue/vim-gista'
NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'tpope/vim-fugitive'
call neobundle#end()

filetype plugin indent on
NeoBundleCheck

" vim-gista
let g:gista#github_user = 'sargon-dom'

" colorscheme
colorscheme molokai
syntax on

" font
set antialias
" 256 color
set t_Co=256
" unicode sign uses twice the width
set ambiwidth=double

" file
set encoding=utf-8  " vim encode
set fileencodings=utf-8,euc-jp,sjis,cp932
set fileformats=unix,mac,dos

" display
set number
set laststatus=2
set showtabline=2
set showcmd
set wrap
set display+=lastline
set visualbell

" search
set ignorecase
set smartcase
set hlsearch  " show search highlight

" indent style
set cindent
set tabstop=4 shiftwidth=4 softtabstop=4  " size of indent

" backspace
set backspace=indent,eol,start

" yank & paste using clipboard
set clipboard=unnamed,autoselect

" omni
set completeopt=menuone
inoremap <Nul> <C-x><C-o>

" flush highlight
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" ctags
nnoremap <f5> :!ctags -R<CR>

" draw line
inoreabbrev <expr> dl repeat('-', 65 - col('.'))

" expand directory path
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" espace insert mode
inoremap <silent> <C-j> <ESC>

" commentout toggle
nmap <Leader>c <Plug>(caw:i:toggle)
vmap <Leader>c <Plug>(caw:i:toggle)

" ignore keymap
nnoremap qqq: <ESC>q:
nnoremap qqq/ <ESC>q/
nnoremap q: <Nop>
nnoremap q/ <Nop>
nnoremap q? <Nop>

" keep cursor's column position after buffer switch
augroup vimrcEx
	au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
				\ exe "normal g`\"" | endif
augroup END

" default explorer
let g:vimfiler_as_default_explorer = 1
" vimfiler ignore pattern
let g:vimfiler_ignore_pattern = '\(^\.\|\~$\|\.pyc$\|\.[oad]$\)'
" vimfiler toggle
nnoremap <silent> <C-e> :VimFilerExplorer<CR>

" taglist
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1
nnoremap <silent> <leader>l :TlistToggle<CR>

" next tab
nnoremap <silent> <tab> :tabnext<CR>
" previous tab
nnoremap <silent> <S-tab> :tabprevious<CR>

