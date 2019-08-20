describe 'docs/index.html.haml' do
	scenario 'displays a link to create a new doc' do
		user = create(:user)
		assign(:docs, create_list(:doc, 3, user: user))
		
		render

		expect(rendered).to have_link 'Create Doc', href: "/docs/new"
	end

end