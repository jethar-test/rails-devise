FactoryGirl.define do
  factory :chapter do
    title Faker::Name.title
	number Faker::Number.digit
	association :syllabus
  end
end
