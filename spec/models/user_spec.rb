require 'rails_helper'

RSpec.describe User, type: :model do
  user = FactoryGirl.create(:user)
  event = FactoryGirl.create(:event)
  comment = Comment.new content: "Hieno matsi"

  event.comments << comment
  user.comments << comment
  user.events << event


  it "has the username set correctly" do
    expect(user.username).to eq("Raipe")
  end

  it "user events is correct" do
    expect(user.events.count).to eq(1)
  end

  it "user comments is correct" do
    expect(user.comments.count).to eq(1)
  end

  it "user is valid" do
    expect(user).to be_valid
  end

  it "is saved" do
    expect(User.count).to eq(1)
  end

end
