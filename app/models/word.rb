# frozen_string_literal: true

class Word < ApplicationRecord
  after_initialize :init

  has_many :favorites, dependent: :destroy
  has_many :definitions, -> { order('created_at DESC') }, dependent: :destroy
  has_many :technologies, through: :definitions
  has_many :rel_word_models, foreign_key: :word_one_id, class_name: 'RelatedWord', dependent: :destroy
  has_many :related_words, through: :rel_word_models, source: :word_two

  validates :content, length: { minimum: 2, maximum: 60 }

  def init
    self.approved = false if approved.nil?
  end

  default_scope { order(content: :asc) }
  scope :okayed, -> { where(approved: true) }
  scope :pending, -> { where(approved: false) }

  def self.with_definitions
    reject { |word| word.definitions.empty? }
  end
end
