" ----------------------- Vim-Plug Package Manager --------------------------
call plug#begin('~/.vim/plugged')

" -- General Plugins --
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-signify'
Plug 'preservim/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'

" -- Syntax Highlighting Plugins --
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-pandoc/vim-pandoc-syntax'

" -- Color Schemes / Themes --
Plug 'morhetz/gruvbox'

call plug#end()
" ---------------------------------------------------------------------------



" ------------- Status Bar Customization / Theme Customization --------------

" Airline Settings
let g:airline_theme = 'owo'
let g:airline#extentions#tabline#enabled = 1
let g:airline#extentions#tabline#formatter = 'unique_tail'

" Gruvbox Settings
let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_vert_split = 'bg1'
let g:gruvbox_hls_cursor = 'bg1'
colorscheme gruvbox

" ---------------------------------------------------------------------------



" --------------------------- General Settings ------------------------------
syntax on
set number
set number relativenumber						" Turns on 'Hybrid' mode (Absolute and Relative) for line numbers
set ts=4										" Tab space 4
set confirm										" Confirms if you want to save when quitting
set mouse=a
set background=dark
set noshowmode									" Doesn't show mode in terminal
set updatetime=100
let mapleader = ","
" ---------------------------------------------------------------------------


" COC Language Server Extentions
"let g:coc_global_extentions = [
		
		"]


" ---------------------------- Key Mappings ---------------------------------
  
" -- NERDTree Mappings --
map <Leader>nt :NERDTreeToggle<CR>

" -- Vim Tab Key Mappings --
nmap tnb :tabnew<CR>
nmap tno :tabnew 
map <C-j> :tabr<CR>
map <C-k> :tabl<CR>
map <C-h> :tabp<CR>
map <C-l> :tabn<CR>

" -- GCC Compiler Mappings --
nnoremap gcc :!gcc -std=c17 "%"<CR>
nnoremap <Leader>gwe :!gcc -std=c17 -Wall -Wextra -Werror "%"<CR>
nnoremap <Leader>ga :!gcc -std=c17 -Wall -Wextra -Wextra ./*.c<CR>

" -- CLANG Compiler Mappings --
nnoremap <Leader>lang :!clang "%"<CR>

" -- Run a.out File / MakeFile --
nnoremap <Leader>r :!./a.out<CR>
nnoremap <Leader>m :!make<CR>

" ---------------------------------------------------------------------------


