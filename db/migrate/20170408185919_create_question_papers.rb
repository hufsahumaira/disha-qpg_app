class CreateQuestionPapers < ActiveRecord::Migration[5.0]
  def change
    create_table :question_papers do |t|
      t.string :name
      t.integer :fullmark
      t.integer :module
      t.integer :quespermodul

      t.timestamps
    end
  end
end
