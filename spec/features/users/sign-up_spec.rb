feature 'user can sign up' do
	scenario 'a visitor can sign up' do
		visit new_user_registration_path

		password = "password"

		fill_in 'Email', with: "jane@example.com"
		fill_in 'Password', with: password, :match => :prefer_exact
		fill_in 'Password confirmation', with: password, :match => :prefer_exact
		click_button 'Sign up'

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