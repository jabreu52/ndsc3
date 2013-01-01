class ApplicationController < ActionController::Base
  protect_from_forgery
	# before_filter :authenticate_user!

  def authenticate_admin!
    redirect_to new_user_session_path unless user_signed_in?
  end
end
