class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true, length: { minimum: 5 }
  validates :rating, presence: true,  numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end
