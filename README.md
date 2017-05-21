## 概要
turnipはGUI画面の試験の自動化ツールです。
詳細な解説のページは他にあるので、そちらを参照下さい。
例えば以下のページなど。
http://gongo.hatenablog.com/entry/2013/05/29/223218

ここでは単純に実行だけするサンプルを提示します。

## サンプル
サンプルのテストとしては
"yahooで「富士山」と検索してwikiページを表示"
するような動作をさせています。

# 環境
ruby(多分2.1以上)が必要です。
またbundlerが無い場合は予め入れておいて下さい。


```
$ sudo gem install bundler 
```

あと、x上で実行する必要があります。そうしないとブラウザが起動しないです。
実機上か、vncでサーバに接続して実行しましょう。

## 実行
物資はgitにあげてます。
以下の順に実行すればとりあえず、ブラウザが勝手に立ち上がってyahooで「富士山」
と検索をしてwikiページにアクセスします。



```
$ git clone https://github.com/tanaka-kj/turnip_sample
$ cd turnip_sample
$ ./install.sh
$ ./run.sh
```

