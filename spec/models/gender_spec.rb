require 'rails_helper'

RSpec.describe Gender, type: :model do
	before(:all) do
		@gender = create(:gender)
	end

	context 'validation tests' do

		it "is valid with valid attributes" do
		    expect(@gender).to be_valid
		end

		it "has a unique name" do
		    gender2 = build(:gender, name: "Príncipe")
		    expect(gender2).to_not be_valid
		end

		it "has a unique query_name" do
		    gender2 = build(:gender, query_name: "prince")
		    expect(gender2).to_not be_valid
		end
	end
end
