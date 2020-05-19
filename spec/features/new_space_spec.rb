feature 'new space' do
  scenario 'user can add new space' do
    visit('/spaces/new')
    fill_in('name', with: 'test space title')
    fill_in('description', with: 'here is a space description')
    fill_in('price_per_night', with: '120.43')
    click_button('submit')
    expect(page).to have_content('test space title')
    expect(page).to have_content('here is a space description')
    expect(page).to have_content('$120.43')
  end
end