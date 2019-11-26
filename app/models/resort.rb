class Resort < ApplicationRecord
  has_many :skivents

  geocoded_by :address
    after_validation :geocode, if: :will_save_change_to_address?

  validates :name, presence: true
  validates :resort_type, presence: true
  validates :description, presence: true
  validates :number_of_slopes, presence: true
end
