class Account::UserSessionsController < AccountController
	def login
	   @user = UserSession.new
	   render layout: false
	end

	def create
	  @user = UserSession.new params.require(:user_session).permit(:login, :password)
	  if @user.save
	    redirect_to frontend_root_path
	  else
	  	render '/frontend/account/user_sessions/login', layout: false
	  end
	end
	
	def destroy
	  current_user_session.destroy
	  redirect_to frontend_login_path
	end
end