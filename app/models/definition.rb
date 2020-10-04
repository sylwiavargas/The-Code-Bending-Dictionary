class Definition < ApplicationRecord
  after_initialize :init
  belongs_to :word
  belongs_to :user
  has_many :votes, dependent: :destroy
  validate :right_number_of_words, :checks_read_more_at_and_url, :checks_meme_url_and_alt

  def init
    self.approved = false if self.approved.nil?
  end

  def to_s
    self.content.downcase
  end

  private

  def checks_read_more_at_and_url
    if self.read_more_url && !self.read_more_at  || !self.read_more_url && self.read_more_at
      self.errors.add(:read_more_at, "must include both read_more_at and a read_more_url at the same time")
    end
  end

  def checks_meme_url_and_alt
    if self.meme_url && !self.meme_alt_text  || !self.meme_url && self.meme_alt_text
      self.errors.add(:meme_alt_text, "must include both meme_alt_text and a meme_url at the same time")
    end
  end

  def right_number_of_words
    words_number = self.content.split().length
    if words_number < 6 || words_number > 50
      self.errors.add(:content, "needs to be between 3 and 50 words long")
    end
  end

end
