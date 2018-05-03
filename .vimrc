set nocompatible               " be iMproved
filetype off                   " required!
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Launch vim, run :BundleInstall to install plugins
" let Vundle manage Vundle
" required! 
"Plugin 'VundleVim/Vundle.vim'
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'ervandew/supertab'
Bundle 'ervandew/screen'
" Bundle 'Lokaltog/vim-easymotion'
Bundle 'danro/rename.vim'
Bundle 'tomtom/tcomment_vim'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-surround'
Bundle 'rking/ag.vim'
Bundle 'mileszs/ack.vim'
Bundle 'ilake/vim-tslime'
Bundle 'airblade/vim-gitgutter'
Bundle 'godlygeek/tabular'
Bundle 'koron/nyancat-vim'
Bundle 'kien/ctrlp.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'claco/jasmine.vim'
Bundle 'mhinz/vim-startify'
Bundle 'majutsushi/tagbar'
" Bundle 'othree/coffee-check.vim'
"Bundle 'LnL7/vim-tslime'
" Bundle 'kikijump/tslime.vim'
Bundle 'ilake/vim-turbux'
Bundle 'slim-template/vim-slim'
Bundle 'terryma/vim-multiple-cursors'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'JavaScript-syntax'
Bundle 'vimwiki'
Bundle 'vim-scripts/VisIncr'
Bundle 'vim-scripts/ctags.vim'
Bundle 'vim-scripts/SingleCompile'
Bundle 'vim-scripts/Align'
" state machine compiler
Bundle 'jayferd/ragel.vim'
" Bundle "plasticboy/vim-markdown"
Bundle 'AndrewRadev/switch.vim'
" Bundle 'Keithbsmiley/rspec.vim'
Bundle 'pangloss/vim-javascript'
" Bundle 'vim-ruby/vim-ruby'
Bundle 'hSATAC/rspec.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
Bundle 'othree/html5.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'kana/vim-smartinput'
Bundle 'juvenn/mustache.vim'
Bundle 'sjl/gundo.vim'
Bundle 'greyblake/vim-preview'
Bundle 'terryma/vim-expand-region'
Bundle 'mattn/emmet-vim.git'
Bundle 'tpope/vim-haml'
Bundle 'mxw/vim-jsx'
Bundle 'isRuslan/vim-es6'
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/vimproc.vim'
Bundle 'tomlion/vim-solidity'
Bundle 'leafgarland/typescript-vim'
Bundle 'scrooloose/nerdtree'


" http://stackoverflow.com/questions/1764263/what-is-the-leader-in-a-vimrc-file
" let mapleader=","
let mapleader = "\<Space>"

" Index ctags from any project, including those outside Rails
map <Leader>ct :!ctags -R .<CR>

" ENCODING SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1
set ffs=unix,mac,dos
set background=dark

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FONT AND COLOR SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme lake
set gfn=Source\ Code\ Pro\ Light:h14

:set t_Co=256 " 256 colors
:set background=dark

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EASIER SPLIT NAVIGATIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BASIC EDITING CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" allow unsaved background buffers and remember marks/undo for them
set hidden             " Hide buffers when they are abandoned
set autowrite           " Automatically save before commands like :next and :make
" remember more commands and search history
set history=10000
set viminfo='20,\"50    " read/write a .viminfo file, don't store more than
                        " 50 lines of registers
set textwidth=0         " Don't wrap lines by default
set expandtab
set tabstop=4
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set wrap
set laststatus=2
set showmatch           " Show matching brackets.
set incsearch           " Incremental search
set hlsearch
" make searches case-sensitive only if they contain upper-case characters
" set ignorecase smartcase
" insert tabs on the start of a line according to context
set smarttab
set switchbuf=useopen
set numberwidth=5
set winwidth=79
" disable sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
" show the cursor wposition all the time
set ruler
" auto read when file is changed from outsideyy
set autoread
" This makes RVM work inside Vim. I have no idea why.
set shell=zsh
" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
" set t_ti= t_te=
" keep more context when scrolling off the end of a buffer
" set scrolloff=7
" Store temporary files in a central spot
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set whichwrap+=<,>,h,l
" display incomplete commands
set showcmd
" For regular expressions turn magic on
set magic
" Enable highlighting for syntax
syntax on
" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on
" use emacs-style tab completion when selecting files, etc
" set wildmode=longest,list
" make tab completion for files/buffers act like bash
set wildmenu
" set folding method by syntax
set foldmethod=syntax
set foldlevelstart=20
set colorcolumn=80

" Display extra whitespace
set list listchars=tab:»·,trail:·

