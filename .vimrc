

" To install vim-plug 
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim




" This will open Vexpolore and resize it 
"autocmd VimEnter * 
			"\:Vex |
			"\:vertical resize -65

" This will open the terminal 
"autocmd VimEnter * :botright terminal

set number
set mouse=a
set incsearch
"set smartcase
set background=dark
set complete+=kspell
"set relativenumber
set completeopt=menuone,longest
set wildmenu
set wrap
set hlsearch
set cursorline
set noswapfile
set autoindent

set laststatus=2
set statusline=
"set statusline+=%-10.3n\                     " buffer number                         
set statusline+=%F\                          " filename                               
set statusline+=%h%m%r%w                     " status flags                           
set statusline+=%=                           " right align remainder                  
set statusline+=%y                           " file type                              
"set statusline+=%=                           " right align remainder                  
"set statusline+=0x%-8B                       " character value                        
set statusline+=%-14(%l,%c%V%)               " line, character                        
"set statusline+=%<%P                          file position                          
set ruler

syntax on 

" Change the cursor style when in command mode and insert mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

let g:gruvbox_contranst_dark='hard' 

let g:gruvbox_termcolors=16

"let g:gruvbox_italic=1

call plug#begin()

" Pop up autocomplete menu while typing 
Plug 'vim-scripts/AutoComplPop'

" Jedi code autocompletion 
Plug 'davidhalter/jedi-vim'

" Atom theme
Plug 'rakr/vim-one'

" Allow to comment a line or multiple lines with a key shortcut
Plug 'vim-scripts/comments.vim'

" Auto complete double quotes, single quotes, bracket and square bracket
Plug 'jiangmiao/auto-pairs'

" GruvBox theme 
Plug 'morhetz/gruvbox'

" NerdTree
Plug 'scrooloose/nerdtree'

call plug#end()


colorscheme gruvbox


" Changing visual mode background 
hi Visual cterm=NONE ctermfg=NONE ctermbg=228 guibg=#f2e5bc

" Changing popup menu background color
hi Pmenu guibg=Black guifg=white

" Changing Selected item color in popup menu 
hi PmenuSel ctermbg=green guibg=lightblue ctermfg=white

" Changing line number color 
hi LineNr term=bold cterm=NONE ctermfg=gray ctermbg=NONE gui=NONE guifg=White guibg=NONE

" Changing StatusLine color 
hi StatusLine cterm=bold,reverse ctermfg=black ctermbg=green

" Changing cursor line number color 
hi CursorLineNr cterm=NONE ctermbg=NONE ctermfg=white guibg=NONE guifg=NONE

" Changing the background color
"hi Normal ctermbg=Black







"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
   "< https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


" Key mapping settings

" Keep choosing the option thet been cursored using the arrow keys from the popup menu
inoremap <expr> <Down> pumvisible() ? "<C-n>" : "<Down>"
inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"


" Select the option from popup menu
inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
inoremap <expr> <CR> pumvisible() ? "<C-y>" :"<CR>"

" Cancel the selected option from autocomplete popup menu 
inoremap <expr> <Left> pumvisible() ? "<C-e>" :"<Left>"

" Open Vexpolore
map ,<Tab> :NERDTree<CR>

" This will resize the window
map <C-Left> :vertical resize -10<CR>

map <C-Right> :vertical resize +10<CR>

map <C-Up> :resize +10<CR>
map <C-DOWN> :resize -10<CR>

" This will paste the copied words  
map ,p "0p

" This will open the terminal 
map ,t :botright terminal<CR>

" This ,r key shortcut will run the python file and show the terminal output
map ,r :!python3 %<CR>


" This will clear the output terminal 
map ,l :!clear<CR>

map ,w :w<CR>


" Remap escp key to ,q
map ,q <Esc><CR>
nmap ,q <Esc><CR>
inoremap ,q <Esc><CR>
vmap ,q <Esc><CR>




" Open Lexplore on right side.
map ,e :Lex!<CR>



