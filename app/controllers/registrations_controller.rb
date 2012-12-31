class RegistrationsController < Devise::RegistrationsController
	def update
		# required for settings form to submit when password is left blank
		if params[:user][:password].blank?
			params[:user].delete("password")
			params[:user].delete("password_confirmation")
		end

		@user = User.find(current_user.id)
		if @user.update_attributes(params[:user])
			set_flash_message :notice, :updated
			sign_in @user, :bypass => true # Sign in bypassing validation in case his password changed
			redirect_to after_update_path_for(@user)
		else
			render :edit
		end
	end

	protected

		def after_sign_up_path_for(resource)
			edit_user_registration_path
		end
end
