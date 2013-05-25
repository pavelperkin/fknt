class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.string :tag
      t.integer :user_id
      t.text :body

      t.timestamps
    end
  end
end
