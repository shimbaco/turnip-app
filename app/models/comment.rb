class Comment < ActiveRecord::Base
  attr_accessible :body, :name

  validates :body, presence: true
end
