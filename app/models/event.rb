class Event < ApplicationRecord
  validates :organizer_id, :presence => { :message => "Club/organization cannot be blank" }
  validates :event_name, :presence => { :message => "Event name must be present" }
  validates :event_name, :uniqueness => { :scope => [:event_date], :message => "This event has already been created" }
  validates :event_date, :presence => { :message => "Date of event cannot be blank" }

  has_many :posts, :foreign_key => "event_id", :dependent => :destroy
  has_many :likes, :dependent => :destroy
  has_many :fans, :through => :likes, :source => :user
  belongs_to :organizer
  mount_uploader :image_url, ImageUrlUploader

end
