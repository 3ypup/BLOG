def sign_up

visit new_user_registration_path
    
    fill_in :user_email, :with => "tech_condition@gmail.com"
    fill_in :user_username, :with => "caud"
    fill_in :user_password, :with => "123456qwer"
    fill_in :user_password_confirmation, :with => "123456qwer"

    click_button 'Sign up'
   # expect(page).to have_content "Welcome! You have signed up successfully."

end