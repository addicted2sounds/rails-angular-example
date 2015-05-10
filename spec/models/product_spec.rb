require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'factory' do
    it 'is valid' do
      expect(build :product).to be be_valid
    end
  end
end
