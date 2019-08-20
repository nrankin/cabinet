describe 'view all docs' do

	
	scenario 'user navigates to view all docs' do
		user = create(:user)
		create_list(:doc, 3, title: "Great Title", user: user)

		log_in(user)
		visit docs_path

		expect(page).to have_content("All Documents")
		expect(page).to have_content("Great Title", :count => 3)
	end	
end
