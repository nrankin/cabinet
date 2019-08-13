require 'rails_helper'

feature 'can create a new doc' do
	scenario 'views new doc page' do
		visit new_doc_path

		expect(page).to have_content("New Doc")
	end

	scenario 'can enter title and content' do
		visit new_doc_path

		title = page.find_by_id('doc_title')
		content = page.find_by_id('doc_content')
		
		expect { title && content }
	end	

end