class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  mount_uploader :photo, PhotoUploader

  validates :name, presence: true
  validates :price, presence: true
  validates :photo, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :capacity, presence: true

  include PgSearch
  pg_search_scope :search_by_content,
    against: [ :name, :description, :address, :city ],
    using: {
      tsearch: { prefix: true }
    }
end
