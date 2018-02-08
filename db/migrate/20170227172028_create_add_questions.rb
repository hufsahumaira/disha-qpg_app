class CreateAddQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :add_questions do |t|
      t.text :question
      t.string :difficulty
      t.float :mark
      t.string :course

      t.timestamps
    end
  end
end
