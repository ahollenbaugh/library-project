class Book < ActiveRecord::Base
  attr_accessible :available, :date_time_avail, :date_time_checked_out, :title
  belongs_to :user
end
