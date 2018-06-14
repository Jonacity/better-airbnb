class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flat

  validates :checkin, presence: true
  validates :checkout, presence: true

  def accept
    self.status = "Accepted"
    self.save
  end

  def decline
    self.status = "Declined"
    self.save
  end
end
