require 'rails_helper'

describe 'view all docs' do

	
	scenario 'user navigates to view all docs' do
		create_list(:doc, 3, title: "Great Title")
		visit docs_path

		expect(page).to have_content("All Documents")
		expect(page).to have_content("Great Title", :count => 3)
	end	
end
