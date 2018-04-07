set nocompatible
set hidden

set rtp+=~/dotfiles/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-surround'
" Plugin 'scrooloose/syntastic'
Plugin 'suan/vim-instant-markdown'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets' 
Plugin 'KabbAmine/vCoolor.vim'
Plugin 'tmhedberg/matchit'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-ctrlspace/vim-ctrlspace'
" Plugin 'davidhalter/jedi-vim'
Plugin 'vimwiki/vimwiki'
call vundle#end()

set noundofile
set nobackup
set noswapfile

"Indent settings
set shiftwidth=4
set tabstop=4
set softtabstop=4
set cindent
set autoindent
filetype plugin indent on
let g:indent_guides_enable_on_vim_startup = 1
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_autotags = "th,td,tr,tfoot,thead"

set nu
set wrap
set linebreak
let g:ctrlp_map = '<leader>p'
let g:ctrlp_working_path_mode = 'ra'
let maplocalleader = ","
set hlsearch

map <leader>n :NERDTreeToggle<CR>
map <c-l> :nohlsearch<CR>



" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_python_checkers = ['pylint --include-naming-hint']

let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
map <leader>md :InstantMarkdownPreview<CR>

imap <Leader><Enter> <Esc>o

map <leader>/ gcc
inoremap <leader><Space> <Esc>/<++><Enter>"_c4l

" HTML Mappings
autocmd FileType html inoremap <leader>b <b></b><Space><++><Esc>FbT>i

" C Mappings
autocmd FileType c inoremap <leader>i #include<><Enter><Enter><++><Esc>/<><Enter>a
autocmd FileType c nnoremap [20~ :w<CR>:!clear<CR>:!gcc<Space>%<Space>&&<Space>./a.out<CR>

" C++ Mappings
autocmd FileType cpp inoremap <leader>i #include<><Enter><Enter><++><Esc>/<><Enter>a

" Python Mappings
autocmd FileType python nnoremap [20~ :w<CR>:!clear<CR>:!python<Space>%<CR>
autocmd FileType python nnoremap [19~ :w<CR>:!clear<CR>:!python<Space>-i<Space>%<CR>
