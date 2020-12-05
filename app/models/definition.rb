# frozen_string_literal: true

class Definition < ApplicationRecord
  after_initialize :init_approve
  belongs_to :word
  belongs_to :user
  belongs_to :technology
  has_many :votes, dependent: :destroy

  validate :right_number_of_words, :checks_read_more_at_and_url, :checks_meme_url_and_alt

  def init_approve
    self.approved = false if approved.nil?
  end

  def to_s
    content.downcase
  end

  private

  def checks_attribute(object, str1, str2)
    attr1 = str1.to_sym
    attr2 = str2.to_sym
    object.send(attr1) && !object.send(attr2) || !object.send(attr1) && object.send(attr2)
  end

  def checks_read_more_at_and_url
    return unless checks_attribute(self, 'read_more_url', 'read_more_at')

    errors.add(:read_more_at, 'must include both read_more_at and a read_more_url')
  end

  def checks_meme_url_and_alt
    return unless checks_attribute(self, 'meme_url', 'meme_alt_text')

    errors.add(:meme_alt_text, 'must include both meme_alt_text and a meme_url')
  end

  def right_number_of_words
    words_number = content.split.length
    errors.add(:content, 'needs to be 3-50 words long') if words_number < 3 || words_number > 50
  end
end
