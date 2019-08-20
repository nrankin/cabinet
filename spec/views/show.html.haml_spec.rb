describe 'docs/show.html.haml' do

	let(:user) { create(:user) }

	it 'displays a link to edit' do
		document = create(:doc, user: user)
		assign(:doc, document)

		render

		expect(rendered).to have_link 'Fix Doc', href: "/docs/#{document.id}/edit"
	end

	it 'displays a link to view all docs' do
		document = create(:doc, user: user)
		assign(:doc, document)

		render

		expect(rendered).to have_link 'All Docs', href: "/docs"
	end

	it 'displays a link to delete this document' do
		document = create(:doc, user: user)
		assign(:doc, document)

		render

		expect(rendered).to have_link 'Trash It', href: "/docs/#{document.id}"
	end
end