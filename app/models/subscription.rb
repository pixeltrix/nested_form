class Subscription < ActiveRecord::Base
  belongs_to :group
  belongs_to :member
  
  attr_accessible :group_id, :introduction
  
  validates :group_id, presence: true
  validates :introduction, presence: true
end
