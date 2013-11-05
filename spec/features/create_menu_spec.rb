require 'spec_helper'

feature 'homepage' do

 let!(:menu){ FactoryGirl.create(:menu) }

  scenario 'user can see exisiting menus' do
   visit(root_path)
   expect(page).to have_content('Breakfast')
  end

  scenario 'if invalid params passed, errors show' do
    visit(root_path)
    click_button("Create Menu")
    expect(page).to have_content("Name can't be blank")
  end

end