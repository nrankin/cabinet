require 'rails_helper'

feature 'can create a new doc' do
	scenario 'views new doc page' do
		log_in
		visit new_doc_path

		expect(page).to have_content("New Doc")
	end

	scenario 'can enter title and content' do
		log_in
		visit new_doc_path

		title = page.find_by_id('doc_title')
		content = page.find_by_id('doc_content')
		
		expect { title && content }
	end	

	scenario 'can create a new document' do
		log_in
		visit new_doc_path

		fill_in 'doc_title', with: 'My New Doc'
		fill_in 'doc_content', with: 'Some amazing content'

		click_button 'Create Doc'

		expect(page).to have_content("My New Doc")
		expect(page).to have_content("Some amazing content")
	end


end