set splitbelow
set splitright

augroup myfiletypes
  autocmd BufNewFile,BufRead *.rl               set ft=ragel
  autocmd BufNewFile,BufRead *.json             set ft=javascript
  " make CSS omnicompletion work for SASS and SCSS
  autocmd BufNewFile,BufRead *.json             set ft=javascript
  autocmd BufNewFile,BufRead *.coffee           set ft=coffee
  autocmd! BufNewFile,BufRead *.scss,*.sass      set ft=scss.css
  autocmd BufNewFile,BufRead Gemfile set filetype=ruby
  autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
  "autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/vim-addons/github-docunext-closetag.vim/plugin/closetag.vim
  autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&gt;
  autocmd BufRead *.markdown  set ai formatoptions=tcroqn2 comments=n:&gt;

    "for ruby, autoindent with two spaces, always expand tabs
  autocmd FileType ruby,haml,eruby,yaml,html,javascript,coffee,sass,cucumber set ai sw=2 sts=2 et
  autocmd FileType python set sw=4 sts=4 et
  autocmd Filetype gitcommit setlocal spell textwidth=72
augroup END

augroup vimrcEx
  autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CUSTOM FILE COMMANDS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! -nargs=1 F setf <args>
command! Fj setf javascript

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PROMOTE VARIABLE TO RSPEC LET
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! PromoteToLet()
  :normal! dd
  " :exec '?^\s*it\>'
  :normal! P
  :.s/\(\w\+\) = \(.*\)$/let(:\1) { \2 }/
  :normal ==
endfunction
:command! PromoteToLet :call PromoteToLet()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PROMOTE VARIABLE TO RSPEC Given
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! PromoteToGiven()
  :normal! dd
  " :exec '?^\s*it\>'
  :normal! P
  :.s/\(\w\+\) = \(.*\)$/Given(:\1) { \2 }/
  :normal ==
endfunction
:command! PromoteToGiven :call PromoteToGiven()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PROMOTE VARIABLE TO RSPEC When
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! PromoteToWhen()
  :normal! dd
  " :exec '?^\s*it\>'
  :normal! P
  :.s/\(\w\+\) = \(.*\)$/When(:\1) { \2 }/
  :normal ==
endfunction
:command! PromoteToWhen :call PromoteToWhen()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SET RSPEC TESTING FOCUS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! SetFocus()
  :.s/\(.*\) do/\1, :focus => true do
  :w
endfunction
:command! SetFocus :call SetFocus()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SET RSPEC TESTING FOCUS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RemoveFocus()
  :.s/\(.*\), \?:focus => true do/\1 do
endfunction
:command! RemoveFocus :call RemoveFocus()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Inspect Variable
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! PrintVariable()
  :.s/\(\s*\)\(.*\)$/\1ap "=== \2 === "\r ap \2\r/
  :w
endfunction
:command! PrintVariable :call PrintVariable()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Rails Logger Variable
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RailsLoggerVariable()
  :.s/\(\s*\)\(.*\)$/\1Rails.logger.info "==\2===== #{\2} === "\r/
  :w
endfunction
:command! RailsLoggerVariable :call RailsLoggerVariable()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SWITCH BETWEEN TEST AND PRODUCTION CODE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! OpenTestAlternate()
  let new_file = AlternateForCurrentFile()
  exec ':e ' . new_file
endfunction
function! AlternateForCurrentFile()
  let current_file = expand("%")
  let new_file = current_file
  let in_spec = match(current_file, '^spec/') != -1
  let going_to_spec = !in_spec
  let in_app = match(current_file, '\<controllers\>') != -1 || match(current_file, '\<models\>') != -1 || match(current_file, '\<views\>') != -1 || match(current_file, '\<helpers\>') != -1
  if going_to_spec
    if in_app
      let new_file = substitute(new_file, '^app/', '', '')
    end
    let new_file = substitute(new_file, '\.rb$', '_spec.rb', '')
    let new_file = 'spec/' . new_file
  else
    let new_file = substitute(new_file, '_spec\.rb$', '.rb', '')
    let new_file = substitute(new_file, '^spec/', '', '')
    if in_app
      let new_file = 'app/' . new_file
    end
  endif
  return new_file
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RENAME CURRENT FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction


let s:tagfile = "tags"

let s:taglist = &tags
let s:dname = getcwd()
while isdirectory(s:dname)
    let s:fname = s:dname."/".s:tagfile
    if filereadable(s:fname)
        let s:taglist = s:taglist.",".s:fname
    endif
    let s:dname = strpart(s:dname, 0, strridx(s:dname, "/"))
