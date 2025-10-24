require 'rails_helper'

RSpec.describe Task, type: :model do
  it "has a valid factory" do
    expect(build(:task)).to be_valid
  end

  it "validates presence of title" do
    expect(build(:task, title: nil)).not_to be_valid
  end

  it "validates presence of description" do
    expect(build(:task, description: nil)).not_to be_valid
  end

  it "validates presence of due date" do
    expect(build(:task, due_date: nil)).not_to be_valid
  end

  it "validates presence of status" do
    expect(build(:task, status: nil)).not_to be_valid
  end

  it "validates presence of user" do
    expect(build(:task, user: nil)).not_to be_valid
  end
end
