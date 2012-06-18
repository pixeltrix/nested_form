class Group < ActiveRecord::Base
  has_many :subscriptions, dependent: :delete_all
  has_many :members, through: :subscriptions
  
  accepts_nested_attributes_for :subscriptions

  attr_accessible :name, :subscriptions_attributes
  
  validates :name, presence: true, uniqueness: true
end