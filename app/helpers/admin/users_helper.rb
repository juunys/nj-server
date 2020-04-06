module Admin::UsersHelper

	def edit_user(user)
		'/admin/users/#user.id/edit'
	end
end
