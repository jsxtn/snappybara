class Camera < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependant: :destroy
  validates :title, :description, :price, :booking, presence: true
  validates :price, numericality: { greater_than: 0 }
end
