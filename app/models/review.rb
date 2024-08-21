class Review < ApplicationRecord
  belongs_to :restaurant

  # A review must have a content.
  validates :content, :rating, presence: true
  # A review must have a rating.
  # A review’s rating must be a number between 0 and 5.
  # A review’s rating must be an integer. For example, a review with a rating of 2.5 should be invalid!
  validates_inclusion_of :rating, :in => 0..5
  validates :rating, numericality: { only_integer: true }
end
