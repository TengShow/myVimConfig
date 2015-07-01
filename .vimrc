set nocompatible
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
Bundle 'pathogen.vim'
Bundle 'gmarik/vundle'
Bundle 'Emmet.vim'
Bundle 'taglist.vim'
if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :BundleInstall
endif
filetype plugin indent  on 

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

" set foldenable 
set foldmethod=syntax
set foldcolumn=0 
setlocal foldlevel=3
" set foldclose=all 
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
map <C-J> :!php -l %<CR>

syntax on
autocmd FileType python setlocal et sta sw=4 sts=4 expandtab foldmethod=indent 
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS 
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags 
autocmd FileType css set omnifunc=csscomplete#CompleteCSS 
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags 
autocmd FileType php set omnifunc=phpcomplete#CompletePHP 
autocmd FileType c set omnifunc=ccomplete#Complete 

"set linebreak
set number
set ruler 
set smarttab
set tabstop=4 
set softtabstop=4
set shiftwidth=4 
"set expandtab 
set smartindent 
set backspace=2

set scrolloff=5 

set showmatch
set matchtime=1

vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a"<esc>`<i"<esc>
"
