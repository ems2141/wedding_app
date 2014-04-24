require 'capybara/rspec'
require 'spec_helper'
require_relative '../application'

Capybara.app = Application

feature "Wedding App" do
  scenario "it has a homepage" do

    visit '/'
    expect(page).to have_content "Welcome to Ellie and Nick's wedding website!"

    #Regular Attendee Registration
    click_on "Register"
    expect(page).to have_content "We are so excited for you
     to be a part of our special day!  Please register below
    to join our wedding site"
    fill_in 'name', with: "Jake"
    fill_in'user_email', with: 'jakeschneiders@aol.com'
    fill_in'user_password', with: 'ellieandnick2015'
    click_on "Register"
    expect(page).to have_content "Hello Jake!"

  end
end