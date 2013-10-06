# coding: utf-8

step 'エントリー詳細ページに移動する' do
  entry = create(:entry)
  visit entry_path(entry)
  @comments = Comment.count
end

step 'コメントフォームに投稿者名 :name と本文 :body を入力し投稿ボタンを押す' do |name, body|
  within('#new_comment') do
    fill_in 'Name', with: name
    fill_in 'Body', with: body
  end

  click_button 'Create Comment'
end

step '投稿した内容 :body がコメント一覧に表示されること' do |body|
  expect(page).to have_content(body)
end

step 'コメントテーブルにレコードが増えていること' do
  expect(Comment.count).to eq (@comments + 1)
end

step 'コメントフォームの投稿者名を空にして本文 :body を入力し投稿ボタンを押す' do |body|
  within('#new_comment') do
    fill_in 'Name', with: ''
    fill_in 'Body', with: body
  end

  click_button 'Create Comment'
end

step '投稿者名は :name となっていること' do |name|
  expect(find('.name')).to have_content(name)
end