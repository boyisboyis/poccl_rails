class AccountController < ApplicationController
	#before_filter :permission_access
	def logout
		current_user_session.destroy
	  	redirect_to frontend_root_path
	end
end