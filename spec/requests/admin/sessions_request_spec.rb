require 'rails_helper'

RSpec.describe "Admin::Sessions", type: :request do

	before(:all) do
		@user_role = create(:user_role)
	    @user = create(:user)
	end

	describe "POST #create" do

		context "with valid attributes" do

		    it "redirects to dashboard when user sign in" do
		    	
		    	post '/admin/login', params: {email: @user.email, password: @user.password}
	    		expect(response).to redirect_to admin_dashboard_path

		    end

		end

		context "with invalid attributes" do

		    it "redirects to login when user sign in" do
		    	
		    	post '/admin/login', params: {email: @user.email, password: '123456'}
	    		expect(response).to redirect_to admin_root_path
	    		
		    end

		end

	end

end
