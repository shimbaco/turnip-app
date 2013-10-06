# coding: utf-8

require 'spec_helper'

describe Entry do
  describe 'アソシエーション' do
    it { should have_many(:comments).dependent(:destroy) }
  end

  describe 'バリデーション' do
    it { should validate_presence_of(:body) }
  end
end