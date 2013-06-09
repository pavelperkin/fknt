class Group < ActiveRecord::Base
  has_many :schedules
  attr_accessible :course, :name

  validates :course, :numericality => { :greater_than__or_equal_to => 0, :less_than_or_equal_to => 6 }
  
end
