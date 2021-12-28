"---------------------------------VIM CONFIGURATION----------------------------
syntax on

filetype plugin indent on

set nocompatible
set mouse=a
set number
set numberwidth=1
set relativenumber
set clipboard=unnamed
set background=dark
set encoding=utf-8
set showcmd
set autowrite
set ruler
set noshowmode
set showmatch 
set sw=2
let mapleader = " "
set laststatus=2
set backspace=2
set guioptions-=T
set guioptions-=L

set incsearch
set colorcolumn=120
set backspace=indent,eol,start
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Highlight search results when using /
set hlsearch


imap jk <Esc>
imap <C-c> <Esc>l
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv 
vnoremap < <gv
vnoremap > >gv
nnoremap <silent> <C-left> :wincmd h<CR>
nnoremap <silent> <C-right> :wincmd l<CR>
nnoremap <silent> <C-up> :wincmd k<CR> 
nnoremap <silent> <C-down> :wincmd j<CR>

" Seleccionar todo
map <C-a> <esc>ggVG<CR>

call plug#begin()

"Themes
Plug 'morhetz/gruvbox'
  Plug 'katawful/kat.vim'
  Plug 'ayu-theme/ayu-vim'
  Plug 'sainnhe/gruvbox-material'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }


Plug 'arzg/vim-colors-xcode'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'OmniSharp/omnisharp-vim'
Plug 'mhinz/vim-signify'
Plug 'nickspoons/vim-sharpenup'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'vim-scripts/dbext.vim'
Plug 'dyng/ctrlsf.vim'

"Indent Line
Plug 'Yggdroot/indentLine'

"ICONS
Plug 'ryanoasis/vim-devicons'

"Lightline
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'josa42/vim-lightline-coc'

"COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"SYTAXYS 
Plug 'sheerun/vim-polyglot'

"NERD COMMENTER
Plug 'preservim/nerdcommenter' 

"VIM PAIRS
Plug 'jiangmiao/auto-pairs'

" RUST 
Plug 'rust-lang/rust.vim'

"PYTHON SINTAX
Plug 'jeetsukumaran/vim-pythonsense'

"vim go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"RAINBOW PARENTHESIS
Plug 'kien/rainbow_parentheses.vim'

"MULTIPLY CURSORS
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"UTILITIES
Plug 'tpope/vim-fugitive'

"TERMINAL
Plug 'voldikss/vim-floaterm'

