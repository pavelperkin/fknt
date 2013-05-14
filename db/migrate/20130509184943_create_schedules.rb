class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :mon_1
      t.string :mon_2
      t.string :mon_3
      t.string :mon_4
      t.string :mon_5
      t.string :tue_1
      t.string :tue_2
      t.string :tue_3
      t.string :tue_4
      t.string :tue_5
      t.string :wed_1
      t.string :wed_2
      t.string :wed_3
      t.string :wed_4
      t.string :wed_5
      t.string :thu_1
      t.string :thu_2
      t.string :thu_3
      t.string :thu_4
      t.string :thu_5
      t.string :fri_1
      t.string :fri_2
      t.string :fri_3
      t.string :fri_4
      t.string :fri_5
      t.integer :group_id
      t.integer :schedule_type_id

      t.timestamps
    end
  end
end
