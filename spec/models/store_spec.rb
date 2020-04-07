require 'rails_helper'

RSpec.describe Store, type: :model do
	before(:all) do
		@store = create(:store)
	end

	context 'validation tests' do

		it "is valid with valid attributes" do
		    expect(@store).to be_valid
		end

		it "has a unique user_id" do
		    store2 = build(:store, user_id: 1)
		    expect(store2).to_not be_valid
		end
		
	end
end