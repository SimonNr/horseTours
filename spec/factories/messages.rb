# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    id 1
    from 1
    to 1
    content "MyText"
    subject "MyText"
  end
end
