class User < ActiveRecord::Base
  attr_accessible :address, :card_number, :city, :email, :first_name, :last_name, :phone_number, :pin, :state
  self.table_name = "users"
  has_many :books
end
