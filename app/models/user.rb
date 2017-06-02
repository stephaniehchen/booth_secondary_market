class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :graduation_year, :numericality => { :less_than => 2030, :greater_than_or_equal_to => 2017 }
  validates :graduation_year, :presence => { :message => "Graduation year cannot be blank" }

  has_many :posts
  has_many :comments, :dependent => :destroy
end
