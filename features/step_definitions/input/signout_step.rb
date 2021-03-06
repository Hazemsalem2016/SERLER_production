Given(/^I have logged in$/) do
  @user = User.create!({
    email: "user@example.com", password: "123456", password_confirmation: "123456",
    reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1,
    current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10",
    current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", roles_mask: 1,
    first_name: "Fistname", middle_name: "no-middle-name", last_name: "Lastname",
  })
  @user.save!
  visit new_user_session_path
  expect(page).to have_content('Log in')

  fill_in 'Email', with: @user.email
  fill_in 'Password', with: @user.password
  click_button 'Log in'  
  expect(page).to have_content("Sign Out")
end

When(/^I click signout button$/) do
  click_link 'Sign Out'
end

Then(/^I sign out$/) do
  expect(page).to have_no_content("Sign Out")
end
