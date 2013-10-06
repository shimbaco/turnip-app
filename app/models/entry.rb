class Entry < ActiveRecord::Base
  attr_accessible :body, :title

  has_many :comments, dependent: :destroy

  validates :body, presence: true
end
