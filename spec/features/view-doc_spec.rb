describe 'view doc' do
	scenario 'user views a doc' do
		document = create(:doc, title: "Viewable Doc", content: "Great content of course")

		visit doc_path(id: document.id)

		expect(page).to have_content("Viewable Doc")

	end
end