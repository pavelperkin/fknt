class Group < ActiveRecord::Base
  has_many :schedules	
  attr_accessible :course, :name
  
end
