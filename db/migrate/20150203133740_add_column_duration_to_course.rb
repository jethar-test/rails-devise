class AddColumnDurationToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :duration, :int
  end
end
