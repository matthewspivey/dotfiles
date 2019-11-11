colorscheme lucario

call plug#begin()
" chrome and eye candy
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'
" deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'deoplete-plugins/deoplete-docker'
" JavaScript
Plug 'w0rp/ale'

call plug#end()

let g:laststatus = 2

" Customize vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

" Customize deoplete and ale
" After this is configured, :ALEFix will try and fix your JS code with ESLint.
let g:deoplete#enable_at_startup = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint']
\}
let g:ale_completion_enabled = 1
let g:ale_set_balloons = 1
let g:ale_sign_column_always = 1

set encoding=UTF-8

let g:buffet_use_devicons = 1
let g:buffet_powerline_separators = 1
let g:buffet_tab_icon = "\uf00a"
let g:buffet_left_trunc_icon = "\uf0a8"
let g:buffet_right_trunc_icon = "\uf0a9"

set runtimepath+=$XDG_CONFIG_HOME/nvim/plugged/deoplete.nvim
set completeopt+=noinsert,noselect
set completeopt-=preview

" Spaces & Tabs {{{
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line
" }}} Spaces & Tabs

