class Quiz < ApplicationRecord
  self.table_name = "quizzes"

  has_many :questions

  validates :title, presence: true
  validates :description, presence: true
end
