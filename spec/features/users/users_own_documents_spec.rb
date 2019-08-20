feature 'users own documents' do
	scenario 'a user can only view their own documents' do
		user1 = create(:user)
		user2 = create(:user)
		user1_doc = create(:doc, title: "User 1 Doc", user: user1)
		user2_doc = create(:doc, title: "User 2 Doc", user: user2)

		log_in(user1)

		visit docs_path

		expect(page).to have_content(user1_doc.title, :count => 1)
		expect(page).to_not have_content(user2_doc.title)

	end
end