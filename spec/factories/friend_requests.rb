FactoryBot.define do
  factory :friend_request do
    status { 1 }
    sender { create(:user) }
    receiver { create(:user) }
  end
end
