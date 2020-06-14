call plug#begin('~/.config/nvim/plugins')

" vim-instant-markdown - Live Markdown Rendering/Reloading
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}

" vim-dogrun - Colorscheme
Plug 'wadackel/vim-dogrun'

" yats.vim - TypeScript syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'

" SyntaxComplete - Syntax highlighting for over 600 presentations
Plug 'vim-scripts/SyntaxComplete'

" Pairing - Tag pairing
Plug 'tmsvg/pear-tree'

" NERDtree - File tree

Plug 'preservim/nerdtree'

" Prettier - Code formatter

Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" Airline - Statusline

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" let g:airline_theme="simple"

" Bracey.vim - Live HTML Reloading
Plug 'turbio/bracey.vim'

" Emmet

Plug 'mattn/emmet-vim'

call plug#end()

if (has("termguicolors"))
	set termguicolors
endif

" Theme
syntax enable
colorscheme dogrun

" Pairs

let g:pear_tree_pairs = {
  \ '(':    {'closer': ')'},
  \ '[':    {'closer': ']'},
  \ '{':    {'closer': '}'},
  \ "'":    {'closer': "'"},
  \ '"':    {'closer': '"'},
  \ '/*':   {'closer': '*/'},
  \ '<!--': {'closer': '-->'},
  \ '<*>':  {'closer': '</*>'},
  \ '/\*':  {'closer': '\*/'},
  \ }

" Autocomplete

if has("autocmd") && exists("+omnifunc")
autocmd Filetype *
    \	if &omnifunc == "" |
    \		setlocal omnifunc=syntaxcomplete#Complete |
    \	endif
endif

" Mouse support

set mouse=a

" Enable ruler

set numbers
