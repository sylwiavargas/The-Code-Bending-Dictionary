# frozen_string_literal: true

class TechnologySerializer < ActiveModel::Serializer
  attributes :id, :name, :definitions

  def definitions
    object.definitions.okayed.map { |defi| DefinitionSerializer.new(defi) }
  end
end
