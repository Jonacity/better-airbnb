class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :name, presence: true
  validates :price, presence: true
  validates :photo, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :capacity, presence: true
end
