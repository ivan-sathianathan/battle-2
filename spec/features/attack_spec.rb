require 'spec_helper.rb'

feature 'Attack' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content 'Ivan attacked Aaron'
  end
end
