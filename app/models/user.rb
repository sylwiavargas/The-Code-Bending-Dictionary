class User < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :votes, dependent: :destroy
  has_many :words, through: :favorites
  has_many :definitions

  default_scope { order(first_name: :asc)}

  validates :first_name, presence: true, uniqueness: true
  validates :last_name, presence: true, uniqueness: true
  validates :age, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 13 }

  has_secure_password

  def full_name
    self.first_name + " " + self.last_name
  end

  def full_name_and_age
    self.first_name + " " + self.last_name + ", age: " + self.age.to_s
  end
end
