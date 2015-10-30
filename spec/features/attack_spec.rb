require 'spec_helper.rb'

  # let (:player) {double(:player, :hit_points => 15)}

feature 'Attack' do
  scenario 'attack player Aaron' do
    sign_in_and_play
    click_link('Attack Aaron')
    expect(page).to have_content 'Ivan attacked Aaron'
  end

  scenario 'reduce Aaron hit points' do
    sign_in_and_play
    click_link('Attack Aaron')
    expect(page).not_to have_content 'Aaron has 100 hit points'
    expect(page).to have_content 'Aaron has 80 hit points'
  end
  scenario 'after attacking going back to play page' do
    sign_in_and_play
    click_link('Attack Aaron')
    click_link('Switch Turn')
    expect(page).to have_content 'Attack Ivan'
  end

  scenario 'losing game when hit points is zero' do
    next_turn_loses
    click_link('Attack Aaron')
    expect(page).to have_content 'Aaron has lost'
  end
end
