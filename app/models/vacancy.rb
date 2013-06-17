class Vacancy < ActiveRecord::Base
  attr_accessible :company_logo_url, :company_name, :description, :email, :phone, :web_address

  validates :company_logo_url, presence: true
  validates :company_name, presence: true
  validates :description, presence: true
  validates :email, presence: true

end
