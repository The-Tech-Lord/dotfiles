"  _______ __  __ _____  __  __ __   __        _  _   _       _   _       _             _____       _ _
" |__   __|  \/  |  __ \|  \/  /_ | / /    /\ | || | ( )     | \ | |     (_)           |_   _|     (_) |
"    | |  | \  / | |__) | \  / || |/ /_   /  \| || |_|/ ___  |  \| |_   ___ _ __ ___     | |  _ __  _| |_
"    | |  | |\/| |  ___/| |\/| || | '_ \ / /\ \__   _| / __| | . ` \ \ / / | '_ ` _ \    | | | '_ \| | __|
"    | |  | |  | | |    | |  | || | (_) / ____ \ | |   \__ \ | |\  |\ V /| | | | | | |  _| |_| | | | | |_
"    |_|  |_|  |_|_|    |_|  |_||_|\___/_/    \_\|_|   |___/ |_| \_| \_/ |_|_| |_| |_| |_____|_| |_|_|\__|


" GitLab: https://gitlab.com/dotfiles

" 'Wake up to reality! Nothing ever goes as planned in this accursed world. The longer you live, the more you
" realize that the only things that truly exist in this reality are merely pain, suffering and futility.
" Listen, everywhere you look in this world, wherever there is light, there will always be shadows to be found
" as well. As long as there is a concept of victors, the vanquished will also exist. The selfish intent of
" wanting to preserve peace, initiates war. and hatred is born in order to protect love.
" There are nexuses causal relationships that cannot be separated' - [Madara Uchiha]

" 'If you know the enemy and know yourself you need not fear the results of a
" hundred battles' - [Sun Tzu: The Art of War]

" 'You're not a real programmer unless you have severe Imposter Syndrome' - [The Programming M16A4]


" ===================================== + Vim Plugin Manager (Vim-Plug) + ======================================

" --------------------------------------------------------------------------------------------------------------
call plug#begin('~/.local/shrae/nvim/plugged')

" -- General --
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'

" -- Color Schemes / Themes --
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline-themes'
Plug 'ghifarit53/tokyonight-vim'

" -- Productivity --
Plug 'junegunn/fzf.vim'

" -- Debugging --
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'

" -- Syntax Related --
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

" -- Syntax Highlighting --
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'uiiaoo/java-syntax.vim'

" -- Git Related --
Plug 'mhinz/vim-signify'

" -- Other Plugins --
Plug 'vimsence/vimsence'

" -- Plugin Types to Get --
" * Web Development (HTML, CSS)
" * JavaScript
" * Java
" * Python
" * Lua
" * Perl
" * Clojure

call plug#end()
" --------------------------------------------------------------------------------------------------------------

" ============================================== + Vim Settings + ==============================================

" ---------------------------------------------- General Settings ----------------------------------------------
let mapleader = ","

syntax on										" This is self explanatory like com'on guys
set background=dark
set number relativenumber
set cursorline
set nowrap										" Prevents line of text/code to be wrapped around to another line
set mouse=a
set confirm

set tabstop=4									" Sets Tab Width
set shiftwidth=4

set noshowmode
set updatetime=80
set scrolloff=20								" Offsets the Cursor Top and Bottom
set textwidth=0									" Stops Vim from Inserting a Line Break
set spell spelllang=en_us
" --------------------------------------------------------------------------------------------------------------

" ----------------------------------------------- Plugin Settings ----------------------------------------------

" -- Airline --------------------------------
let g:airline_theme = 'owo'
" -------------------------------------------

" -- NERDTree -------------------------------
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeShowHidden=1
" -------------------------------------------

" -- Gruvbox --------------------------------
let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_sign_column = 'dark0_soft'
let g:gruvbox_vert_split = 'bg1'
" -------------------------------------------

" -- Tokyonight -----------------------------
let g:tokyonight_style = 'night'
let g:tokyonight_enable_italic = 0
" -------------------------------------------

" -- Vimsence [ Discord Presence ] ----------
let g:vimsense_client_id = '552207212840353822'
let g:vimsense_small_text = 'Vim'
let g:vimsense_small_image = 'vim'
let g:vimsense_editing_details = 'Editing: {}'
let g:vimsense_editing_state = 'Working on: {}'
let g:vimsense_file_explorer_text = 'In NERDTree'
let g:vimsense_file_explorer_details = 'Looking for files'
let g:vimsense_custom_icons = {'filetype': 'iconname'}
" -------------------------------------------

" --------------------------------------------------------------------------------------------------------------



