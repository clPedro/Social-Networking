class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params

  private

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:phone, :name, :avatar])
  end
end