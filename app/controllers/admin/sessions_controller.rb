class Admin::SessionsController < Admin::ApplicationController

	def create
		user = User.find_by_email(params[:email])
		# If the user exists AND the password entered is correct.
		if user && user.user_role.query_name == 'admin'
			if user.authenticate(params[:password])
				session[:user_id] = user.id
        		redirect_to '/admin/dashboard'
			else
				flash[:error] = 'Falha no login! Verifique seu email ou sua Senha'
				redirect_to admin_login_path
			end
		else
			flash[:error] = 'Usuário não encontrado, Verifique se este usuário Existe!'
			redirect_to admin_login_path
		end
	end

	def destroy
		session.delete(:user_id)
		redirect_to admin_login_path
	end

end
