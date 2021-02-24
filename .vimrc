" ----------------------- Vim-Plug Package Manager --------------------------
call plug#begin('~/.vim/plugged')

" -- General Plugins --
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'

" -- Color Schemes / Themes --
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline-themes'

" -- Debugging Plugins --
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'

" -- Git VCS --
Plug 'mhinz/vim-signify'

" -- Syntax Highlighting Plugins --
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-pandoc/vim-pandoc-syntax'

call plug#end()
" ---------------------------------------------------------------------------



" --------------------------- General Settings ------------------------------
syntax on
set number
set number relativenumber						" Turns on 'Hybrid' mode (Absolute and Relative) for line numbers
set ts=4
set confirm										" Confirms if you want to save when quitting
set mouse=a
set background=dark
set noshowmode
set updatetime=80
let mapleader = ","
" ---------------------------------------------------------------------------



" --------------------------- Other Settings --------------------------------

" -- NERDTree Settings --
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" -- Airline Settings --
let g:airline_theme = 'owo'

" -- Gruvbox Settings --
let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_vert_split = 'bg1'
let g:gruvbox_hls_cursor = 'bg1'
colorscheme gruvbox

" ---------------------------------------------------------------------------



" ---------------------------- General Key Mappings -------------------------
  
" -- NERDTree Key Mappings --
map <Leader>nt :NERDTreeToggle<CR>

" -- Vim Tabs Key Mappings --
nmap tnb :tabnew<CR>
nmap tno :tabnew 
map <C-j> :tabr<CR>
map <C-k> :tabl<CR>
map <C-h> :tabp<CR>
map <C-l> :tabn<CR>


" -- COC Key Mappings --
map cocs :CocList<CR>

" -- COC Language Server Installer --
map <Leader>coci :CocInstall coc-tsserver coc-json coc-python coc-lua coc-clangd coc-html coc-css<CR>

" ---------------------------------------------------------------------------



" ------------------- Compiler / Programming Key Mappings -------------------
" -- Python 3 Compiler Mappings --


" -- Java Compiler Mappings --


" -- GNU = GCC Compiler Mappings (C17) --
nnoremap gc :!gcc -std=c17 "%"<CR>
nnoremap gcs :!gcc -std=c17 -Wall -Wextra -Werror "%"<CR>
nnoremap gca :!gcc -std=c17 -Wall -Wextra -Wextra ./*.c<CR>

" -- GNU = G++ Compiler Mappings (C++17) --
nnoremap gp :!g++ -std=c++17 "%"<CR>
nnoremap gps :!g++ -std=c++17 -Wall -Wextra -Werror "%"<CR>
nnoremap gpa :!g++ -std=c++17 -Wall -Wextra -Wextra ./*.cpp<CR>

" -- CLANG Compiler Mappings --
nnoremap <Leader>cl :!clang "%"<CR>
nnoremap <Leader>cls :!clang -Wall -Wextra "%"<CR>
nnoremap <Leader>clap :!clang -Wall -Wextra "./*.cpp"<CR>
nnoremap <Leader>clac :!clang -Wall -Wextra "./*.c"<CR>

" -- Lua Compiler Mappings --


" -- Perl Compiler Mappings --


" -- Clojure Compiler Mappings --


" -- Run Executable Files / Run MakeFile --
map <Leader>r :!./a.out<CR>
map <Leader>m :!make<CR>

" ---------------------------------------------------------------------------
