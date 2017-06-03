class Event < ApplicationRecord
  validates :organizer_id, :presence => { :message => "Club/organization cannot be blank" }
  validates :event_name, :presence => { :message => "Event name must be present" }
  validates :event_name, :uniqueness => { :scope => [:event_date], :message => "This event has already been created" }
  validates :event_date, :presence => { :message => "Date of event cannot be blank" }

  has_many :posts, :foreign_key => "events_id", :dependent => :destroy
  belongs_to :organizer
end
