class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true, inclusion: ["chinese", "italian", "japanese", "french", "belgian"]
  validates :overall_rating, presence:true, inclusion: [0,1,2,3,4,5]
  # validates :chef_name, presence:true
  # validates :chef_bio, presence: true
end