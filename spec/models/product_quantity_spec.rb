require 'rails_helper'

RSpec.describe ProductQuantity, type: :model do
	before(:all) do
		@product_quantity = create(:product_quantity)
	end

	context 'validation tests' do

		it "is valid with valid attributes" do
		    expect(@product_quantity).to be_valid
		end
		
	end
end
