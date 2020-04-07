require 'rails_helper'

RSpec.describe Phone, type: :model do
	before(:all) do
		@phone = create(:phone)
	end

	context 'validation tests' do

		it "is valid with valid attributes" do
		    expect(@phone).to be_valid
		end

		it "has a unique user" do
		    phone2 = build(:phone, user_id: 1)
		    expect(phone2).to_not be_valid
		end
		
	end
end
