# coding: utf-8
# encoding: utf-8

url="http://yahoo.co.jp/"

step 'サイトにアクセスする' do
  Capybara.app_host = url
end

step 'トップページを表示する' do
  visit '/'
end

##########################
# 表示テキスト関連
##########################

# 表示テキスト存在確認
step %(:textと表示されること) do |text|
  expect(page).to have_content(text)
end

# 表示テキスト不在確認
step %(:textと表示されないこと) do |text|
  expect(page).not_to have_content(text)
end

##########################
# ページ移動関連
##########################

# 指定ページにアクセス
step %(:pageにアクセス) do |page|
  visit "#{url}/#{page}"
end

# リンクをクリック (textはリンク文字列かid)
# 同じ名前のリンクが複数ある場合には文字列は指定できない
step %(リンク:textをクリックする) do |text|
  click_link text
end

# ボタンをクリック (textはボタン文字列かid)
# 同じ名前のボタンが複数ある場合には文字列は指定できない
step %(ボタン:textをクリックする) do |text|
  click_button text
end

##########################
# 入力関連
##########################

# フィールドに文字列を入力する。fieldはhtml内のname=もしくはid=に指定されているもの
step %(フィールド:fieldに:valueを設定する) do |field, value|
  fill_in field, with: value
end

# プルダウンを選択
step %(プルダウン:targetは:valueを選択する) do |target, value|
  select value, from: target
end

# チェックボックスを選択
step %(チェックボックス:choiceを選択する) do |choice|
  check choice
end

# ラジオボタンボックスを選択
step %(ラジオボタン:choiceを選択する) do |choice|
  choose choice
end



