execute pathogen#infect()
set number
set autoindent
set encoding=utf-8
set laststatus=2
set ruler
set showcmd
syntax enable
set mouse=a
set softtabstop=4
" ale
let g:ale_disable_lsp = 1
" NERDTree
map <C-z> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"ale
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['trim_whitespace'],
\}

let g:ale_linters = {
\   'python': ['pylint'],
\   'java': ['javac'],
\   'c': ['clang']
\}
let g:ale_sign_error = '|>'
let g:ale_sign_warning = '->'
set sw=4
set expandtab
autocmd BufNewFile,BufRead *.py set keywordprg=pydoc3.8
autocmd BufNewFile,BufRead *.java set keywordprg=javadoc
" Important!!
" sonokai
if has('termguicolors')
    set termguicolors
endif
" The configuration options should be placed before `colorscheme sonokai`.
let g:sonokai_style = 'espresso'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1
colorscheme sonokai
" airline
let g:airline_theme='minimalist'
" removes the warning when switching buffers in vim
set hidden
