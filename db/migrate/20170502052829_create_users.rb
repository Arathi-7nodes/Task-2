class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :uname
      t.text :password
      t.string :address
      t.string :email
      t.integer :phno

      t.timestamps
    end
  end
end
