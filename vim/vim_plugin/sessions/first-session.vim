" ~/.vim/sessions/first-session.vim:
" Vim session script.
" Created by session.vim 2.3 on 15 May 2013 at 11:22:55.
" Open this file in Vim and run :source % to restore your session.

set guioptions=
silent! set guifont=
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'light'
	set background=light
endif
if !exists('g:colors_name') || g:colors_name != 'default' | colorscheme default | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Projects/RemoTI-Linux/Projects/tools/LinuxHost
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +73 application/SimpleConsole_lnx.c
badd +0 ipclib/aic.h
silent! argdel *
edit ipclib/aic.h
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 1 + 24) / 48)
exe '2resize ' . ((&lines * 11 + 24) / 48)
exe 'vert 2resize ' . ((&columns * 160 + 96) / 192)
exe '3resize ' . ((&lines * 32 + 24) / 48)
exe 'vert 3resize ' . ((&columns * 160 + 96) / 192)
exe '4resize ' . ((&lines * 44 + 24) / 48)
exe 'vert 4resize ' . ((&columns * 31 + 96) / 192)
" argglobal
enew
file -MiniBufExplorer-
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
" argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
" argglobal
edit application/SimpleConsole_lnx.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 107 - ((13 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
107
normal! 014l
wincmd w
" argglobal
enew
" file NERD_tree_1
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 1 + 24) / 48)
exe '2resize ' . ((&lines * 11 + 24) / 48)
exe 'vert 2resize ' . ((&columns * 160 + 96) / 192)
exe '3resize ' . ((&lines * 32 + 24) / 48)
exe 'vert 3resize ' . ((&columns * 160 + 96) / 192)
exe '4resize ' . ((&lines * 44 + 24) / 48)
exe 'vert 4resize ' . ((&columns * 31 + 96) / 192)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
tabnext 1
4wincmd w
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/Projects/RemoTI-Linux/Projects/tools/LinuxHost
if bufnr("%") != s:bufnr_save
  execute "bwipeout" s:bufnr_save
endif
execute "cd" fnameescape(s:cwd_save)
1resize 1|vert 1resize 192|2resize 11|vert 2resize 160|3resize 32|vert 3resize 160|4resize 44|vert 4resize 31|
tabnext 1
3wincmd w
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
