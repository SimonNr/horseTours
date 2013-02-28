class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path
  	if(current_user.has_role?(:admin))
  		admin_root_path
  	else
  		root_path
  	end
  end

  def authenticate_admin_user!
  	redirect_to new_user_session_path unless current_user && current_user.has_role?(:admin)
  end
end