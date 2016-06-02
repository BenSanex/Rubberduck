class CreateExpertises < ActiveRecord::Migration[5.0]
  def change
    create_table :expertises do |t|
    	t.integer :mentor_id
    	t.integer :skills_id
    	t.integer :level

      t.timestamps
    end
  end
end
