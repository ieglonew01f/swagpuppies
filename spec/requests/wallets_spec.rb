require 'rails_helper'

RSpec.describe 'Wallet API', type: :request do
  let!(:wallets) { create_list(:wallet) }

  # Test suite for GET /wallet
  describe 'GET /wallet' do
    # make HTTP get request before each example
    before { get '/wallet' }

    it 'returns wallet balance' do
      expect(json).not_to be_empty
      expect(json.balance).to eq(1500)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end