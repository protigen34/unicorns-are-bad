require 'rails_helper'

describe UsersController, type: :controller do

  before do
    @user = FactoryBot.create(:user)
  end

  context 'POST #create' do
    before do
      sign_in @user
    end
    it 'successfully creates a new user' do
      expect(response).to have_http_status(200)
    end
  end
  
  context 'when a user is logged in' do
    let(:user2) { FactoryBot.create(:user) }
    
    before do
      sign_in @user
    end

    it 'loads correct user details' do
      get :show, params: {id: @user.id}
      expect(assigns(:user)).to eq @user
    end

    it 'cannot access another user show page' do
      get :show, params: {id: user2.id}
      expect(response).to have_http_status(302)
      expect(response).to redirect_to(root_path)
    end
  end

     context 'when a user is not logged in' do
       it 'redirects to login' do
         get :show, params: { id: @user.id }
         expect(response).to redirect_to(root_path)
       end
     end
  end