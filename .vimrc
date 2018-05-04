if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})
call dein#add('scrooloose/nerdtree')
call dein#add('tomtom/tcomment_vim')
call dein#add('itchyny/lightline.vim')
call dein#add('tpope/vim-fugitive')
call dein#add('w0rp/ale')
call dein#add('thinca/vim-quickrun')
call dein#add('plasticboy/vim-markdown')
call dein#add('kannokanno/previm')
call dein#add('tyru/open-browser.vim')
call dein#add('osyo-manga/vim-over')
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neocomplete.vim')  
call dein#add('tomasr/molokai')


call dein#end()
"vim設定"
set number


if dein#tap('molokai') " molokaiがインストールされていれば
    colorscheme molokai " カラースキームにmolokaiを設定する
endif

set t_Co=256
syntax on
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


""teraterm metakey
set nocompatible

" マークダウン即時実行
nnoremap <Space>p :PrevimOpen

""neosnipet
let g:neosnippet#snippets_directory='/home/supa/dotfiles/vimrc/neosnippet-snippets/snippets'
 
""neosinipet&neocomplete
"----------------------------------------------------------
" neocomplete・neosnippetの設定
"----------------------------------------------------------
if dein#tap('neocomplete.vim')
    " Vim起動時にneocompleteを有効にする
    let g:neocomplete#enable_at_startup = 1
    " smartcase有効化. 大文字が入力されるまで大文字小文字の区別を無視する
    let g:neocomplete#enable_smart_case = 1
    " 3文字以上の単語に対して補完を有効にする
    let g:neocomplete#min_keyword_length = 3
    " 区切り文字まで補完する
    let g:neocomplete#enable_auto_delimiter = 1
    " 1文字目の入力から補完のポップアップを表示
    let g:neocomplete#auto_completion_start_length = 1
    " バックスペースで補完のポップアップを閉じる
    inoremap <expr><BS> neocomplete#smart_close_popup()."<C-h>"

    " エンターキーで補完候補の確定. スニペットの展開もエンターキーで確定・・・・・・②
    imap <expr><CR> neosnippet#expandable() ? "<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "<C-y>" : "<CR>"
    " タブキーで補完候補の選択. スニペット内のジャンプもタブキーでジャンプ・・・・・・③
    imap <expr><TAB> pumvisible() ? "<C-n>" : neosnippet#jumpable() ? "<Plug>(neosnippet_expand_or_jump)" : "<TAB>"
endif

inoremap <ESC> <ESC>:set iminsert=0<CR>  " ESCでIMEを確実にOFF

""カレントカーソル行強調
set cursorline
