# frozen_string_literal: true

class RemovePriorityLevelFromFavorites < ActiveRecord::Migration[6.0]
  def change
    remove_column :favorites, :priority_level, :integer
  end
end
