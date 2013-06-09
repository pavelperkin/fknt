class Vacancy < ActiveRecord::Base
  attr_accessible :company_logo_url, :company_name, :description, :email, :phone, :web_address
end
