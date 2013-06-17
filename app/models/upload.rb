class Upload < ActiveRecord::Base
  attr_accessible :filename, :subject, :user_id, :file, :comment, :url 
  mount_uploader :file, FileUploader
  belongs_to :user
  validate :file_or_url

  def file_or_url
    errors.add(:upload, "Add file or link to file") if (file.blank? && url.blank?)  
  end

end
