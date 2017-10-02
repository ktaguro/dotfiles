" ステータスを2行に設定
:set laststatus=2
" deleteキーで削除できなくなることを防ぐ
:set backspace=indent,eol,start

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/kn/.vim/bundle/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/kn/.vim/bundle')
  call dein#begin('/Users/kn/.vim/bundle')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/kn/.vim/bundle/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  " forとかの補完 Ctrl+n
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  " 自動補完 Ctrl+n
  call dein#add('Shougo/neocomplete')
  " Use neocomplete.
  " clangで実行ファイルからの自動補完(neosnippetと競合)
  " call dein#add('justmao945/vim-clang')
  " ディレクトリ階層表示 F2
  call dein#add('scrooloose/nerdtree')
  " ファイル検索(操作)
  " カレントディレクトリ:Unite file
  " 最近開いたファイル:Unite file_mru
  " アウトラインの表示:Unite outline (要ctags)
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/neomru.vim')
  call dein#add('Shougo/unite-outline')
  " 行末のスペース削除 :FixWhitespace
  call dein#add('bronson/vim-trailing-whitespace')
  " vim下部にブランチ表示
  call dein#add('itchyny/lightline.vim')
  " git の差分表示を楽に ：Gblame ：Gdiff :Gvdiff
  call dein#add('tpope/vim-fugitive')
  " Ctrl+D：半画面下にスクロール Ctrl+U：半画面上にスクロール
  call dein#add('Kazark/vim-SimpleSmoothScroll')
  " コメント生成 :Dox
  call dein#add('vim-scripts/DoxygenToolkit.vim')
  " イコールや,で位置合わせをするgaip{揃えたい文字} gaip*{揃えたい文字}
  call dein#add('junegunn/vim-easy-align')
  " 自動で閉じかっこ
  call dein#add('Townk/Vim-autoclose')
  " シンタックスハイライト(cpplint)
  call dein#add('vim-syntastic/syntastic')


  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
  \ 'default' : '',
  \ 'vimshell' : $HOME.'/.vimshell_hist',
  \ 'scheme' : $HOME.'/.gosh_completions'
\ }
" let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'

let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'fugitive#head'
    \ },
\ }

nnoremap <F2> :NERDTreeToggle<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_cpp_check_header = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_cpp_compiler_options = ' -std=c++11'
let g:syntastic_cpp_checkers = ['cpplint']
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" pipでcpplintを入れた場合はこれが必要
let g:syntastic_cpp_cpplint_exec = 'cpplint'

"End dein Scripts-------------------------
