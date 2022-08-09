class AddReservationWindowEndsToBooks < ActiveRecord::Migration
  def change
    add_column :books, :reservation_window_ends, :datetime
  end
end
