FactoryGirl.define do
  factory :article do
    sequence(:title) { |n| "article #{n}"}
    introtext 'Lorem ipsum dolor sit amet'
    text 'Lorem ipsum dolor sit amet'
  end
end