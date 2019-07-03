" Anywhere SID.
function! s:SID_PREFIX()
  return matchstr(expand('<sfile>'), '<SNR>\d\+_\zeSID_PREFIX$')
endfunction

" Set tabline.
function! s:my_tabline()  "{{{
  let s = ''
  for i in range(1, tabpagenr('$'))
    let bufnrs = tabpagebuflist(i)
    let bufnr = bufnrs[tabpagewinnr(i) - 1]  " first window, first appears
    let no = i  " display 0-origin tabpagenr.
    let mod = getbufvar(bufnr, '&modified') ? '!' : ' '
    let title = fnamemodify(bufname(bufnr), ':t')
    let title = '[' . title . ']'
    let s .= '%'.i.'T'
    let s .= '%#' . (i == tabpagenr() ? 'TabLineSel' : 'TabLine') . '#'
    let s .= no . ':' . title
    let s .= mod
    let s .= '%#TabLineFill# '
  endfor
  let s .= '%#TabLineFill#%T%=%#TabLine#'
  return s
endfunction "}}}
let &tabline = '%!'. s:SID_PREFIX() . 'my_tabline()'
set showtabline=2 " $B>o$K%?%V%i%$%s$rI=<((B

" The prefix key.
nnoremap    [Tag]   <Nop>
nmap    t [Tag]
" Tab jump
for n in range(1, 9)
  execute 'nnoremap <silent> [Tag]'.n  ':<C-u>tabnext'.n.'<CR>'
endfor
" t1 $B$G(B1$BHV:8$N%?%V!"(Bt2 $B$G(B1$BHV:8$+$i(B2$BHVL\$N%?%V$K%8%c%s%W(B

map <silent> [Tag]c :tablast <bar> tabnew<CR>
" tc $B?7$7$$%?%V$r0lHV1&$K:n$k(B
map <silent> [Tag]x :tabclose<CR>
" tx $B%?%V$rJD$8$k(B
map <silent> [Tag]n :tab<CR>
" tn $B<!$N%?%V(B
map <silent> [Tag]p :tabprevious<CR>
" tp $BA0$N%?%V(B
