require 'rails_helper'

RSpec.describe Photo, type: :model do
	before(:all) do
		@photo = create(:photo)
	end

	context 'validation tests' do

		it "is valid with valid attributes" do
		    expect(@photo).to be_valid
		end
		
	end
end
