FactoryGirl.define do
  factory :syllabus do
    name Faker::Name.title
	semester Faker::Number.digit
	code Faker::Code.ean

	after(:build) do |syllabus|
		syllabus.chapters << build(:chapter, syllabus: syllabus)
	end
  end
end
