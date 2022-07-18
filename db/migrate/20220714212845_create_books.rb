class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.boolean :available
      t.datetime :date_time_avail
      t.datetime :date_time_checked_out

      t.timestamps
    end
  end
end
