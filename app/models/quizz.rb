class Quizz < ApplicationRecord
  validates :title, presence: true
  validates :description
end