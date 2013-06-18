class Article < ActiveRecord::Base
  attr_accessible :header, :img_url, :main_text, :preview, :tag_id
  validates :header, presence: true
  validates :img_url, presence: true
  validates :main_text, presence: true
  validates :preview, presence: true
  validates :tag_id, presence: true
end
