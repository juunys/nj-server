require 'rails_helper'

RSpec.describe Condition, type: :model do
	before(:all) do
		@condition = create(:condition)
	end

	context 'validation tests' do

		it "is valid with valid attributes" do
		    expect(@condition).to be_valid
		end

		it "has a unique name" do
		    condition2 = build(:condition, name: "Novo")
		    expect(condition2).to_not be_valid
		end

		it "has a unique query_name" do
		    condition2 = build(:condition, query_name: "brand_new")
		    expect(condition2).to_not be_valid
		end
	end
end