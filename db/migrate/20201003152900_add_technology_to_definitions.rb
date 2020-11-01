# frozen_string_literal: true

class AddTechnologyToDefinitions < ActiveRecord::Migration[6.0]
  def change
    add_reference :definitions, :technology, null: false, foreign_key: true
  end
end
