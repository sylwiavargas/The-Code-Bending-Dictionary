class Definition < ApplicationRecord
  after_initialize :init

  belongs_to :word
  belongs_to :user

  validate :right_number_of_words, :checks_read_more_at_and_url, :checks_meme_url_and_alt

  def init
    self.approved = false if self.approved.nil?
  end

  def to_s
    self.content.downcase
  end

  private

  def checks_read_more_at_and_url
    if self.read_more_url && self.read_more_at == nil 
      self.errors.add(:read_more_at, "must include a read_more_at if there is a read_more_url")
    elsif self.read_more_url == nil && self.read_more_at
      self.errors.add(:read_more_at, "must include a read_more_url if there is a read_more_at")
    end
  end

  def checks_meme_url_and_alt
    if self.meme_url && self.meme_alt_text == nil 
      self.errors.add(:read_more_at, "must include a meme_alt_text if there is a meme_url")
    elsif self.meme_url == nil && self.meme_alt_text
      self.errors.add(:read_more_at, "must include a meme_url if there is a meme_alt_text")
    end
  end

  def right_number_of_words
    words_number = self.content.split().length
    if words_number < 6 || words_number > 50
      self.errors.add(:content, "needs to be between 3 and 50 words long")
    end
  end

end
