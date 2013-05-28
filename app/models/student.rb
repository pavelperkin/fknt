class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
       :name, :surname, :patronymic,
       :birthday, :gender_id, :group_id,
       :about_me, :nickname, :avatar,
       :facebook_url, :vk_url, :twitter_url,
       :google_plus_url, :linked_in_url,
       :skype_nickname, :github_nickname,
       :about_me_nickname, :cv_url,
       :donntu_masters_url
       
  mount_uploader :avatar, AvatarUploader
  # attr_accessible :title, :body
end
