# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_message, :class => 'UserMessages' do
    id 1
    user_id 1
    message_id 1
  end
end
