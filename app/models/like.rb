class Like < ApplicationRecord
  validates :user_id, :presence => true
  validates :event_id, :presence => true
  validates :event_id, :uniqueness => { :scope => [:user_id], :message => "is duplicated" }

  belongs_to :event
  belongs_to :user
end
