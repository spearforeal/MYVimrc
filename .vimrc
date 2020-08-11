let g:OmniSharp_start_server = 2

"OmniSharp_selector_ui = 'unite'  " Use unite.vim
let g:OmniSharp_selector_ui = 'ctrlp'  " Use ctrlp.vim
let g:OmniSharp_selector_ui = 'fzf'    " Use fzf.vim
let g:OmniSharp_selector_ui = ''       " Use vim - command line, quickfix etc.
let g:OmniSharp_highlighting = 5
set nocompatible 
"autocmd
set incsearch
set number
set clipboard=unnamed
vnoremap <C-c> "+y
map <C-v> "+P
set tabstop=4
execute pathogen#infect()
syntax on
filetype plugin indent on
execute pathogen#helptags()
colorscheme slate
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let g:OmniSharp_highlight_groups = {
\ 'Comment': 'NonText',
\ 'XmlDocCommentName': 'Identifier',
\ 'XmlDocCommentText': 'NonText'
\}
set omnifunc=syntaxcomplete#Complete

let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tmuxline#enabled = 0
let g:tmuxline_preset = 'nightly_fox'

let g:airline_theme= 'murmur'
let g:OmniSharp_server_stdio = 1


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabDefaultCompletionType = "context"
