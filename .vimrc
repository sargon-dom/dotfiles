if has('vim_starting')
    set nocompatible  " Be iMproved
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" ---------------------------
" Packages
" ---------------------------
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'vim-jp/vimdoc-ja'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tyru/caw.vim'
NeoBundle 'thinca/vim-quickrun'
call neobundle#end()
filetype plugin indent on
NeoBundleCheck

" ---------------------------
" File
" ---------------------------
" backup
set nobackup
" format
set encoding=utf-8
set fileencodings=utf-8,euc-jp,sjis,cp932
set fileformats=unix,mac,dos

" ---------------------------
" Display
" ---------------------------
" colorscheme
colorscheme molokai
syntax on
" font
set antialias
" 256 color
set t_Co=256
" unicode sign uses twice the width
set ambiwidth=double
" visible tab (+---+---+---)
set list
set listchars=tab:+-
" line number
set number
" show status (for lightline.vim)
set laststatus=2
set showtabline=2
set showcmd
set wrap
set display+=lastline
" no beep
set visualbell
" cursor line
set cursorline

" ---------------------------
" Search
" ---------------------------
" search
set ignorecase
set smartcase
" visible search highlight
set hlsearch
" clear highlight
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
" grep auto open quickfix
autocmd QuickFixCmdPost *grep* cwindow

" ---------------------------
" Edit
" ---------------------------
" indent
set cindent
" size of indent
set tabstop=4 shiftwidth=4 softtabstop=4
" backspace
set backspace=indent,eol,start
" yank & paste using clipboard
set clipboard=unnamed,autoselect
" espace insert mode
inoremap <silent> <C-j> <ESC>
" keep cursor's column position after buffer switch
augroup vimrcEx
	au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
				\ exe "normal g`\"" | endif
augroup END
" draw line
inoreabbrev <expr> dl repeat('-', 32 - col('.'))
" commentout toggle
nmap <Leader>c <Plug>(caw:i:toggle)
vmap <Leader>c <Plug>(caw:i:toggle)

" ---------------------------
" Completion
" ---------------------------
" omni
set completeopt=menuone
inoremap <Nul> <C-x><C-o>
" ctags
nnoremap <f5> :!ctags -R<CR>
" expand directory path
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" ---------------------------
" Explore
" ---------------------------
" wildignore
set wildignore+=*.o,*.obj,*.so,*.out,*.png,*.jpg,*.zip,*.swp,*.d,*.ogg,*.pbm,*.wav,*mp3,tags,*.taghl,*.DS_Store
" netrw tree view
let g:netrw_liststyle = 3
" netrw ignore
let g:netrw_list_hide = '\*$,^\.git/$,^bin/$,^obj/$,^tags$,.*\.taghl$,.*\.png,.*\.jpg$,.*\.ogg$,.*\.pbm$,.*\.wav$,.*\.mp3$,.*\.o$,.*\.obj$,.*\.so$,.*\.out$,.*\.d$,.*\.DS_Store$'
let g:netrw_dirhistmax  =10
let g:netrw_dirhist_cnt =6
let g:netrw_dirhist_1='/Users/hiroya/work/recon/episode1'
let g:netrw_dirhist_2='/Users/hiroya/work/recon/episode1/image'
let g:netrw_dirhist_3='/Users/hiroya/work/recon/episode1'
let g:netrw_dirhist_4='/Users/hiroya/work/recon/episode1/image'
let g:netrw_dirhist_5='/Users/hiroya/work/recon/episode1'
let g:netrw_dirhist_6='/Users/hiroya/work/recon/episode1/image'
let g:netrw_dirhistmax  =10
let g:netrw_dirhist_cnt =6
let g:netrw_dirhist_1='/Users/hiroya/work/recon/episode1'
let g:netrw_dirhist_2='/Users/hiroya/work/recon/episode1/image'
let g:netrw_dirhist_3='/Users/hiroya/work/recon/episode1'
let g:netrw_dirhist_4='/Users/hiroya/work/recon/episode1/image'
let g:netrw_dirhist_5='/Users/hiroya/work/recon/episode1'
let g:netrw_dirhist_6='/Users/hiroya/work/recon/episode1/image'
" netrw x browser (OSX: open)
let g:netrw_browsex_viewer = 'open'
" ctrlp ignore
let g:ctrlp_custom_ignore = {
			\ 'dir': '\.(git|hg|svn)$'
			\}
" tab next & prev
nnoremap <silent> <tab> :tabnext<CR>
nnoremap <silent> <S-tab> :tabprevious<CR>

" ---------------------------
" Unite
" ---------------------------
" " set prefix
" nnoremap [unite] <Nop>
" nmap     f [unite]
" " buffer list
" nnoremap <silent> [unite]b :<C-u>Unite -no-split buffer<CR>
" " file list
" nnoremap <silent> [unite]f :<C-u>Unite -no-split -buffer-name=files file<CR>
" " bookmark list
" nnoremap <silent> [unite]m :<C-u>Unite -no-split bookmark<CR>
"
" ---------------------------
" ignore keymap
" ---------------------------
nnoremap qqq: <ESC>q:
nnoremap qqq/ <ESC>q/
nnoremap q: <Nop>
nnoremap q/ <Nop>
nnoremap q? <Nop>

