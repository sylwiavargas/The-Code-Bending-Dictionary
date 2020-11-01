# frozen_string_literal: true

class AddUserReadMemeApprovedToDefinitions < ActiveRecord::Migration[6.0]
  def change
    add_reference :definitions, :user, null: false, foreign_key: true
    add_column :definitions, :read_more_url, :string
    add_column :definitions, :read_more_at, :string
    add_column :definitions, :meme_url, :string
    add_column :definitions, :meme_alt_text, :string
    add_column :definitions, :approved, :boolean
  end
end
