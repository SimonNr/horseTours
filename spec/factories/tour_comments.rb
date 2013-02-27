# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tour_comment do
    tour_id 1
    user_id 1
    comment "MyText"
  end
end