"Clap Filer
Plug 'liuchengxu/vim-clap', { 'do': { -> clap#installer#force_download() } }
 
"" Github Copilot
Plug 'github/copilot.vim'

"" WakaTime
Plug 'wakatime/vim-wakatime'

"" Dart Languaje
Plug 'dart-lang/dart-vim-plugin'

"" Dart/Flutter
Plug 'thosakwe/vim-flutter'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'

" vim-vsnip
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

" Add VSCode Plugins
Plug 'Neevash/awesome-flutter-snippets'

" React Native code snippets
Plug 'tellijo/vim-react-native-snippets'

call plug#end()


"--------------------------------------------Enable Flutter Menu
" call FlutterMenu()

" Some of these key choices were arbitrary;
" it's just an example.
nnoremap <leader>fa :FlutterRun<cr>
nnoremap <leader>fq :FlutterQuit<cr>
nnoremap <leader>fr :FlutterHotReload<cr>
nnoremap <leader>fR :FlutterHotRestart<cr>
nnoremap <leader>fD :FlutterVisualDebug<cr>


" Add key-bindings:

imap <expr> <C-j>   vsnip#available(1)  ? '<Plug>(vsnip-expand)'         : '<C-j>'
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

let g:dart_format_on_save = 1

let g:dartfmt_options = ['--fix', '--line-length 120']

"--------------------------------------------SHORTCUTS PLUGINS AND VIM
set encoding=UTF-8
set ft=javascript

nnoremap <leader>fe :CocCommand flutter.emulators <CR>
nnoremap <leader>fd :below new output:///flutter-dev <CR>
nnoremap <leader>w :w <CR>
nnoremap <C-w> :q <CR>
nnoremap <leader>q :q <CR>
nnoremap <leader>so :so%<CR>
nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-TAB> :bprevious<CR>
nnoremap <leader>bd :bdelete<CR>

"---------------------------------------------THEME CONFIG

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
let g:gruvbox_material_palette = 'mix'
let g:kat_theme = "dark"
let g:gruvbox_material_cursor = 'orange'
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_disable_italic_comment = 1
let g:gruvbox_contrast_dark = 'hard'
let ayucolor="dark"


 " colorscheme gruvbox
" use awesome Xcode dark color scheme (for some reason this only works if I specify it at the end of the file)
colorscheme xcodedark



 "-------------------------------------------------LIGHTLINE CONFIG

let g:lightline = {
    \'colorscheme':'ayu',
    \ 'active': {
    \   'tabline': 0,
    \   'left': [['mode', 'paste'], ['gitbranch'], ['readonly', 'filename', 'modified']],
    \   'right': [['coc_status'], [  'coc_info', 'coc_hints', 'coc_errors', 'coc_warnings', 'coc_ok' ] ,['filetype', 'percent', 'lineinfo'], ['signify']]
    \ },
    \ 'inactive': {
    \   'left': [['inactive'], ['gitbranch'], ['relativepath'], ['signify']],
    \   'right': [['bufnum']]
    \ },
    \ 'component': {
    \   'bufnum': '%n',
    \   'inactive': 'inactive'
    \ },
    \ 'component_function': {
    \   'gitbranch': 'gitbranch#name',
    \   'readonly': 'LightlineReadonly',
    \   'filetype': 'MyFiletype',
    \   'filename': 'MyFileName',
    \ },
    \ 'component_type': {
    \   'buffers': 'tabsel',
    \   'linter_warnings': 'warning',
    \   'linter_errors': 'error',
    \   'linter_info': 'info',
    \   'linter_hints': 'hints',
    \   'linter_ok': 'left', 
    \ },
    \ 'subseparator': {
    \   'left': '',
    \   'right': ''
    \ },
    \ 'tab_component_function': {
    \   'tabnum': 'LightlineWebDevIcons',
    \ },
    \}
" Lightline settings
autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()

let g:lightline#hunks#hunk_symbols = [ '+', '~', '-' ]
let g:lightline#hunks#only_branch = 1
let g:lightline#hunks#exclude_filetypes = [ 'explorer' ]

function! LightlineReadonly()
    return &readonly && &filetype !=# 'help' ? '' : ''
endfunction

function! MyFiletype()
    return strlen(&filetype) ? WebDevIconsGetFileTypeSymbol().' '.&filetype : 'no ft'
endfunction

function! MyFileName()
    return WebDevIconsGetFileTypeSymbol().' '.expand('%:t')
endfunction

function! LightlineWebDevIcons(n)
  let l:bufnr = tabpagebuflist(a:n)[tabpagewinnr(a:n) - 1]
  return WebDevIconsGetFileTypeSymbol(bufname(l:bufnr))
endfunction

set showtabline=2

let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#enable_nerdfont = 1

set noshowmode

call lightline#coc#register()

"------------------------------------------------VIML CONFIG

let g:markdown_fenced_languages = [
      \ 'vim',
      \ 'help'
      \]

"------------------------------------------------COC-PRETTIER

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

"-------------------------------------------GLOBAL COC EXPLORER EXTENSIONS

" let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-pyright', 'coc-explorer', 'coc-go']

"-------------------------------------------------RAINBOW PARENTHESIS

let g:rbpt_colorpairs = [
    \ ['brown',       'Gold'],
    \ ['Darkblue',    'Orchid'],
    \ ['darkgray',    'LightSkyBlue'],
    \ ['darkgreen',   'Gold'],
    \ ['darkcyan',    'Orchid'],
    \ ['darkred',     'LightSkyBlue'],
    \ ['darkmagenta', 'Gold'],
    \ ['brown',       'Orchid'],
    \ ['gray',        'LightSkyBlue'],
    \ ['black',       'Gold'],
    \ ['darkmagenta', 'Orchid'],
    \ ['Darkblue',    'LightSkyBlue'],
    \ ['darkgreen',   'Gold'],
    \ ['darkcyan',    'Orchid'],
    \ ['darkred',     'LightSkyBlue'],
    \ ['red',         'Gold'],
    \ ]

let g:rbpt_max = 16

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"------------------------------------------------COC EXPLORER CONFIG

let g:loaded_netrw  = 1
let g:loaded_netrwPlugin = 1
let g:loaded_netrwSettings = 1
let g:loaded_netrwFileHandlers = 1
let g:loaded_matchit = 1

let g:coc_explorer_global_presets = {
\   '.vim': {
\     'root-uri': '%APPDATA%\Local\nvim',
\   },
\   'cocConfig': {
\      'root-uri': '%APPDATA%\Local\nvim\coc-settings.json',
\   },
\   'tab': {
\     'position': 'right',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   },
\   'buffer': {
\     'sources': [{'name': 'buffer', 'expand': v:true}]
\   },
\   'git': {
\     'sources': [{'name': 'git', 'expand': v:true}]
\   },
\ }

autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

augroup coc-explorer
  if @% == '' || @% == '.'
    autocmd User CocNvimInit bd
    autocmd User CocNvimInit CocCommand explorer
  endif
augroup END

if exists('#User#CocGitStatusChange')
  doautocmd <nomodeline> User CocGitStatusChange
endif

nnoremap <leader>n :CocCommand explorer<CR>

nnoremap <leader>p :CocCommand explorer --preset floating<CR> 

"-------------------------------------------SHORTCUTS AND CONFIGS

let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:multi_cursor_use_default_mapping=1
 
nnoremap <leader>t :FloatermToggle<CR>

"------------------------------VIM GOLANG

let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1

let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"

let g:go_auto_type_info = 1

function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)

"----------------------------------------------------- VIM CLAP

let g:clap_popup_cursor_shape       = ''
let g:clap_enable_background_shadow = v:true
let g:clap_current_selection_sign   = { 'text': '» ', 'texthl': 'ClapCurrentSelectionSign', 'linehl': 'ClapCurrentSelection' }
let g:clap_selected_sign            = { 'text': ' »', 'texthl': 'ClapSelectedSign', 'linehl': 'ClapSelected' }
let g:clap_prompt_format            = ' %spinner%%forerunner_status%%provider_id%:'
let g:clap_insert_mode_only   = v:true
let g:clap_disable_run_rooter = v:true
let g:clap_spinner_winid = 1011

nnoremap <leader>f :Clap filer<CR>
nnoremap <leader>c :Clap gfiles<CR>
nnoremap <leader>m :Clap commits<CR>


"------------------------------------------------- COC CONFIG

set nobackup
set cmdheight=2
set nowritebackup
set hidden
set shortmess+=c
set updatetime=300

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
xmap <leader>f  <Plug>(coc-format-selected)
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

nmap <leader>f  <Plug>(coc-format-selected)
autocmd CursorHold * silent call CocActionAsync('highlight')



let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-flutter',
  \ 'coc-snippets',
  \ 'coc-yaml',
  \ 'coc-tslint-plugin',
  \ 'coc-tsserver',
  \ 'coc-emmet',
  \ 'coc-css',
  \ 'coc-html',
  \ 'coc-json',
  \ 'coc-go',
  \ 'coc-rust',
  \ 'coc-explorer',
  \ 'coc-pyright',
  \ 'coc-sql',
  \ 'coc-java',
  \ 'coc-javascript',
  \ ]