" ================================ + Vim Commands / Vim Command Abbreviations + ================================

" ------------------------------------------- Command Abbreviations --------------------------------------------
command! -nargs=* TERM botright term<Space><args>
command! -nargs=* TERMS botright term ++shell<Space><args>
" --------------------------------------------------------------------------------------------------------------

" ============================================ + Abbreviations + ===============================================

" --------------------------------------------------------------------------------------------------------------
iabbrev &*() " --------------------------------------------------------------------------------------------------------------
" --------------------------------------------------------------------------------------------------------------

" ============================================= + Key Mappings + ===============================================

" ------------------------------------------- General Key Mappings ---------------------------------------------

" -- File Sourcing --
nmap <Leader><ESC> :source $MYVIMRC<CR>

" -- Arrow Key Disabler [ Normal Mode ] --
noremap <UP> <Nop>
noremap <DOWN> <Nop>
noremap <LEFT> <Nop>
noremap <RIGHT> <Nop>

" -- Vim Key Mappings --
nmap <Leader>. :wq<CR>
nmap <Leader>; :w<CR>
nmap <Leader><Leader> :q<CR>
nmap <Leader>t :botright term<CR>

" -- Vim Split Resizing --
nnoremap <C-S-RIGHT> 5<C-w>>
nnoremap <C-S-LEFT> 5<C-w><
nnoremap <C-S-UP> 5<C-w>+
nnoremap <C-S-DOWN> 5<C-w>-

nnoremap <C-RIGHT> 3<C-w>>
nnoremap <C-LEFT> 3<C-w><
nnoremap <C-UP> 3<C-w>+
nnoremap <C-DOWN> 3<C-w>-

" -- Vim Tabs --
nmap tnb :tabnew<CR>
nmap tno :tabnew<Space>
nmap <C-j> :tabr<CR>
nmap <C-k> :tabl<CR>
nmap <C-h> :tabp<CR>
nmap <C-l> :tabn<CR>

" -- NERDTree --
nmap <Leader>nt :NERDTreeToggle<CR>

" -- COC / COC Language Server --
" [ Python, Java, C, Json, HTML, CSS, JSON, TypeScript, Lua, *Perl, *Clojure, *Rust ]
let g:coc_global_extensions = ['coc-python', 'coc-java', 'coc-clangd', 'coc-tsserver', 'coc-json', 'coc-lua', 'coc-html', 'coc-css']
nmap <Leader>cocu :CocUpdate<CR>
nmap <Leader>cocl :CocList<CR>

" --------------------------------------------------------------------------------------------------------------

" -------------------------------------------- Complex Keymappings ---------------------------------------------
nmap <C-a> :%s/\s\+$//e<CR>
" --------------------------------------------------------------------------------------------------------------

" ------------------------------------------- Compiler Key Mappings --------------------------------------------
nnoremap <F2>1 :call Compile("S")<CR>
nnoremap <F2>2 :call Compile("A")<CR>

" -- Python 3 --
" -- Java Compiler --

" -- GNU/GCC (C17) --
autocmd FileType c nnoremap <buffer> <F2>3 TERMS gcc -std=c17 "%"



" -- GNU/G++ (C++17) --
autocmd FileType cpp nnoremap <buffer> <F2>3 TERMS g++ -std=c++17 "%"



" -- Lua --
" -- Perl --
" -- Clojure --

" --------------------------------------------------------------------------------------------------------------

" ---------------------------------- Git Version Control System Key Mappings -----------------------------------

" Note: Was made with Git Bare repos in mind (Specifically my Vim-Files and Dotfiles bare repos)
"nmap <Leader>1 :execute 'botright term ++shell' BASTION . ' add "%"'<CR>
"nmap <Leader>2 :execute 'botright term ++shell' BASTION . ' add .'<CR>
"nmap <Leader>3 :execute 'botright term ++shell' BASTION . ' commit -m "Quick Commit - Wim Macro"'<CR>
"nmap <Leader>4 :execute 'botright term ++shell' BASTION . ' ' . PUSH_TYPE<CR>

"nnoremap <Leader>5 :execute 'botright term ++shell' BASTION ' add "%";' BASTION ' commit -m "Quick Commit - Wim Macro";' BASTION PUSH_TYPE<CR>
"nnoremap <Leader>6 :execute 'botright term ++shell' BASTION ' add .;' BASTION ' commit -m "Quick Commit - Vim Macro";' BASTION PUSH_TYPE<CR>

"nmap <Leader>7 :execute BASTION . ' status'<CR>

