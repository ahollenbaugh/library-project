class AddRoleToRegisteredUsers < ActiveRecord::Migration
  def change
    add_column :registered_users, :role, :int
  end
end
