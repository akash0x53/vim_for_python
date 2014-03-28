set nocp
call pathogen#infect()
syntax on
filetype plugin indent on
call pathogen#infect()
nnoremap <leader>v <Plug>TaskList

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set foldmethod=indent
set foldlevel=99
set tabstop=4
set shiftwidth=4

colorscheme aqua

map <c-j> <c-w>j "down
map <c-k> <c-w>k "up
map <c-l> <c-w>l "right
map <c-h> <c-w>h "left

filetype on

let g:pyflakes_use_quickfix = 0
let g:pep8_map='<c-8>'

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

map <c-n> :NERDTreeToggle<CR>

"jumping in code
map <leader>j :RopeGotoDefinition<CR>

"searching
nmap <leader>a: Ack!

"goto definition
let g:jedi#goto_definitions_command = "<leader>g"
