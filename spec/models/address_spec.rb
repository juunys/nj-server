require 'rails_helper'

RSpec.describe Address, type: :model do
	before(:all) do
		@address = create(:address)
	end

	context 'validation tests' do

		it "is valid with valid attributes" do
		    expect(@address).to be_valid
		end

	end
end
