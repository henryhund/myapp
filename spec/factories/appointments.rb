# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :appointment do
    host_id 1
    attendee_id 1
    time "2013-06-25 15:36:58"
    confirmed false
  end
end
