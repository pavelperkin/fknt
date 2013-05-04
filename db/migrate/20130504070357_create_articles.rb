class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :header
      t.string :preview
      t.text :main_text
      t.string :img_url
      t.integer :tag_id

      t.timestamps
    end
  end
end
