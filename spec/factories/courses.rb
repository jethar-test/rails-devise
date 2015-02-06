FactoryGirl.define do
  factory :course do
    name Faker::Name.title
	duration Faker::Number.digit
	code Faker::Code.ean

	after(:build) do |course|
		course.syllabuses << build(:syllabus, course: course)
	end
  end
end