endwhile
execute 'set tags='.s:taglist

" 可以找到對應的括號或scope 符號 do end
runtime! macros/matchit.vim

" 使用以下命令，可以在Normal Mode和Visual/Select Mode下，利用Tab键和Shift-Tab键來做縮排：
nmap <tab> V>
nmap <s-tab> V<
xmap <tab> >gv
xmap <s-tab> <gv

" http://www.vim.org/scripts/script.php?script_id=163
" autocmd Filetype ruby source ~/.vim/ftplugin/ruby-macros.vim

" http://adzdavies.blogspot.com/2006/07/vim-70-autocomplete-with-rails.html
let g:rubycomplete_rails = 1

" http://www.economyofeffort.com/2012/03/01/fixing-slow-vim-auto-completion-with-ruby-files/
set foldmethod=indent

" http://www.vim.org/scripts/script.php?script_id=2981
let g:user_zen_expandabbr_key = '<c-j>'
let g:use_zen_complete_tag = 1


" http://blog.longwin.com.tw/2009/02/vim-tree-explorer-nerdtree-plugin-200/
" nnoremap <silent> <F1> :NERDTree<CR>
" nmap <F1> :NERDTree<CR>
nmap <F1> :NERDTreeToggle<CR>
imap <F1> <Esc>:NERDTreeToggle<CR>a


" http://vim.wikia.com/wiki/File_search_similar_to_cmd-t_in_TextMate
" Find the file in the project
nmap <F2> :FufFile **/<CR>

:noremap <F3> :set paste! paste?<CR>

" http://vim.wikia.com/wiki/Highlight_all_search_pattern_matches
:noremap <F4> :set hlsearch! hlsearch?<CR>

:noremap <F5> :set nu! nu?<CR>

:noremap <F6> :b#<CR>

:noremap <F7> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

:noremap <F8> :bnext<CR>
:noremap <F9> :qa<CR>



" http://vim.wikia.com/wiki/Alternative_tab_navigation
nnoremap <S-t> :tabnew<CR>
nnoremap <S-h> gT
nnoremap <S-l> gt

au BufRead,BufNewFile *.scss set filetype=scss
" add jbuilder syntax highlighting
au BufNewFile,BufRead *.jbuilder set filetype=ruby
au BufNewFile,BufRead *.json set filetype=ruby

set noswapfile

" https://github.com/mxw/vim-jsx
let g:jsx_ext_required = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" STATUS LINE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SYSTEM COPY PASTE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
" nmap <C-v> :call setreg("\"",system("pbpaste"))<CR>p  Actually it could use
" cmd+v

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-align
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! -range AlignHash execute "<line1>,<line2>Align! Wlp1P0 :" | execute "<line1>,<line2>Align! p1P1 =>"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" rails.vim nav mapping
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://gist.github.com/logankoester/1262714
" autocmd User Rails Rnavcommand features spec/features
" autocmd User Rails Rnavcommand presenters app/presenters
" autocmd User Rails Rnavcommand reports app/models/reports
let g:rails_projections = {
      \ "app/presenters/*.rb": { "command": "presenters" },
      \ "app/serializers/*.rb": { "command": "serializers" },
      \ "app/observers/*.rb": { "command": "observers" },
      \ "app/workers/*.rb": { "command": "workers" },
      \ "app/reports/*.rb": { "command": "reports" },
      \ "app/queries/*.rb": { "command": "queries" },
      \ "app/validators/*.rb": { "command": "validators" },
      \ "app/extras/form_object/*.rb": {"command": "forms"},
      \ "app/forms/*.rb": {"command": "forms"},
      \ "app/extras/service/*.rb": {"command": ["services", "forms", "models"]},
      \ "app/extras/view_object/*.rb": {"command": "views"},
      \ "app/models/fields/*.rb": {"command": "fields"},
      \ "app/models/fields_data/*.rb": {"command": "fields"},
      \ "app/models/concerns/*.rb": {"command": ["cerns"]},
      \ "app/models/reports/*.rb": {"command": "reports"},
      \ "spec/factories.rb": {"command": "factories"},
      \ "spec/factories/*.rb": {"command": "factories"},
      \ "spec/factories/fields/*.rb": {"command": "factories"},
      \ "spec/features/*.rb": {"command": "features"},
      \ "spec/support/*.rb": {"command": "supports"},
      \ "lib/tasks/*.rake": {"alternate": ["spec/lib/tasks/%s.rake_spec.rb"]},
      \ "app/assets/javascripts/*.js.coffee": {"alternate": ["spec/javascripts/%s_spec.js.coffee"]},
      \ "spec/javascripts/*_spec.js.coffee": {"alternate": ["app/assets/javascripts/%s.js.coffee"]}
      \ }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tabular config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gitgutter config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://github.com/airblade/vim-gitgutter
