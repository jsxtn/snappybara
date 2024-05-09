class Camera < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :title, :description, :price, presence: true
  validates :price, numericality: { greater_than: 0 }

  has_one_attached :photo
end
