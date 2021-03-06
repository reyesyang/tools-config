set noesckeys
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
 
Plugin 'altercation/vim-colors-solarized'
 
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'scrooloose/nerdtree'
" Plugin 'ervandew/supertab'
" Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
" Plugin 'Yggdroot/indentLine'
Plugin 'Raimondi/delimitMate'
Plugin 'tomtom/tcomment_vim'
" 
" Plugin 'mru.vim'
" Plugin 'fcitx.vim'
" Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
" 
" Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-rails'
" Plugin 'yaml.vim'

" 下面的语法高亮插件都会让 VIM 奇慢无比
Plugin 'sheerun/vim-polyglot'
" Plugin 'isRuslan/vim-es6'
" Plugin 'othree/yajs.vim'
" Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'

" Plugin 'scrooloose/syntastic'
Plugin 'posva/vim-vue'
 
call vundle#end()
 
" "根据文件格式载入插件和缩进
filetype plugin indent on 
 
" 语法高亮
syntax on 
 
" Syntax coloring lines that are too long just slows down the world
" set synmaxcol=1200
 
set background=dark
colorscheme solarized
" 
" " Improve vim's scrolling speed
set ttyfast
set ttyscroll=3
set lazyredraw
" 
" " 字体
set guifont=ubuntu\ mono\ 12
" set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 12
" set guifont=monaco\ 11
" set guifont=Monaco\ for\ Powerline\ 10
" set guifontwide=12
 
"光标行高亮
set cursorline
"光标列高亮
set cursorcolumn
set colorcolumn=80

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*

" 按缩进折叠，现在使用 ctags 和 taglist 插件，不需要再折叠代码以方便阅读了
" set foldmethod=indent
" set foldlevel=1
" 
" set nobackup
" set nowritebackup
" 
" 打开命令行补全菜单
set wildmenu

"关闭响铃，闪屏
set vb t_vb= 

"显示行号
set number 
 
"马上跳到搜索匹配
set incsearch
" set hlsearch
" set nowrapscan
 
set autoindent
set smartindent

" "打开鼠标功能
" set mouse=a

"指标符宽度
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
 
set showmatch
set matchtime=3
 
" 自动补全时不扫描 tags 文件，否则可能由于 tags 文件过大导致 vim 无响应
set complete-=t
 
autocmd BufRead,BufNewFile *.jbuilder setfiletype ruby
autocmd BufRead,BufNewFile *.god setfiletype ruby
autocmd BufRead,BufNewFile *.es6 setfiletype javascript
autocmd FileType c set tabstop=4 shiftwidth=4
autocmd FileType java set tabstop=4 shiftwidth=4
autocmd FileType xml set tabstop=4 shiftwidth=4
autocmd FileType make set noexpandtab
 
" "let g:rubycomplete_buffer_loading = 1
" "let g:rubycomplete_classes_in_global = 1
" "let g:rubycomplete_rails = 1
 
" " http://stackoverflow.com/questions/4625274/why-is-vim-drawing-underlines-on-the-place-of-tabs-and-how-to-avoid-this
" let html_no_rendering = 1
 
" "Settings for taglist
" let Tlist_Show_One_File = 1            "只显示当前文件的taglist，默认是显示多个
" let Tlist_Exit_OnlyWindow = 1          "如果taglist是最后一个窗口，则退出vim
" let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist
" let Tlist_GainFocus_On_ToggleOpen = 1  "打开taglist时，光标保留在taglist窗口
 
" "Settings for Solarized
let g:solarized_termcolors=256
 
nmap <silent> <F2> :NERDTreeToggle<CR>
nmap <F3> :!ctags -R --exclude=.git --exclude=logs --exclude=doc .<CR>
 
" when a ruby file is loaded add all ruby and ruby gems tags to the list of tags that are available/relevant
" au BufRead,BufNewFile *.rb setlocal tags+=~/.vim/tags/ruby_and_gems
 
"CtrlP 忽略的文件
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v(tmp|node_modules|\.bundle)$',
  \ 'file': '\vtags'
  \ }
 
" 设置 UltiSnips，避免和 YCM 冲突
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" " 设置 Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
" NERDTree to show hidden file
let NERDTreeShowHidden=1

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
