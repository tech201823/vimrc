if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})
call dein#add('Shougo/neosnippet')
call dein#add('scrooloose/nerdtree')
call dein#add('tomtom/tcomment_vim')
call dein#add('itchyny/lightline.vim')
call dein#add('Shougo/neocomplcache.vim')
call dein#add('tpope/vim-fugitive')
call dein#add('w0rp/ale')
call dein#add('thinca/vim-quickrun')
call dein#add('plasticboy/vim-markdown')
call dein#add('kannokanno/previm')
call dein#add('tyru/open-browser.vim')
call dein#add('osyo-manga/vim-over')


call dein#end()
"vim設定"
set number
syntax on
colorscheme molokai
set t_Co=256
set laststatus=2
"カーソル位置保存
augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif

" tab
nnoremap <Space>n gt
nnoremap <Space>b gT
nnoremap <C-t> :tabnew<CR>

""nerdtree
map <C-n> :NERDTreeToggle<CR>

""tab全部閉じ
nnoremap <Space>z :wqa<CR>

""QuickRun
nnoremap <Space>q :QuickRun<CR>
nnoremap <Space>c :tabe /home/supa/dotfiles/vimrc/cheat/cheat(vim).md<CR>

""markdown
au BufRead,BufNewFile *.md set filetype=markdown
nnoremap <Space>r :PrevimOpen<CR>

""vim-over
" ---------- 'osyo-manga/vim-over' ----------
" 全体置換
nnoremap <silent> <Space>r  :OverCommandLine<CR>%s//g<Left><Left>

" 選択範囲置換
vnoremap <silent> <Space>r  :OverCommandLine<CR>s//g<Left><Left>

" インサートモードでも移動可能
inoremap  <C-j>   <Down>
inoremap  <C-k>   <Up>
inoremap  <C-h>   <Left>
inoremap  <C-l>   <Right>


""neosnippet link
let g:neosnippet#snippets_directory='/home/supa/dotfiles/vimrc/neosnippet-snippets/snippets'
" SuperTab like snippets behavior.
imap  <expr><TAB>
    \ pumvisible() ? "\<C-n>" :
    \ neosnippet#expandable_or_jumpable() ?
    \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
    \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

if has('conceal')
  set conceallevel=2 concealcursor=i
endif
let g:neosnippet#snippets_directory='/home/supa/dotfiles/vimrc/neosnippet-snippets/snippets'
 
" SuperTab like snippets behavior.
imap  <expr><TAB>
    \ pumvisible() ? "\<C-n>" :
    \ neosnippet#expandable_or_jumpable() ?
    \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
 
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
    \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
 
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" neocomplcache
let g:neocomplcache_enable_at_startup = 1 " 起動時に有効化
inoremap <expr><Space>  pumvisible() ? "\<C-n>" : "\<Space>"
inoremap <expr><C-k> neocomplcache#close_popup()

""neosnippet
" Plugin key-mappings.
        imap <C-e>     <Plug>(neosnippet_expand_or_jump)
        smap <C-e>     <Plug>(neosnippet_expand_or_jump)
        xmap <C-e>     <Plug>(neosnippet_expand_target)
