class ScheduleType < ActiveRecord::Base
  belongs_to :schedule
  attr_accessible :name  
end
