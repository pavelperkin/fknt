class Upload < ActiveRecord::Base
  attr_accessible :filename, :subject, :user_id, :file, :comment 
  mount_uploader :file, FileUploader
  belongs_to :user
end
