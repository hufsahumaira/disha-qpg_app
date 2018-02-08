class AddDifficultyAndCodeToQuestionPapers < ActiveRecord::Migration[5.0]
  def change
    add_column :question_papers, :paper_difficulty, :string
    add_column :question_papers, :code, :string
  end
end
