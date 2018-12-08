class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
        t.string :fname
        t.string :lname
        t.string :va_number
        t.string :email
        t.string :password_digest
        t.timestamps
    end
  end
end
