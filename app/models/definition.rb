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

  def checks_read_more_at_and_url
    if read_more_url && !read_more_at || !read_more_url && read_more_at
      errors.add(:read_more_at, "Definition of #{self.word.content}must include both read_more_at and a read_more_url at the same time")
    end
  end

  def checks_meme_url_and_alt
    if meme_url && !meme_alt_text || !meme_url && meme_alt_text
      errors.add(:meme_alt_text, "Definition of #{self.word.content} must include both meme_alt_text and a meme_url at the same time")
    end
  end

  def right_number_of_words
    words_number = content.split.length
    errors.add(:content, "needs to be between 3 and 50 words long and definition of #{self.word.content} is #{words_number}") if words_number < 3 || words_number > 50
  end
end
