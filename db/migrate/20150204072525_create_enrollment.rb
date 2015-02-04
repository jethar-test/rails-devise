class CreateEnrollment < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.references :course, index: true
    end
    add_foreign_key :enrollments, :courses
  end
end
