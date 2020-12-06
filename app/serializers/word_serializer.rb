# frozen_string_literal: true

class WordSerializer < ActiveModel::Serializer
  attributes :id, :content, :definitions, #:relatedWords # , :technologies
             # this one is there for the future when we introduce "see related words"
             # def relatedWords
             #   return if object.related_words.empty?

             #   object.related_words
             # end
             def definitions
               return if object.definitions.okayed.empty?

               object.definitions.okayed.map do |defi|
                 {
                   content: defi.content,
                   votes: defi.votes_total_value,
                   technology: defi.technology.name
                 }
               end
             end

  # leaving approved out for now
end
