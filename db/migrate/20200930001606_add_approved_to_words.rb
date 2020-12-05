# :nodoc:
# frozen_string_literal: true

class AddApprovedToWords < ActiveRecord::Migration[6.0]
  def change
    add_column :words, :approved, :boolean
  end
end
