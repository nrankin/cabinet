feature 'user can sign up' do
	scenario 'a visitor can sign up' do
		sign_up_with("jane@example.com", "password")

		expect(page).to have_content("You have signed up successfully")
	end	

	scenario 'existing user can sign in' do
		user = create(:user)

		visit user_session_path

		fill_in 'Email', with: user.email
		fill_in 'Password', with: user.password, :match => :prefer_exact
		click_button 'Log in'

		expect(page).to have_content("Signed in successfully")
	end
end