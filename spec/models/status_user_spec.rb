require 'rails_helper'

RSpec.describe StatusUser, type: :model do
	before(:all) do
		@status_user = create(:status_user)
	end

	context 'validation tests' do

		it "is valid with valid attributes" do
		    expect(@status_user).to be_valid
		end

		it "has a unique name" do
		    status_user2 = build(:status_user, name: "Ativo")
		    expect(status_user2).to_not be_valid
		end

		it "has a unique query_name" do
		    status_user2 = build(:status_user, query_name: "active")
		    expect(status_user2).to_not be_valid
		end

		it "is not valid without a name" do
		    status_user2 = build(:status_user, name: nil)
		    expect(status_user2).to_not be_valid
		end
		
		it "is not valid without a query_name" do
		    status_user2 = build(:status_user, query_name: nil)
		    expect(status_user2).to_not be_valid
		end

	end
end
