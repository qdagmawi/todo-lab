require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
    user = create(:user)
    expect(user).to be_valid
  end

  it "validates name cannot be nil" do
    user = build(:user, name: nil)
    expect(user).not_to be_valid
  end

  it "validates email cannot be nil" do
    user = build(:user, email: nil)
    expect(user).not_to be_valid
  end
  it "validates password_digest cannot be nil" do
    user = build(:user, password_digest: nil)
    expect(user).not_to be_valid
  end
end
