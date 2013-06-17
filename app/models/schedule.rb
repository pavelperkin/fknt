class Schedule < ActiveRecord::Base
  belongs_to :group
  has_one :schedule_type
  attr_accessible :fri_1, :fri_2, :fri_3, :fri_4, :fri_5, :mon_1, :mon_2, :mon_3, :mon_4, :mon_5, :thu_1, :thu_2, :thu_3, :thu_4, :thu_5, :tue_1, :tue_2, :tue_3, :tue_4, :tue_5, :wed_1, :wed_2, :wed_3, :wed_4, :wed_5, :group_id, :schedule_type_id
  validate :max_two_shedules_for_one_group, :on => :create

  validates :schedule_type_id,
            :uniqueness => { :scope => :group_id }

  def max_two_shedules_for_one_group
    errors.add(:group, "can't have more than two schedules") if Schedule.where(:group_id => self.group_id).count == 2 
  end

end
