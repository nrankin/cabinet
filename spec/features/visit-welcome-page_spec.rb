require 'rails_helper'

feature 'Visitor visits welcome page' do 
	scenario 'successfully' do
		visit welcome_index_path

		expect(page).to have_content("Welcome!")
	end
	
end