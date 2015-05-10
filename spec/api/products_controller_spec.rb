require 'rails_helper'

RSpec.describe Api::ProductsController, type: :api do
  describe 'api/products.json' do
    let(:url) { 'api/products.json' }
    it 'assign products' do
      get url
      p last_response.body
    end
  end
end
