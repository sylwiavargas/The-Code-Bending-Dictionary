class AddReadMoreUrlToDefinitions < ActiveRecord::Migration[6.0]
  def change
    add_column :definitions, :read_more_url, :string 
  end
end
