" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2008 Jul 02
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

if has("cscope") && filereadable("/usr/bin/cscope")
   set csprg=/usr/bin/cscope
   set csto=0
   set cst
   set nocsverb
   " add any database in current directory
   if filereadable("cscope.out")
      cs add cscope.out
   " else add database pointed to by environment
   elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
   endif
   set csverb
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif
let &termencoding=&encoding
set fileencodings=utf-8,gbk,ucs-bom,cp936
"set tags=/workspace/peiqzhen/phase-1.1_release_br/src/refsw/tags
"set tags=/workspace/peiqzhen/gemtek/brutus/tags
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=0
let NERDTreeWinPos=1
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>
let NERDTreeMouseMode=2
"set cscopequickfix=s-,c-,d-,i-,t-,e-
"nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <F8> :cs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <F9> :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-@>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
"nmap <F7> :cs find d <C-R>=expand("<cword>")<CR><CR>
"nmap <F6> :cn<cr>
"nmap <F5> :cp<cr>
"nnoremap <silent> <F12> :A<CR>
nnoremap <C-w> <C-w>k
nnoremap <C-x> <C-w>j
nnoremap <C-a> <C-w>h
nnoremap <C-d> <C-w>l
"nnoremap <silent> <F3> :Grep<CR>
nmap <F3> :NERDTreeToggle <CR>
"nmap <F2> :NERDTreeClose <CR>
nmap <F4> :Tlist<CR>

" key map for adjustmenting vertical and horizontal position of window
nmap <silent><LEADER>+ :resize +1<CR>
nmap <silent><LEADER>_ :resize -1<CR>
nmap <silent><LEADER>= :vertical resize +5<CR>
nmap <silent><LEADER>- :vertical resize -5<CR>

" matchit
let b:match_words='BEGIN:END'
"Set mapleader
let mapleader=","
let g:mapleader=","
"Comment
nmap <silent> <F5> ,x
vmap <silent> <F5> ,x
imap <silent> <F5> ,x

vmap <F6> :w! /tmp/copy_buf <CR>
nmap <F7> :r /tmp/copy_buf <CR>
nmap <F6> :.,+0 w! /tmp/copy_buf <CR>
"nmap <F8> :cs kill 0 <CR>:cs add $CSCOPE_DB <CR>
nmap <F8> :cs add $CSCOPE_DB <CR>
autocmd BufNewFile *.[ch] 
                    \  exec append(0,"// ====== includes ======") 
                    \| exec append(1,"") 
                    \| exec append(2,"")
                    \| exec append(3, "\/\/ ====== defines ======") 
                    \| exec append(4,"")
                    \| exec append(5,"")
                    \| exec append(6, "\/\/ ====== enums ======") 
                    \| exec append(7,"")
                    \| exec append(8,"")
                    \| exec append(9, "\/\/ ====== typedefs ======") 
                    \| exec append(10,"")
                    \| exec append(11,"")
                    \| exec append(12, "\/\/ ====== globals ======") 
                    \| exec append(13,"")
                    \| exec append(14,"")
                    \| exec append(15, "\/\/ ====== statics ======") 
                    \| exec append(16,"")
                    \| exec append(17,"")
                    \| exec append(18, "\/\/ ====== prototypes ======") 
                    \| exec ':$'

"if exists("Mycomment_loaded")
"    delfun Mycomment
"endif

"function Mycomment()
"    let s:i = col(".")
"    while s:i < 80
"        let line = getline(".")
"        let repl = substitute(line, '$', "*", "g")
"        call setline(".", repl)
"        let s:i = s:i + 1
"    endwhile
"    let line = getline(".")
"    let repl = substitute(line, '$', "/", "g")
"    call setline(".", repl)
"endfunc

"nmap <F4> :call Mycomment()<CR>;

"let Mycomment_loaded = 1

