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

end