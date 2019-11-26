class Resort < ApplicationRecord
  has_many :skivents

  validates :name, presence: true
  validates :resort_type, presence: true
  validates :description, presence: true
  validates :number_of_slopes, presence: true
end
