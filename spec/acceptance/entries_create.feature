# encoding: utf-8
# language: ja

機能: エントリー投稿

  シナリオ: エントリーが無事成功する
    まず トップページの新規投稿ボタンを押して投稿ページに移動
    んで タイトルと本文を入力して投稿ボタンを押す
    すると 詳細ページに移動して
    かつ Entryテーブルのカウントが1になってる

  シナリオ: エントリーが失敗する＼(^o^)／
    まず トップページの新規投稿ボタンを押して投稿ページに移動
    んで タイトルを入力し本文を空のまま投稿する
    すると バリデーションエラーが表示される