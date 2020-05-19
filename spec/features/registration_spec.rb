feature 'registration' do 
  scenario ' a user can sign up' do
    visit('/users/new')
    fill_in('email', with: 'test@test.test')
    fill_in('username', with: 'test')
    fill_in('name', with: 'testpat')
    fill_in('password', with: '12345')
    click_button('submit')
    expect(page).to have_content 'Please log in'
  end
  scenario ' a user can log in' do
    visit('/users/log-in')
    fill_in('username', with: 'test')
    fill_in('password', with: '12345')
    click_button('submit')
    expect(page).to have_current_path("/spaces", url: false)
  end
end



