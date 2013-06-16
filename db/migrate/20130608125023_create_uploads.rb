class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :filename
      t.integer :user_id
      t.string :subject
      t.string :comment
      t.string :url

      t.timestamps
    end
  end
end
