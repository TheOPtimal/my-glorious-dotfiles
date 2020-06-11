call plug#begin('~/.config/nvim/plugins')

" Markdown
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}

" Colorscheme
Plug 'wadackel/vim-dogrun'

" Syntax highlighting

" TypeScript
Plug 'HerringtonDarkholme/yats.vim'

" General
Plug 'vim-scripts/SyntaxComplete'

" Pairing
Plug 'tmsvg/pear-tree'

" NERDtree

Plug 'preservim/nerdtree'

" Prettier

Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" Airline

Plug 'vim-airline/vim-airline'
let g:airline_theme="statusline"

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
