require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe "the places path", { type: :feature } do
  it "takes user input and lists the places they've been" do
    visit "/"
    fill_in 'name', with: 'Bangkok'
    fill_in 'description', with: 'was really cheap and the food was good'
    click_button 'Send'
    expect(page).to have_content 'Bangkok was really'
  end
end