let g:gitgutter_enabled = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search Dash for word under cursor
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! SearchDash()
  let s:browser = "/usr/bin/open"
  let s:wordUnderCursor = expand("<cword>")
  let s:url = "dash://".s:wordUnderCursor
  let s:cmd ="silent ! " . s:browser . " " . s:url
  execute s:cmd
  redraw!
endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-multi-cursor
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_exit_from_insert_mode = 0


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctrlp
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    let g:ctrlp_regexp = 1
    let g:ctrlp_match_window_reversed = 0
    let g:ctrlp_prompt_mappings = { 'PrtAdd(".*")': ['<space>'] }
    let g:ctrlp_user_command = {
                \ 'types': {
                \ 1: ['.git', 'cd %s && git ls-files -c -o'],
                \ 2: ['.hg', 'hg --cwd %s locate -I .'],
                \ },
                \ 'fallback': 'find %s -type f'
                \ }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-turbux
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    let g:no_turbux_mappings = 1
    let g:turbux_runner  = 'tslime'

    let g:turbux_command_rspec  = 'rspec'        " default: rspec


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" coffee-check.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:coffeeCheckHighlightErrorLine = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" switch.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Switch between the last two files
nnoremap - :Switch<cr>




" Open/Create related spec/file
function! s:CreateRelated()
  let related = s:GetRelatedFile(expand('%'))
  call s:Open(related)
endfunction

" Return the related filename
function! s:GetRelatedFile(file)
  if match(a:file, '_spec\.rb$') != -1
    return substitute(substitute(a:file, "_spec.rb$", ".rb", ""), '^spec/', 'app/', '')
  else
    return substitute(substitute(a:file, ".rb$", "_spec.rb", ""), '^app/', 'spec/', '')
  endif
endfunction

" Open the related file in a vsplit
function! s:Open(file)
  exec('split ' . a:file)
endfunction

" Register a new command `AC` for open/create a related file
command! AC :call <SID>CreateRelated()


" Created compiled js file
function! s:Coffee2Js()
  let current_coffee = expand('%')
  let filename = substitute(expand('%:t'), ".coffee$", "", "")
  exec('! coffee -co /tmp ' . current_coffee)
  exec('split /tmp/' . filename . '.js')
endfunction
"
" Register a new command `C2J` for compile coffee to a js file
command! C2J :call <SID>Coffee2Js()


let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 5
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=232
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=233


" emmet-vim Enable just for html/css
" let g:user_emmet_install_global = 0
" autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-M>'
nnoremap <leader>m <C-M>


:map <leader>l :PromoteToLet<cr>
:map <leader>g :PromoteToGiven<cr>
:map <leader>w :PromoteToWhen<cr>
:map <leader>f :SetFocus<cr>
" :map <leader>F :RemoveFocus<cr>
:map <leader>p :PrintVariable<cr>
:map <leader>ll :RailsLoggerVariable<cr>
nnoremap <leader>. :call OpenTestAlternate()<cr>
map <leader>n :call RenameFile()<cr>
" Faster shortcut for commenting, requiring T-Comment plugin
map <leader>c <c-_><c-_>
" Switch between the last two files
nnoremap <leader><leader> <c-^>
map <leader>d :call SearchDash()<CR>
map <leader>f :CtrlPMixed<CR>
map <leader>t <Plug>SendTestToTmux
map <leader>r <Plug>SendFocusedTestToTmux
map <leader>q :ResetTmuxVars<CR>
map <leader>e <Plug>SendLastFocusedTestToTmux
map <leader><F1> :NERDTreeFind<CR>
nnoremap <leader>s :Switch<cr>
map <leader>nn :sp ~/rails_app/gollum/Home.md<CR>
map <leader>nm :sp ~/rails_app/gollum/電影.md<CR>
map <leader>nf :sp ~/rails_app/gollum/faria.md<CR>
map <leader>nk :sp ~/rails_app/gollum/keybridge.md<CR>
nnoremap <F8> :GundoToggle<CR>
imap jj <ESC>
imap kk <ESC>
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
" vp doesn't replace paste buffer
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()
" command alias
command! To tabo
command! Tm tabm

nnoremap <silent> <leader>g :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
if executable('pt')
  let g:unite_source_grep_command = 'pt'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor'
  let g:unite_source_grep_recursive_opt = ''
  let g:unite_source_grep_encoding = 'utf-8'
endif
