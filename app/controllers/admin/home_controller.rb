class Admin::HomeController < Admin::ApplicationController
	
	before_action :authorize_session

  	def index
        users
        products
        orders
        conversations
    end

    private

    def users
        @total_users = User.all.count
        @users = User.order('created_at DESC').last(5)
        @users = [] unless @users
    end

    def products
        @total_products = Product.all.count
        @products = Product.order('created_at DESC').last(5)
        @products = [] unless @products
    end

    def orders
        @total_orders = Order.all.count
        @orders = Order.order('created_at DESC').last(5)
        @orders = [] unless @orders 
    end

    def conversations
    end

end
