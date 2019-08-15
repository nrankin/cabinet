feature 'destroy doc' do
	scenario 'user deletes doc' do
		document = create(:doc)

		visit doc_path(document.id)

		click_link "Trash It"

		expect(page).to have_content("All Documents")
		expect(page).to_not have_content(document.title)
	end
end