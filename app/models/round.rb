class Round < ApplicationRecord
  has_one_attached :score_card
  belongs_to :user
  belongs_to :course
end
