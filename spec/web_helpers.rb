def sign_in_and_play
  visit ('/')
  fill_in :player_1_name, with: 'Ivan'
  fill_in :player_2_name, with: 'Aaron'
  click_button 'Submit'
end

def next_turn_loses
  visit ('/')
  fill_in :player_1_name, with: 'Ivan'
  fill_in :player_2_name, with: 'Aaron'
  click_button 'Submit'
  4.times do cycle_of_play end
end

def cycle_of_play
  click_link('Attack Aaron')
  click_link('Switch Turn')
  click_link('Attack Ivan')
  click_link('Switch Turn')
end
