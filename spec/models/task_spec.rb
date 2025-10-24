require 'rails_helper'

RSpec.describe Task, type: :model do
  it "has a valid factory" do
    task = create(:task)
    expect(task).to be_valid
  end

  it "validates title cannot be nil" do
    task = build(:task, title: nil)
    expect(task).not_to be_valid
  end

  it "validates status cannot be nil" do
    task = build(:task, status: nil)
    expect(task).not_to be_valid
  end
end
