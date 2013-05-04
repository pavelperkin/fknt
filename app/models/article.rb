class Article < ActiveRecord::Base
  attr_accessible :header, :img_url, :main_text, :preview, :tag_id
end
