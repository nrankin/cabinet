feature 'destroy doc' do
	scenario 'user deletes doc' do
		user = create(:user)
		document = create(:doc, user: user)

		visit doc_path(document.id)

		click_link "Trash It"

		expect(page).to have_content("All Documents")
		expect(page).to_not have_content(document.title)
	end
end