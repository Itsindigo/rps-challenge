require 'capybara/rspec'
require 'capybara/dsl'

feature 'Enter name' do
  scenario 'submit a name' do
    visit('/')
    fill_in :player_name, with: 'Matthew'
    click_button('Submit')
    expect(page).to have_content 'Are you ready to make a move Matthew?'
  end
end