nmap <Leader>1 :execute 'botright term ++shell' 'git add "%"'<CR>
nmap <Leader>2 :execute 'botright term ++shell' 'git add .'<CR>
nmap <Leader>3 :execute 'botright term ++shell' 'git commit -m "Quick Commit - Wim Macro"'<CR>
nmap <Leader>4 :execute 'botright term ++shell' 'git push'<CR>

nnoremap <Leader>5 :execute 'botright term ++shell' 'git add "%"; git commit -m "Quick Commit - Wim Macro"; git push'<CR>
nnoremap <Leader>6 :execute 'botright term ++shell' 'git add .; git commit -m "Quick Commit - Vim Macro"; git push'<CR>

nmap <Leader>7 :execute 'git status'<CR>
nmap <Leader>lg :TERM<CR>git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all<CR>
" --------------------------------------------------------------------------------------------------------------

" ----------------------------------------------- Run Programs -------------------------------------------------
nmap <Leader>r :TERM ./a.out<CR>
nmap <Leader>m :TERM make<CR>
" --------------------------------------------------------------------------------------------------------------



" ========================================== + Funky Vim Functions + ===========================================

" Note: 'Getting freaky on a Friday Night yeah!'

" --------------------------------------------------------------------------------------------------------------

" Multi Filetype Compiler Function (Uses Parameters to Ensure all Errors are Found)
function Compile(Mode)
	execute ':w'
	if a:Mode == "S"
		if expand('%:e') ==# 'py'
			exec 'TERMS python3 "%"'
		elseif expand('%:e') ==# 'c'
			exec 'TERMS gcc -std=c17 -Wall -Wextra -Werror "%"'
		elseif expand('%:e') ==# 'cpp'
			exec 'TERMS g++ -std=c++17 -Wall -Wextra -Werror "%"'
		elseif expand('%:e') ==# 'java'
			exec 'TERMS java "%"'
		endif
	elseif a:Mode == "A"
		if expand('%:e') ==# 'py'
			exec 'TERMS python3 ./*.py'
		elseif expand('%:e') ==# 'c'
			exec 'TERMS gcc -std=c17 -Wall -Wextra -Werror ./*.c'
		elseif expand('%:e') ==# 'cpp'
			exec 'TERMS g++ -std=c++17 -Wall -Wextra -Werror ./*.cpp'
		elseif expand('%:e') ==# 'java'
			exec 'javac *.java'
		endif
	endif
endfunction

" Header Guard Auto Setup Function
function Header_Guard_Setup()
	let l:filename = toupper(expand("%:r"))
	if (getline("1") !~ '#ifndef ' . filename)
		exe "normal!ggO#ifndef " . l:filename . "_H"
		exe "normal!o#define " . l:filename . "_H"
		" How about you go fuck off, okay yeah I now it's messy, but it works!
		exe "normal!3o"
		exe "normal!o#endif"
		exe "normal!1j"
		exe "normal!dd"
		exe "normal!2k"
	endif
endfunction

" Checks the Theme and Changes Accordingly
function Theme_Checker_Setter()
	let fileExtensions = ['html', 'css']
	let fileNameCheck = index(l:fileExtensions, expand('%:e'))
	if g:colors_name ==# 'gruvbox'
		if l:fileNameCheck == 0
			set termguicolors
			colorscheme tokyonight
			return 4
		endif
	elseif g:colors_name ==# 'tokyonight'
		if l:fileNameCheck == -1
			set notermguicolors
			colorscheme gruvbox
			return 5
		endif
	endif
endfunction

" --------------------------------------------------------------------------------------------------------------



" ============================================ + Conditionals + ================================================

" Note: Can be used if they just didn't somehow work in a function or some other reason

" --------------------------------------------------------------------------------------------------------------

" ----- Git Keybinding Decider ------------------
" Note: Deprecated

"let git_check = system("git rev-parse --is-inside-work-tree")
"let BASTION = " "
"let PUSH_TYPE = " "

"let GITTERMS="botright term ++shell /usr/bin/git"
"let VIMFILES="/usr/bin/git --git-dir=$HOME/.vim-files/ --work-tree=$HOME"
"let DOTFILES="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

"if v:shell_error == 0
	"let BASTION = GITTERMS
	"let PUSH_TYPE = "push"
"elseif expand("%") == ".vimrc"
	"let BASTION = VIMFILES
	"let PUSH_TYPE = "push origin master"
"else
	"let BASTION = DOTFILES
	"let PUSH_TYPE = "push origin master"
"endif
" -----------------------------------------------

