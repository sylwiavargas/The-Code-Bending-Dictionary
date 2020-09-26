class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :word

  validates :priority_level, numericality: {only_integer: true}, inclusion: {in: 1..5, message: " needs to be between 1 and 5" }
end
