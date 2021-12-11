class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :survey_id, null: false 
      t.integer :category_id, null: false
      t.string :question, null: false 
      t.timestamps
    end

    add_index :questions, :question, unique: true
  end
end
