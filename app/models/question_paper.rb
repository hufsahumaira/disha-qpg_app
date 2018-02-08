class QuestionPaper < ApplicationRecord
  has_and_belongs_to_many :add_questions

  validates :name, presence: true, length: {maximum: 100}
  validates :fullmark, presence: true
  validates :module, presence: true, numericality: {only_integer: true, greater_than: 1, less_than: 6}
  validates :paper_difficulty, presence: true, inclusion: { in: %w(easy medium hard), message: "%{value} is not a valid difficulty"}
  validates :code, presence: true, allow_nil: true

  def current_paper
    @current_paper = QuestionPaper.last
  end
end
