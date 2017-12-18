colorscheme solarized
set background=dark
syntax enable " enable syntax processing

set tabstop=4 " number of visual spaces per TAB
set softtabstop=4 " number of spaces in TAB when editing
set expandtab " TABs are replaced with spaces

set number " display line numbers
set showcmd " show last command in bottom right bar
set cursorline " highlight current line
set showmatch " highlight matching [{()}]

set incsearch " searches as characters are entered
set hlsearch " highlight search matches
nnoremap <leader><space> :nohlsearch<CR> " turn off old search highlights

set foldenable " enable folding
set foldlevelstart=10 " open most folds by default
set foldnestmax=10 " 10 nested fold max
set foldmethod=indent " fold based on indent level
