# frozen_string_literal: true

class CreateRelatedWords < ActiveRecord::Migration[6.0]
  def change
    create_table :related_words do |t|
      t.integer :word_one_id
      t.integer :word_two_id

      t.timestamps
    end
  end
end
