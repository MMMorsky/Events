require 'rails_helper'

describe "Events page" do
  FactoryGirl.create(:event)

  it "show correct event" do
    visit events_path
    expect(page).to have_content 'Jalkapalloa'
    save_and_open_page
  end
end