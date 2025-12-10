set tabstop=2
set autoindent
set number
set shiftwidth=2
set hls
set incsearch
set cursorline
highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE
highlight CursorLine gui=underline guifg=NONE guibg=NONE

nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
nnoremap <Left> h
nnoremap <Right> l
inoremap <Down> <C-O>gj
inoremap <Up>   <C-O>gk

" ==== セッション復元 ====
" Vim終了時に現在のセッションを保存する
au VimLeave * mks!  ~/.vimsession

" 引数なし起動の時、前回のsessionを復元
autocmd VimEnter * nested if @% == '' && s:GetBufByte() == 0 | source ~/.vimsession | endif
function! s:GetBufByte()
    let byte = line2byte(line('$') + 1)
    if byte == -1
        return 0
    else
        return byte - 1
    endif
endfunction
" ====

" ==== Netrw ====
" ファイルツリーの表示形式、1にするとls -laのような表示になります
let g:netrw_liststyle=1
" サイズを(K,M,G)で表示する
let g:netrw_sizestyle="H"
" 日付フォーマットを yyyy/mm/dd(曜日) hh:mm:ss で表示する
let g:netrw_timefmt="%Y/%m/%d(%a) %H:%M:%S"
" プレビューウィンドウを垂直分割で表示する
let g:netrw_preview=1
" ====
