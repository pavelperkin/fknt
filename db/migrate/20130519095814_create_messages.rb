class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :topic_id
      t.integer :user_id
      t.text :body

      t.timestamps
    end
  end
end
