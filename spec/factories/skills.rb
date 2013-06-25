# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :skill do
    user_id 1
    category "MyString"
    name "MyString"
    description "MyText"
  end
end
