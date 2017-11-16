class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5],  allow_nil: false, allow_blank: false}
  validates :rating, numericality: true
end
