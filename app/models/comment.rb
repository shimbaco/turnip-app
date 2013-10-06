class Comment < ActiveRecord::Base
  attr_accessible :body, :name

  belongs_to :entry

  validates :body, presence: true
end
