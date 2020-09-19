"        _                    
" __   _(_)_ __ ___  _ __ ___ 
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__ 
"   \_/ |_|_| |_| |_|_|  \___|
" 
" https://github.com/mudassir-ahmed/dotfiles
"                             

" Specify a directory for plugins.
call plug#begin('~/.vim/plugged')

" A solid language pack for Vim.
Plug 'sheerun/vim-polyglot'
let g:polyglot_disabled = ['vue']

" Java Syntax highlighting
Plug 'uiiaoo/java-syntax.vim'

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
\ 'js': 1,
\ 'javascript': 1,
\ 'javascriptreact': 1,
\}

" Fuzzy finder for vim - search for files.
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" GitHub color scheme
Plug 'endel/vim-github-colorscheme' 
Plug 'cormacrelf/vim-colors-github'

" Some more themes :) 
Plug 'reedes/vim-colors-pencil'
Plug 'rakr/vim-one'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'

" onehalf color scheme
Plug 'sonph/onehalf', {'rtp': 'vim/'}

" Atom one dark theme for vim.
" Plug 'joshdick/onedark.vim'
" Now in dotfiles

" Preview colours in source code for support languages while editing.
Plug 'ap/vim-css-color'

" Plugin for vim-airline.
Plug 'vim-airline/vim-airline'

" Plugin to use themes for vim-airline.
Plug 'vim-airline/vim-airline-themes'

" Add icons to plugins such as filetype for nerdtree and airline
Plug 'ryanoasis/vim-devicons'

" Plugin to repeat plugin maps with .
Plug 'tpope/vim-repeat'

" Plugin to manipulate surrounding vim objects 
Plug 'tpope/vim-surround'

" Plugin to add powerful commentary support
Plug 'tpope/vim-commentary'

" Plugin to have git integrated in vim
Plug 'tpope/vim-fugitive'

" GitHub provider for vim-fugitive
Plug 'tpope/vim-rhubarb'

" Plugin with useful mappings - consider using your own for adding newlines before and after the cursor line
Plug 'tpope/vim-unimpaired'

" Plugin to automatically detect indent settings.  This plugin adds a
" :DetectIndent command, which tries to intelligently set the 'shiftwidth',
" 'expandtab' and 'tabstop' options based upon the existing settings in use in
" the active file.
Plug 'ciaranm/detectindent'

" GitLab provider for vim-fugitive
Plug 'shumphrey/fugitive-gitlab.vim'

" Git commit browser
Plug 'junegunn/gv.vim'

" Automatically close strings and brackets and braces etc.
Plug 'jiangmiao/auto-pairs'

" Automatically adds 'ends' after ifs etc. e.g. case esac in bash 
" Plug 'tpope/vim-endwise'

" Better comments
Plug 'preservim/nerdcommenter'

" Community maintained snippets
Plug 'honza/vim-snippets'

" Plugin to add vim easymotion
Plug 'easymotion/vim-easymotion'

" Plugin to show tag list - :Tlist
Plug 'vim-scripts/taglist.vim'

" Changes Vim working directory to project root (identified by presence of
" known directory or file).
Plug 'airblade/vim-rooter'

" My vim plugin - open the GitHub page for your plugins
Plug 'mudassir-ahmed/vim-plug-browse'

" Allows you to add custom syntax highlighting to parts of a file
" Used to get styled-jsx for react projects working later
Plug 'inkarkat/vim-ingo-library'
Plug 'inkarkat/vim-SyntaxRange'

" Import cost
Plug 'yardnsm/vim-import-cost', { 'do': 'npm install' }

" Initialize plugin system.
call plug#end()

" Always set the curent file working directory to the project root
augroup vimrc_rooter
    autocmd VimEnter * :Rooter
augroup END

" Automatically detect indent and configure for each file
autocmd * BufWinEnter, BufRead DetectIndent

" Render vim-airline icons correctly
let g:airline_powerline_fonts = 1

Plug 'yardnsm/vim-import-cost', { 'do': 'npm install' }
" Automatically displays all buffers when there's only one tab open
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
let g:airline_symbols.branch = 'שׂ'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.whitespace = 'Ξ'
" let g:airline#extensions#tabline#formatter = 'unique_tail'
" https://github.com/vim-airline/vim-airline/issues/800
let g:airline_symbols.dirty = " "

" i3 syntax highlighting.
aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end

" Theme.
syntax on
let g:onedark_hide_endofbuffer=0
" let g:onedark_termcolors=256
let g:onedark_termcolors=16 " Use terminal emulator's native colors
let g:onedark_terminal_italics=0
let g:airline_theme='onedark'
colorscheme onedark


"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" Get styled-jsx syntax highlighting working in javascript files for React projects
" Please note it assumes SCSS
autocmd bufenter *.js call SyntaxRange#Include('<style', '/style>', 'scss')

" Toggle NERDTree.
map <C-n> :NERDTreeToggle<CR>

" Open coc-explorer
map <space>f :CocCommand explorer<CR>

" Close vim if only window left open is a NERDTree.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Change the default arrows.
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" GUI font
set guifont=Sauce\ Code\ Pro\ Nerd\ Font\ Semibold:h12

" Don't wrap long lines.
set nowrap

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

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$
 
" Map (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <leader>r :nohl<CR>:redraw!<CR>

" Search lines using fzf.vim
" nnoremap <space><space> :BLines<CR>
nnoremap <space><space> :Files<CR>

" To ALWAYS use the clipboard for ALL operations (instead of interacting with         
" the '+' and/or '*' registers explicitly)
set clipboard=unnamedplus

" Show all matching files when tab autocomplete
" instead of first match
set wildmenu

" Show (partial) command in the last line of the screen.
" And shows useful info in visual mode.
set showcmd

