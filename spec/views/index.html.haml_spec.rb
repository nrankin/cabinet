describe 'docs/index.html.haml' do
	scenario 'displays a link to create a new doc' do
		assign(:docs, create_list(:doc, 3))
		
		render

		expect(rendered).to have_link 'Create Doc', href: "/docs/new"
	end

end