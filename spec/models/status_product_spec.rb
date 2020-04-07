require 'rails_helper'

RSpec.describe StatusProduct, type: :model do
	before(:all) do
		@status_product = create(:status_product)
	end

	context 'validation tests' do

		it "is valid with valid attributes" do
		    expect(@status_product).to be_valid
		end

		it "has a unique name" do
		    status_product2 = build(:status_product, name: "Vendido")
		    expect(status_product2).to_not be_valid
		end

		it "has a unique query_name" do
		    status_product2 = build(:status_product, query_name: "sold")
		    expect(status_product2).to_not be_valid
		end

		it "is not valid without a name" do
		    status_product2 = build(:status_product, name: nil)
		    expect(status_product2).to_not be_valid
		end
		
		it "is not valid without a query_name" do
		    status_product2 = build(:status_product, query_name: nil)
		    expect(status_product2).to_not be_valid
		end
		
	end
end