require 'spec_helper.rb'

feature 'Show player 2 hit points' do
  scenario 'view player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Aaron HP = 100'
  end
end
