# vimチートシート
-[vimチートサイト](https://vim.rtorr.com/lang/ja/)<br>
上記を参考にした<br>
-編集中のコードを即時実行space+q<br>
-編集中のmdを即時実行space+p<br>
-nerdtree実行space+n<br>
-選択指定範囲vでヴィジュアルモード+カーソル移動<br> 
-vmodeで選択Space+rで置換<br>
## nerdtree
-nerdtree移動はvimと同じ<br>
-mでメニューが開く<br>
-ウィンドウ移動はctrl+w<br>

## snippet
-スニペット展開はctrl+e<br>
-スニペットはtabを使うと次の入力に移れる<br>

## neocmplchace
-展開はctrl+k<br>

## markdown
-コード入力は以下のように行う<br>
```php
function hellow(){
　return "hello world!";
}
```
-リンク挿入は以下のように行う<br>
[Qiita](http://qiita.com/)<br>
-引用は以下のように行う<br>
> 引用  
> 引用
>> 多重引用

-インラインコード<br>
`バッククオート(shift+@)` 
-水平線
アンダースコア_ 、アスタリスク*、ハイフン-などを3つ以上連続して記述します。<br>
hoge
***
hoge
___
hoge
---
-TXTカラー以下のように行う<br>
これは<span style="color: red; ">赤文字</span>です<br>
-太文字アンダーバーで括る。二本ずつ<br>
__(例)__<br>
-画像挿入<br>
![エビフライトライアングル](687474703a2f2f692e696d6775722e636f6d2f4a6a7773632e6a7067.jpeg)<br>
## コメントアウトプラグインtcomment<br>
-gccでカレント行vモードでgc複数<br>

## gitコマンド
-git reset --hard [commit ID]<br>
-git commit ID 確認<br>
-git push -f origin masterでreset後はプッシュできる。<br>

## ssh
-portを開放する、ルータとpc両方ただpcのローカルipは固定。<br>
-再起動起動コマンドは様々あるのでいろいろ試すしかない<br>
-ARCH LINUXは以下のコマンド
```
sudo systemctl start sshd.service
```

## tmux
-tmux新規セッションtmux打つだけ
-tmuxアタッチtmux aコマンド
-tmuxデタッチはCtrl＋dコマンド

## vscode
-tab切り替えはctrl+TAB<br>
-保存はctrl+s<br>
![エディタ](20170625.png)<br>
-あとからインデント成形するときはAlt+Shift+F<br>
