class AddPasswordDigestToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :password_digest, :string
  end
end
