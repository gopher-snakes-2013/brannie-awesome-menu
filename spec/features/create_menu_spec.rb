require 'spec_helper'

feature 'homepage' do

 let!(:menu){ FactoryGirl.create(:menu) }

  scenario 'user can see exisiting menus' do
   visit(root_path)
   expect(page).to have_content('Breakfast')
  end

end