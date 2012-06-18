class Member < ActiveRecord::Base
  has_many :subscriptions, dependent: :delete_all
  has_many :groups, through: :subscriptions
  
  attr_accessible :email
  
  validates :email, presence: true
end