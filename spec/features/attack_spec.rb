require 'spec_helper.rb'

feature 'Attack' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content 'Ivan attacked Aaron'
  end

  scenario 'reduce player 2 hit points' do
    sign_in_and_play
    click_link('Attack')
    expect(page).not_to have_content 'Aaron has 100 hit points'
    expect(page).to have_content 'Aaron has 80 hit points'
  end
end
