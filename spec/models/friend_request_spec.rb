require 'rails_helper'

RSpec.describe FriendRequest, type: :model do
  it "has a valid factory" do
    friend_request = create(:friend_request)
    expect(friend_request).to be_valid
  end

  it "validates status cannot be nil" do
    friend_request = build(:friend_request, status: nil)
    expect(friend_request).not_to be_valid
  end
end
