require 'rails_helper'

RSpec.describe FriendRequest, type: :model do
  it { should belong_to(:sender).class_name('User') }
  it { should belong_to(:receiver).class_name('User') }

  it { should validate_presence_of(:status) }

  it "validates cannot request one self" do
    user = create(:user)
    friend_request = build(:friend_request, sender: user, receiver: user)
    expect(friend_request).not_to be_valid
    expect(friend_request.errors[:base]).to include("Cannot request oneself")
  end
end
