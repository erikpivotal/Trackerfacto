require 'rails_helper'
require 'faker'

RSpec.describe RetroController, type: :controller do
  describe '#index' do
    it 'can be valid' do
      new_retro = create(:retro)
      get :index
      expect(response).to render_template("index")
      expect(assigns(:retros)).to eq([new_retro])
    end
  end

  # describe '#create' do
  #   it 'creates new retro' do
  #     new_retro = create(:retro)
  #     expect { post(:create, params: { retro: new_retro }) }.to change(Retro, :count).by(1)
  #   end
  # end
end
