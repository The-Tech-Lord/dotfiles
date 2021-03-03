" ----------------------- Vim-Plug Package Manager --------------------------
call plug#begin('~/.vim/plugged')

" -- General Plugins --
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'

" -- Color Schemes / Themes --
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline-themes'

" -- Productivity --
Plug 'MattesGroeger/vim-bookmarks'

" -- Debugging Plugins --
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'

" -- Syntax Related Plugins --
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

" -- Syntax Highlighting Plugins --
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-pandoc/vim-pandoc-syntax'

" -- Git Related Plugins --
Plug 'mhinz/vim-signify'

call plug#end()
" ---------------------------------------------------------------------------




" ===========================================================================
"                             + Vim Settings +
" ===========================================================================


" --------------------------- General Settings ------------------------------
syntax on
set number relativenumber							" Absolute + Relative Number Modes
set ts=4
set confirm
set mouse=a
set background=dark
set noshowmode										" Doesn't show Vim mode in command line
set updatetime=80
let mapleader = ","									" Leader Mapping
" ---------------------------------------------------------------------------


" --------------------------- Other Settings --------------------------------

" -- NERDTree Settings --
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" -- Airline Settings --
let g:airline_theme = 'owo'

" -- Gruvbox Settings --
let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_sign_column = 'dark0_soft'
let g:gruvbox_vert_split = 'bg1'
colorscheme gruvbox

" ---------------------------------------------------------------------------




" ===========================================================================
"                              + KEY MAPPINGS +
" ===========================================================================


" -------------------------- General Key Mappings ---------------------------
 
" -- Vim Terimnal Mappings --
map <Leader>t :botright term<CR>

" -- NERDTree Key Mappings --
map <Leader>nt :NERDTreeToggle<CR>

" -- Vim Tabs Key Mappings --
nmap tnb :tabnew<CR>
nmap tno :tabnew 
map <C-j> :tabr<CR>
map <C-k> :tabl<CR>
map <C-h> :tabp<CR>
map <C-l> :tabn<CR>

" -- Vim Bookmarks Key Mappings --
nmap <Leader>bt <Plug>BookmarkToggle
nmap <Leader>l <Plug>BookmarkNext
nmap <Leader>h <Plug>BookmarkPrev
nmap <Leader>bsa <Plug>BookmarkShowAll
nmap <Leader>bc <Plug>BookmarkClear
nmap <Leader>bca <Plug>BookmarkClearAll

" -- COC Key Mappings / COC Language Server Key Mappings --
map cocs :CocList<CR>
map <Leader>coci :CocInstall coc-tsserver coc-json coc-python coc-lua coc-clangd coc-html coc-css<CR>
map <Leader>cocu :CocUpdate<CR>

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

" ---------------------------------------------------------------------------


" ----------------- Git Version Control System Key Mappings -----------------

map <Leader><C-g>as :botright term<CR>git add "%"<CR>
map <Leader><C-g>aa :botrifght term<CR>git add .<CR>
map <Leader><C-g>c :botright term<CR>git commit -m "Quick Commit - Wim Macro"<CR>
map <Leader><C-g>p :botright term<CR>git push<CR>
map <Leader><C-g>acp :botright term<CR>git add .; git commit -m "Quick Commit - Vim Macro"; git push<CR> 

" -- Dotfiles Add / Commit / Push --
map <C-d>da :botright term<CR>dotfiles add .<CR>
map <C-d>dc :botright term<CR>dotfiles commit -m "Dotfile Update - Wim Macro"<CR>exit<CR>
map <C-d>dp :botright term<CR>dotfiles push origin master<CR>
map <C-d>dcp :botright term<CR>dotfiles commit -m "Dotfile Update - Vim Macro"; dotfiles push origin master<CR>

" ---------------------------------------------------------------------------


" ------------------------ Run Executable Programs --------------------------

" -- Run Executable Files --
map <Leader>r :botright term<CR>./a.out<CR>

" -- Run MakeFile --
map <Leader>m :botright term<CR>make<CR>

" ---------------------------------------------------------------------------




" ===========================================================================
"                             To Be Allocated
" ===========================================================================


" ---------------------------------------------------------------------------


" ---------------------------------------------------------------------------
