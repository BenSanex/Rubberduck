class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
    	t.integer :student_id
    	t.integer :mentor_id
    	t.integer :rating_id
    	t.integer :skills_id
    	t.string :title
    	t.string :content
    	t.string :tag
    	t.boolean :solved?

      t.timestamps
    end
  end
end
