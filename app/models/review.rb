class Review < ApplicationRecord
  validates :rating, :content, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  belongs_to :restaurant
  validates :rating, numericality: true
end
