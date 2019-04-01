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

" Initialize plugin system.
call plug#end()

" i3 syntax highlighting.
aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end

" Theme.
syntax on
colorscheme onedark

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

" Show (partial) command in the last line of the screen.
" And shows useful info in visual mode.
set showcmd

" ALSO USED:
" https://github.com/joshdick/onedark.vim
