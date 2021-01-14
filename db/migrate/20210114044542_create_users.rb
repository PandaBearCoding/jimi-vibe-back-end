class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :name
      t.string :profile_picture
      t.string :email
      t.string :phone_number
      t.string :address
      t.string :cc_number
      t.string :cc_cvv
      t.string :cc_date

      t.timestamps
    end
  end
end