" --------------------------------------------------------------------------------------------------------------



" ============================================== + Debugging + =================================================

" Note: If you think that a print function isn't 'real' debugging you're not a real programmer.

" --------------------------------------------- Print Statements -----------------------------------------------
autocmd FileType python inoremap <buffer> <C-p> print("You made it here! - Debugging\n")
autocmd FileType c inoremap <buffer> <C-p> printf("You made it here! - Debugging\n");
autocmd FileType cpp inoremap <buffer> <C-p> cout << "You made it here! - Debugging" << endl;
autocmd FileType cs inoremap <buffer> <C-p> Console.WriteLine("You made it here! - Debugging\n");
autocmd FileType java inoremap <buffer> <C-p> System.out.println("You made it here! - Debugging\n");
autocmd FileType rs inoremap <buffer> <C-p> println!("You made it here! - Debugging\n");
autocmd FileType lua inoremap <buffer> <C-p> io.write("You made it here! - Debugging\n");
autocmd FileType perl inoremap <buffer> <C-p> printf "You made it here! - Debugging\n";
autocmd FileType pascal inoremap <buffer> <C-p> writeln("You made it here! - Debugging\n");
" --------------------------------------------------------------------------------------------------------------

" --------------------------------------------------------------------------------------------------------------

" --------------------------------------------------------------------------------------------------------------



" =========================================== + Auto Run Commands + ============================================

" Note: Non-specific autocmd commands like when starting up Vim or when in a certain mode like Insert or Visual.
"		Not really meant for commands for programming specifically like autocomplete, insertion or templates.

" --------------------------------------------------------------------------------------------------------------

" ----- Theme Switcher -----------
autocmd BufLeave,BufEnter * :call Theme_Checker_Setter()
" --------------------------------

" ----- NERDTree -----------------
" Quits NERDTree if it's the last buffer
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
						\ quit | endif
" Prevents other buffers from replacing the NERDTree buffer
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
	\ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
" --------------------------------

" --------------------------------------------------------------------------------------------------------------



" ============================================ + Autocompletions + =============================================

" --------------------------------------------------------------------------------------------------------------

" ----- Python --------

" ---------------------

" ----- C -------------
autocmd BufNewFile,FileType c nnoremap <buffer> <C-P> :r ~/.vim/templates/c_setup.c<CR>i<BS><ESC>
autocmd BufNewFile,FileType *.h :call Header_Guard_Setup()
" ---------------------

" ----- C++ -----------
autocmd BufNewFile,FileType cpp nnoremap <buffer> <C-P> :r ~/.vim/templates/cpp_setup.cpp<CR>i<BS><ESC>
autocmd BufNewFile,FileType *.hpp :call Header_Guard_Setup()
" ---------------------

" ----- C# ------------
autocmd BufNewFile,FileType cs nnoremap <buffer> <C-P> :r ~/.vim/templates/cs_setup.cs<CR>i<BS><ESC>
" ---------------------

" ----- Java ----------
autocmd BufNewFile,FileType java nnoremap <buffer> <C-P> :r ~/.vim/templates/java_setup.java<CR>i<BS><ESC>
autocmd Filetype java iabbrev <buffer> sout System.out.println
" ---------------------

" ----- Rust ----------
autocmd BufNewFile,Filetype rs nnoremap <buffer> <C-P> :r ~/.vim/templates/rust_setup.rs<CR>i<BS><ESC>
" ---------------------

" ----- Lua -----------

" ---------------------

" ----- Perl ----------

" ---------------------

" ----- Pascal --------

" ---------------------

" ----- Haskell -------

" ---------------------

" --------------------------------------------------------------------------------------------------------------

" ------------------------------------------- Web Technologies -------------------------------------------------

" ----- HTML ----------
autocmd BufNewFile,FileType html nnoremap <buffer> <C-P> :r ~/.vim/templates/html_setup.html<CR>i<BS><ESC>
" ---------------------

" ----- CSS -----------

" ---------------------

" --------------------------------------------------------------------------------------------------------------



" =========================================== + Macroinstructions + ============================================

" Note: I didn't have to do this but I like being able to just see my macros without having
"		to use the :register command.

" --------------------------------------------------------------------------------------------------------------

" --------------------------------------------------------------------------------------------------------------



" =========================================== + Miscellaneous Sht + ============================================

" Note: Just some random stuff like showing the time or printing out a Nyan cat stuff like that

" --------------------------------------------------------------------------------------------------------------
colorscheme gruvbox
" --------------------------------------------------------------------------------------------------------------
