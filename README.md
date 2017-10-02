# dotfiles

## doxygen
```bash
brew install doxygen
brew install graphviz
```

## ctags
```bash
brew tap universal-ctags/universal-ctags
brew install --HEAD universal-ctags
```

## neocompleteのMac用の設定
```bash
brew install vim --with-lua
export PATH="/usr/local/bin:$PATH"
```

## dein.vim(call dein#add('Shougo/neosnippet-snippets')でライブラリを足せる)
```bash
mkdir -p ~/.vim/bundle
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh installer.sh ~/.vim/bundle
rm installer.sh
vimを開いて:call dein#install()
確認:Unite dein
```

## cpplintを動くようにする
```bash
brew install python3
pip3 install cpplint
#上手くいかないときはこれを見てみると良い:SyntasticInfo
```

# 残りのやりたいこと
```
gmake。
一部ファイルだけのコンパイル。testコードとか。
デバッガ
dein_lazy.tomlにneocompleteを移す
```
