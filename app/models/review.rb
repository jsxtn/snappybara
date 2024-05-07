class Review < ApplicationRecord
  belongs_to :booking
  validates :rating, :comment, :booking, presence: true
end
