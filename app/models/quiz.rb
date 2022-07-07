class Quiz < ApplicationRecord
  self.table_name = "quizzes"
  validates :title, presence: true
  validates :description, presence: true
end