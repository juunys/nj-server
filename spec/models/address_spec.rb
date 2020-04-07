require 'rails_helper'

RSpec.describe Address, type: :model do
	before(:all) do
		@address = create(:address)
	end

	context 'validation tests' do

		it "is valid with valid attributes" do
		    expect(@address).to be_valid
		end

		it "is not valid without a cep" do
		    address2 = build(:address, cep: nil)
		    expect(address2).to_not be_valid
		end

	end
end
