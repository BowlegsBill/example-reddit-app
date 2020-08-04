class AddAuthorToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :author, :integer
  end
end
