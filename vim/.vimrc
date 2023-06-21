call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline-themes'
Plug 'ghifarit53/tokyonight-vim'

Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'

Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'uiiaoo/java-syntax.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'yuezk/vim-js'

Plug 'mhinz/vim-signify'

Plug 'vimsence/vimsence'

call plug#end()

let mapleader = ","

syntax on										" This is self explanatory like com'on guys
set background=dark
set number relativenumber
set cursorline									" Highlights the cursor line
set nowrap										" Prevents line of text/code to be wrapped around to another line
set mouse=a
set confirm

set tabstop=4									" Sets Tab Width
set shiftwidth=4

set noshowmode
set updatetime=80
set termwinsize=9x200							" Sets Terminal Window Height and Width
set scrolloff=20								" Offsets the Cursor Top and Bottom
set textwidth=0									" Stops Vim from Inserting a Line Break
set spell spelllang=en_us
set signcolumn=number



let g:airline_theme = 'owo'
let g:airline#extensions#branch#enabled=1

let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeShowHidden=1
let g:NERDTreeNaturalSort=1
let g:NERDTreeIgnore=['\.png$', '\.jpg$', '\.jpeg$', '\.jfif$', '\Pictures$']

let g:gruvbox_contrast_dark = 'soft'
let g:gruvbox_sign_column = 'dark0_soft'
let g:gruvbox_vert_split = 'bg1'

let g:tokyonight_style = 'night'
let g:tokyonight_enable_italic = 0

let g:vimsense_client_id = '552207212840353822'
let g:vimsense_small_text = 'Vim'
let g:vimsense_small_image = 'vim'
let g:vimsense_editing_details = 'Editing: {}'
let g:vimsense_editing_state = 'Working on: {}'
let g:vimsense_file_explorer_text = 'In NERDTree'
let g:vimsense_file_explorer_details = 'Looking for files'
let g:vimsense_custom_icons = {'filetype': 'iconname'}

command! -nargs=* TERM botright term<Space><args>
command! -nargs=* TERMS botright term ++shell<Space><args>

iabbrev &*() " --------------------------------------------------------------------------------------------------------------

nmap <Leader><ESC> :source $MYVIMRC<CR>

noremap <UP> <Nop>
noremap <DOWN> <Nop>
noremap <LEFT> <Nop>
noremap <RIGHT> <Nop>

nmap <Leader>. :wq<CR>
nmap <Leader>; :w<CR>
nmap <Leader><Leader> :q<CR>
nmap <Leader>t :botright term<CR>

nnoremap <C-S-RIGHT> 5<C-w>>
nnoremap <C-S-LEFT> 5<C-w><
nnoremap <C-S-UP> 5<C-w>+
nnoremap <C-S-DOWN> 5<C-w>-

nnoremap <C-RIGHT> 3<C-w>>
nnoremap <C-LEFT> 3<C-w><
nnoremap <C-UP> 3<C-w>+
nnoremap <C-DOWN> 3<C-w>-

nmap tnb :tabnew<CR>
nmap tno :tabnew<Space>
nmap <C-j> :tabr<CR>
nmap <C-K> :tabl<CR>
nmap <C-h> :tabp<CR>
nmap <C-l> :tabn<CR>

nmap <Leader>nt :NERDTreeToggle<CR>

let g:coc_global_extensions = ['coc-python', 'coc-java', 'coc-clangd', 'coc-tsserver', 'coc-json', 'coc-html', 'coc-css']
nmap <Leader>cocu :CocUpdate<CR>
nmap <Leader>cocl :CocList<CR>

nmap <C-a> :%s/\s\+$//e<CR>

nnoremap <F2>1 :call Compile("S")<CR>
nnoremap <F2>2 :call Compile("A")<CR>





autocmd FileType c nnoremap <buffer> <F2>31 :execute 'TERMS gcc -std=c17 "%"; ./a.out'<CR>

autocmd FileType cpp nnoremap <buffer> <F2>31 :execute 'TERMS g++ -std=c++17 "%"; ./a.out'<CR>





















nmap <Leader>r :TERM ./a.out<CR>
nmap <Leader>m :TERM make<CR>

nmap <Leader>1 :execute 'botright term ++shell' 'git add "%"'<CR>
nmap <Leader>2 :execute 'botright term ++shell' 'git add .'<CR>
nmap <Leader>3 :execute 'botright term ++shell' 'git commit -m "Quick Commit - Wim Macro"'<CR>
nmap <Leader>4 :execute 'botright term ++shell' 'git push'<CR>

nnoremap <Leader>5 :execute 'botright term ++shell' 'git add "%"; git commit -m "Quick Commit - Wim Macro"; git push'<CR>
nnoremap <Leader>6 :execute 'botright term ++shell' 'git add .; git commit -m "Quick Commit - Vim Macro"; git push'<CR>

nmap <Leader>7 :execute 'git status'<CR>
nmap <Leader>lg :TERM<CR>git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all<CR>

