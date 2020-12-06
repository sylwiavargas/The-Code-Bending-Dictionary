# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :username, :admin, :favorites, :createdDefinitions, :votes

  def favorites
    return if object.favorites.empty?

    object.favorites.map { |fav| { word: fav.word.content, wordId: fav.word.id } }
  end

  def createdDefinitions
    return if object.definitions.empty?

    object.definitions.map { |defi| DefinitionSerializer.new(defi) }
  end

  def votes
    return if object.votes.empty?

    object.votes.map { |vote| { definitionId: vote.definition.id, value: vote.value, voteId: vote.id } }
  end
end
