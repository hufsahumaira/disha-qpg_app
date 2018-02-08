class AddQuestion < ApplicationRecord
  has_and_belongs_to_many :question_papers
  before_save :upcase_course
  validates :question, presence: true, length: {maximum: 300}, uniqueness: { case_sensitive: false }
  validates :difficulty, presence: true, inclusion: { in: %w(easy medium hard), message: "%{value} is not a valid difficulty"}
  validates :mark, presence: true
  validates :course, presence: true, allow_nil: true

  private

  # Converts question to all lower-case.

    def capitalize_question
      self.question = question.capitalize
    end

    def upcase_course
      self.course = course.upcase
    end
end
