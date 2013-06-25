# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :profile do
    tagline "MyText"
    bio "MyText"
    user_id "MyString"
  end
end
