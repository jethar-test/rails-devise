class AddStudentReferenceToEnrollment < ActiveRecord::Migration
  def change
  	add_reference :enrollments, :student, references: :users
  end
end
