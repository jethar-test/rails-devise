class Student < User
	has_many :enrollments
    has_many :course , through: :enrollments
end