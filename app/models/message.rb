class Message < ActiveRecord::Base
  attr_accessible :body, :topic_id, :user_id
  belongs_to :topic

  validates :body, presence: true
end
