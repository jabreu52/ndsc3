class ApplicationController < ActionController::Base
  protect_from_forgery
	# before_filter :authenticate_user!

  def authenticate_admin!
    redirect_to root_path unless current_user.try(:admin?)
  end
end
