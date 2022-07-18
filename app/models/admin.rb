class Admin < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :password, :username
end
