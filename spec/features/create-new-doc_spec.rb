require 'rails_helper'

feature 'can create a new doc' do
	scenario 'views new doc page' do
		visit new_doc_path

		expect(page).to have_content("New Doc")
	end
end