feature 'losing the game' do

  scenario 'When I submit rock, I am told if I have lost' do
    allow_any_instance_of(Computer).to receive(:selection).and_return(:paper)
    sign_in
    click_button 'Rock'
    expect(page).to have_content "You've not won!"
  end

  scenario 'When I submit paper, I am told if I have lost' do
    allow_any_instance_of(Computer).to receive(:selection).and_return(:scissors)
    sign_in
    click_button 'Paper'
    expect(page).to have_content "You've not won!"
  end

  scenario 'When I submit scissors, I am told if I have lost' do
    allow_any_instance_of(Computer).to receive(:selection).and_return(:rock)
    sign_in
    click_button 'Scissors'
    expect(page).to have_content "You've not won!"
  end

end
