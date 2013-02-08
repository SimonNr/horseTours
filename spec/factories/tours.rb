# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tour do
    title "MyString"
    teaser "MyString"
    difficulty "MyString"
    days 1
    hours 1
    minutes 1
    description "MyText"
    url "MyString"
  end
end
