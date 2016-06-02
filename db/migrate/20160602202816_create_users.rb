class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
    	t.string :full_name
    	t.string :username
    	t.string :email
    	t.string :encrypted_password
    	t.string :avatar

      t.timestamps
    end
  end
end
