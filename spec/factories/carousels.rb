# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :carousel do
    title "MyString"
    caption "MyString"
    image "MyString"
    visible false
    promotion false
  end
end
