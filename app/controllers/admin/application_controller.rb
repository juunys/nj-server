class Admin::ApplicationController < ActionController::Base
    protect_from_forgery prepend: true, with: :exception
    helper_method :current_user

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def authorize_session
        redirect_to '/admin/login' unless current_user
    end
end
