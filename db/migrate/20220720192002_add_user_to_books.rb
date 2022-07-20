class AddUserToBooks < ActiveRecord::Migration
  def change
    add_column :books, :user, :integer
  end
end
