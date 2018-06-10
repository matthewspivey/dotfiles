colorscheme lucario

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'fatih/vim-go'
call plug#end()

let g:netrw_banner = 0
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:laststatus = 2

" After this is configured, :ALEFix will try and fix your JS code with ESLint.
let g:ale_fixers = { 'javascript': ['eslint'] }
