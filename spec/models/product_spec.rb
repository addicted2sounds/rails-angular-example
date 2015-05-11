require 'rails_helper'

RSpec.describe Product, type: :model do

  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }

  describe 'callbacks' do
    let(:product) { create :product }

    describe 'on_create' do

      describe '.alias' do
        subject { product.alias }

        it { is_expected.not_to be_empty }
        it { is_expected.to eq product.name.parameterize }
      end
    end
  end
end
