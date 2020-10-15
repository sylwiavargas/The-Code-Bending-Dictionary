class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.integer :value, default: 1
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :definition, null: false, foreign_key: true
      t.timestamps
    end
  end
end
