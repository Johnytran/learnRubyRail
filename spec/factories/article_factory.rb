FactoryGirl.define do
  factory :article do
    sequence(:title) { |n| "article #{n}"}
    text 'Lorem ipsum dolor sit amet'
  end
end