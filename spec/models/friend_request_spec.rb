require 'rails_helper'

RSpec.describe FriendRequest, type: :model do
  it { should belong_to(:sender).class_name('User') }
  it { should belong_to(:receiver).class_name('User') }

  it { should validate_presence_of(:status) }
end
