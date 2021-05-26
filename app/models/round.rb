class Round < ApplicationRecord
  has_one_attached :card
  belongs_to :user
  belongs_to :course
  validates :par, :score, :card_url, presence: true

  def card_url
    Rails.application.routes.url_helpers.url_for(card) if card.attached?
  end
end
