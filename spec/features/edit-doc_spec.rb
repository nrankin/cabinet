describe 'edit doc' do
	scenario 'user views edits page' do
		document = create(:doc)

		visit edit_doc_path(id: document.id)

		expect(page).to have_content("Edit")
	end	

	scenario 'user updates title' do
		document = create(:doc, title: "Old Title")

		visit edit_doc_path(id: document.id)
		fill_in 'Title', with: "New Title for Doc"
		click_button "Update Doc"

		expect(page).to have_content("New Title for Doc")
	end	
end