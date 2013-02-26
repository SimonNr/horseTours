# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tournament do
    title "MyString"
    category "MyString"
    startDate "2013-02-25"
    endDate "2013-02-25"
    registrationOffice "MyString"
    deadline "2013-02-25"
    information "MyText"
    place "MyString"
    creator_id 1
  end
end
