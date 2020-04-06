require 'rails_helper'

RSpec.describe Order, type: :model do
	before(:all) do
		@order = create(:order)
	end

	context 'validation tests' do

		it "is valid with valid attributes" do
		    expect(@order).to be_valid
		end

		it "has a sequencial code" do
		    order2 = build(:order, sequencial_code_id: 1)
		    expect(order2).to_not be_valid
		end

	end
end
