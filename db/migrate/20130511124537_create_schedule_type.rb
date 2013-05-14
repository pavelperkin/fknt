class CreateScheduleType < ActiveRecord::Migration
  def change
    create_table :schedule_types do |t|
      t.string :name
    end
  end
end
