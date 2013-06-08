class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :uploads       

   attr_accessible :email, :password, :password_confirmation, :remember_me,
       :name, :surname, :patronymic,
       :birthday, :gender, :group_id,
       :about_me, :nickname, :avatar,
       :facebook_url, :vk_url, :twitter_url,
       :google_plus_url, :linked_in_url,
       :skype_nickname, :github_nickname,
       :about_me_nickname, :cv_url,
       :donntu_masters_url, :teacher, :praepostor
       
  mount_uploader :avatar, AvatarUploader
end
