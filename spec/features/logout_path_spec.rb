require 'rails_helper'

describe 'log out path' do
  it "logs a user out" do
    user = FactoryGirl.create(:user)
    visit '/users/login'
    login_as(user, :scope => :user)
    click_button "Log in"
    click_link "Logout"
    expect(page).to have_content "Signed out successfully."
  end
end
