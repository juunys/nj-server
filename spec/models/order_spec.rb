require 'rails_helper'

RSpec.describe Order, type: :model do
	before(:all) do
		@order = create(:order)
	end

	context 'validation tests' do

		it "is valid with valid attributes" do
		    expect(@order).to be_valid
		end

	end
end
