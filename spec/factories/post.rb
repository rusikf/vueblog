FactoryBot.define do
  factory :post do
    title { Faker::Lorem.word }
    content { Faker::Lorem.sentence }

    trait :published do
      published { true }
    end
  end
end

