require 'rails_helper'

describe "Web pages" do
  FactoryGirl.create(:event)
  user = User.create username: "Timo", password: "raipe", password_confirmation: "raipe"




  it "show correct event" do
    visit events_path
    expect(page).to have_content 'Jalkapalloa'
  end

  it "signing in working" do
    sign_in
    expect(page).to have_content 'Welcome back'
  end

  it "attending is working" do
    sign_in
    visit 'events/1'
    click_button('Going')
    expect(page).to have_content 'Timo'
  end
  

end

def sign_in
  visit signin_path
  fill_in('username', with:'Timo')
  fill_in('password', with:'raipe')
  click_button('Log in')
end

