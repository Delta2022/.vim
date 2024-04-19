filetype plugin indent on
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
nnoremap <C-a> :ALEToggle<CR>
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
" undotree
nnoremap <C-x> :UndotreeToggle<CR>
" persistent undos
" guard for distributions lacking the 'persistent_undo' feature.
if has('persistent_undo')
    " define a path to store persistent undo files.
    let target_path = expand('~/.config/vim-persisted-undo/')    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call system('mkdir -p ' . target_path)
    endif    " point Vim to the defined undo directory.
    let &undodir = target_path    " finally, enable undo persistence.
    set undofile
endif
