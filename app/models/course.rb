class Course < ActiveRecord::Base
	has_many :enrollments, dependent: :destroy
    has_many :students, through: :enrollments, class_name: "User"
    has_many :syllabuses,  dependent: :destroy

end