class CreateAddQuestionsQuestionPapersJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :add_questions, :question_papers do |t|
      t.index :add_question_id
      t.index :question_paper_id
    end
  end
end
