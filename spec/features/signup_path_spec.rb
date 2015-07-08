require 'rails_helper'

describe 'sign up path' do
  it 'creates a user profile' do
    visit '/'
    click_link "Sign up"
    fill_in "Username", :with => "NewUser"
    fill_in "Email", :with => "NewUser@NewUser.com"
    fill_in "Password", :with => "12345678"
    fill_in "Password confirmation", :with => "12345678"
    click_button "Sign up"
    expect(page).to have_content 'Welcome!'
  end
end
