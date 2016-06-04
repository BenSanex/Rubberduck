class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
		t.string :full_name
		t.string :username
		t.string :avatar
      	t.boolean :is_mentor
     	t.string :email, null: false, default: ""
     	t.string :password_digest, null: false, default: ""
    end
  end
end

	