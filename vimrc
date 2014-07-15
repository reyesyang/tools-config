set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'altercation/vim-colors-solarized'

" Plugin 'msanders/snipmate.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
" Plugin 'garbas/vim-snipmate'
" Plugin 'honza/vim-snippets'

Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'taglist.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'mattn/emmet-vim'

Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'wincent/Command-T'
Plugin 'mru.vim'
Plugin 'greplace.vim'
Plugin 'fcitx.vim'

Plugin 'vim-ruby/vim-ruby'
" Plugin 'tpope/vim-rbenv'
" Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-rails'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-haml'
Plugin 'groenewege/vim-less'
Plugin 'plasticboy/vim-markdown'
Plugin 'jnwhiteh/vim-golang'
Plugin 'tpope/vim-liquid'
Plugin 'yaml.vim'
Plugin 'mattn/emmet-vim'

"语法高亮
syntax enable

"根据文件格式载入插件和缩进
filetype plugin indent on 

set background=dark
colorscheme solarized

" 字体
"set guifont=ubuntu\ mono\ 12
set guifont=monaco\ 10
set guifontwide=12

"光标行高亮
set cursorline
"光标列高亮
set cursorcolumn
set colorcolumn=80

"按缩进折叠，现在使用 ctags 和 taglist 插件，不需要在折叠代码以方便阅读了
" set foldmethod=indent
" set foldlevel=1

set nobackup
set nowritebackup

"打开命令行补全菜单
set wildmenu

"关闭响铃，闪屏
set vb t_vb= 

"显示行号
set number 

"马上跳到搜索匹配
set incsearch
"set hlsearch
"set nowrapscan

set autoindent

"打开鼠标功能
set mouse=a 

"指标符宽度
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab

set showmatch
set matchtime=3

" 显示行尾
" set list

"自动补全时不扫描 tags 文件，否则可能由于 tags 文件过大导致 vim 无响应
set complete-=t

autocmd FileType make     set noexpandtab
autocmd FileType python   set noexpandtab  tabstop=4  shiftwidth=4
autocmd FileType c        set tabstop=4  shiftwidth=4
au! BufRead,BufNewFile *.json setfiletype json
au! BufRead,BufNewFile *.hamljs setfiletype haml
au! BufRead,BufNewFile *.god setfiletype ruby

" 快捷键
" nmap <Up> <c-w>k
" nmap <Down> <c-w>j
" nmap <Right> <c-w>l
" nmap <Left> <c-w>h
" nmap % v%

map <C-T> :FufFile<CR>
map <C-E> :MRU<CR>

"let g:rubycomplete_buffer_loading = 1
"let g:rubycomplete_classes_in_global = 1
"let g:rubycomplete_rails = 1

"nmap <S-f> :CommandT<cr>
"let g:fuf_previewHeight = 0

" http://stackoverflow.com/questions/4625274/why-is-vim-drawing-underlines-on-the-place-of-tabs-and-how-to-avoid-this
let html_no_rendering = 1

"Settings for taglist
let Tlist_Show_One_File = 1            "只显示当前文件的taglist，默认是显示多个
let Tlist_Exit_OnlyWindow = 1          "如果taglist是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist
let Tlist_GainFocus_On_ToggleOpen = 1  "打开taglist时，光标保留在taglist窗口

"Settings for Solarized
"let g:solarized_termcolors=256

nnoremap <silent> <F2> :NERDTreeToggle<CR>
nnoremap <silent> <F3> :TlistToggle<CR>
map <F4> :!ctags -R --exclude=.git --exclude=logs --exclude=doc .<CR>

"when a ruby file is loaded add all ruby and ruby gems tags to the list of tags that are available/relevant
"au BufRead,BufNewFile *.rb setlocal tags+=~/.vim/tags/ruby_and_gems

"http://vim.wikia.com/wiki/Change_cursor_shape_in_different_modes#For_the_Gnome-Terminal_.28version_2.26.29
"if has("autocmd")
"  au VimEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
"  au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
"  au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
"  au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
"
"  au VimEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Solarized/cursor_shape block"
"  au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Solarized/cursor_shape ibeam"
"  au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Solarized/cursor_shape block"
"  au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Solarized/cursor_shape ibeam"
"endif

"CtrlP 忽略的文件
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v.gem$',
  \ 'file': '\vtags'
  \ }

" Disable folding for vim-markdown
let g:vim_markdown_folding_disabled=1
