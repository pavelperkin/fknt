class Topic < ActiveRecord::Base
  attr_accessible :name, :tag, :user_id, :body
  has_many :messages

  validates :name, presence: true
  validates :body, presence: true

end
