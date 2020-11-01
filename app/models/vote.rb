# frozen_string_literal: true

class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :definition
  after_initialize :init_value

  def init_value
    self.value = 1 if value.nil?
  end
end
