class Comment < ApplicationRecord
  validates :user_id, :presence => { :message => "User may not be blank for comment submission" }
  validates :post_id, :presence => { :message => "Comment must reference a post on an event" }
  validates :content, :presence => { :message => "Comment cannot be empty" }
  validates :content, :uniqueness => { :scope => [:user_id, :post_id], :message => "Duplicate comment" }
  
  belongs_to :user
  belongs_to :post

end
