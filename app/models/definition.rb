class Definition < ApplicationRecord
  validate :right_number_of_words
  belongs_to :word

  def to_s
    self.content.downcase
  end

  private

  def right_number_of_words
    words_number = self.content.split().length
    if words_number < 6 || words_number > 50
      self.errors.add(:content, "needs to be between 3 and 50 words long")
    end
  end

end
