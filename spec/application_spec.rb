require 'capybara/rspec'
require 'spec_helper'
require_relative '../application'

Capybara.app = Application

feature "Wedding App" do
  scenario "it has a homepage" do

    visit '/'
    expect(page).to have_content "Welcome to Ellie and Nick's wedding website!"

  end
end