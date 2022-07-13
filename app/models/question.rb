class Question < ApplicationRecord
  belongs_to :quiz

  validates :content, presence: true
  validates :answers, presence: true
end
