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
let g:polyglot_disabled = ['vue']

" Coc is an intellisense engine for Vim/Neovim.
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Better syntax highlighting for vue
Plug 'posva/vim-vue'
let g:vue_pre_processors = 'detect_on_enter'

" Plugin to show git diff in gutter.
Plug 'airblade/vim-gitgutter'
 
" Goyo plugin - distraction free vim.
Plug 'junegunn/goyo.vim'

" NERDTree shows tree view of filesystem.
Plug 'scrooloose/nerdtree'
let NERDTreeShowHidden=1

" Add icons to plugins such as filetype for nerdtree and airline
Plug 'ryanoasis/vim-devicons'

" Make the icons in NERDTree have a nice color
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Always match closing markup tags
Plug 'Valloric/MatchTagAlways'
let g:mta_filetypes = {
\ 'html' : 1,
\ 'xhtml' : 1,
\ 'xml' : 1,
\ 'jinja' : 1,
\ 'vue': 1,
\}

" Fuzzy finder for vim - search for files.
" Plug 'junegunn/fzf'

" GitHub color scheme
Plug 'endel/vim-github-colorscheme' 

" onehalf color scheme
Plug 'sonph/onehalf', {'rtp': 'vim/'}

" Atom one dark theme for vim.
Plug 'joshdick/onedark.vim'

" Preview colours in source code for support languages while editing.
Plug 'ap/vim-css-color'

" Emmet plugin for vim.
Plug 'mattn/emmet-vim'

" Plugin for vim-airline.
Plug 'vim-airline/vim-airline'

" To get the search count on airline
Plug 'osyo-manga/vim-anzu'

" Plugin to use themes for vim-airline.
Plug 'vim-airline/vim-airline-themes'

" Plugin to manipulate surrounding vim objects 
Plug 'tpope/vim-surround'

" Plugin to add powerful commetary support
Plug 'tpope/vim-commentary'

" Plugin to have git integrated in vim
Plug 'tpope/vim-fugitive'

" Automatically close strings and brackets and braces etc.
Plug 'jiangmiao/auto-pairs'

" Automatically adds 'ends' after ifs etc. e.g. case esac in bash 
" Plug 'tpope/vim-endwise'

" Plugin to add vim easymotion
Plug 'easymotion/vim-easymotion'

" Check syntax in Vim asynchronously and fix files,
" with Language Server Protocol (LSP) support
Plug 'dense-analysis/ale'
let g:ale_javascript_prettier_use_local_config = 1
" To have ALE run Prettier on save
let g:ale_fix_on_save = 1
" ALE will try to use Prettier installed locally before looking for a global installation.
" Enable the Prettier fixer for the languages you use:
" Fix javascript files with prettier, and then ESLint.
let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint'],
\   'vue': ['prettier', 'eslint'],
\   'css': ['prettier'],
\   'json': ['fixjson']
\}
" to set up json lint use `npm install -g jsonlint` - ALE will do the rest
" to set up a fixer for json use `npm install -g fixjson`
" see :h ale-json-options for more details
" Use :h ale-supported-list to find language support

" Enable prettier for all supported formats
" Plug 'prettier/vim-prettier', { 'do': 'npm install' }

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
let g:onedark_terminal_italics=0
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

" Copy the structure of the existing lines indent when autoindenting a new line.
set copyindent

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

" Spellchecking 
" zg to add to dictionary, zw to mark word as incorrect and
" z= to get suggestions to fix spelling mistake
" set spell spelllang=en

"make jj do esc
inoremap jj <Esc>

" Stop using backspace in insert mode
inoremap <BS> <Nop>

" Stop using arrow keys in insert mode
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" Stop using arrow keys in normal mode
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

"make esc do nothing
"inoremap <Esc> <Nop>

" Search for a local vimrc file named .vimrc-local
" and run what it contains before starting
if filereadable(".vimrc-local")
   :source .vimrc-local 
endif

" Neovim Specific {{{ 

" See real-time changes when using search and replace
" :%s/search/replace
if has('nvim')
    set inccommand=nosplit
endif

" }}}

" Vim remember folds and last position of cursor automatically {{{

augroup remember_folds
    autocmd!
    autocmd BufWinLeave * mkview
    autocmd BufWinEnter * silent! loadview
augroup END

" }}}

" COC plugin config {{{

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" }}}

" Stop automated comments when moving to a new line
autocmd FileType * setlocal formatoptions-=cro
