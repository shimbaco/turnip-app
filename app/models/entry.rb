class Entry < ActiveRecord::Base
  attr_accessible :body, :title

  has_many :comments

  validates :body, presence: true
end
