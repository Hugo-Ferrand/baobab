class Tree < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  
  validates :description, presence: true
  validates :price, presence: true
  validates :species, presence: true
  validates :street, presence: true
  validates :city, presence: true
  validates :country, presence: true
end
