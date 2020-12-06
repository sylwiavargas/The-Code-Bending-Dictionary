# frozen_string_literal: true

class RelatedWord < ApplicationRecord
  belongs_to :word_one, class_name: 'Word'
  belongs_to :word_two, class_name: 'Word'

  # Validation so that a word can only be related to another only once
  validates :word_two_id, uniqueness: { scope: :word_one_id }
  validate :stop_self_relation

  # Documentation: https://collectiveidea.com/blog/archives/2015/07/30/bi-directional-and-self-referential-associations-in-rails
  after_create :create_inverse, unless: :inverse?
  after_destroy :destroy_inverses, if: :inverse?

  private

  def create_inverse
    self.class.create!(inverse_attributes)
  end

  def destroy_inverses
    self.class.where(inverse_attributes).destroy_all
  end

  def inverse?
    self.class.exists?(inverse_attributes)
  end

  def inverse_attributes
    { word_one_id: word_two_id, word_two_id: word_one_id }
  end

  def stop_self_relation
    errors.add(:word_one_id, 'cannot be the same as word_two_id') if word_one_id == word_two_id
  end
end
