# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photo do
    sequence(:title) { |n| "Title #{n}" }
    sequence(:description) { Faker::Lorem.sentence(10) }

    trait :with_picture do
      picture { File.new("#{Rails.root}/spec/fixtures/test.png")}
    end
  end
end
