" Automatic installation.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins.
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes.

" A solid language pack for Vim.
Plug 'sheerun/vim-polyglot'

" Plugin to show git diff in gutter.
Plug 'airblade/vim-gitgutter'
 
" Goyo plugin - distraction free vim.
Plug 'junegunn/goyo.vim'

" Nerdtree shows tree view of filesystem.
Plug 'scrooloose/nerdtree'

" Fuzzy finder for vim - search for files.
" Plug 'junegunn/fzf'

" GitHub color scheme
Plug 'endel/vim-github-colorscheme' 

" Atom one dark theme for vim.
Plug 'joshdick/onedark.vim'

" Preview colours in source code for support languages while editing.
Plug 'ap/vim-css-color'

" Emmet plugin for vim.
Plug 'mattn/emmet-vim'

" Plugin for vim-airline.
Plug 'vim-airline/vim-airline'

" Plugin to use themes for vim-airline.
Plug 'vim-airline/vim-airline-themes'

" Plugin to manipulate surrounding vim objects 
Plug 'tpope/vim-surround'

" Plugin to add powerful commetary support
Plug 'tpope/vim-commentary'

" Initialize plugin system.
call plug#end()

" i3 syntax highlighting.
aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end

" Theme.
syntax on
let g:onedark_hide_endofbuffer=0
let g:onedark_termcolors=256
let g:onedark_terminal_italics=1
let g:airline_theme='onedark'
colorscheme onedark

" Toggle NERDTree.
map <C-n> :NERDTreeToggle<CR>

" Close vim if only window left open is a NERDTree.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Change the default arrows.
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Enable emmet for just for html/css
" let g:user_emmet_install_global = 0
" autocmd FileType html,css EmmetInstall

" Always wrap long lines.
set wrap

" Show line numbers relatively.
set number relativenumber

" 80 characters indication.
" http://vimdoc.sourceforge.net/htmldoc/options.html#'colorcolumn'
set colorcolumn=80

" Customise indentation.
" Defines the number of spaces that a tab character in the file counts for.
set tabstop=4
" Replace tabs by whitespace characters.
set expandtab
" Tabs equal to 4 white space characters when using '>'.
set shiftwidth=4

" Search subfolders
set path+=**

" Show all matching files when tab autocomplete
" instead of first match
set wildmenu

" Show (partial) command in the last line of the screen.
" And shows useful info in visual mode.
set showcmd

"make jj do esc
inoremap jj <Esc>

" Stop using backspace in insert mode
inoremap <BS> <Nop>

" Stop using arrow keys in insert mode
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

"make esc do nothing
"inoremap <Esc> <Nop>

" Search for a local vimrc file named .vimrc-local
" and run what it contains before starting
if filereadable(".vimrc-local")
   :source .vimrc-local 
endif


