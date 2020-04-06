require 'rails_helper'

RSpec.describe "Admin::Users", type: :request do


	describe "POST create" do
	    describe "with valid params" do
	      	it "creates a new User" do
		        expect {
		        	@user = create(:user)
		        }.to change(User, :count).by(1)
	      	end

	      	it "redirects to the created user" do
		        post admin_users_path, params: {first_name: 'Mary', last_name: 'Jane', email: "mary_jane@gmail.com", password: '123'}
		        expect(response).to redirect_to admin_user_path(User.last.id)
	      	end

    	end
    end

end
