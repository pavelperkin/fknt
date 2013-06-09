class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.string :company_name
      t.string :company_logo_url
      t.string :email
      t.string :phone
      t.text :description
      t.string :web_address

      t.timestamps
    end
  end
end
