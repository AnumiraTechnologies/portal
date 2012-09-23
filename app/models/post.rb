class Post < ActiveRecord::Base
  has_permalink
  attr_accessible :body, :title
  validates_presence_of :body, :title
  belongs_to :user
end
