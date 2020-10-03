class AddMemeUrlToDefinitions < ActiveRecord::Migration[6.0]
  def change
    add_column :definitions, :meme_url, :string 
  end
end
