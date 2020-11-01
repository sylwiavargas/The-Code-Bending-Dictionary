# frozen_string_literal: true

class Technology < ApplicationRecord
  has_many :definitions
  has_many :words, through: :definitions
end
