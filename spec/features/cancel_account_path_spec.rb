require 'rails_helper'

describe 'cancel account path' do
  it "cancels the account" do
    user = FactoryGirl.create(:user)
    visit '/users/login'
    login_as(user, :scope => :user)
    click_button "Log in"
    visit '/users/edit'
    click_on "Cancel my account"
    expect(page).to have_content "Bye! Your account has been successfully cancelled. We hope to see you again soon."
  end
end
