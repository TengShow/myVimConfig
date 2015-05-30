set nocompatible
" vi 不兼容模式
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
" vundle 配置安装
Bundle 'scrooloose/nerdtree.vim'
Bundle 'ZenCoding.vim'
Bundle 'taglist.vim'
if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :BundleInstall
endif
filetype plugin indent  on 
"包管理

let Tlist_Auto_Highlight_Tag=1 
" let Tlist_Auto_Open=1 
let Tlist_Auto_Update=1 
let Tlist_Display_Tag_Scope=1 
let Tlist_Exit_OnlyWindow=1 
let Tlist_Enable_Dold_Column=1 
let Tlist_File_Fold_Auto_Close=1 
let Tlist_Show_One_File=1 
let Tlist_Use_Right_Window=1 
let Tlist_Use_SingleClick=1
let Tlist_Compact_Format=1 
nnoremap <silent><F4> :TlistToggle<CR>
" taglist

syntax on
autocmd FileType python setlocal et sta sw=4 sts=4 expandtab foldmethod=identity
" 设置python缩进风格 
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascrīpt set omnifunc=javascriptcomplete#CompleteJS 
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags 
autocmd FileType css set omnifunc=csscomplete#CompleteCSS 
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags 
autocmd FileType php set omnifunc=phpcomplete#CompletePHP 
autocmd FileType c set omnifunc=ccomplete#Complete 
" 使用自带语法补全

set number
set ruler 
" 显示行号、 打开状态栏标尺
set smarttab
set tabstop=4 
set softtabstop=4
set shiftwidth=4 
set expandtab 
" 设置tab对应4个空格，并且自动转换tab为空格
set smartindent 
set backspace=2
" 设置自动缩进，增强mac的delete键

set scrolloff=5 
" 光标和底部的距离

set showmatch
set matchtime=1
" 高亮显示对应的括号 0.1s

vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a"<esc>`<i"<esc>
" 括号自动生成
"
set foldenable " 开始折叠
set foldmethod=syntax " 设置语法折叠
set foldcolumn=0 " 设置折叠区域的宽度
setlocal foldlevel=1 " 设置折叠层数为
" set foldclose=all " 设置为自动关闭折叠 
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
" 用空格键来开关折叠