function Compile(Mode)
	" Description: Multi Filetype Compiler Function (Uses Parameters to Ensure all Errors are Found)

	execute ':w'
	if a:Mode == "S"
		if expand('%:e') ==# 'py'
			exec 'TERMS python3 "%"'
		elseif expand('%:e') ==# 'c'
			exec 'TERMS gcc -std=c17 -Wall -Wextra -Werror "%"; ./a.out'
		elseif expand('%:e') ==# 'cpp'
			exec 'TERMS g++ -std=c++17 -Wall -Wextra -Werror "%"; ./a.out'
		elseif expand('%:e') ==# 'java'
			exec 'TERMS java "%"'
		elseif expand('%:e') ==# 'js'
			exec 'TERMS node "%"'
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

function Header_Guard_Setup()
	" Description: Header Guard Auto Setup Function

	let l:filename = toupper(expand("%:r"))
	if (getline("1") !~ '#ifndef ' . filename)
		exe "normal!ggO#ifndef " . l:filename . "_H"
		exe "normal!o#define " . l:filename . "_H"
		" Am I YandereDev yet?
		exe "normal!3o"
		exe "normal!o#endif"
		exe "normal!1j"
		exe "normal!dd"
		exe "normal!2k"
	endif
endfunction

"function Theme_Checker_Setter()
	" Description: Checks the Theme and Changes Accordingly

	"let fileExtensions = ['html', 'css']
	"let fileNameCheck = index(l:fileExtensions, expand('%:e'))
	"if g:colors_name ==# 'gruvbox'
		"if l:fileNameCheck == 0
			"set termguicolors
			"colorscheme tokyonight
			"return 4
		"endif
	"elseif g:colors_name ==# 'tokyonight'
		"if l:fileNameCheck == -1
			"set notermguicolors
			"colorscheme gruvbox
			"return 5
		"endif
	"endif
"endfunction

function WSL_Settings_Setter()
	" Description: Checks if Vim is in WSL or Linux and applies appropriate settings

	let wsl_uname = substitute(system('uname'), '\n', '', '')
	if wsl_uname == 'Linux'
		let wsl_lines = readfile("/proc/version")
		if wsl_lines[0] =~ "Microsoft" " Checks if /proc/version contains any instance of the word Microsoft
			colorscheme gruvbox
			highlight Normal guibg=NONE ctermbg=NONE
			highlight CursorLine guibg=NONE ctermbg=NONE gui=underline cterm=underline
			return 854 " Try and figure out what the number is for
		endif
	endif
	colorscheme gruvbox
	return 528 " Try and figure out what the number is for
endfunction



autocmd FileType python inoremap <buffer> <C-p> print("You made it here! - Debugging\n")
autocmd FileType c inoremap <buffer> <C-p> printf("You made it here! - Debugging\n");
autocmd FileType cpp inoremap <buffer> <C-p> cout << "You made it here! - Debugging" << endl;
autocmd FileType cs inoremap <buffer> <C-p> Console.WriteLine("You made it here! - Debugging\n");
autocmd FileType java inoremap <buffer> <C-p> System.out.println("You made it here! - Debugging\n");
autocmd FileType rs inoremap <buffer> <C-p> println!("You made it here! - Debugging\n");
autocmd FileType lua inoremap <buffer> <C-p> io.write("You made it here! - Debugging\n");
autocmd FileType perl inoremap <buffer> <C-p> printf "You made it here! - Debugging\n";
autocmd FileType pascal inoremap <buffer> <C-p> writeln("You made it here! - Debugging\n");



"autocmd BufLeave,BufEnter * :call Theme_Checker_Setter()

" Quits NERDTree if it's the last buffer
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
						\ quit | endif
" Prevents other buffers from replacing the NERDTree buffer
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
	\ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Refreshes NERDTree when entering its buffer
autocmd BufEnter NERD_tree_* | execute 'normal R'

autocmd VimEnter * :call WSL_Settings_Setter()



autocmd BufNewFile,FileType c nnoremap <buffer> <C-P> :r ~/.vim/templates/c_setup.c<CR>i<BS><ESC>
autocmd BufNewFile,FileType *.h :call Header_Guard_Setup()

autocmd BufNewFile,FileType cpp nnoremap <buffer> <C-P> :r ~/.vim/templates/cpp_setup.cpp<CR>i<BS><ESC>
autocmd BufNewFile,FileType *.hpp :call Header_Guard_Setup()

autocmd BufNewFile,FileType cs nnoremap <buffer> <C-P> :r ~/.vim/templates/cs_setup.cs<CR>i<BS><ESC>

autocmd BufNewFile,FileType java nnoremap <buffer> <C-P> :r ~/.vim/templates/java_setup.java<CR>i<BS><ESC>
autocmd Filetype java iabbrev <buffer> sout System.out.println(

autocmd BufNewFile,Filetype rs nnoremap <buffer> <C-P> :r ~/.vim/templates/rust_setup.rs<CR>i<BS><ESC>







autocmd BufNewFile,FileType html nnoremap <buffer> <C-P> :r ~/.vim/templates/html_setup.html<CR>i<BS><ESC>






