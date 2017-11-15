class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, uniqueness: true, presence: true
  validates :address, uniqueness: true, presence: true
  validates :category, inclusion: {in: ['chinese', 'italian', 'japanese', 'belgian', 'french', 'german', 'indian', 'thai'], allow_nil: false}
  validates :phone_number, uniqueness: true, presence: true
end
