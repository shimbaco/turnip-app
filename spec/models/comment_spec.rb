# coding: utf-8

require 'spec_helper'

describe Comment do
  describe 'アソシエーション' do
    it { should belong_to(:entry) }
  end

  describe 'バリデーション' do
    it { should validate_presence_of(:body) }
  end
end