require 'rails_helper'

RSpec.describe UserRole, type: :model do
	before(:all) do
		@user_role = create(:user_role)
	end

	context 'validation tests' do

		it "is valid with valid attributes" do
		    expect(@user_role).to be_valid
		end

		it "has a unique name" do
		    user_role2 = build(:user_role, name: "Admin")
		    expect(user_role2).to_not be_valid
		end

		it "has a unique query_name" do
		    user_role2 = build(:user_role, query_name: "admin")
		    expect(user_role2).to_not be_valid
		end
	end

end
