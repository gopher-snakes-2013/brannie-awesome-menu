require 'spec_helper'

describe MenusController do
    describe 'GET #index' do
      it 'renders the index template' do
        get :index
        response.status.should eq(200)
      end

      it 'assings @menus to all menus' do
        get :index
        expect(assigns(:menus)).to be_instance_of(Array)
      end
    end

    describe 'POST #create' do
      let(:params) {{ :menu => {name: 'Breakfast'}  }}
      it 'creates a new menu item' do
        expect{
          post :create, params
          }.to change { Menu.count }.by(1)
      end

      it 'redirects to index after creating a new menu' do
         post :create, params
         response.should redirect_to root_path
      end
    end

end