" ========= airline settings start ======================

" to see the full path of the editing file
let g:airline#extensions#tabline#formatter = 'unique_tail'

" show branch information
let g:airline#extensions#branch#enabled = 1
let g:airline_theme='badwolf'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

let g:airline#extensions#tabline#enabled = 1


" ========= airline settings end ========================

" =============== OmniSharp settings start===============
" OmniSharp won't work without this setting
filetype plugin on

" Use Roslyin and also better performance than HTTP
let g:OmniSharp_server_stdio = 1
let g:omnicomplete_fetch_full_documentation = 1

" Timeout in seconds to wait for a response from the server
let g:OmniSharp_timeout = 30

" this will make it so any subsequent C# files that you open are using the same solution and you aren't prompted again (so you better choose the right solution the first time around :) )
let g:OmniSharp_autoselect_existing_sln = 1

let g:OmniSharp_popup_options = {
\ 'highlight': 'Normal',
\ 'padding': [1],
\ 'border': [1]
\}


" =================vim Sharpenup settings start==========
" note that using CTRL isn't feasible so we will use z instead, I chose z because it's the closest key to left ctrl
let g:sharpenup_map_prefix = '.'
" =================vim Sharpenup settings end============

" ================ dyng/ctrlsf.vim settings start ==============
" Ctrl + f, f
nmap <C-F>f <Plug>CtrlSFPrompt
" ================ dyng/ctrlsf.vim settings end ================

" Bookmarks:
" It's best to use vim's native bookmarks:
" https://www.thegeekstuff.com/2009/02/how-to-add-bookmarks-inside-vi-and-vim-editor/
" I personally use numbers because they are easier to remember and are global

" fix colors
set t_Co=256


"Disable unsafe commands since we are allowing project specific .vimrc file execution
set secure
