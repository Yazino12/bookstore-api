class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :profile, default: 'https://cdn4.iconfinder.com/data/icons/success-filloutline/64/portfolio-business_and_finance-personal_profile-resume-interface-512.png'

      t.timestamps
    end
  end
end
