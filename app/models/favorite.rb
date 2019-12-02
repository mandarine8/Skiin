class Favorite < ApplicationRecord
  belongs_to :skivent
  belongs_to :user
end
