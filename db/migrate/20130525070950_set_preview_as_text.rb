class SetPreviewAsText < ActiveRecord::Migration
  def change
  	change_column :articles, :preview, :text
  end

end
