require 'rails_helper'

describe 'view all docs' do
	scenario 'user navigates to view all docs' do
		visit docs_path

		expect(page).to have_content("All Documents")
	end	
end
