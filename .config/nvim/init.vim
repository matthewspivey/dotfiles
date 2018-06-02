colorscheme lucario

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
call plug#end()

let g:netrw_banner = 0

" After this is configured, :ALEFix will try and fix your JS code with ESLint.
let g:ale_fixers = { 'javascript': ['eslint'] }
