class Post < ApplicationRecord
  validates :user_id, :presence => { :message => "User must be associated to post" }
  validates :user_id, :uniqueness => { :scope => [:events_id, :active, :sell_buy], :message => "No duplicate posts allowed per user for an event" }
  validates :ticket_amount, :numericality => { :greater_than_or_equal_to => 0 }
  validates :ticket_amount, :presence => { :message => "Individual ticket price must be listed" }
  validates :sell_buy, :inclusion => { :in => [ 'Buy', 'Sell' ] }
  validates :sell_buy, :presence => { :message => "Type of post must not be empty" }
  validates :number_tickets, :numericality => { :less_than => 10, :greater_than => 1 }
  validates :number_tickets, :presence => { :message => "Number of tickets to buy/sell cannot be blank" }
  validates :events_id, :presence => { :message => "Post must be for a specific event" }
  validates :active, :presence => { :message => "Status must not be empty" }

  belongs_to :event, :foreign_key => "events_id"
  belongs_to :user
  has_many :comments, :dependent => :destroy

end
