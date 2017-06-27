set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/build/*,*/bin/*,*/node_modules/*
set number
set tabstop=2
set shiftwidth=2
set expandtab
set nowrap
set mouse=a
set noshowmode
set noswapfile
"set listchars=tab:>-,trail:-
"set list
call plug#begin('~/.vim/plugged')

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'separator': { 'left': '⮀', 'right': '⮂' },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
      \ } 

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'kien/ctrlp.vim'
Plug 'jbgutierrez/vim-babel'
"Plug 'jelera/vim-javascript-syntax'
"Plug 'othree/yajs'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx' 
Plug 'gilsondev/searchtasks.vim'
Plug 'itchyny/lightline.vim'
Plug 'firedev/tmuxline.vim'
Plug 'rizzatti/dash.vim'
Plug 'flazz/vim-colorschemes'
Plug 'airblade/vim-gitgutter'
Plug 'dracula/vim'
Plug 'neomake/neomake'
"Plug 'scrooloose/syntastic'
Plug 'Yggdroot/indentLine'
" Add plugins to &runtimepath

call plug#end()
let g:jsx_ext_required = 0
"let g:xml_syntax_folding = 1
if findfile('.eslintrc', '.;') !=# ''
  let g:neomake_javascript_enabled_makers = ['eslint']
  let g:neomake_jsx_enabled_makers = ['eslint']
  let g:neomake_javascript_eslint_exe = $PWD .'/node_modules/.bin/eslint'
endif
autocmd! BufWritePost * Neomake

map <C-\> :NERDTreeToggle<CR>
colorscheme dracula
call plug#end()
