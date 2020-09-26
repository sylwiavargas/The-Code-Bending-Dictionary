class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.integer :priority_level
      t.belongs_to :student, null: false, foreign_key: true
      t.belongs_to :word, null: false, foreign_key: true

      t.timestamps
    end
  end
end
