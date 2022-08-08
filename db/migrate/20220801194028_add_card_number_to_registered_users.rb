class AddCardNumberToRegisteredUsers < ActiveRecord::Migration
  def change
    add_column :registered_users, :card_number, :string
  end
end
