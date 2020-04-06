require 'rails_helper'

RSpec.describe Phone, type: :model do
	before(:all) do
		@phone = create(:phone)
	end

	context 'validation tests' do

		it "is valid with valid attributes" do
		    expect(@phone).to be_valid
		end
		
	end
end
