class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flat

  validates :checkin, presence: true
  validates :checkout, presence: true
end
