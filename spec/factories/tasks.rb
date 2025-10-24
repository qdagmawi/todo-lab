FactoryBot.define do
  factory :task do
    title { Faker::Lorem.word }
    description { Faker::Lorem.sentence }
    due_date { Date.today.advance(days: 7) }
    status { 1 }
    user
  end
end
