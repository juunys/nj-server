require 'rails_helper'

RSpec.describe "Admin::Users", type: :request do

	before(:all) do
		@user_role = create(:user_role)
		@user = create(:user)
	end


	describe "GET #index" do
		
		context "no logged user" do

			it "renders the login view" do
				get '/admin/users'
		    	expect(response).to redirect_to admin_login_path
			end

		end

		context "with logged user" do

			it "renders the :index view" do
				post '/admin/login', params: {email: @user.email, password: '123'}
		    	get '/admin/users'
		    	expect(response).to render_template(:index)
			end
			
		end

	end


	describe "POST create" do
	    # context "with valid params" do
	    #   	it "creates a new User" do
		   #      expect {
		   #      	@user = create(:user)
		   #      }.to change(User, :count).by(1)
	    #   	end

	    #   	it "redirects to the created user" do
		   #      post admin_users_path, params: {first_name: 'Mary', last_name: 'Jane', email: "mary_jane@gmail.com", password: '123'}
		   #      expect(response).to redirect_to admin_user_path(User.last.id)
	    #   	end

    	# end

  #   	context "with invalid attributes" do
		#     it "does not save the new user" do
		#       	expect{
		#         	post :create, user: Factory.attributes_for(:invalid_user)
		#       	}.to_not change(Contact,:count)
		#     end
		    
		#     it "re-renders the new method" do
		#       	post :create, user: Factory.attributes_for(:invalid_user)
		#       	expect(response).to render_template :new
		#     end
		# end 
    end

end
