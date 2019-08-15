describe 'docs/show.html.haml' do
	it 'displays a link to edit' do
		document = create(:doc)
		assign(:doc, document)

		render

		expect(rendered).to have_link 'Fix Doc', href: "/docs/#{document.id}/edit"
	end

	it 'displays a link to view all docs' do
		document = create(:doc)
		assign(:doc, document)

		render

		expect(rendered).to have_link 'All Docs', href: "/docs"
	end
end