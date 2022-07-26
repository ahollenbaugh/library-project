class AddColumnsToRegisteredUser < ActiveRecord::Migration
  def change
    add_column :registered_users, :first_name, :string
    add_column :registered_users, :last_name, :string
    add_column :registered_users, :state, :string
    add_column :registered_users, :city, :string
    add_column :registered_users, :address, :string
    add_column :registered_users, :phone_number, :string
  end
end
