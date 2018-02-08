class AddCreateQuestionToAddQuestion < ActiveRecord::Migration[5.0]
  def change
    add_column :add_questions, :create_question, :string
  end
end
