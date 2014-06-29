class RegistrationController < Devise::RegistrationsController
  private
  def sign_up_params
    params.require(:user).permit(:angel, :email, :password, :password_confirmation)
  end
end
