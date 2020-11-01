# frozen_string_literal: true

class User < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :votes, dependent: :destroy
  has_many :words, through: :favorites
  has_many :definitions

  default_scope { order(first_name: :asc) }

  # validates :first_name, presence: true, uniqueness: true
  # validates :last_name, presence: true, uniqueness: true
  # validates :age, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 13 }

  has_secure_password

  def full_name
    "#{first_name} #{last_name}"
  end

  def full_name_and_age
    "#{first_name} #{last_name}, age: #{age}"
  end
end
