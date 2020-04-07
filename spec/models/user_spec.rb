require 'rails_helper'

RSpec.describe User, type: :model do

	before(:all) do
		@user_role = create(:user_role)
	    @user = create(:user)
	end

	context 'validation tests' do

		it "is valid with valid attributes" do
		    expect(@user).to be_valid
		end

		it "has a unique email" do
		    user2 = build(:user, first_name: "Bob")
		    expect(user2).to_not be_valid
		end

		it "has a unique status_user" do
		    user2 = build(:user, status_user_id: 1)
		    expect(user2).to_not be_valid
		end


		it "is not valid without a password" do 
		    user2 = build(:user, password: nil)
		    expect(user2).to_not be_valid
		end

		it "is not valid without a user role id" do 
		    user2 = build(:user, user_role_id: nil)
		    expect(user2).to_not be_valid
		end

		it "is not valid without a first_name" do 
		    user2 = build(:user, first_name: nil)
		    expect(user2).to_not be_valid
		end

		it "is not valid without a last_name" do 
		    user2 = build(:user, last_name: nil)
		    expect(user2).to_not be_valid
		end

	end

end

