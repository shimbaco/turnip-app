# coding: utf-8

require 'spec_helper'

step 'トップページの新規投稿ボタンを押して投稿ページに移動する' do
  visit root_path
  click_link 'New Entry'
end

step 'タイトルと本文を入力して投稿ボタンを押す' do
  within('#new_entry') do
    fill_in 'Title', with: 'はじめまして'
    fill_in 'Body', with: '新参者ですが何卒よろしくお願いします。'
  end

  click_button 'Create Entry'
end

step '詳細ページに移動すること' do
  binding.pry
  expect(get: current_path).to route_to(controller: 'entries', action: 'show')
end

step 'Entryテーブルのカウントが1になっていること' do
  expect(Entry.count).to eq 1
end

step 'タイトルを入力し本文を空のまま投稿する' do
  within('#new_entry') do
    fill_in 'Title', with: 'はじめまして'
    fill_in 'Body', with: ''
  end

  click_button 'Create Entry'
end

step 'バリデーションエラーが表示されること' do
  expect(page).to have_content("Body can't be blank")
end