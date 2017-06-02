class Organizer < ApplicationRecord

  validates :name, :presence => { :message => "Club/organization name cannot be blank" }
  validates :name, :uniqueness => { :message => "This Booth club/organization already exists" }
  
  has_many :events, :dependent => :destroy

end