" Modelines
set modeline
set modelines=5

" Open new split panes to right and bottom
set splitbelow
set splitright

" Minimal number of screen lines to keep above and below the cursor.  
set scrolloff=4

" Spellchecking 
" zg to add to dictionary, zw to mark word as incorrect and
" z= to get suggestions to fix spelling mistake
" set spell spelllang=en

" esc in insert mode - jk cancel each other out in normal mode
inoremap kj <esc>
inoremap jk <esc>

" esc in command mode
cnoremap kj <C-C>
cnoremap jk <C-C>

" esc in terminal mode - return to 'normal' mode from terminal mode
tnoremap <Esc> <C-\><C-n>
tnoremap kj <C-\><C-n>
tnoremap jk <C-\><C-n>

" Stop using backspace in insert mode
inoremap <BS> <Nop>

" Stop using arrow keys in insert mode
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" Stop using arrow keys in normal mode
" nnoremap <Up> <Nop>
" nnoremap <Down> <Nop>
" nnoremap <Left> <Nop>
" nnoremap <Right> <Nop>
" Use arrow keys for navigating split faster
nnoremap <Up> <C-w><C-k>
nnoremap <Down> <C-w><C-j>
nnoremap <Left> <C-w><C-h>
nnoremap <Right> <C-w><C-l>

"make esc do nothing
"inoremap <Esc> <Nop>

" Quick way to move lines of text up or down (re-indents)
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Move around splits faster
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l

" Similar to live-server from vs-code
" https://browsersync.io/
" nnoremap <leader>ls :!browser-sync<CR>
nnoremap <leader>ls :terminal browser-sync start --server --files "*"<CR><C-^>

" Compile and run current java file
" Great for experimenting with a one file java program fast
function CompileAndRunJavaFile()
    exe "!javac" expand("%:t") "&& java" expand("%:t:r")
endfunction

command! RunJavaProgram call CompileAndRunJavaFile()

" Transparent background
hi! Normal ctermbg=NONE guibg=NONE

" Autofix some mistakes
cab W  w 
cab Wq wq  
cab wQ wq
cab WQ wq
cab Q  q

" Reload vimrc on save
" autocmd BufWritePost $MYVIMRC source $MYVIMRC
" autocmd BufWritePost .vimrc source ~/.vimrc " TODO: migrate to init.vim

" Allow saving of files as sudo when you forgot to start vim using sudo
cmap w!! w !sudo tee > /dev/null %wheel ALL=(ALL) NOPASSWD: ALL<C-w><C-h>
" cmap w!! w !sudo tee %

" Search for a local vimrc file named .vimrc-local
" and run what it contains before starting
if filereadable(".vimrc-local")
   :source .vimrc-local 
endif

" Neovim Specific {{{ 

" Make the yanked region apparent by highlighting it for a short period of time
" https://github.com/neovim/neovim/pull/12279
augroup highlight_yank
    autocmd!
    let HIGHLIGHT_DURATION = 100
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank("IncSearch", HIGHLIGHT_DURATION)
augroup END


" See real-time changes when using search and replace
" :%s/search/replace
if has('nvim')
    set inccommand=nosplit
endif

" }}}


" Configure fzf
let g:fzf_layout = { 'window': { 'width': 0.92, 'height': 0.9, 'border': 'sharp' } }

" let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,1 --preview 'bat --color=always --style=header,grid --line-range :300 {}'"
autocmd! FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()

" https://github.com/junegunn/fzf.vim/issues/162
let g:fzf_commands_expect = 'enter'

" https://github.com/junegunn/fzf.vim/issues/121#issuecomment-546360911
" RIPGrep
" Tell FZF to use RG - so we can skip .gitignore files even if not using
" :GitFiles search
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden'
" If you want gitignored files:
"let $FZF_DEFAULT_COMMAND = 'rg --files --no-ignore-vcs --hidden'


" Vim remember folds and view info like cursor position {{{

fun! LoadFileState()
    " Don't loadview on these file types
    if &ft =~ 'gitcommit\|git\|gittemplate\|COMMIT_EDITMSG'
        return
    endif
    silent! loadview
endfun

augroup remember_folds
    autocmd!
    " Check if it's a noraml buffer
    " otherwise causes issue with terminal buffer type
    autocmd BufWinLeave * 
        \   if &buftype == ''
        \|      mkview
        \|  endif

    autocmd BufWinEnter * call LoadFileState()
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

" Change between <..> i.e. use ci<
set matchpairs+=<:>

" No redraws in macros
set lazyredraw

" Enable termdebug - including gdb 
let g:termdebug_popup = 0
let g:termdebug_wide = 163
packadd termdebug

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Make <tab> used for trigger completion, completion confirm, snippet expand
" and jump like VSCode.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'


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
" FIXME: conflicts with go to last edited location
" nmap <silent> gi <Plug>(coc-implementation) 
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
nmap <F2> <Plug>(coc-rename)

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
" nmap <silent> <TAB> <Plug>(coc-range-select)
" xmap <silent> <TAB> <Plug>(coc-range-select)

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

" Stop automated comments when moving to a new line
autocmd FileType * setlocal formatoptions-=cro

" You can use :Prettier to format current buffer
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Set up Jest

" Run jest for current project
command! -nargs=0 Jest :call  CocAction('runCommand', 'jest.projectTest')

" Run jest for current file
command! -nargs=0 JestCurrent :call  CocAction('runCommand', 'jest.fileTest', ['%'])

" Run jest for current test
nnoremap <leader>te :call CocAction('runCommand', 'jest.singleTest')<CR>

" Init jest in current cwd, require global jest command exists
command! JestInit :call CocAction('runCommand', 'jest.init')<CR>

" }}}
