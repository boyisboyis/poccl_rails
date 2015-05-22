class FrontendController < ApplicationController
    #before_action :require_login
    
    def index 
        
    end
    def require_login
     flash[:notice] = nil
     if current_user.blank?
     	redirect_to login_path
     	#render  '/frontend/account/login', layout: false
       #redirect_to backyard_login_path
     #elsif !current_user.blank? 
       #redirect_to backyard_root_path
     end
   end
end
