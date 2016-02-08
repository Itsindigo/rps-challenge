require 'spec_helper'
feature 'play rock, paper, scissors' do
  scenario 'play game' do
    allow(Game::WEAPONS).to receive(:sample).and_return('Rock')
    sign_in_and_play
    fill_in :player_choice, with: 'Scissors'
    click_button('Rock, Paper, Scissors!')
    expect(page).to have_content 'Computer wins!'
  end
end
