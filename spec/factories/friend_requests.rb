FactoryBot.define do
  factory :friend_request do
    sender { create(:user).id }
    receiver { create(:user).id }
    status { 1 }
  end
end
