# language: ja
フィーチャ: 新規記事の作成
    世間を驚かせるために
    投稿者として
    新規記事を作成したい

    シナリオ: 新規記事を作成する
	前提 "新規記事"ページを表示している
	もし "Title"に"テスト"と入力する
	かつ "Body"に"これはテストです。"と入力する
	かつ "Create Article"ボタンをクリックする
	ならば "Article was successfully created"と表示されていること
