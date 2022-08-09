class Book < ActiveRecord::Base
  attr_accessible :available, :date_time_avail, :date_time_checked_out, :title, :user, :reserved, :reservation_window_ends
  belongs_to :registered_user
end
