class Topic < ActiveRecord::Base
  attr_accessible :name, :tag, :user_id, :body
  has_many :messages
end
