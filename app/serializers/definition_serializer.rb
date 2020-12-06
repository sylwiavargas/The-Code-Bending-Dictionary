# frozen_string_literal: true

class DefinitionSerializer < ActiveModel::Serializer
  attributes :id, :content, :word, :votes, :readMoreURL, :readMoreAt, :memeURL, :memeAltText, :technology

  def votes
    object.votes_total_value
  end

  def readMoreURL
    object.read_more_url
  end

  def readMoreAt
    object.read_more_at
  end

  def memeURL
    object.meme_url
  end

  def memeAltText
    object.meme_alt_text
  end

  def word
    object.word.content
  end

  def technology
    object.technology.name
  end

  # leaving :approved out for now
end