" add following three lines for txtBrowser
syntax on
filetype plugin on
au BufEnter *.txt setlocal ft=txt
"au BufRead,BufNewFile *.txt setlocal ft=txt
"au BufRead,BufNewFile *.txt runtime ftplugin/txtfmt.vim
"au BufRead,BufNewFile *.txt runtime syntax/txtfmt.vim
"au BufRead,BufNewFile *.txt exe
"au BufRead,BufNewFile *.txt exe 'TlistDebug debug.log'
"let Tlist_Ctags_Cmd='ctags'
"au BufRead,BufNewFile *.txt setlocal ft=txt " <*.txt>
"au BufRead,BufNewFile *.txt runtime ftplugin/txtfmt.vim
"au BufRead,BufNewFile *.txt runtime syntax/txtfmt.vim


" add following options

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set nobackup		" keep a backup file ,backup->nobackup by Pitt
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set nu
set ignorecase smartcase
"set nowrapscan
"set statusline=%<%F%h%m%r%h%w%y\ %{&ff}\ %{strftime(\"%c\",getftime(expand(\"%:p\")))}%=\ lin:%l\,%L\ col:%c%V\ pos:%o\ ascii:%b\ %P
set statusline=%<%F%h%m%r%h%w%y\ %{&ff}\ %{strftime(\"%d/%m/%Y-%H:%M\:%S\")}%=\ col:%c%V\ ascii:%b\ pos:%o\ lin:%l\,%L\ %P

""""""""""folding option settings"""""""""""""
"set foldenable
"set foldmethod=syntax
"set foldcolumn=0
"setlocal foldlevel=1
" set foldclose=all
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
""""""""""folding option settings end"""""""""""""

let helptags=$HOME.'/.vim'.'/doc'

if has("multi_byte")
    set encoding=utf-8
    set termencoding=utf-8
    set formatoptions+=mM
    set fencs=utf-8,gbk
    if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
        set ambiwidth=double
    endif
endif

"""""""""""""""""neocomplcache.vim settings"""""""""""""""""
" Disable AutoComplPop. 
let g:acp_enableAtStartup = 0 
" Use neocomplcache. 
let g:neocomplcache_enable_at_startup = 1 
" Use smartcase. 
let g:neocomplcache_enable_smart_case = 1 
" Use camel case completion. 
let g:neocomplcache_enable_camel_case_completion = 1 
" Use underbar completion. 
let g:neocomplcache_enable_underbar_completion = 1 
" Set minimum syntax keyword length. 
let g:neocomplcache_min_syntax_length = 3 
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*' 

" Define dictionary. 
let g:neocomplcache_dictionary_filetype_lists = { 
    \ 'default' : '', 
    \ 'vimshell' : $HOME.'/.vimshell_hist', 
    \ 'scheme' : $HOME.'/.gosh_completions' 
    \ } 

" Define keyword. 
if !exists('g:neocomplcache_keyword_patterns') 
    let g:neocomplcache_keyword_patterns = {} 
endif 
let g:neocomplcache_keyword_patterns['default'] = '\h\w*' 

" Plugin key-mappings. 
inoremap <expr><C-g>     neocomplcache#undo_completion() 
inoremap <expr><C-l>     neocomplcache#complete_common_string() 

" Recommended key-mappings. 
" <CR>: close popup and save indent. 
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>" 
" <TAB>: completion. 
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>" 
" <C-h>, <BS>: close popup and delete backword char. 
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>" 
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>" 
inoremap <expr><C-y>  neocomplcache#close_popup() 
inoremap <expr><C-e>  neocomplcache#cancel_popup() 

" AutoComplPop like behavior. 
"let g:neocomplcache_enable_auto_select = 1 

" Shell like behavior(not recommended). 
"set completeopt+=longest 
"let g:neocomplcache_enable_auto_select = 1 
"let g:neocomplcache_disable_auto_complete = 1 
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>" 
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" In many terminal emulators the mouse works just fine, thus enable it.
"""""""""""""""""neocomplcache.vim settings end"""""""""""""""""
"lookupfile plugin settings
let g:LookupFile_TagExpr = '"./filenametags"'

if has('mouse')
  set mouse=a
endif
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

set autoindent
set cindent
"ncolorscheme default
"colorscheme xterm16
"colorscheme grb256
"colorscheme Guardian
"colorscheme codeschool
"colorscheme github
"colorscheme jellybeans
"colorscheme candy
"colorscheme twilight
"colorscheme vividchalk
" good color scheme
"colorscheme graywh
"colorscheme clue
"colorscheme colorer
colorscheme emacs

