class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :definition
  after_initialize :init_value

  def init_value
    self.value = 1 if self.value.nil?
  end
end
