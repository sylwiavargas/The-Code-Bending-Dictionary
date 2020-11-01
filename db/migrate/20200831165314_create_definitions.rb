# frozen_string_literal: true

class CreateDefinitions < ActiveRecord::Migration[6.0]
  def change
    create_table :definitions do |t|
      t.string :content
      t.belongs_to :word, null: false, foreign_key: true

      t.timestamps
    end
  end
end
