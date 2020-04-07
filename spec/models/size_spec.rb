require 'rails_helper'

RSpec.describe Size, type: :model do
	before(:all) do
		@size = create(:size)
	end

	context 'validation tests' do

		it "is valid with valid attributes" do
		    expect(@size).to be_valid
		end

		it "has a unique name" do
		    size2 = build(:size, name: "1-3 meses")
		    expect(size2).to_not be_valid
		end

		it "has a unique query_name" do
		    size2 = build(:size, query_name: "1_3_m")
		    expect(size2).to_not be_valid
		end

		it "is not valid without a name" do
		    size2 = build(:size, name: nil)
		    expect(size2).to_not be_valid
		end
		
		it "is not valid without a query_name" do
		    size2 = build(:size, query_name: nil)
		    expect(size2).to_not be_valid
		end
	end
end
