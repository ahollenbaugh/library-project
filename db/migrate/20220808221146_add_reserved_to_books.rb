class AddReservedToBooks < ActiveRecord::Migration
  def change
    add_column :books, :reserved, :boolean
  end
end
